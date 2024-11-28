package nexa;

import SDL "vendor:sdl2";
import TTF "vendor:sdl2/ttf";
import IMG "vendor:sdl2/image";
import Mix "vendor:sdl2/mixer";
import fmt "core:fmt";
import math "core:math";
import linalg "core:math/linalg";
import mem "core:mem";
import os "core:os";
import json "core:encoding/json";

//  ██████  ██████  ███    ██ ███████ ████████  █████  ███    ██ ████████ ███████ 
// ██      ██    ██ ████   ██ ██         ██    ██   ██ ████   ██    ██    ██      
// ██      ██    ██ ██ ██  ██ ███████    ██    ███████ ██ ██  ██    ██    ███████ 
// ██      ██    ██ ██  ██ ██      ██    ██    ██   ██ ██  ██ ██    ██         ██ 
//  ██████  ██████  ██   ████ ███████    ██    ██   ██ ██   ████    ██    ███████
//
// >>constants
@(private="file")
MAX_KEYS :: 256
@(private="file")
MAX_BUTTONS :: 5

// Color Definitions
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

// ███████ ████████ ██████  ██    ██  ██████ ████████ ███████ 
// ██         ██    ██   ██ ██    ██ ██         ██    ██      
// ███████    ██    ██████  ██    ██ ██         ██    ███████ 
//      ██    ██    ██   ██ ██    ██ ██         ██         ██ 
// ███████    ██    ██   ██  ██████   ██████    ██    ███████  
//
// >>structs
@(private="file")
Context :: struct {
    renderer: ^SDL.Renderer,
    cam_x, cam_y: f32,
}

Texture2D :: struct {
    t_surface: ^SDL.Surface,
    width, height: f32,
}

Color :: struct {
    r, g, b, a: u8,
}   

Rectangle :: struct {
    x, y, width, height: f32,
}

Animation :: struct {
    texture: Texture2D,
    frame_width: f32,
    frame_height: f32,
    num_frame: f32,
    frame_time: f32,
    current_frame: f32,
    elapsed_time: f32,
    start_frame: f32,
    end_frame: f32,
}

Camera2D :: struct {
    x, y, w, h, zoom: f32,
}

// ███████ ███    ██ ██    ██ ███    ███ ███████ 
// ██      ████   ██ ██    ██ ████  ████ ██      
// █████   ██ ██  ██ ██    ██ ██ ████ ██ ███████ 
// ██      ██  ██ ██ ██    ██ ██  ██  ██      ██ 
// ███████ ██   ████  ██████  ██      ██ ███████ 
// >>enums
Keys :: enum(u32) {
    A = u32(SDL.Scancode.A),
    B = u32(SDL.Scancode.B),
    C = u32(SDL.Scancode.C),
    D = u32(SDL.Scancode.D),
    E = u32(SDL.Scancode.E),
    F = u32(SDL.Scancode.F),
    G = u32(SDL.Scancode.G),
    H = u32(SDL.Scancode.H),
    I = u32(SDL.Scancode.I),
    J = u32(SDL.Scancode.J),
    K = u32(SDL.Scancode.K),
    L = u32(SDL.Scancode.L),
    M = u32(SDL.Scancode.M),
    N = u32(SDL.Scancode.N),
    O = u32(SDL.Scancode.O),
    P = u32(SDL.Scancode.P),
    Q = u32(SDL.Scancode.Q),
    R = u32(SDL.Scancode.R),
    S = u32(SDL.Scancode.S),
    T = u32(SDL.Scancode.T),
    U = u32(SDL.Scancode.U),
    V = u32(SDL.Scancode.V),
    W = u32(SDL.Scancode.W),
    X = u32(SDL.Scancode.X),
    Y = u32(SDL.Scancode.Y),
    Z = u32(SDL.Scancode.Z),
    SPACE = u32(SDL.Scancode.SPACE),
    ESCAPE = u32(SDL.Scancode.ESCAPE),
    LSHIFT = u32(SDL.Scancode.LSHIFT),
    UP = u32(SDL.Scancode.UP),
    DOWN = u32(SDL.Scancode.DOWN),
    LEFT = u32(SDL.Scancode.LEFT),
    RIGHT = u32(SDL.Scancode.RIGHT),
    TAB = u32(SDL.Scancode.TAB),
    F1 = u32(SDL.Scancode.F1),
    F2 = u32(SDL.Scancode.F2),
    F3 = u32(SDL.Scancode.F3),
    F4 = u32(SDL.Scancode.F4),
    F5 = u32(SDL.Scancode.F5),
    F6 = u32(SDL.Scancode.F6),
    F7 = u32(SDL.Scancode.F7),
    F8 = u32(SDL.Scancode.F8),
    F9 = u32(SDL.Scancode.F9),
    F10 = u32(SDL.Scancode.F10),
    F11 = u32(SDL.Scancode.F11),
    F12 = u32(SDL.Scancode.F12),
    MAX_KEYS,
}

