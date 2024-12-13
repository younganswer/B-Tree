# B-Tree

C++ implementation of B-Tree.

<br/>
<br/>

# Summary

This project implements B-Tree similiar as the C++ `Standard Template Library` (STL). It supports iterators but does not support allocators and deallocators.

The tree structure is wrapped with a `set`. You can test the implementation using the provided `main.cpp` file.

<br/>
<br/>

# Supported Platforms

## Operating System

MacOS-sequoia15.0

</br>

## Compiler

Apple clang version 16.0.0 (clang-1600.0.26.3)

Target: arm64-apple-darwin24.1.0

Thread model: posix

InstalledDir: /Library/Developer/CommandLineTools/usr/bin

</br>

## Software Development Kit (SDK)

This tester is developed with `Non-standard SDK` below. It may not work on other SDKs.

```
$ ls /Library/Developer/CommandLineTools/SDKs

MacOSX.sdk MacOSX14.5.sdk MacOSX14.sdk MacOSX15.0.sdk MacOSX15.sdk
```

</br>
</br>

# Getting Started

## Installation

```bash
$ make [-jN] [all]
```

</br>

## Usage

```bash
$ ./b-tree
```

### Instructions

-   `i <key>`: Insert a key.
-   `d <key>`: Delete a key.

</br>

## Supported Makefile rules

-   `all`: Build the project.
-   `clean`: Remove all build files.
-   `fclean`: Remove all build files and executable.

<br/>
<br/>

# License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

<br/>
<br/>

# Contact

You can contact me at <mailto:younganswer@kookmin.ac.kr>
