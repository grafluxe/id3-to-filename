# ID3 To Filename

Automatically rename MP3 files to match the artist and title info from their ID3
tags.

![screencast](screencast.gif)

## Why

This script was created for those who like to manage their own music files
without the help of iTunes.

When used to purchase and convert MP3s, iTunes names a music file as
`<track> - <title>` and does not include the artist name. Since I don't rely on
iTunes to manage my music, I find it offputting that there is no way to include
the artists name (and remove the track number). This script fixes the issue by
renaming MP3 files to `<artist> - <title>`. It reads data from the files ID3
tag so that its name matches how most music players display the song info.

How iTunes saves an MP3:

```
01 Get On The Good Foot.mp3
```

How this script renames the same MP3:

```
James Brown - Get On The Good Foot.mp3
```

## Usage

```
sh <path-to-id3filename.sh> [<file> | <directory>]
```
This script can be used on an MP3 file for single execution or on an entire
directory. When used on a directory, only MP3 files will be effected.

## TODO

- Add `.profile` installer for easy reuse.
- Add support for unicode characters.

## License

Copyright (c) 2018 Leandro Silva (http://grafluxe.com)

Released under the MIT License.

See LICENSE.md for entire terms.
