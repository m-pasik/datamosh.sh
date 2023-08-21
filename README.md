# datamosh.sh
A bash script to concatenate 2 videos and remove I-frames from the second video to create characteristic datamosh effect. 

## Requirements
- `ffmpeg`
- `bash`
- `bc`
- `awk`

## Install
Put the script in some directory listed in your `$PATH`.

## Usage
Output file has to be an mp4.
```
./datamosh.sh <first_video> <second_video> <output_file>
```
