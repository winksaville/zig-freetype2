const std = @import("std");
const assert = std.debug.assert;
const warn = std.debug.warn;

const ft2 = @import("freetype2.zig");

const PTS: u32 = 20;       // 20 "points" for character size 20/64 of inch
const DPI: u32 = 100;      // dots per inch

const WIDTH: u32 =  100;   // image width
const HEIGHT: u32 =  75;   // image height

test "test-freetype2" {
    var pLibrary: ?*ft2.FT_Library = undefined;
    assert( ft2.FT_Init_FreeType( &pLibrary ) == 0);

    const cfilename = c"modules/3d-test-resources/liberation-fonts-ttf-2.00.4/LiberationSans-Regular.ttf";

    var face: ?*ft2.FT_Face = undefined;
    assert(ft2.FT_New_Face(pLibrary, cfilename, 0, &face) == 0);

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
