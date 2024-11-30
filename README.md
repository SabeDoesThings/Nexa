# Nexa![newnexa](https://github.com/user-attachments/assets/12e19c25-fd94-44e6-bd66-5690fa5996de)

A simple [odin](https://odin-lang.org/) library I made to use to make my games :)

## Getting Started
1. First get [Odin](https://odin-lang.org/) installed.
2. Add the nexa [folder](https://github.com/SabeDoesThings/Nexa/tree/main/nexa) to your project
That's all you need to do!

### Basic Gameloop
```odin
package main

import nx "nexa"

init :: proc() {}

update :: proc(dt: f32) {}

render :: proc() {}

main :: proc() {
  nx.game(init, update, render, "Nexa Game", 1280, 720, false)
}
```
