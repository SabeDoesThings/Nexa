# WELCOME
Hello! This is a simple cheatsheet of all the functinality of Nexa. This will go over all the functions, structs, enums, etc and give a short explanation of how they work. Enjoy :)

# CONSTANTS
## Colors
All the preset colors available for use.
```go
WHITE      : Color : { 255, 255, 255, 255 };        // White
BLACK      : Color : { 0, 0, 0, 255 };              // Black
RED        : Color : { 255, 0, 0, 255 };            // Red
GREEN      : Color : { 0, 255, 0, 255 };            // Green
BLUE       : Color : { 0, 0, 255, 255 };            // Blue
YELLOW     : Color : { 255, 255, 0, 255 };          // Yellow
CYAN       : Color : { 0, 255, 255, 255 };          // Cyan
MAGENTA    : Color : { 255, 0, 255, 255 };          // Magenta
ORANGE     : Color : { 255, 165, 0, 255 };          // Orange
PURPLE     : Color : { 128, 0, 128, 255 };          // Purple
BROWN      : Color : { 165, 42, 42, 255 };          // Brown
GRAY       : Color : { 128, 128, 128, 255 };        // Gray
LIGHTGRAY  : Color : { 211, 211, 211, 255 };        // Light Gray
DARKGRAY   : Color : { 169, 169, 169, 255 };        // Dark Gray
PINK       : Color : { 255, 192, 203, 255 };        // Pink
GOLD       : Color : { 255, 215, 0, 255 };          // Gold
SILVER     : Color : { 192, 192, 192, 255 };        // Silver
MAROON     : Color : { 128, 0, 0, 255 };            // Maroon
OLIVE      : Color : { 128, 128, 0, 255 };          // Olive
LIME       : Color : { 50, 205, 50, 255 };          // Lime
TEAL       : Color : { 0, 128, 128, 255 };          // Teal
NAVY       : Color : { 0, 0, 128, 255 };            // Navy
VIOLET     : Color : { 238, 130, 238, 255 };        // Violet
INDIGO     : Color : { 75, 0, 130, 255 };           // Indigo
TURQUOISE  : Color : { 64, 224, 208, 255 };         // Turquoise
PEACH      : Color : { 255, 218, 185, 255 };        // Peach
MINT       : Color : { 189, 252, 201, 255 };        // Mint
CORAL      : Color : { 255, 127, 80, 255 };         // Coral
LIGHTPINK  : Color : { 255, 182, 193, 255 };        // Light Pink
DARKORANGE : Color : { 255, 140, 0, 255 };          // Dark Orange
DARKGREEN  : Color : { 0, 100, 0, 255 };            // Dark Green
DARKBLUE   : Color : { 0, 0, 139, 255 };            // Dark Blue
LAVENDER   : Color : { 230, 230, 250, 255 };        // Lavender
CRIMSON    : Color : { 220, 20, 60, 255 };          // Crimson
FUCHSIA    : Color : { 255, 0, 255, 255 };          // Fuchsia
LIGHTYELLOW : Color : { 255, 255, 224, 255 };       // Light Yellow
LIGHTGREEN  : Color : { 144, 238, 144, 255 };       // Light Green
LIGHTBLUE   : Color : { 173, 216, 230, 255 };       // Light Blue
LIGHTCORAL  : Color : { 240, 128, 128, 255 };       // Light Coral
TOMATO     : Color : { 255, 99, 71, 255 };          // Tomato
SEASHELL   : Color : { 255, 228, 196, 255 };        // Seashell
HONEYDEW   : Color : { 240, 255, 240, 255 };        // Honeydew
MISTYROSE  : Color : { 255, 228, 225, 255 };        // Misty Rose
WHITESMOKE : Color : { 245, 245, 245, 255 };        // White Smoke
AZURE      : Color : { 240, 255, 255, 255 };        // Azure
SANDYBROWN : Color : { 244, 164, 96, 255 };         // Sandy Brown
SLATEGRAY  : Color : { 112, 128, 144, 255 };        // Slate Gray
KHAKI      : Color : { 240, 230, 140, 255 };        // Khaki
LIMEGREEN  : Color : { 50, 205, 50, 255 };          // Lime Green
MEDIUMSLATEBLUE : Color : { 123, 104, 238, 255 };   // Medium Slate Blue
SADDLEBROWN : Color : { 139, 69, 19, 255 };         // Saddle Brown
SLATEBLUE  : Color : { 106, 90, 205, 255 };         // Slate Blue
DODGERBLUE : Color : { 30, 144, 255, 255 };         // Dodger Blue
DEEPSKYBLUE : Color : { 0, 191, 255, 255 };         // Deep Sky Blue
MEDIUMPURPLE : Color : { 147, 112, 219, 255 };      // Medium Purple
PALEVIOLETRED : Color : { 219, 112, 147, 255 };     // Pale Violet Red
NAVAJOWHITE : Color : { 255, 222, 173, 255 };       // Navajo White
GAINSBORO  : Color : { 220, 220, 220, 255 };        // Gainsboro
CHARTREUSE : Color : { 127, 255, 0, 255 };          // Chartreuse
PLUM       : Color : { 221, 160, 221, 255 };        // Plum
ORCHID     : Color : { 218, 112, 214, 255 };        // Orchid
PEA        : Color : { 197, 227, 132, 255 };        // Pea
DARKSALMON : Color : { 233, 150, 122, 255 };        // Dark Salmon
LIGHTSEAGREEN : Color : { 32, 178, 170, 255 };      // Light Sea Green
MEDIUMAQUAMARINE : Color : { 102, 205, 170, 255 };  // Medium Aquamarine
THISTLE    : Color : { 216, 191, 216, 255 };        // Thistle
LIGHTSTEELBLUE : Color : { 176, 196, 222, 255 };    // Light Steel Blue
CADETBLUE  : Color : { 95, 158, 160, 255 };         // Cadet Blue
DARKCYAN   : Color : { 0, 139, 139, 255 };          // Dark Cyan
LAVENDERBLUSH : Color : { 255, 240, 245, 255 };     // Lavender Blush
HOTPINK    : Color : { 255, 105, 180, 255 };        // Hot Pink
SILVERCHALICE : Color : { 192, 192, 192, 255 };     // Silver Chalice
DARKOLIVEGREEN : Color : { 85, 107, 47, 255 };      // Dark Olive Green
OLIVEGREEN  : Color : { 128, 128, 0, 255 };         // Olive Green
TAN        : Color : { 210, 180, 140, 255 };        // Tan
ROSYBROWN  : Color : { 188, 143, 143, 255 };        // Rosy Brown
REDVIOLET  : Color : { 207, 50, 119, 255 };         // Red Violet
MIDNIGHTBLUE : Color : { 25, 25, 112, 255 };        // Midnight Blue
AQUAMARINE : Color : { 127, 255, 212, 255 };        // Aquamarine
BRIGHTRED  : Color : { 255, 0, 0, 255 };            // Bright Red
DARKKHAKI  : Color : { 189, 183, 107, 255 };        // Dark Khaki
FIREBRICK  : Color : { 178, 34, 34, 255 };          // Firebrick
CORNFLOWERBLUE : Color : { 100, 149, 237, 255 };    // Cornflower Blue
```

