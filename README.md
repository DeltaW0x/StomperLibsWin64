# Build instructions


## ffmpeg

1. Open a Visual Studio 2022 Developer command prompt
2. Navigate to `VC\Auxiliary\Build` and run `vcvarsall.bat amd64`
3. Run `msys2_shell.cmd` from the same command prompt
4. Run `pacman -S make nasm diffutils pkg-config`
5. Run `export PATH="/c/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/MSVC_VERSION_HERE/bin/Hostx64/x64/":$PATH` replacing MSVC_VERSION_HERE with your MVSC version
6. Navigate to the ffmpeg source directory and run `./configure --enable-asm --enable-dxva2 --disable-avdevice --disable-swscale --disable-doc --disable-ffplay --disable-ffprobe --disable-ffmpeg --enable-shared --disable-static --disable-bzlib --disable-libopenjpeg --disable-iconv --disable-zlib --prefix=./InstallDir --target-os=win64 --arch=x86_64 --toolchain=msvc`
7. Run `make -j NUM_CORES && make install` where NUM_CORE is your cpu core count

## SDL

1. Open a command prompt
2. Run `cmake -S SDL_SOURCE_DIR -B SDL_SOURCE_DIR/Build -DCMAKE_INSTALL_PREFIX=SDL_SOURCE_DIR/InstallDir` where `SDL_SOURCE_DIR` is SDL's source code directory
3. Run `cmake --build SDL_SOURCE_DIR/Build --config Release --target install`