MouseButtons :: enum {
    LEFT = SDL.BUTTON_LEFT,
    MIDDLE = SDL.BUTTON_MIDDLE,
    RIGHT = SDL.BUTTON_RIGHT,
    X1 = SDL.BUTTON_X1,
    X2 = SDL.BUTTON_X2,
    MAX_BUTTONS
}

// ███████ ██    ██ ███    ██  ██████ ████████ ██  ██████  ███    ██ ███████ 
// ██      ██    ██ ████   ██ ██         ██    ██ ██    ██ ████   ██ ██      
// █████   ██    ██ ██ ██  ██ ██         ██    ██ ██    ██ ██ ██  ██ ███████ 
// ██      ██    ██ ██  ██ ██ ██         ██    ██ ██    ██ ██  ██ ██      ██ 
// ██       ██████  ██   ████  ██████    ██    ██  ██████  ██   ████ ███████ 
//                                                                          
// >>functions
@(private="file")
previous_key_states: [MAX_KEYS]u32;
@(private="file")
previous_mouse_button_states: [MAX_BUTTONS]u32;

@(private="file")
g_ctx: Context;

nx_init :: proc() -> bool {
    if SDL.Init(SDL.INIT_EVERYTHING) < 0 {
        fmt.printf("SDL: failed to initialize, error: %s\n", SDL.GetError());
        return false;
    }

    if IMG.Init(IMG.INIT_PNG | IMG.INIT_JPG) == nil  {
        fmt.printf("SDL_image: failed to initialize, error: %s\n", SDL.GetError());
        return false;
    }

    if TTF.Init() == -1 {
        fmt.printf("SDL_ttf: failed to initialize, error: %s\n", TTF.GetError());
        return false;
    }

    if Mix.OpenAudio(44100, Mix.DEFAULT_FORMAT, 2, 4096) == -1 {
        fmt.printf("SDL_mixer could not initialize! SDL_mixer Error: %s\n", SDL.GetError());
        return false;
    }

    if Mix.Init(Mix.INIT_FLAC | Mix.INIT_MOD | Mix.INIT_MP3 | Mix.INIT_OGG | Mix.INIT_MID | Mix.INIT_OPUS) == 0 {
        fmt.printf("SDL_mixer could not initialize WAV! SDL_mixer Error: %s\n", Mix.GetError());
        return false;
    }

    return true;
}

@(private="file")
create_window :: proc(title: cstring, width, height: f32) -> ^SDL.Window {
    window := SDL.CreateWindow(title, SDL.WINDOWPOS_CENTERED, SDL.WINDOWPOS_CENTERED, i32(width), i32(height), SDL.WINDOW_SHOWN);
    if window == nil {
        fmt.printf("Window could not be created! ERROR: %s", SDL.GetError());
    }

    return window;
}

@(private="file")
create_renderer :: proc(window: ^SDL.Window) -> ^SDL.Renderer {
    renderer := SDL.CreateRenderer(window, -1, SDL.RENDERER_ACCELERATED | SDL.RENDERER_PRESENTVSYNC);
    if (renderer == nil) {
        fmt.printf("Renderer could not be created! ERROR: ", SDL.GetError());
    }

    return renderer;
}

@(private="file")
process_events :: proc() -> bool {
    event: SDL.Event;
    SDL.PollEvent(&event);
    if (event.type == SDL.EventType.QUIT) {
        return false;
    }

    return true;
}

