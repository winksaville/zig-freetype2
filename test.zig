const std = @import("std");
const math = std.math;
const assert = std.debug.assert;
const warn = std.debug.warn;

const ft2 = @import("freetype2.zig");

const Zcint = ft2.mapCtoZigType(c_int);

const DBG: bool = false;

const PTS: Zcint = 20;       // 20 "points" for character size 20/64 of inch
const DPI: Zcint = 100;      // dots per inch

const WIDTH: Zcint =  100;   // display width
const HEIGHT: Zcint =  75;   // display height

fn scaledInt(comptime IntType: type, v: f64, scale: IntType) IntType {
     return @floatToInt(IntType, v * @intToFloat(f64, scale));
}

fn setImage(image: *[HEIGHT][WIDTH]u8, v: u8) void {
    var x: Zcint = 0;
    var y: Zcint = 0;

    while (y < HEIGHT) : (y += 1) {
        while (x < WIDTH) : (x += 1) {
            image[@intCast(usize, y)][@intCast(usize, x)] = v;
        }
    }
}

fn drawBitMap(image: *[HEIGHT][WIDTH]u8, bitmap: *ft2.FT_Bitmap, x: Zcint, y: Zcint) void {
    var i: Zcint = 0;
    var j: Zcint = 0;
    var p: Zcint = 0;
    var q: Zcint = 0;
    var glyph_width: Zcint = @intCast(Zcint, bitmap.width);
    var glyph_height: Zcint = @intCast(Zcint, bitmap.rows);
    var x_max: Zcint = x + glyph_width;
    var y_max: Zcint = y + glyph_height;
    if (DBG) warn("drawBitMap: x={} y={} x_max={} y_max={} glyph_width={} glyph_height={} buffer={*}\n",
        x, y, x_max, y_max, glyph_width, glyph_height, bitmap.buffer);

    i = x;
    p = 0;
    while (i < x_max) {
        j = y;
        q = 0;
        while (j < y_max) {
            if ((i >= 0) and (j >= 0) and (i < WIDTH) and (j < HEIGHT)) {
                var idx: usize = @intCast(usize, (q * glyph_width) + p);
                if (bitmap.buffer == null) return;
                var ptr: *u8 = @intToPtr(*u8, @ptrToInt(bitmap.buffer.?) + idx);
                if (DBG) warn("{p}:{x} ", ptr, ptr.*);
                image[@intCast(usize, j)][@intCast(usize, i)] |= ptr.*;
            }
            j += 1;
            q += 1;
        }
        if (DBG) warn("\n");

        i += 1;
        p += 1;
    }
}

fn showImage(image: *[HEIGHT][WIDTH]u8) void {
    var y: Zcint = 0;
    while (y < HEIGHT) : (y += 1) {
        var x: Zcint = 0;
        if (DBG) warn("{}:{} ", y, x);
        while (x < WIDTH) : (x += 1) {
            var ch: u8 = switch (image[@intCast(usize, y)][@intCast(usize, x)]) {
                0 => u8(' '),
                1 ... 127 => u8('+'),
                128 ... 255 => u8('*'),
            };
            warn("{c}", ch);
        }
        warn("\n");
    }
}

test "test-freetype2" {
    warn("\n");

    // Setup parameters

    // Filename for font
    const cfilename = c"modules/3d-test-resources/liberation-fonts-ttf-2.00.4/LiberationSans-Regular.ttf";

    // Convert Rotate angle in radians for font
    var angleInDegrees = f64(45.0);
    var angle = (angleInDegrees / 360.0) * math.pi * 2.0;

    // Text to display
    var text = "pinky";

    // Height of display
    var target_height = HEIGHT;

    // Init FT library
    var pLibrary: ?*ft2.FT_Library = undefined;
    assert( ft2.FT_Init_FreeType( &pLibrary ) == 0);
    defer assert(ft2.FT_Done_FreeType(pLibrary) == 0);

    // Load a type face
    var pFace: ?*ft2.FT_Face = undefined;
    assert(ft2.FT_New_Face(pLibrary, cfilename, 0, &pFace) == 0);
    defer assert(ft2.FT_Done_Face(pFace) == 0);

    // Set character size
    assert(ft2.FT_Set_Char_Size(pFace, PTS * 64, 0, DPI, 0) == 0);

    // Setup matrix
    var matrix: ft2.FT_Matrix = undefined;
    matrix.xx = scaledInt(ft2.FT_Fixed, math.cos(angle), 0x10000);
    matrix.xy = scaledInt(ft2.FT_Fixed, -math.sin(angle), 0x10000);
    matrix.yx = scaledInt(ft2.FT_Fixed, math.sin(angle), 0x10000);
    matrix.yy = scaledInt(ft2.FT_Fixed, math.cos(angle), 0x10000);

    // Setup pen location
    var pen: ft2.FT_Vector = undefined;
    pen.x = 10 * 64;
    pen.y = 10 * 64;

    // Create and Initialize image
    var image: [HEIGHT][WIDTH]u8 = undefined;
    setImage(&image, 0);

    // Verify image is 0
    var x: Zcint = 0;
    var y: Zcint = 0;
    while (y < HEIGHT) : (y += 1) {
        while (x < WIDTH) : (x += 1) {
            assert(image[@intCast(usize, y)][@intCast(usize, x)] == 0);
        }
    }

    // Loop to print characters to image buffer
    var slot: *ft2.FT_GlyphSlot = (pFace.?.glyph) orelse return error.NoGlyphSlot;
    var n: usize = 0;
    while (n < text.len) : (n += 1) {
        // Setup transform
        ft2.FT_Set_Transform(pFace, &matrix, &pen);

        // Load glyph image into slot
        assert(ft2.FT_Load_Char(pFace, text[n], ft2.FT_LOAD_RENDER) == 0);

        // Draw the character
        drawBitMap(&image, &slot.bitmap, slot.bitmap_left, target_height - slot.bitmap_top);

        // Move the pen
        pen.x += slot.advance.x;
        pen.y += slot.advance.y;
    }

    showImage(&image);
}
