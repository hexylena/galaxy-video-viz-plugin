# Galaxy Video Viz Plugin

This plugin allows for viewing of videos (mp4 files) directly in the galaxy interface.

Galaxy, now with cute cat videos

![https://github.com/erasche/galaxy-video-viz-plugin.git]

# Design

It is powered by [video.js](https://github.com/videojs/video.js/), with two plugins: speed controls (play video faster/more slowly), and frame-by-frame controls to allow stepping through a video in increments.

# Installation

Installation is slightly more complicated than normal, because I use git and submodules so as to track upstream repositories

```bash
cd $VIZ_PLUGIN_DIR
git clone https://github.com/erasche/galaxy-video-viz-plugin.git video
cd video
git submodule init
git submodule update
```