game :: proc(
    init: proc(),
    update: proc(dt: f32),
    render: proc(),
    title: cstring = "Nexa Project",
    width: f32 = 1280, 
    height: f32 = 720,
    resizable: bool = false,
) {
    nx_init();
    window := create_window(title, width, height);
    renderer := create_renderer(window);

    SDL.SetWindowResizable(window, SDL.bool(resizable));

    g_ctx = {renderer, 0, 0};

    init();

    running := true;
    last_time: u32 = SDL.GetTicks();

    for running {
        running = process_events();

        current_time: u32 = SDL.GetTicks();
        dt: f32 = f32((current_time - last_time)) / 1000.0;
        last_time = current_time;

        update(dt);

        render();

        SDL.RenderPresent(g_ctx.renderer);
    }

    SDL.DestroyWindow(window);
    SDL.DestroyRenderer(g_ctx.renderer);
    Mix.HaltMusic();
    Mix.HaltChannel(-1);
    Mix.CloseAudio();
    TTF.Quit();
    Mix.Quit();
    SDL.Quit();
}

get_mouse_position :: proc(x, y: ^i32) {
    SDL.GetMouseState(x, y);
}

load_texture :: proc(file_path: cstring) -> Texture2D {
    texture: Texture2D;
    texture.width = 0;
    texture.height = 0;

    texture.t_surface = IMG.Load(file_path);
    if texture.t_surface == nil {
        fmt.printf("Failed to load texture! ERROR: %s\n", SDL.GetError());
    }

    texture.width = f32(texture.t_surface.w);
    texture.height = f32(texture.t_surface.h);

    return texture;
}

load_font :: proc(font_path: cstring, font_size: f32) -> ^TTF.Font {
    if TTF.Init() == -1 {
        fmt.printf("Failed to initialize SDL_ttf: %s\n", SDL.GetError());
    }

    font: ^TTF.Font = TTF.OpenFont(font_path, i32(font_size));
    if font == nil {
        fmt.printf("Failed to load font: %s\n", SDL.GetError());
    }

    return font;
}

is_key_down :: proc(key: Keys) -> bool {
    key_state: [^]u8 = SDL.GetKeyboardState(nil);
    // fmt.println(key_state);
    return key_state[key] == 1;
}

is_key_pressed :: proc(key: Keys) -> bool {
    key_state := SDL.GetKeyboardState(nil);
    current_state := key_state[key];
    index := key;
    previous_key := previous_key_states[index];

    previous_key_states[index] = u32(current_state);

    return current_state == 1 && previous_key == 0;
}

is_mouse_button_down :: proc(button: MouseButtons) -> bool {
    mouse_state := SDL.GetMouseState(nil, nil);
    return (i32(mouse_state) & SDL.BUTTON(i32(button))) != 0;
}

is_mouse_button_pressed :: proc(button: MouseButtons) -> bool {
    mouse_state := SDL.GetMouseState(nil, nil);
    current_state := ((i32(mouse_state) & SDL.BUTTON(i32(button))) != 0) ? 1 : 0;
    index := u32(button) - u32(SDL.BUTTON_LEFT);
    previous_state := previous_mouse_button_states[index];

    previous_mouse_button_states[index] = u32(current_state);

    return current_state == 1 && previous_state == 0;
}

check_collision_rect :: proc(rect1, rect2: Rectangle) -> bool {
    return rect1.x < rect2.x + rect2.width &&
           rect1.x + rect1.width > rect2.x &&
           rect1.y < rect2.y + rect2.height &&
           rect1.y + rect1.height > rect2.y;
}

play_audio :: proc(sound: cstring) {
    audio := Mix.LoadWAV(sound);
    if audio == nil {
        fmt.printf("Failed to load audio: %s\n", Mix.GetError());
        return;
    }

    channel := Mix.PlayChannel(-1, audio, 0);
    if channel == -1 {
        fmt.printf("Failed to play sound: %s\n", Mix.GetError());
    }
}

play_music_looped :: proc(music: cstring) {
    bgm: ^Mix.Music = Mix.LoadMUS(music);
    if bgm == nil {
        fmt.printf("Failed to load music: %s\n", Mix.GetError());
        return;
    }

    if Mix.PlayMusic(bgm, -1) == -1 {
        fmt.printf("Failed to play music: %s\n", Mix.GetError())
        Mix.FreeMusic(bgm);
        return;
    }
}

play_audio_looped :: proc(sound: cstring) {
    audio := Mix.LoadWAV(sound);
    if audio == nil {
        fmt.printf("Failed to load audio: %s\n", Mix.GetError());
        return;
    }

    Mix.PlayChannel(-1, audio, -1);
    Mix.FreeChunk(audio);
}

