# Zig interface to freetype2 C library

## Cloning repo

Depends on freetype2 submodule and currently using tag VER-2-9-1.
For further information see https://www.freetype.org/ and
https://www.freetype.org/developer.html

When cloning use `--recursive` so that modules/freetype2 is fetched:
```
git clone --recursive https://github.com/winksaville/zig-freetype2
```

If you forgot or don't wish to use `--recursive` then sumodule update and init:
```
git clone https://github.com/winksaville/zig-freetype2
git submodule update --init
```

## Test and builds libfreetype if not already built

```
$ make test
zig test test.zig -rpath modules/freetype2/objs/libs --library-path modules/freetype2/objs/.libs --library freetype --library c
Test 1/1 example1...OK
All tests passed.
```

## Build libfreetype

```
$ make libfreetype2
cd modules/freetype2 && sh ./autogen.sh && ./configure && make -j5
generating `configure.ac'
running `aclocal -I . --force'
running `libtoolize --force --copy --install'
libtoolize: putting auxiliary files in '.'.
libtoolize: copying file './config.guess'
libtoolize: copying file './config.sub'

...

libtool: link: ar cr /home/wink/prgs/graphics/zig-freetype2/modules/freetype2/objs/.libs/libfreetype.a  /home/wink/prgs/graphics/zig-freetype2/modules/freetyo
libtool: link: ranlib /home/wink/prgs/graphics/zig-freetype2/modules/freetype2/objs/.libs/libfreetype.a
libtool: link: ( cd "/home/wink/prgs/graphics/zig-freetype2/modules/freetype2/objs/.libs" && rm -f "libfreetype.la" && ln -s "../libfreetype.la" "libfreetype)
make[1]: Leaving directory '/home/wink/prgs/graphics/zig-freetype2/modules/freetype2'
```

## Created freetype2.zig

Create freetype2.original.zig which can be edited to make freetype2.zig

```
$ make freetype2.original.zig
```

