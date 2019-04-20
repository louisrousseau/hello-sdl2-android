#!/bin/bash -x
mkdir -p external/SDL2 
pushd external/SDL2

wget https://www.libsdl.org/release/SDL2-2.0.9.zip
unzip -q SDL2-2.0.9.zip
mv SDL2-2.0.9 SDL2
rm SDL2-2.0.9.zip

wget https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.4.zip
unzip -q SDL2_image-2.0.4.zip
mv SDL2_image-2.0.4 SDL2_image
rm SDL2_image-2.0.4.zip

popd
# No need to copy SDLActivity.java et al, repo contains those from 2.0.9
# cp external/SDL2/SDL2/android-project/app/src/main/java/org/libsdl/app/*.java android/app/src/main/java/org/libsdl/app/