stop_music :: proc() {
    Mix.HaltMusic();
}

stop_audio :: proc() {
    Mix.HaltChannel(-1);
}

create_animation :: proc(texture: Texture2D, frame_width, frame_height, num_frames: f32, frame_time: f32, start_frame, end_frame: f32) -> ^Animation {
    animation := new(Animation);
    if animation == nil {
        return nil;
    }

    animation.texture = texture;
    animation.frame_width = frame_width;
    animation.frame_height = frame_height;
    animation.num_frame = num_frames;
    animation.frame_time = frame_time;
    animation.current_frame = start_frame;
    animation.elapsed_time = 0.0;
    animation.start_frame = start_frame;
    animation.end_frame = end_frame;

    return animation;
}

run_animation :: proc(anim: ^Animation, dt: f32, looped: bool) {
    anim.elapsed_time += dt;

    if anim.elapsed_time >= anim.frame_time {
        anim.elapsed_time -= anim.frame_time;
        anim.current_frame += 1;

        if anim.current_frame > anim.end_frame {
            if looped {
                anim.current_frame = anim.start_frame;
            } 
            else {
                anim.current_frame = anim.end_frame;
            }
        }
    }
}

render_animation :: proc(anim: ^Animation, dest_x, dest_y: f32, rotation: f32, flip_x: bool, flip_y: bool) {
    tex := SDL.CreateTextureFromSurface(g_ctx.renderer, anim.texture.t_surface);
    if tex == nil {
        fmt.printf("Failed to create texture! ERROR: %s\n", SDL.GetError());
        return;
    }

    src_x := (anim.current_frame - 1) * anim.frame_width;
    src_rect: SDL.Rect = SDL.Rect{x = i32(src_x), y = 0, w = i32(anim.frame_width), h = i32(anim.frame_height)};

    dst_rect: SDL.Rect = SDL.Rect{x = i32(dest_x) - i32(g_ctx.cam_x), y = i32(dest_y) - i32(g_ctx.cam_y), w = i32(anim.frame_width), h = i32(anim.frame_height)};

    center: SDL.Point = SDL.Point{x = i32(anim.frame_width) / 2, y = i32(anim.frame_height) / 2,};

    flip_mode: SDL.RendererFlip;
    if flip_x {
        flip_mode = SDL.RendererFlip.HORIZONTAL;
    }
    else if flip_y {
        flip_mode = SDL.RendererFlip.VERTICAL;
    }
    else {
        flip_mode = SDL.RendererFlip.NONE;
    }

    SDL.RenderCopyEx(g_ctx.renderer, tex, &src_rect, &dst_rect, f64(rotation), &center, flip_mode);

    SDL.DestroyTexture(tex);
}

reset_animation :: proc(anim: ^Animation) {
    anim.current_frame = anim.start_frame;
    anim.elapsed_time = 0.0;
}

render_texture :: proc(tex: ^Texture2D, tex_x, tex_y: f32, rotation: f32, flip_x: bool, flip_y: bool) {
    texture := SDL.CreateTextureFromSurface(g_ctx.renderer, tex.t_surface);

    width: i32 = 0;
    height: i32 = 0;
    if SDL.QueryTexture(texture, nil, nil, &width, &height) != 0 {
        fmt.printf("Failed to render texture! ERROR: %s", SDL.GetError());
        return;
    }

    dst: SDL.Rect = {i32(tex_x) - i32(g_ctx.cam_x), i32(tex_y) - i32(g_ctx.cam_y), width, height};
    center: SDL.Point = {width / 2, height / 2};

    flip_mode: SDL.RendererFlip;
    if flip_x {
        flip_mode = SDL.RendererFlip.HORIZONTAL;
    }
    else if flip_y {
        flip_mode = SDL.RendererFlip.VERTICAL;
    }
    else {
        flip_mode = SDL.RendererFlip.NONE;
    }

    SDL.RenderCopyEx(g_ctx.renderer, texture, nil, &dst, f64(rotation), &center, flip_mode);

    SDL.DestroyTexture(texture);
}

@(private = "file")
rectangle_to_sdl_rect :: proc(r: ^Rectangle) -> ^SDL.Rect {
    return cast(^SDL.Rect) r;
}

