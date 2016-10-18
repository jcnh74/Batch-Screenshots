Batch Screenshots
=====================

Using ImageMagick we batch a group of png filled directories into screenshots for the App Store

Begin
- install ImageMagic via [This Link](http://www.gctv.ne.jp/~yokota/magick/#mem1)
- change script permissions like this `chmod 700 ./sshot.sh`
- run bash `./sshot.sh ~/Desktop/stickers/` where `~/Desktop/stickers/` is the directory with all your sticker directories
- a directory will be added called `screenshots` and pngs will be added in sequential order ie. screenshot000.png, screenshot001.png, screenshot002.png ...

Todo
- place screenshots into created Screenshot directories within sticker directories
- include multiple versions of screenshots.

