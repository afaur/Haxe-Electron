# What is this project

This is a very basic example project for building an [Electron](http://electron.atom.io/) application with [Haxe](http://haxe.org/).

# Getting started

Download Haxe [here](http://haxe.org/download/)
Then run the `haxelib setup` command.
Here is an example:

```
// Haxe Does not understand ~ so you must specify the dir absolutely.
// Also using .haxelib doesn't seem to work properly as of now.

// Replace `username` below with your system user
haxelib setup /Users/username/haxelib
```

# Download dependencies

This is so we can run our tests.
```
haxelib install buddy
```
This is so we can build [electron](http://electron.atom.io/) apps
```
haxelib install hxnodejs
haxelib install electron
```

This is so we can run our electron app after it gets compiled with the
`./compile` command.
```
npm install -g electron-prebuilt
```

# Compile and inspect
After that you should be able to `git clone` this project and then run: `./compile`

---
> `compile` is just a bash script that runs `haxe build.hxml`
> For more information on `build.hxml` look here: 
> - http://old.haxe.org/doc/compiler

The `build.hxml` file tells the compiler to:
- Find the source files inside `src`
- Create a `app.js` file in the `build` directory.

The `./clean` bash script will clean out the build directory.

Try changing the build target by using the other options found at:
- http://haxe.org/documentation/introduction/compiler-usage.html

# Running tests

Right now there is only one test but it can be run using: `./check`
