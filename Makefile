
test: libfreetype
	zig test test.zig -rpath modules/freetype2/objs/libs --library-path modules/freetype2/objs/.libs --library freetype --library c

libfreetype: modules/freetype2/objs/.libs/libfreetype.so

modules/freetype2/objs/.libs/libfreetype.so:
	cd modules/freetype2 && sh ./autogen.sh && ./configure && make -j5

freetype2.original.zig:
	zig translate-c freetype2.original.c -isystem modules/freetype2/include > $@

clean:
	rm -rf zig-cache modules/freetype2/objs/.o modules/freetype2/objs/.libs
