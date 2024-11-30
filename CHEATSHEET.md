# WELCOME
Hello! This is a simple cheatsheet of all the functinality of Nexa. This will go over all the functions, structs, enums, etc and give a short explanation of how they work. Enjoy :)

# CONSTANTS
## Colors
All the preset colors available for use.
```odin
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
```odin
Texture2D :: rl.Texture2D;
```

## Color
The struct to make a rgba color.
```odin
Color :: rl.Color; 
```

## Rectangle
The struct to make a simple rectangle shape.
```odin
Rectangle :: rl.Rectangle;
```

## Animation
The struct to make an animation.
```odin
Animation :: struct {
    texture: Texture2D,      // The entire spritesheet texture
    frame_width: f32,        // The width of one frame 
    frame_height: f32,       // The height of one frame
    num_frame: f32,          // The number of frames for the animation to go through
    frame_time: f32,         // How long to stay on a frame 
    current_frame: f32,      // The current frame
    elapsed_time: f32,       // The amount of time that passes between frames
    start_frame: f32,        // The starting frame of the animation
    end_frame: f32,          // The frame to stop on before looping back
}
```

## Camera2D
The struct for a 2d camera.
```odin
Camera2D :: rl.Camera2D;
```

## Vector2
The struct to make a Vector2
```odin
Vector2 :: rl.Vector2;
```

## Font
The Font type
```odin
Font :: rl.Font;
```

## Audio
The Audio type
```odin
Audio :: rl.Sound;
```

## Music
The Music type
```odin
Music :: rl.Music;
```

# ENUMS
## Keys
The keys you can use in a program.
```odin
Keys :: enum(u32) {
    A = u32(rl.KeyboardKey.A),               // The 'A' key
    B = u32(rl.KeyboardKey.B),               // The 'B' key
    C = u32(rl.KeyboardKey.C),               // The 'C' key
    D = u32(rl.KeyboardKey.D),               // The 'D' key
    E = u32(rl.KeyboardKey.E),               // The 'E' key
    F = u32(rl.KeyboardKey.F),               // The 'F' key
    G = u32(rl.KeyboardKey.G),               // The 'G' key
    H = u32(rl.KeyboardKey.H),               // The 'H' key 
    I = u32(rl.KeyboardKey.I),               // The 'I' key
    J = u32(rl.KeyboardKey.J),               // The 'J' key
    K = u32(rl.KeyboardKey.K),               // The 'K' key
    L = u32(rl.KeyboardKey.L),               // The 'L' key
    M = u32(rl.KeyboardKey.M),               // The 'M' key
    N = u32(rl.KeyboardKey.N),               // The 'N' key
    O = u32(rl.KeyboardKey.O),               // The 'O' key
    P = u32(rl.KeyboardKey.P),               // The 'P' key
    Q = u32(rl.KeyboardKey.Q),               // The 'Q' key
    R = u32(rl.KeyboardKey.R),               // The 'R' key
    S = u32(rl.KeyboardKey.S),               // The 'S' key
    T = u32(rl.KeyboardKey.T),               // The 'T' key
    U = u32(rl.KeyboardKey.U),               // The 'U' key
    V = u32(rl.KeyboardKey.V),               // The 'V' key
    W = u32(rl.KeyboardKey.W),               // The 'W' key
    X = u32(rl.KeyboardKey.X),               // The 'X' key
    Y = u32(rl.KeyboardKey.Y),               // The 'X' key
    Z = u32(rl.KeyboardKey.Z),               // The 'Z' key
    SPACE = u32(rl.KeyboardKey.SPACE),       // The 'SPACE' key
    ESCAPE = u32(rl.KeyboardKey.ESCAPE),     // The 'ESCAPE' key
    LSHIFT = u32(rl.KeyboardKey.LEFT_SHIFT), // The 'LEFT SHIFT' key
    UP = u32(rl.KeyboardKey.UP),             // The 'UP' arrow key
    DOWN = u32(rl.KeyboardKey.DOWN),         // The 'DOWN' arrow key
    LEFT = u32(rl.KeyboardKey.LEFT),         // The 'LEFT' arrow key
    RIGHT = u32(rl.KeyboardKey.RIGHT),       // The 'RIGHT' arrow key
    TAB = u32(rl.KeyboardKey.TAB),           // The 'TAB' key
    F1 = u32(rl.KeyboardKey.F1),             // The "F1" key
    F2 = u32(rl.KeyboardKey.F2),             // The "F2" key
    F3 = u32(rl.KeyboardKey.F3),             // The "F3" key
    F4 = u32(rl.KeyboardKey.F4),             // The "F4" key
    F5 = u32(rl.KeyboardKey.F5),             // The "F5" key
    F6 = u32(rl.KeyboardKey.F6),             // The "F6" key
    F7 = u32(rl.KeyboardKey.F7),             // The "F7" key
    F8 = u32(rl.KeyboardKey.F8),             // The "F8" key
    F9 = u32(rl.KeyboardKey.F9),             // The "F9" key
    F10 = u32(rl.KeyboardKey.F10),           // The "F10" key
    F11 = u32(rl.KeyboardKey.F11),           // The "F11" key
    F12 = u32(rl.KeyboardKey.F12),           // The "F12" key
}
```

## MouseButtons
The mouse buttons you can use in a program.
```odin
MouseButtons :: enum(u32) {
    LEFT = u32(rl.MouseButton.LEFT),     // The 'LEFT' mouse button
    MIDDLE = u32(rl.MouseButton.MIDDLE), // The 'MIDDLE' mouse button
    RIGHT = u32(rl.MouseButton.RIGHT),   // The 'RIGHT' mouse button
}
```

# FUNCTIONS
## game
The function that creates your nexa app.
You pass in your init, update, and render functions and you title, width and height of the window, and whether or not you want to window to be resizable or not.
```odin
game :: proc(
    init: proc(),
    update: proc(dt: f32),
    render: proc(),
    title: cstring = "Nexa Project",
    width: i32 = 1280, 
    height: i32 = 720,
    resizable: bool = false,
)
```

## get_mouse_position
A simple fucntion to get the position of the mouse.
```odin
get_mouse_position :: proc() -> Vector2
```

## load_texture
The function needed to load a texture to use.
```odin
load_texture :: proc(file_path: cstring) -> Texture2D
```

## load_font
The function need to load a font to use.
```odin
load_font :: proc(font_path: cstring, font_size: i32) -> Font
```

## is_key_down
A check to see if a key is held down.
```odin
is_key_down :: proc(key: Keys) -> bool
```

## is_key_pressed
A check to see if a key is pressed.
```odin
is_key_pressed :: proc(key: Keys) -> bool
```

## is_mouse_button_down
A check to see if a mouse button is held down.
```odin
is_mouse_button_down :: proc(button: MouseButtons) -> bool
```

## is_mouse_button_pressed
A check to see if a mouse button is pressed.
```odin
is_mouse_button_pressed :: proc(button: MouseButtons) -> bool
```

## check_collision_rect
A check to see if 2 rectangles collided with eachother
```odin
check_collision_rect :: proc(rect1, rect2: Rectangle) -> bool
```

## load_audio
The function to load a audio file.
```odin
load_audio :: proc(sound: cstring) -> Audio
```

## play_audio
The function to play a audio file.
```odin
play_audio :: proc(sound: cstring)
```

## load_music
The function to load a music file.
```odin
load_music :: proc(music_path: cstring) -> Music
```

## play_music
The function to play music. (Basically just any longer sound file played over and over again)
```odin
play_music :: proc(music: Music)
```

## update_music
The function to update music.
```odin
update_music :: proc(music: Music)
```

## stop_music
The function to stop any music playing.
```odin
stop_music :: proc(music: Music)
```

## stop_audio
The function to stop any audio playing
```odin
stop_audio :: proc(audio: Audio)
```

## create_animation
The function to create a new animation.
```odin
create_animation :: proc(
    texture: Texture2D, 
    frame_width, frame_height, num_frames: i32, 
    frame_time: f32, 
    start_frame, end_frame: i32
) -> ^Animation
```

## run_animation
The function need to run an animation.
```odin
run_animation :: proc(anim: ^Animation, dt: f32, looped: bool)
```

## render_animation
The function to render an animation to the screen.
```odin
render_animation :: proc(
    anim: ^Animation, 
    dest_x, dest_y: f32, 
    rotation: f32, 
    flip_x, flip_y: bool
)
```

## reset_animation
The function to reset an animation.
```odin
reset_animation :: proc(anim: ^Animation)
```

## render_texture
The function to render a texture to the screen.
```odin
render_texture :: proc(
    tex: Texture2D, 
    tex_x, tex_y: f32, 
    rotation: f32, 
    flip_x, flip_y: bool
)
```

## render_sub_texture
The function to create a sub texture
```odin
render_sub_texture :: proc(
    tex: Texture2D, 
    src_rect, dest_rect: Rectangle, 
    rotation: f32, 
    flip_x: bool, flip_y: bool
)
```

## render_text
The function to render text to the screen.
```odin
render_text :: proc(
    font: Font, 
    text: cstring, 
    font_size: f32, 
    spacing: f32, 
    color: Color, 
    x, y: f32
)
```

## render_rect_filled
The function to render a filled rectangle shape to the screen.
```odin
render_rect_filled :: proc(x, y, width, height: i32, color: Color)
```

## render_rect_line
The function to render an outline of a rectangle shape to the screen.
```odin
render_rect_line :: proc(x, y, width, height: i32, color: Color)
```

## render_circle_filled
The function to render a filled circle shape to the screen.
```odin
render_circle_filled :: proc(center_x, center_y, radius: i32, color: Color)
```

## render_circle_line
The function to render an outline of a circle shape to the screen.
```odin
render_circle_line :: proc(center_x, center_y, radius: i32, color: Color)
```

## render_line
The function to render a line to the screen.
```odin
render_line :: proc(x1, y1, x2, y2: i32, color: Color)
```

## clear_screen
The function to clear the screen every frame to a certain color.
```odin
clear_screen :: proc(color: Color)
```

## rad_to_deg
The function to turn a radian to a degree
```odin
rad_to_deg :: proc(radians: f32) -> f32
```

## deg_to_rad
The function to turn a degree to a radian
```odin
rad_to_deg :: proc(radians: f32) -> f32
```

## apply_camera
The function to apply the camera to the application.
```odin
apply_camera :: proc(cam: ^Camera2D)
```

## end_camera
The function to end the camera.
```odin
end_camera :: proc()
```

## camera_follow
The function to make the camera follow a target.
```odin
camera_follow :: proc(cam: ^Camera2D, target_x, target_y: f32)
```

## camera_follow_lerp
The function to follow a target with lerp
```odin
camera_follow_lerp :: proc(cam: ^Camera2D, target_x, target_y, lerp_amount: f32)
```

## clamp_camera
The function to clamp the camera to the screen.
```odin
clamp_camera :: proc(cam: ^Camera2D, world_width, world_height: f32)
```

## clamp_camera_target
The function to clamp the camera to a target.
```odin
clamp_camera_target :: proc(cam: ^Camera2D, target_x, target_y, world_width, world_height: f32)
```

## disable_cursor
The function to disable the cursor.
```odin
disable_cursor :: proc()
```

## clamp_mouse
The function to clamp the mouse to screen bounds.
```odin
clamp_mouse :: proc()
```

## close_window
The function to close the window.
```odin
close_window :: proc()
```
