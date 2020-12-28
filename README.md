# ID3 To Filename

Automatically rename MP3 files to match the artist and title info from their ID3
tags.

![screencast](screencast.gif)

If installing via the [CURL command](#via-curl) below, you can use the
`id3filename` command instead of executing the file directly with
`zsh id3filename.zsh`.

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
id3filename [<file> | <directory>]
```
This script can be used on an MP3 file for single execution or on an entire
directory. When used on a directory, only MP3 files will be effected.

## Install

### Via CURL

This installs the script to your $HOME directory.

```
mkdir -p ~/.id3-to-filename && \
curl -Lko ~/.id3-to-filename/LICENSE.md https://raw.githubusercontent.com/grafluxe/id3-to-filename/master/LICENSE.md && \
curl -Lko ~/.id3-to-filename/id3filename.zsh https://raw.githubusercontent.com/grafluxe/id3-to-filename/master/id3filename.zsh && \
echo 'alias id3filename="zsh ~/.id3-to-filename/id3filename.zsh"' >> ~/.zshrc && \
source ~/.zshrc  && \
echo Done!
```

### Via zip file

- Download the [zip file](https://github.com/grafluxe/id3-to-filename/archive/v2.0.0.zip).
- Unzip it.
- Run the bash file `id3filename.zsh`.


## Bash Version

While the current version executes in zsh, [v1.0.0](https://github.com/grafluxe/id3-to-filename/blob/v1.0.0/README.md) executes in bash.

## License

Copyright (c) 2018 - 2020 Leandro Silva (http://grafluxe.com)

Released under the MIT License.

See LICENSE.md for entire terms.
