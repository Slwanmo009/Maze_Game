#!/bin/bash

# تحديث قائمة الحزم
sudo apt-get update

# تثبيت SDL2
sudo apt-get install libsdl2-dev -y

# تثبيت SDL2_image
sudo apt-get install libsdl2-image-dev -y

# التحقق من التثبيت
if sdl2-config --version && dpkg -s libsdl2-image-dev | grep "Status: install ok installed"; then
    echo "تم تثبيت SDL2 و SDL2_image بنجاح"
else
    echo "حدث خطأ أثناء التثبيت"
fi
