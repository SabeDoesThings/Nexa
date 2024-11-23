# Nexa![newnexa](https://github.com/user-attachments/assets/12e19c25-fd94-44e6-bd66-5690fa5996de)

A simple [odin](https://odin-lang.org/) library I made to use to make my games :)

# Install
1. First get [Odin](https://odin-lang.org/) is installed.
2. Add the nexa [folder](https://github.com/SabeDoesThings/Nexa/tree/main/nexa) to your project.
3. Then add all of the SDL [dlls](https://github.com/odin-lang/Odin/tree/master/vendor/sdl2) to your main directory.
4. You can see a full example project [here](https://github.com/SabeDoesThings/Nexa/tree/main/examples).

## Basic Gameloop
```go
package main

import nx "nexa"

init :: proc() {}

update :: proc(dt: f32) {}

render :: proc(ctx: ^nx.Context) {}

main :: proc() {
  nx.game(init, update, render, "Nexa Game", 1280, 720, false)
}
```
