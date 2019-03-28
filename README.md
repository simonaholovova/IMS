# Enviroment Setup

This project was tested on machine with the following parameters:

- Windows 10 64-bit
- Intel i5-2500k
- GTX 1070
- 8 GB RAM


Required programs:
  - ffmpeg 
  - VMAF binaries
  - Visual Studio 2015 or 2017
  - powershell
  - Optional:
    - MSI Afterburner (for FPS recording).
    - Microsoft Excel.
    - Provided powershell script (*enc.ps1*) for testing purposes.
    - Example *yuv* file (used for this project) can be downloaded [here](https://drive.google.com/drive/folders/1JBg2N0ZJC27b0Htoeazra_l0yOshglls?fbclid=IwAR2xkH3u-oieYGybnB9h30f6EVCTO9aAoX1mS2YoDjYjTgi0vOFGTpS1OyA)

## Installation!

  - Download latest stable ffmpeg from [official website](https://ffmpeg.zeranoe.com/builds/). This project used version 4.1.1.
  - Extract downloaded archive and add /bin folder into PATH.
  - Download VMAF from [github](https://github.com/Netflix/vmaf).
  - Open *vmaf.sln* using Visual Studio (if using VS 2017, click yes when prompted to upgrade project).
  - Set **release** build variant and build the project.
  - Add compiled binaries from */project_path/x64/Release/* into PATH.



Optional
  - Install [MSI Afterburner](https://www.msi.com/page/afterburner) with RiverTune server.


## Using supplied script

Supplied powershell script automates generation of all required files and calculations. Script requires three input parameters, first is path to *.yuv* raw video file recorded with resolution of 1280x720 and pixel format yuv420p. Second parameter is folder, where all necessary files will be created (**expect around 130 GB**), third parameter is path to VMAF model (usually located at */downloaded-project-path/model/vmaf_v0.6.1.pkl*)

### Example:
```powershell
.\enc.ps1 raw.yuv "L:\work\" "L:\vmaf\model\vmaf_v0.6.1.pkl" 
```

Script does the following:
- encodes supplied rawfile into H.264, H.265 and VP9 with 3000, 3500, 4000, 4500, 5000, 5500 and 6000 kbps bitrate and records time required to encode the video. 
- decodes encoded files back to raw format
- calculates VMAF score using original raw file and decoded raw file after encoding.
- prints results

### Notes

If using supplied raw file, expect required free disk space to be around 130 GB. VP9 encoding is slow, script can take several hours to complete (around 3). 
