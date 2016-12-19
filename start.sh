#!/bin/bash

ffmpeg -re -stream_loop -1 -i 'BigBuckBunny.mp4' -acodec libfdk_aac -vcodec libx264 -f flv "${TARGET_RTMP_URL}"