# STRUCTS
## Texure2D
The struct for a 2D texture.
```go
Texture2D :: struct {
    t_surface: ^SDL.Surface, // Basically the id of the texture
    width, height: i32,      // The width and height of the texture
}
```

## Color
The struct to make a rgba color.
```go
Color :: struct {
    r, g, b, a: u8, // red, green, blue, alpha
} 
```

## Rectangle
The struct to make a simple rectangle shape.
```go
Rectangle :: struct {
    x, y, width, height: i32,
    // x pos, y pos, width and height of the rectangle
}
```

## Animation
The struct to make an animation.
```go
Animation :: struct {
    texture: Texture2D,      // The entire spritesheet texture
    frame_width: i32,        // The width of one frame 
    frame_height: i32,       // The height of one frame
    num_frame: i32,          // The number of frames for the animation to go through
    frame_time: f32,         // How long to stay on a frame 
    current_frame: i32,      // The current frame
    elapsed_time: f32,       // The amount of time that passes between frames
    start_frame: i32,        // The starting frame of the animation
    end_frame: i32,          // The frame to stop on before looping back
}
```

## Camera2D
The struct for a 2d camera.
```go
Camera2D :: struct {
    x, y: i32,        // x and y position
    zoom: f32,        // zoom amount
}
```

# ENUMS
## Keys
The keys you can use in a program.
```go
Keys :: enum(u32) {
    A = u32(SDL.Scancode.A),             // The 'A' key
    B = u32(SDL.Scancode.B),             // The 'B' key
    C = u32(SDL.Scancode.C),             // The 'C' key
    D = u32(SDL.Scancode.D),             // The 'D' key
    E = u32(SDL.Scancode.E),             // The 'E' key
    F = u32(SDL.Scancode.F),             // The 'F' key
    G = u32(SDL.Scancode.G),             // The 'G' key
    H = u32(SDL.Scancode.H),             // The 'H' key 
    I = u32(SDL.Scancode.I),             // The 'I' key
    J = u32(SDL.Scancode.J),             // The 'J' key
    K = u32(SDL.Scancode.K),             // The 'K' key
    L = u32(SDL.Scancode.L),             // The 'L' key
    M = u32(SDL.Scancode.M),             // The 'M' key
    N = u32(SDL.Scancode.N),             // The 'N' key
    O = u32(SDL.Scancode.O),             // The 'O' key
    P = u32(SDL.Scancode.P),             // The 'P' key
    Q = u32(SDL.Scancode.Q),             // The 'Q' key
    R = u32(SDL.Scancode.R),             // The 'R' key
    S = u32(SDL.Scancode.S),             // The 'S' key
    T = u32(SDL.Scancode.T),             // The 'T' key
    U = u32(SDL.Scancode.U),             // The 'U' key
    V = u32(SDL.Scancode.V),             // The 'V' key
    W = u32(SDL.Scancode.W),             // The 'W' key
    X = u32(SDL.Scancode.X),             // The 'X' key
    Y = u32(SDL.Scancode.Y),             // The 'X' key
    Z = u32(SDL.Scancode.Z),             // The 'Z' key
    SPACE = u32(SDL.Scancode.SPACE),     // The 'SPACE' key
    ESCAPE = u32(SDL.Scancode.ESCAPE),   // The 'ESCAPE' key
    UP = u32(SDL.Scancode.UP),           // The 'UP' arrow key
    DOWN = u32(SDL.Scancode.DOWN),       // The 'DOWN' arrow key
    LEFT = u32(SDL.Scancode.LEFT),       // The 'LEFT' arrow key
    RIGHT = u32(SDL.Scancode.RIGHT),     // The 'RIGHT' arrow key
    MAX_KEYS,                            // The maximum amount of keys
}
```

