const std = @import("std");
const math = std.math;
const assert = std.debug.assert;
const warn = std.debug.warn;

const ft2 = @import("freetype2.zig");

const Zcint = ft2.mapCtoZigType(c_int);

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
}

test "test-freetype2" {
    // Setup parameters

    // Filename for font
    const cfilename = c"modules/3d-test-resources/liberation-fonts-ttf-2.00.4/LiberationSans-Regular.ttf";

    // Convert Rotate angle in radians for font
    var angleInDegrees = f64(0.0);
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

        drawBitMap(&image, &slot.bitmap, slot.bitmap_left, target_height - slot.bitmap_top);
    }
}
