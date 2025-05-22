# Hello Util Library

AI:

A lightweight utility library written in C for printing and formatting strings with simple behaviors like repetition, uppercasing, and line printing.

Me:

Its an example library to demo the features of my actual project [**c-package**](https://github.com/bengelb-io/c-package)

## Features

- **`times`** – Print a string multiple times.
- **`scream`** – Print a string in uppercase.
- **`println`** – Print a string followed by a newline.

## Header

Make sure to include the `hello_util.h` header in your code to use the functions.

```c
#include "hello_util.h"
```

## Functions

### `void times(const char *hello, int x);`

Prints the given string `hello` exactly `x` times without any additional spacing or newlines.

**Example:**

```c
times("Hi! ", 3);  // Output: Hi! Hi! Hi!
```

### `void scream(const char *hello);`

Prints the input string in uppercase. Non-lowercase characters are printed as-is.

**Example:**

```c
scream("hello, world!");  // Output: HELLO, WORLD!
```

### `void println(const char *hello);`

Prints the given string followed by a newline character (`\n`).

**Example:**

```c
println("Look ma! No newline!");  // Output: Look ma! No newline!!\n
```

## Build & Usage

Install this library into your current project with [**c-package**](https://github.com/bengelb-io/c-package) :

```bash
cpack gh+bengelb-io/hello_util .
```

[**c-package**](https://github.com/bengelb-io/c-package) installs the libraryas a static file (*.a) in the `c_packages` directory of your project.

Make sure your `main.c` includes the header:

```c
#include "hello_util.h"
```

c-package can optionally manage building your application (experimental!) 

```bash
cpack build .
```

## License

This library is released under the MIT License. Use it freely in your projects.