render_sub_texture :: proc(tex: ^Texture2D, src_rect, dest_rect: ^Rectangle, rotation: f32, flip_x: bool, flip_y: bool) {
    texture := SDL.CreateTextureFromSurface(g_ctx.renderer, tex.t_surface);

    width: i32 = 0;
    height: i32 = 0;
    if SDL.QueryTexture(texture, nil, nil, &width, &height) != 0 {
        fmt.printf("Failed to render texture! ERROR: %s", SDL.GetError());
        return;
    }

    dest_rect.x -= g_ctx.cam_x;
    dest_rect.y -= g_ctx.cam_y;

    center: SDL.Point = {width / 2, height / 2};

    flip_mode: SDL.RendererFlip;
    if flip_x {
        flip_mode = SDL.RendererFlip.HORIZONTAL;
    }
    else if flip_y {
        flip_mode = SDL.RendererFlip.VERTICAL;
    }
    else {
        flip_mode = SDL.RendererFlip.NONE;
    }

    SDL.RenderCopyEx(g_ctx.renderer, texture, rectangle_to_sdl_rect(src_rect), rectangle_to_sdl_rect(dest_rect), f64(rotation), &center, flip_mode);

    SDL.DestroyTexture(texture);
}

@(private="file")
convert_color :: proc(color: Color) -> SDL.Color {
    sdl_color: SDL.Color = {color.r, color.g, color.b, color.a};
    return sdl_color;
}

render_text :: proc(font: ^TTF.Font, text: cstring, color: Color, x, y: f32) {
    sdl_color := convert_color(color);

    surface := TTF.RenderText_Solid(font, text, sdl_color);
    if surface == nil {
        SDL.FreeSurface(surface);
        fmt.printf("Could not create text surface: %s", SDL.GetError());
        return;
    }

    texture := SDL.CreateTextureFromSurface(g_ctx.renderer, surface);
    if texture == nil {
        SDL.FreeSurface(surface);
        fmt.printf("Could not create text texture: %s", SDL.GetError());
        return;
    }

    w: i32 = 0;
    h: i32 = 0;
    SDL.QueryTexture(texture, nil, nil, &w, &h);

    scaled_x := x - g_ctx.cam_x;
    scaled_y := y - g_ctx.cam_y;
    scaled_width := w;
    scaled_height := h;

    dst: SDL.Rect = {i32(scaled_x), i32(scaled_y), i32(scaled_width), i32(scaled_height)};
    SDL.RenderCopy(g_ctx.renderer, texture, nil, &dst);

    SDL.DestroyTexture(texture);
    SDL.FreeSurface(surface);
}

render_rect_filled :: proc(x, y, width, height: f32, color: Color) {
    SDL.SetRenderDrawColor(g_ctx.renderer, color.r, color.g, color.b, color.a);
    rect: SDL.Rect = {i32(x) - i32(g_ctx.cam_x), i32(y) - i32(g_ctx.cam_y), i32(width), i32(height)};
    SDL.RenderFillRect(g_ctx.renderer, &rect);
}

render_rect_line :: proc(x, y, width, height: f32, color: Color) {
    SDL.SetRenderDrawColor(g_ctx.renderer, color.r, color.g, color.b, color.a);
    rect: SDL.Rect = {i32(x) - i32(g_ctx.cam_x), i32(y) - i32(g_ctx.cam_y), i32(width), i32(height)};
    SDL.RenderDrawRect(g_ctx.renderer, &rect);
}

render_circle_line :: proc(center_x, center_y, radius: f32, color: Color) {
    diameter := radius * 2;
    x: f32 = radius - 1;
    y: f32 = 0;
    tx: f32 = 1;
    ty: f32 = 1;
    error := tx - diameter;

    SDL.SetRenderDrawColor(g_ctx.renderer, color.r, color.g, color.b, color.a);
    cent_x := center_x;
    cent_y := center_y;

    cent_x -= g_ctx.cam_x;
    cent_y -= g_ctx.cam_y;
    for x >= y {
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) + i32(x), i32(cent_y) + i32(y));
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) - i32(x), i32(cent_y) - i32(y));
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) + i32(x), i32(cent_y) - i32(y));
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) - i32(x), i32(cent_y) + i32(y));
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) + i32(y), i32(cent_y) - i32(x));
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) + i32(y), i32(cent_y) + i32(x));
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) - i32(y), i32(cent_y) - i32(x));
        SDL.RenderDrawPoint(g_ctx.renderer, i32(cent_x) - i32(y), i32(cent_y) + i32(x));

        if error <= 0 {
            y += 1;
            error += ty;
            ty += 2;
        }

        if error > 0 {
            x -= 1;
            tx += 2;
            error += tx - diameter;
        }
    }
}

