pub const FT_Int16 = c_short;
pub const FT_UInt16 = c_ushort;
pub const FT_Int32 = c_int;
pub const FT_UInt32 = c_uint;
pub const FT_Fast = c_int;
pub const FT_UFast = c_uint;
pub const FT_Int64 = c_long;
pub const FT_UInt64 = c_ulong;
pub const FT_Memory = ?*struct_FT_MemoryRec_;
pub const FT_Alloc_Func = ?extern fn(FT_Memory, c_long) ?*c_void;
pub const FT_Free_Func = ?extern fn(FT_Memory, ?*c_void) void;
pub const FT_Realloc_Func = ?extern fn(FT_Memory, c_long, c_long, ?*c_void) ?*c_void;
pub const struct_FT_MemoryRec_ = extern struct {
    user: ?*c_void,
    alloc: FT_Alloc_Func,
    free: FT_Free_Func,
    realloc: FT_Realloc_Func,
};
pub const union_FT_StreamDesc_ = extern union {
    value: c_long,
    pointer: ?*c_void,
};
pub const FT_StreamDesc = union_FT_StreamDesc_;
pub const FT_Stream = ?*struct_FT_StreamRec_;
pub const FT_Stream_IoFunc = ?extern fn(FT_Stream, c_ulong, ?[*]u8, c_ulong) c_ulong;
pub const FT_Stream_CloseFunc = ?extern fn(FT_Stream) void;
pub const struct_FT_StreamRec_ = extern struct {
    base: ?[*]u8,
    size: c_ulong,
    pos: c_ulong,
    descriptor: FT_StreamDesc,
    pathname: FT_StreamDesc,
    read: FT_Stream_IoFunc,
    close: FT_Stream_CloseFunc,
    memory: FT_Memory,
    cursor: ?[*]u8,
    limit: ?[*]u8,
};
pub const FT_StreamRec = struct_FT_StreamRec_;
pub const FT_Pos = c_long;
pub const struct_FT_Vector_ = extern struct {
    x: FT_Pos,
    y: FT_Pos,
};
pub const FT_Vector = struct_FT_Vector_;
pub const struct_FT_BBox_ = extern struct {
    xMin: FT_Pos,
    yMin: FT_Pos,
    xMax: FT_Pos,
    yMax: FT_Pos,
};
pub const FT_BBox = struct_FT_BBox_;
pub const FT_PIXEL_MODE_NONE = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_NONE;
pub const FT_PIXEL_MODE_MONO = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_MONO;
pub const FT_PIXEL_MODE_GRAY = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_GRAY;
pub const FT_PIXEL_MODE_GRAY2 = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_GRAY2;
pub const FT_PIXEL_MODE_GRAY4 = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_GRAY4;
pub const FT_PIXEL_MODE_LCD = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_LCD;
pub const FT_PIXEL_MODE_LCD_V = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_LCD_V;
pub const FT_PIXEL_MODE_BGRA = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_BGRA;
pub const FT_PIXEL_MODE_MAX = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_MAX;
pub const enum_FT_Pixel_Mode_ = extern enum {
    FT_PIXEL_MODE_NONE = 0,
    FT_PIXEL_MODE_MONO = 1,
    FT_PIXEL_MODE_GRAY = 2,
    FT_PIXEL_MODE_GRAY2 = 3,
    FT_PIXEL_MODE_GRAY4 = 4,
    FT_PIXEL_MODE_LCD = 5,
    FT_PIXEL_MODE_LCD_V = 6,
    FT_PIXEL_MODE_BGRA = 7,
    FT_PIXEL_MODE_MAX = 8,
};
pub const FT_Pixel_Mode = enum_FT_Pixel_Mode_;
pub const struct_FT_Bitmap_ = extern struct {
    rows: c_uint,
    width: c_uint,
    pitch: c_int,
    buffer: ?[*]u8,
    num_grays: c_ushort,
    pixel_mode: u8,
    palette_mode: u8,
    palette: ?*c_void,
};
pub const FT_Bitmap = struct_FT_Bitmap_;
pub const struct_FT_Outline_ = extern struct {
    n_contours: c_short,
    n_points: c_short,
    points: ?[*]FT_Vector,
    tags: ?[*]u8,
    contours: ?[*]c_short,
    flags: c_int,
};
pub const FT_Outline = struct_FT_Outline_;
pub const FT_Outline_MoveToFunc = ?extern fn(?[*]const FT_Vector, ?*c_void) c_int;
pub const FT_Outline_LineToFunc = ?extern fn(?[*]const FT_Vector, ?*c_void) c_int;
pub const FT_Outline_ConicToFunc = ?extern fn(?[*]const FT_Vector, ?[*]const FT_Vector, ?*c_void) c_int;
pub const FT_Outline_CubicToFunc = ?extern fn(?[*]const FT_Vector, ?[*]const FT_Vector, ?[*]const FT_Vector, ?*c_void) c_int;
pub const struct_FT_Outline_Funcs_ = extern struct {
    move_to: FT_Outline_MoveToFunc,
    line_to: FT_Outline_LineToFunc,
    conic_to: FT_Outline_ConicToFunc,
    cubic_to: FT_Outline_CubicToFunc,
    shift: c_int,
    delta: FT_Pos,
};
pub const FT_Outline_Funcs = struct_FT_Outline_Funcs_;
pub const FT_GLYPH_FORMAT_NONE = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_NONE;
pub const FT_GLYPH_FORMAT_COMPOSITE = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_COMPOSITE;
pub const FT_GLYPH_FORMAT_BITMAP = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_BITMAP;
pub const FT_GLYPH_FORMAT_OUTLINE = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_OUTLINE;
pub const FT_GLYPH_FORMAT_PLOTTER = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_PLOTTER;
pub const enum_FT_Glyph_Format_ = extern enum {
    FT_GLYPH_FORMAT_NONE = 0,
    FT_GLYPH_FORMAT_COMPOSITE = 1668246896,
    FT_GLYPH_FORMAT_BITMAP = 1651078259,
    FT_GLYPH_FORMAT_OUTLINE = 1869968492,
    FT_GLYPH_FORMAT_PLOTTER = 1886154612,
};
pub const FT_Glyph_Format = enum_FT_Glyph_Format_;
pub const struct_FT_RasterRec_ = @OpaqueType();
pub const FT_Raster = ?*struct_FT_RasterRec_;
pub const struct_FT_Span_ = extern struct {
    x: c_short,
    len: c_ushort,
    coverage: u8,
};
pub const FT_Span = struct_FT_Span_;
pub const FT_SpanFunc = ?extern fn(c_int, c_int, ?[*]const FT_Span, ?*c_void) void;
pub const FT_Raster_BitTest_Func = ?extern fn(c_int, c_int, ?*c_void) c_int;
pub const FT_Raster_BitSet_Func = ?extern fn(c_int, c_int, ?*c_void) void;
pub const struct_FT_Raster_Params_ = extern struct {
    target: ?[*]const FT_Bitmap,
    source: ?*const c_void,
    flags: c_int,
    gray_spans: FT_SpanFunc,
    black_spans: FT_SpanFunc,
    bit_test: FT_Raster_BitTest_Func,
    bit_set: FT_Raster_BitSet_Func,
    user: ?*c_void,
    clip_box: FT_BBox,
};
pub const FT_Raster_Params = struct_FT_Raster_Params_;
pub const FT_Raster_NewFunc = ?extern fn(?*c_void, ?[*]FT_Raster) c_int;
pub const FT_Raster_DoneFunc = ?extern fn(FT_Raster) void;
pub const FT_Raster_ResetFunc = ?extern fn(FT_Raster, ?[*]u8, c_ulong) void;
pub const FT_Raster_SetModeFunc = ?extern fn(FT_Raster, c_ulong, ?*c_void) c_int;
pub const FT_Raster_RenderFunc = ?extern fn(FT_Raster, ?[*]const FT_Raster_Params) c_int;
pub const struct_FT_Raster_Funcs_ = extern struct {
    glyph_format: FT_Glyph_Format,
    raster_new: FT_Raster_NewFunc,
    raster_reset: FT_Raster_ResetFunc,
    raster_set_mode: FT_Raster_SetModeFunc,
    raster_render: FT_Raster_RenderFunc,
    raster_done: FT_Raster_DoneFunc,
};
pub const FT_Raster_Funcs = struct_FT_Raster_Funcs_;
pub const FT_Bool = u8;
pub const FT_FWord = c_short;
pub const FT_UFWord = c_ushort;
pub const FT_Char = i8;
pub const FT_Byte = u8;
pub const FT_Bytes = ?[*]const FT_Byte;
pub const FT_Tag = FT_UInt32;
pub const FT_String = u8;
pub const FT_Short = c_short;
pub const FT_UShort = c_ushort;
pub const FT_Int = c_int;
pub const FT_UInt = c_uint;
pub const FT_Long = c_long;
pub const FT_ULong = c_ulong;
pub const FT_F2Dot14 = c_short;
pub const FT_F26Dot6 = c_long;
pub const FT_Fixed = c_long;
pub const FT_Error = c_int;
pub const FT_Pointer = ?*c_void;
pub const FT_Offset = usize;
pub const FT_PtrDist = ptrdiff_t;
pub const struct_FT_UnitVector_ = extern struct {
    x: FT_F2Dot14,
    y: FT_F2Dot14,
};
pub const FT_UnitVector = struct_FT_UnitVector_;
pub const struct_FT_Matrix_ = extern struct {
    xx: FT_Fixed,
    xy: FT_Fixed,
    yx: FT_Fixed,
    yy: FT_Fixed,
};
pub const FT_Matrix = struct_FT_Matrix_;
pub const struct_FT_Data_ = extern struct {
    pointer: ?[*]const FT_Byte,
    length: FT_Int,
};
pub const FT_Data = struct_FT_Data_;
pub const FT_Generic_Finalizer = ?extern fn(?*c_void) void;
pub const struct_FT_Generic_ = extern struct {
    data: ?*c_void,
    finalizer: FT_Generic_Finalizer,
};
pub const FT_Generic = struct_FT_Generic_;
pub const FT_ListNode = ?*struct_FT_ListNodeRec_;
pub const struct_FT_ListNodeRec_ = extern struct {
    prev: ?*struct_FT_ListNodeRec_,
    next: ?*struct_FT_ListNodeRec_,
    data: ?*c_void,
};
pub const struct_FT_ListRec_ = extern struct {
    head: FT_ListNode,
    tail: FT_ListNode,
};
pub const FT_List = ?*struct_FT_ListRec_;
pub const FT_ListNodeRec = struct_FT_ListNodeRec_;
pub const FT_ListRec = struct_FT_ListRec_;
pub const FT_Mod_Err_Base = 0;
pub const FT_Mod_Err_Autofit = 0;
pub const FT_Mod_Err_BDF = 0;
pub const FT_Mod_Err_Bzip2 = 0;
pub const FT_Mod_Err_Cache = 0;
pub const FT_Mod_Err_CFF = 0;
pub const FT_Mod_Err_CID = 0;
pub const FT_Mod_Err_Gzip = 0;
pub const FT_Mod_Err_LZW = 0;
pub const FT_Mod_Err_OTvalid = 0;
pub const FT_Mod_Err_PCF = 0;
pub const FT_Mod_Err_PFR = 0;
pub const FT_Mod_Err_PSaux = 0;
pub const FT_Mod_Err_PShinter = 0;
pub const FT_Mod_Err_PSnames = 0;
pub const FT_Mod_Err_Raster = 0;
pub const FT_Mod_Err_SFNT = 0;
pub const FT_Mod_Err_Smooth = 0;
pub const FT_Mod_Err_TrueType = 0;
pub const FT_Mod_Err_Type1 = 0;
pub const FT_Mod_Err_Type42 = 0;
pub const FT_Mod_Err_Winfonts = 0;
pub const FT_Mod_Err_GXvalid = 0;
pub const FT_Mod_Err_Max = 1;
pub const FT_Err_Ok = 0;
pub const FT_Err_Cannot_Open_Resource = 1;
pub const FT_Err_Unknown_File_Format = 2;
pub const FT_Err_Invalid_File_Format = 3;
pub const FT_Err_Invalid_Version = 4;
pub const FT_Err_Lower_Module_Version = 5;
pub const FT_Err_Invalid_Argument = 6;
pub const FT_Err_Unimplemented_Feature = 7;
pub const FT_Err_Invalid_Table = 8;
pub const FT_Err_Invalid_Offset = 9;
pub const FT_Err_Array_Too_Large = 10;
pub const FT_Err_Missing_Module = 11;
pub const FT_Err_Missing_Property = 12;
pub const FT_Err_Invalid_Glyph_Index = 16;
pub const FT_Err_Invalid_Character_Code = 17;
pub const FT_Err_Invalid_Glyph_Format = 18;
pub const FT_Err_Cannot_Render_Glyph = 19;
pub const FT_Err_Invalid_Outline = 20;
pub const FT_Err_Invalid_Composite = 21;
pub const FT_Err_Too_Many_Hints = 22;
pub const FT_Err_Invalid_Pixel_Size = 23;
pub const FT_Err_Invalid_Handle = 32;
pub const FT_Err_Invalid_Library_Handle = 33;
pub const FT_Err_Invalid_Driver_Handle = 34;
pub const FT_Err_Invalid_Face_Handle = 35;
pub const FT_Err_Invalid_Size_Handle = 36;
pub const FT_Err_Invalid_Slot_Handle = 37;
pub const FT_Err_Invalid_CharMap_Handle = 38;
pub const FT_Err_Invalid_Cache_Handle = 39;
pub const FT_Err_Invalid_Stream_Handle = 40;
pub const FT_Err_Too_Many_Drivers = 48;
pub const FT_Err_Too_Many_Extensions = 49;
pub const FT_Err_Out_Of_Memory = 64;
pub const FT_Err_Unlisted_Object = 65;
pub const FT_Err_Cannot_Open_Stream = 81;
pub const FT_Err_Invalid_Stream_Seek = 82;
pub const FT_Err_Invalid_Stream_Skip = 83;
pub const FT_Err_Invalid_Stream_Read = 84;
pub const FT_Err_Invalid_Stream_Operation = 85;
pub const FT_Err_Invalid_Frame_Operation = 86;
pub const FT_Err_Nested_Frame_Access = 87;
pub const FT_Err_Invalid_Frame_Read = 88;
pub const FT_Err_Raster_Uninitialized = 96;
pub const FT_Err_Raster_Corrupted = 97;
pub const FT_Err_Raster_Overflow = 98;
pub const FT_Err_Raster_Negative_Height = 99;
pub const FT_Err_Too_Many_Caches = 112;
pub const FT_Err_Invalid_Opcode = 128;
pub const FT_Err_Too_Few_Arguments = 129;
pub const FT_Err_Stack_Overflow = 130;
pub const FT_Err_Code_Overflow = 131;
pub const FT_Err_Bad_Argument = 132;
pub const FT_Err_Divide_By_Zero = 133;
pub const FT_Err_Invalid_Reference = 134;
pub const FT_Err_Debug_OpCode = 135;
pub const FT_Err_ENDF_In_Exec_Stream = 136;
pub const FT_Err_Nested_DEFS = 137;
pub const FT_Err_Invalid_CodeRange = 138;
pub const FT_Err_Execution_Too_Long = 139;
pub const FT_Err_Too_Many_Function_Defs = 140;
pub const FT_Err_Too_Many_Instruction_Defs = 141;
pub const FT_Err_Table_Missing = 142;
pub const FT_Err_Horiz_Header_Missing = 143;
pub const FT_Err_Locations_Missing = 144;
pub const FT_Err_Name_Table_Missing = 145;
pub const FT_Err_CMap_Table_Missing = 146;
pub const FT_Err_Hmtx_Table_Missing = 147;
pub const FT_Err_Post_Table_Missing = 148;
pub const FT_Err_Invalid_Horiz_Metrics = 149;
pub const FT_Err_Invalid_CharMap_Format = 150;
pub const FT_Err_Invalid_PPem = 151;
pub const FT_Err_Invalid_Vert_Metrics = 152;
pub const FT_Err_Could_Not_Find_Context = 153;
pub const FT_Err_Invalid_Post_Table_Format = 154;
pub const FT_Err_Invalid_Post_Table = 155;
pub const FT_Err_DEF_In_Glyf_Bytecode = 156;
pub const FT_Err_Missing_Bitmap = 157;
pub const FT_Err_Syntax_Error = 160;
pub const FT_Err_Stack_Underflow = 161;
pub const FT_Err_Ignore = 162;
pub const FT_Err_No_Unicode_Glyph_Name = 163;
pub const FT_Err_Glyph_Too_Big = 164;
pub const FT_Err_Missing_Startfont_Field = 176;
pub const FT_Err_Missing_Font_Field = 177;
pub const FT_Err_Missing_Size_Field = 178;
pub const FT_Err_Missing_Fontboundingbox_Field = 179;
pub const FT_Err_Missing_Chars_Field = 180;
pub const FT_Err_Missing_Startchar_Field = 181;
pub const FT_Err_Missing_Encoding_Field = 182;
pub const FT_Err_Missing_Bbx_Field = 183;
pub const FT_Err_Bbx_Too_Big = 184;
pub const FT_Err_Corrupted_Font_Header = 185;
pub const FT_Err_Corrupted_Font_Glyphs = 186;
pub const FT_Err_Max = 187;
pub const struct_FT_Glyph_Metrics_ = extern struct {
    width: FT_Pos,
    height: FT_Pos,
    horiBearingX: FT_Pos,
    horiBearingY: FT_Pos,
    horiAdvance: FT_Pos,
    vertBearingX: FT_Pos,
    vertBearingY: FT_Pos,
    vertAdvance: FT_Pos,
};
pub const FT_Glyph_Metrics = struct_FT_Glyph_Metrics_;
pub const struct_FT_Bitmap_Size_ = extern struct {
    height: FT_Short,
    width: FT_Short,
    size: FT_Pos,
    x_ppem: FT_Pos,
    y_ppem: FT_Pos,
};
pub const FT_Bitmap_Size = struct_FT_Bitmap_Size_;
pub const struct_FT_LibraryRec_ = @OpaqueType();
pub const FT_Library = ?*struct_FT_LibraryRec_;
pub const struct_FT_ModuleRec_ = @OpaqueType();
pub const FT_Module = ?*struct_FT_ModuleRec_;
pub const struct_FT_DriverRec_ = @OpaqueType();
pub const FT_Driver = ?*struct_FT_DriverRec_;
pub const struct_FT_RendererRec_ = @OpaqueType();
pub const FT_Renderer = ?*struct_FT_RendererRec_;
pub const FT_Face = ?*struct_FT_FaceRec_;
pub const FT_ENCODING_NONE = enum_FT_Encoding_.FT_ENCODING_NONE;
pub const FT_ENCODING_MS_SYMBOL = enum_FT_Encoding_.FT_ENCODING_MS_SYMBOL;
pub const FT_ENCODING_UNICODE = enum_FT_Encoding_.FT_ENCODING_UNICODE;
pub const FT_ENCODING_SJIS = enum_FT_Encoding_.FT_ENCODING_SJIS;
pub const FT_ENCODING_PRC = enum_FT_Encoding_.FT_ENCODING_PRC;
pub const FT_ENCODING_BIG5 = enum_FT_Encoding_.FT_ENCODING_BIG5;
pub const FT_ENCODING_WANSUNG = enum_FT_Encoding_.FT_ENCODING_WANSUNG;
pub const FT_ENCODING_JOHAB = enum_FT_Encoding_.FT_ENCODING_JOHAB;
pub const FT_ENCODING_GB2312 = enum_FT_Encoding_.FT_ENCODING_GB2312;
pub const FT_ENCODING_MS_SJIS = enum_FT_Encoding_.FT_ENCODING_MS_SJIS;
pub const FT_ENCODING_MS_GB2312 = enum_FT_Encoding_.FT_ENCODING_MS_GB2312;
pub const FT_ENCODING_MS_BIG5 = enum_FT_Encoding_.FT_ENCODING_MS_BIG5;
pub const FT_ENCODING_MS_WANSUNG = enum_FT_Encoding_.FT_ENCODING_MS_WANSUNG;
pub const FT_ENCODING_MS_JOHAB = enum_FT_Encoding_.FT_ENCODING_MS_JOHAB;
pub const FT_ENCODING_ADOBE_STANDARD = enum_FT_Encoding_.FT_ENCODING_ADOBE_STANDARD;
pub const FT_ENCODING_ADOBE_EXPERT = enum_FT_Encoding_.FT_ENCODING_ADOBE_EXPERT;
pub const FT_ENCODING_ADOBE_CUSTOM = enum_FT_Encoding_.FT_ENCODING_ADOBE_CUSTOM;
pub const FT_ENCODING_ADOBE_LATIN_1 = enum_FT_Encoding_.FT_ENCODING_ADOBE_LATIN_1;
pub const FT_ENCODING_OLD_LATIN_2 = enum_FT_Encoding_.FT_ENCODING_OLD_LATIN_2;
pub const FT_ENCODING_APPLE_ROMAN = enum_FT_Encoding_.FT_ENCODING_APPLE_ROMAN;
pub const enum_FT_Encoding_ = extern enum {
    FT_ENCODING_NONE = 0,
    FT_ENCODING_MS_SYMBOL = 1937337698,
    FT_ENCODING_UNICODE = 1970170211,
    FT_ENCODING_SJIS = 1936353651,
    FT_ENCODING_PRC = 1734484000,
    FT_ENCODING_BIG5 = 1651074869,
    FT_ENCODING_WANSUNG = 2002873971,
    FT_ENCODING_JOHAB = 1785686113,
    FT_ENCODING_GB2312 = 1734484000,
    FT_ENCODING_MS_SJIS = 1936353651,
    FT_ENCODING_MS_GB2312 = 1734484000,
    FT_ENCODING_MS_BIG5 = 1651074869,
    FT_ENCODING_MS_WANSUNG = 2002873971,
    FT_ENCODING_MS_JOHAB = 1785686113,
    FT_ENCODING_ADOBE_STANDARD = 1094995778,
    FT_ENCODING_ADOBE_EXPERT = 1094992453,
    FT_ENCODING_ADOBE_CUSTOM = 1094992451,
    FT_ENCODING_ADOBE_LATIN_1 = 1818326065,
    FT_ENCODING_OLD_LATIN_2 = 1818326066,
    FT_ENCODING_APPLE_ROMAN = 1634889070,
};
pub const FT_Encoding = extern enum {
    FT_ENCODING_NONE = 0,
    FT_ENCODING_MS_SYMBOL = 1937337698,
    FT_ENCODING_UNICODE = 1970170211,
    FT_ENCODING_SJIS = 1936353651,
    FT_ENCODING_PRC = 1734484000,
    FT_ENCODING_BIG5 = 1651074869,
    FT_ENCODING_WANSUNG = 2002873971,
    FT_ENCODING_JOHAB = 1785686113,
    FT_ENCODING_GB2312 = 1734484000,
    FT_ENCODING_MS_SJIS = 1936353651,
    FT_ENCODING_MS_GB2312 = 1734484000,
    FT_ENCODING_MS_BIG5 = 1651074869,
    FT_ENCODING_MS_WANSUNG = 2002873971,
    FT_ENCODING_MS_JOHAB = 1785686113,
    FT_ENCODING_ADOBE_STANDARD = 1094995778,
    FT_ENCODING_ADOBE_EXPERT = 1094992453,
    FT_ENCODING_ADOBE_CUSTOM = 1094992451,
    FT_ENCODING_ADOBE_LATIN_1 = 1818326065,
    FT_ENCODING_OLD_LATIN_2 = 1818326066,
    FT_ENCODING_APPLE_ROMAN = 1634889070,
};
pub const struct_FT_CharMapRec_ = extern struct {
    face: FT_Face,
    encoding: FT_Encoding,
    platform_id: FT_UShort,
    encoding_id: FT_UShort,
};
pub const FT_CharMap = ?*struct_FT_CharMapRec_;
pub const struct_FT_SubGlyphRec_ = @OpaqueType();
pub const FT_SubGlyph = ?*struct_FT_SubGlyphRec_;
pub const struct_FT_Slot_InternalRec_ = @OpaqueType();
pub const FT_Slot_Internal = ?*struct_FT_Slot_InternalRec_;
pub const struct_FT_GlyphSlotRec_ = extern struct {
    library: FT_Library,
    face: FT_Face,
    next: FT_GlyphSlot,
    reserved: FT_UInt,
    generic: FT_Generic,
    metrics: FT_Glyph_Metrics,
    linearHoriAdvance: FT_Fixed,
    linearVertAdvance: FT_Fixed,
    advance: FT_Vector,
    format: FT_Glyph_Format,
    bitmap: FT_Bitmap,
    bitmap_left: FT_Int,
    bitmap_top: FT_Int,
    outline: FT_Outline,
    num_subglyphs: FT_UInt,
    subglyphs: FT_SubGlyph,
    control_data: ?*c_void,
    control_len: c_long,
    lsb_delta: FT_Pos,
    rsb_delta: FT_Pos,
    other: ?*c_void,
    internal: FT_Slot_Internal,
};
pub const FT_GlyphSlot = ?*struct_FT_GlyphSlotRec_;
pub const struct_FT_Size_Metrics_ = extern struct {
    x_ppem: FT_UShort,
    y_ppem: FT_UShort,
    x_scale: FT_Fixed,
    y_scale: FT_Fixed,
    ascender: FT_Pos,
    descender: FT_Pos,
    height: FT_Pos,
    max_advance: FT_Pos,
};
pub const FT_Size_Metrics = struct_FT_Size_Metrics_;
pub const struct_FT_Size_InternalRec_ = @OpaqueType();
pub const FT_Size_Internal = ?*struct_FT_Size_InternalRec_;
pub const struct_FT_SizeRec_ = extern struct {
    face: FT_Face,
    generic: FT_Generic,
    metrics: FT_Size_Metrics,
    internal: FT_Size_Internal,
};
pub const FT_Size = ?*struct_FT_SizeRec_;
pub const struct_FT_Face_InternalRec_ = @OpaqueType();
pub const FT_Face_Internal = ?*struct_FT_Face_InternalRec_;
pub const struct_FT_FaceRec_ = extern struct {
    num_faces: FT_Long,
    face_index: FT_Long,
    face_flags: FT_Long,
    style_flags: FT_Long,
    num_glyphs: FT_Long,
    family_name: ?[*]FT_String,
    style_name: ?[*]FT_String,
    num_fixed_sizes: FT_Int,
    available_sizes: ?[*]FT_Bitmap_Size,
    num_charmaps: FT_Int,
    //charmaps: ?[*]FT_CharMap,
    generic: FT_Generic,

    bbox: FT_BBox,
    units_per_EM: FT_UShort,
    ascender: FT_Short,
    descender: FT_Short,
    height: FT_Short,
    max_advance_width: FT_Short,
    max_advance_height: FT_Short,
    underline_position: FT_Short,
    underline_thickness: FT_Short,
    //glyph: FT_GlyphSlot,
    //size: FT_Size,
    //charmap: FT_CharMap,
    driver: FT_Driver,
    //memory: FT_Memory,
    //stream: FT_Stream,
    sizes_list: FT_ListRec,
    autohint: FT_Generic,
    extensions: ?*c_void,
    internal: FT_Face_Internal,
};
pub const FT_CharMapRec = struct_FT_CharMapRec_;
pub const FT_FaceRec = struct_FT_FaceRec_;
pub const FT_SizeRec = struct_FT_SizeRec_;
pub const FT_GlyphSlotRec = struct_FT_GlyphSlotRec_;
//pub extern fn FT_Init_FreeType(alibrary: ?[*]FT_Library) FT_Error;
pub extern fn FT_Init_FreeType(alibrary: *FT_Library) FT_Error;
pub extern fn FT_Done_FreeType(library: FT_Library) FT_Error;
pub const struct_FT_Parameter_ = extern struct {
    tag: FT_ULong,
    data: FT_Pointer,
};
pub const FT_Parameter = struct_FT_Parameter_;
pub const struct_FT_Open_Args_ = extern struct {
    flags: FT_UInt,
    memory_base: ?[*]const FT_Byte,
    memory_size: FT_Long,
    pathname: ?[*]FT_String,
    stream: FT_Stream,
    driver: FT_Module,
    num_params: FT_Int,
    params: ?[*]FT_Parameter,
};
pub const FT_Open_Args = struct_FT_Open_Args_;
pub extern fn FT_New_Face(library: FT_Library, filepathname: ?[*]const u8, face_index: FT_Long, aface: ?*FT_Face) FT_Error;
pub extern fn FT_New_Memory_Face(library: FT_Library, file_base: ?[*]const FT_Byte, file_size: FT_Long, face_index: FT_Long, aface: ?*FT_Face) FT_Error;
pub extern fn FT_Open_Face(library: FT_Library, args: ?[*]const FT_Open_Args, face_index: FT_Long, aface: ?*FT_Face) FT_Error;
pub extern fn FT_Attach_File(face: FT_Face, filepathname: ?[*]const u8) FT_Error;
pub extern fn FT_Attach_Stream(face: FT_Face, parameters: ?[*]FT_Open_Args) FT_Error;
pub extern fn FT_Reference_Face(face: FT_Face) FT_Error;
pub extern fn FT_Done_Face(face: FT_Face) FT_Error;
pub extern fn FT_Select_Size(face: FT_Face, strike_index: FT_Int) FT_Error;
pub const FT_SIZE_REQUEST_TYPE_NOMINAL = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_NOMINAL;
pub const FT_SIZE_REQUEST_TYPE_REAL_DIM = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_REAL_DIM;
pub const FT_SIZE_REQUEST_TYPE_BBOX = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_BBOX;
pub const FT_SIZE_REQUEST_TYPE_CELL = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_CELL;
pub const FT_SIZE_REQUEST_TYPE_SCALES = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_SCALES;
pub const FT_SIZE_REQUEST_TYPE_MAX = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_MAX;
pub const enum_FT_Size_Request_Type_ = extern enum {
    FT_SIZE_REQUEST_TYPE_NOMINAL,
    FT_SIZE_REQUEST_TYPE_REAL_DIM,
    FT_SIZE_REQUEST_TYPE_BBOX,
    FT_SIZE_REQUEST_TYPE_CELL,
    FT_SIZE_REQUEST_TYPE_SCALES,
    FT_SIZE_REQUEST_TYPE_MAX,
};
pub const FT_Size_Request_Type = enum_FT_Size_Request_Type_;
pub const struct_FT_Size_RequestRec_ = extern struct {
    type: FT_Size_Request_Type,
    width: FT_Long,
    height: FT_Long,
    horiResolution: FT_UInt,
    vertResolution: FT_UInt,
};
pub const FT_Size_RequestRec = struct_FT_Size_RequestRec_;
pub const FT_Size_Request = ?*struct_FT_Size_RequestRec_;
pub extern fn FT_Request_Size(face: FT_Face, req: FT_Size_Request) FT_Error;
pub extern fn FT_Set_Char_Size(face: FT_Face, char_width: FT_F26Dot6, char_height: FT_F26Dot6, horz_resolution: FT_UInt, vert_resolution: FT_UInt) FT_Error;
pub extern fn FT_Set_Pixel_Sizes(face: FT_Face, pixel_width: FT_UInt, pixel_height: FT_UInt) FT_Error;
pub extern fn FT_Load_Glyph(face: FT_Face, glyph_index: FT_UInt, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Load_Char(face: FT_Face, char_code: FT_ULong, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Set_Transform(face: FT_Face, matrix: ?[*]FT_Matrix, delta: ?[*]FT_Vector) void;
pub const FT_RENDER_MODE_NORMAL = enum_FT_Render_Mode_.FT_RENDER_MODE_NORMAL;
pub const FT_RENDER_MODE_LIGHT = enum_FT_Render_Mode_.FT_RENDER_MODE_LIGHT;
pub const FT_RENDER_MODE_MONO = enum_FT_Render_Mode_.FT_RENDER_MODE_MONO;
pub const FT_RENDER_MODE_LCD = enum_FT_Render_Mode_.FT_RENDER_MODE_LCD;
pub const FT_RENDER_MODE_LCD_V = enum_FT_Render_Mode_.FT_RENDER_MODE_LCD_V;
pub const FT_RENDER_MODE_MAX = enum_FT_Render_Mode_.FT_RENDER_MODE_MAX;
pub const enum_FT_Render_Mode_ = extern enum {
    FT_RENDER_MODE_NORMAL = 0,
    FT_RENDER_MODE_LIGHT = 1,
    FT_RENDER_MODE_MONO = 2,
    FT_RENDER_MODE_LCD = 3,
    FT_RENDER_MODE_LCD_V = 4,
    FT_RENDER_MODE_MAX = 5,
};
pub const FT_Render_Mode = enum_FT_Render_Mode_;
pub extern fn FT_Render_Glyph(slot: FT_GlyphSlot, render_mode: FT_Render_Mode) FT_Error;
pub const FT_KERNING_DEFAULT = enum_FT_Kerning_Mode_.FT_KERNING_DEFAULT;
pub const FT_KERNING_UNFITTED = enum_FT_Kerning_Mode_.FT_KERNING_UNFITTED;
pub const FT_KERNING_UNSCALED = enum_FT_Kerning_Mode_.FT_KERNING_UNSCALED;
pub const enum_FT_Kerning_Mode_ = extern enum {
    FT_KERNING_DEFAULT = 0,
    FT_KERNING_UNFITTED = 1,
    FT_KERNING_UNSCALED = 2,
};
pub const FT_Kerning_Mode = enum_FT_Kerning_Mode_;
pub extern fn FT_Get_Kerning(face: FT_Face, left_glyph: FT_UInt, right_glyph: FT_UInt, kern_mode: FT_UInt, akerning: ?[*]FT_Vector) FT_Error;
pub extern fn FT_Get_Track_Kerning(face: FT_Face, point_size: FT_Fixed, degree: FT_Int, akerning: ?[*]FT_Fixed) FT_Error;
pub extern fn FT_Get_Glyph_Name(face: FT_Face, glyph_index: FT_UInt, buffer: FT_Pointer, buffer_max: FT_UInt) FT_Error;
pub extern fn FT_Get_Postscript_Name(face: FT_Face) ?[*]const u8;
pub extern fn FT_Select_Charmap(face: FT_Face, encoding: FT_Encoding) FT_Error;
pub extern fn FT_Set_Charmap(face: FT_Face, charmap: FT_CharMap) FT_Error;
pub extern fn FT_Get_Charmap_Index(charmap: FT_CharMap) FT_Int;
pub extern fn FT_Get_Char_Index(face: FT_Face, charcode: FT_ULong) FT_UInt;
pub extern fn FT_Get_First_Char(face: FT_Face, agindex: ?[*]FT_UInt) FT_ULong;
pub extern fn FT_Get_Next_Char(face: FT_Face, char_code: FT_ULong, agindex: ?[*]FT_UInt) FT_ULong;
pub extern fn FT_Face_Properties(face: FT_Face, num_properties: FT_UInt, properties: ?[*]FT_Parameter) FT_Error;
pub extern fn FT_Get_Name_Index(face: FT_Face, glyph_name: ?[*]FT_String) FT_UInt;
pub extern fn FT_Get_SubGlyph_Info(glyph: FT_GlyphSlot, sub_index: FT_UInt, p_index: ?[*]FT_Int, p_flags: ?[*]FT_UInt, p_arg1: ?[*]FT_Int, p_arg2: ?[*]FT_Int, p_transform: ?[*]FT_Matrix) FT_Error;
pub extern fn FT_Get_FSType_Flags(face: FT_Face) FT_UShort;
pub extern fn FT_Face_GetCharVariantIndex(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_UInt;
pub extern fn FT_Face_GetCharVariantIsDefault(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_Int;
pub extern fn FT_Face_GetVariantSelectors(face: FT_Face) ?[*]FT_UInt32;
pub extern fn FT_Face_GetVariantsOfChar(face: FT_Face, charcode: FT_ULong) ?[*]FT_UInt32;
pub extern fn FT_Face_GetCharsOfVariant(face: FT_Face, variantSelector: FT_ULong) ?[*]FT_UInt32;
pub extern fn FT_MulDiv(a: FT_Long, b: FT_Long, c: FT_Long) FT_Long;
pub extern fn FT_MulFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_DivFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_RoundFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_CeilFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_FloorFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_Vector_Transform(vec: ?[*]FT_Vector, matrix: ?[*]const FT_Matrix) void;
pub extern fn FT_Library_Version(library: FT_Library, amajor: ?[*]FT_Int, aminor: ?[*]FT_Int, apatch: ?[*]FT_Int) void;
pub extern fn FT_Face_CheckTrueTypePatents(face: FT_Face) FT_Bool;
pub extern fn FT_Face_SetUnpatentedHinting(face: FT_Face, value: FT_Bool) FT_Bool;