## MouseButtons
The mouse buttons you can use in a program.
```go
MouseButtons :: enum {
    LEFT = SDL.BUTTON_LEFT,     // The 'LEFT' mouse button
    MIDDLE = SDL.BUTTON_MIDDLE, // The 'MIDDLE' mouse button
    RIGHT = SDL.BUTTON_RIGHT,   // The 'RIGHT' mouse button
    X1 = SDL.BUTTON_X1,         // The 'X1' mouse button
    X2 = SDL.BUTTON_X2,         // The 'X2' mouse button
    MAX_BUTTONS                 // The maximum amount of mouse buttons
}
```

# FUNCTIONS
## game
The function that creates your nexa app.
You pass in your on_run, update, and render functions and you title, width and height of the window, and whether or not you want to window to be resizable or not.
```go
game :: proc(
    init: proc(),
    update: proc(dt: f32),
    render: proc(ctx: ^Context),
    title: cstring = "Nexa Project",
    width: i32 = 1280, 
    height: i32 = 720,
    resizable: bool = false,
)
```

## get_mouse_position
A simple fucntion to get the position of the mouse.
```go
get_mouse_position :: proc(x, y: ^i32)
```

## load_texture
The function needed to load a texture to use.
```go
load_texture :: proc(file_path: cstring) -> Texture2D
```