render_circle_filled :: proc(center_x, center_y, radius: f32, color: Color) {
    diameter := radius * 2;
    x: f32 = radius - 1;
    y: f32 = 0;
    tx: f32 = 1;
    ty: f32 = 1;
    error := tx - diameter;

    SDL.SetRenderDrawColor(g_ctx.renderer, color.r, color.g, color.b, color.a);
    cent_x := center_x;
    cent_y := center_y;
    
    cent_x -= g_ctx.cam_x;
    cent_y -= g_ctx.cam_y;
    for x >= y {
        SDL.RenderDrawLine(g_ctx.renderer, i32(cent_x) - i32(x), i32(cent_y) - i32(y), i32(cent_x) + i32(x), i32(cent_y) - i32(y));
        SDL.RenderDrawLine(g_ctx.renderer, i32(cent_x) - i32(x), i32(cent_y) + i32(y), i32(cent_x) + i32(x), i32(cent_y) + i32(y));
        SDL.RenderDrawLine(g_ctx.renderer, i32(cent_x) - i32(y), i32(cent_y) - i32(x), i32(cent_x) + i32(y), i32(cent_y) - i32(x));
        SDL.RenderDrawLine(g_ctx.renderer, i32(cent_x) - i32(y), i32(cent_y) + i32(x), i32(cent_x) + i32(y), i32(cent_y) + i32(x));

        if error <= 0 {
            y += 1;
            error += ty;
            ty += 2;
        }

        if error > 0 {
            x -= 1;
            tx += 2;
            error += tx - diameter;
        }
    }
}

render_line :: proc(x1, y1, x2, y2: f32, color: Color) {
    SDL.SetRenderDrawColor(g_ctx.renderer, color.r, color.g, color.b, color.a);

    SDL.RenderDrawLine(g_ctx.renderer, i32(x1) - i32(g_ctx.cam_x), i32(y1) - i32(g_ctx.cam_y), i32(x2) - i32(g_ctx.cam_x), i32(y2) - i32(g_ctx.cam_y));
}

clear_screen :: proc(color: Color) {
    SDL.SetRenderDrawColor(g_ctx.renderer, color.r, color.g, color.b, color.a);
    SDL.RenderClear(g_ctx.renderer);
}

rad_to_deg :: proc(radians: f32) -> f32 {
    return radians * (180.0 / math.PI);
}

deg_to_rad :: proc(degrees: f32) -> f32 {
    return degrees * (math.PI / 180.0);
}

apply_camera :: proc(cam: ^Camera2D) {
    g_ctx.cam_x = cam.x;
    g_ctx.cam_y = cam.y;

    SDL.RenderSetScale(g_ctx.renderer, cam.zoom, cam.zoom);
}

camera_follow :: proc(cam: ^Camera2D, target_x, target_y: f32) {
    cam.x = target_x;
    cam.y = target_y;
}

camera_follow_lerp :: proc(cam: ^Camera2D, target_x, target_y, lerp_amount: f32) {
    target_cam_x := target_x - (cam.w / 2) / cam.zoom;
    target_cam_y := target_y - (cam.h / 1.5) / cam.zoom;

    cam.x += (target_cam_x - cam.x) * lerp_amount;
    cam.y += (target_cam_y - cam.y) * lerp_amount;
}

clamp_camera :: proc(cam: ^Camera2D) {
    cam.x = max(0, min(cam.x, cam.w - cam.w / cam.zoom));
    cam.y = max(0, min(cam.y, cam.h - cam.h / cam.zoom));
}

clamp_camera_target :: proc(cam: ^Camera2D, target_x, target_y: f32) {
    cam.x = max(0, min(target_x - (cam.w / (2 * cam.zoom)), cam.w - (cam.w / cam.zoom)));
    cam.y = max(0, min(target_y - (cam.h / (2 * cam.zoom)), cam.h - (cam.h / cam.zoom)));
}

disable_cursor :: proc() {
    SDL.ShowCursor(SDL.DISABLE);
}

clamp_mouse :: proc() {
    SDL.SetRelativeMouseMode(true);
}

close_window :: proc() {
    os.exit(0);
}
