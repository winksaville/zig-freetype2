const std = @import("std");
const math = std.math;
const assert = std.debug.assert;
const warn = std.debug.warn;

const ft2 = @import("freetype2.zig");

const PTS: u32 = 20;       // 20 "points" for character size 20/64 of inch
const DPI: u32 = 100;      // dots per inch

const WIDTH: u32 =  100;   // display width
const HEIGHT: u32 =  75;   // display height

fn scaledInt(comptime IntType: type, v: f64, scale: IntType) IntType {
     return @floatToInt(IntType, v * @intToFloat(f64, scale));
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

    var image: [HEIGHT][WIDTH]u8 = undefined;

    var x: usize = 0;
    var y: usize = 0;

    while (y < HEIGHT) : (y += 1) {
        while (x < WIDTH) : (x += 1) {
            image[y][x] = 0;
        }
    }

    while (y < HEIGHT) : (y += 1) {
        while (x < WIDTH) : (x += 1) {
            assert(image[y][x] == 0);
        }
    }
}