## load_font
The function need to load a font to use.
```go
load_font :: proc(font_path: cstring, font_size: i32) -> ^TTF.Font
```

## is_key_down
A check to see if a key is held down.
```go
is_key_down :: proc(key: Keys) -> bool
```

## is_key_pressed
A check to see if a key is pressed.
```go
is_key_pressed :: proc(key: Keys) -> bool
```

## is_mouse_button_down
A check to see if a mouse button is held down.
```go
is_mouse_button_down :: proc(button: MouseButtons) -> bool
```

## is_mouse_button_pressed
A check to see if a mouse button is pressed.
```go
is_mouse_button_pressed :: proc(button: MouseButtons) -> bool
```

## check_collision_rect
A check to see if 2 rectangles collided with eachother
```go
check_collision_rect :: proc(rect1, rect2: Rectangle) -> bool
```

## play_audio
The function to play a audio file.
```go
play_audio :: proc(sound: cstring)
```

## play_audio_looped
The function to play a audio file looped.
```go
play_audio_looped :: proc(sound: cstring)
```

## play_music_looped
The function to play music. (Basically just any longer sound file played over and over again)
```go
play_music_looped :: proc(music: cstring)
```

## stop_music
The function to stop any music playing.
```go
stop_music :: proc()
```

## stop_audio
The function to stop any audio playing
```go
stop_audio :: proc()
```

## create_animation
The function to create a new animation.
```go
create_animation :: proc(
    texture: Texture2D, 
    frame_width, frame_height, num_frames: i32, 
    frame_time: f32, 
    start_frame, end_frame: i32
) -> ^Animation
```

## run_animation
The function need to run an animation.
```go
run_animation :: proc(anim: ^Animation, dt: f32, looped: bool)
```

## render_animation
The function to render an animation to the screen.
```go
render_animation :: proc(
    ctx: ^Context, 
    anim: ^Animation, 
    dest_x, dest_y: i32, 
    rotation: f32, 
    flip: bool
)
```

## render_texture
The function to render a texture to the screen.
```go
render_texture :: proc(
    ctx: ^Context, 
    tex: ^Texture2D, 
    tex_x, tex_y: i32, 
    rotation: f32, 
    flip: bool
)
```

## render_text
The function to render text to the screen.
```go
render_text :: proc(
    ctx: ^Context, 
    font: ^TTF.Font, 
    text: cstring, 
    color: Color, 
    x, y: i32
)
```

## render_rect_filled
The function to render a filled rectangle shape to the screen.
```go
render_rect_filled :: proc(ctx: ^Context, x, y, width, height: i32, color: Color)
```

## render_rect_line
The function to render an outline of a rectangle shape to the screen.
```go
render_rect_line :: proc(ctx: ^Context, x, y, width, height: i32, color: Color)
```

## render_circle_filled
The function to render a filled circle shape to the screen.
```go
render_circle_filled :: proc(ctx: ^Context, center_x, center_y, radius: i32, color: Color)
```

## render_circle_line
The function to render an outline of a circle shape to the screen.
```go
render_circle_line :: proc(ctx: ^Context, center_x, center_y, radius: i32, color: Color)
```

## render_line
The function to render a line to the screen.
```go
render_line :: proc(ctx: ^Context, x1, y1, x2, y2: i32, color: Color)
```

## clear_screen
The function to clear the screen every frame to a certain color.
```go
clear_screen :: proc(ctx: ^Context, color: Color)
```

## get_rotation
The function to get the rotation between two points.
```go
get_rotation :: proc(x1, y1, x2, y2: i32) -> f32
```

## apply_camera
The function to apply the camera to the application.
```go
apply_camera :: proc(ctx: ^Context, cam: ^Camera2D)
```

## camera_follow
The function to make the camera follow an object.
```go
camera_follow :: proc(cam: ^Camera2D, target_x, target_y: i32)
```
