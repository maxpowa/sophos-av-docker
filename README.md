# Sophos AV for Docker

Simple dockerfile to allow running Sophos AV on practically any Docker supported system.

Sample Usage:
```
bash$ docker pull maxpowa/sophos-av
bash$ docker run -it -v /home/max:/scan maxpowa/sophos-av savscan -all /scan
```

Usage Guide:
https://www.sophos.com/en-us/medialibrary/PDFs/documentation/savl_9_cgeng.pdf

