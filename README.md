# C++ Project Starter Template

## Based on https://github.com/TheCherno/ProjectTemplate

## Originally used premake. This version uses cmake.

This is a little quick-start project template for C++ projects which utilise a Core/App project architecture. There are two included projects - one called _Core_, and one called _App_. [CMake](https://github.com/Kitware/CMake) is used to generate project files.

Core builds into a static library and is meant to contain common code intended for use in multiple applications. App builds into an executable and links the Core static library, as well as provides an include path to Core's code.

The `Scripts/` directory contains build scripts for Windows and Linux, the `Vendor/` directory has been removed, because cmake usually depends on system-wide libraries and utilities (you will need to download and install CMake, currently tested on version 3.30.3).

## Getting Started
1. Clone this repository or use the "Use this template" button on GitHub to quickly set up your own repository based on this template
2. `App/` and `Core/` are the two projects - you can edit the names of these folders and their contents to suit
3. The three included CMake build files are `CMakeLists.txt`, `Core/CMakeLists.txt` and `App/CMakeLists.txt` - you can edit these to customise your build configurations, edit the names of your projects and workspace/solution, etc.
4. Open the `Scripts/` directory and run the appropriate `Setup` script to generate projects files. You can edit the setup scripts, so if things aren't working make sure to check that.

Note that no macOS setup script is currently provided; you can duplicate the Linux script and adjust accordingly.

## Included
- Some example code (in `App/Source` and `Core/Source`) to provide a starting point and test
- Comprehensive `.gitignore` to ignore project files and binaries

## License
- UNLICENSE for this repository (see `UNLICENSE.txt` for more details)