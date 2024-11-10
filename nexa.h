#ifndef NEXA_H
#define NEXA_H

#include "SDL2/SDL.h"
#include "SDL2/SDL_ttf.h"
#include "SDL2/SDL_mixer.h"
#include "SDL2/SDL_image.h"
#include <stdio.h>
#include <stdbool.h>
#include <math.h>

// ██████  ███████ ███████ ██ ███    ██ ███████ ███████ 
// ██   ██ ██      ██      ██ ████   ██ ██      ██      
// ██   ██ █████   █████   ██ ██ ██  ██ █████   ███████ 
// ██   ██ ██      ██      ██ ██  ██ ██ ██           ██ 
// ██████  ███████ ██      ██ ██   ████ ███████ ███████ 
//
// >>defines

#define NX_MAX_KEYS 256
#define NX_MAX_BUTTONS 5

#define PI 3.14159265358979323846

// nxColor Definitions
#define nxWHITE      (nxColor){ 255, 255, 255, 255 }        // White
#define nxBLACK      (nxColor){ 0, 0, 0, 255 }              // Black
#define nxRED        (nxColor){ 255, 0, 0, 255 }            // Red
#define nxGREEN      (nxColor){ 0, 255, 0, 255 }            // Green
#define nxBLUE       (nxColor){ 0, 0, 255, 255 }            // Blue
#define nxYELLOW     (nxColor){ 255, 255, 0, 255 }          // Yellow
#define nxCYAN       (nxColor){ 0, 255, 255, 255 }          // Cyan
#define nxMAGENTA    (nxColor){ 255, 0, 255, 255 }          // Magenta
#define nxORANGE     (nxColor){ 255, 165, 0, 255 }          // Orange
#define nxPURPLE     (nxColor){ 128, 0, 128, 255 }          // Purple
#define nxBROWN      (nxColor){ 165, 42, 42, 255 }          // Brown
#define nxGRAY       (nxColor){ 128, 128, 128, 255 }        // Gray
#define nxLIGHTGRAY  (nxColor){ 211, 211, 211, 255 }        // Light Gray
#define nxDARKGRAY   (nxColor){ 169, 169, 169, 255 }        // Dark Gray
#define nxPINK       (nxColor){ 255, 192, 203, 255 }        // Pink
#define nxGOLD       (nxColor){ 255, 215, 0, 255 }          // Gold
#define nxSILVER     (nxColor){ 192, 192, 192, 255 }        // Silver
#define nxMAROON     (nxColor){ 128, 0, 0, 255 }            // Maroon
#define nxOLIVE      (nxColor){ 128, 128, 0, 255 }          // Olive
#define nxLIME       (nxColor){ 50, 205, 50, 255 }          // Lime
#define nxTEAL       (nxColor){ 0, 128, 128, 255 }          // Teal
#define nxNAVY       (nxColor){ 0, 0, 128, 255 }            // Navy
#define nxVIOLET     (nxColor){ 238, 130, 238, 255 }        // Violet
#define nxINDIGO     (nxColor){ 75, 0, 130, 255 }           // Indigo
#define nxTURQUOISE  (nxColor){ 64, 224, 208, 255 }         // Turquoise
#define nxPEACH      (nxColor){ 255, 218, 185, 255 }        // Peach
#define nxMINT       (nxColor){ 189, 252, 201, 255 }        // Mint
#define nxCORAL      (nxColor){ 255, 127, 80, 255 }         // Coral
#define nxLIGHTPINK  (nxColor){ 255, 182, 193, 255 }        // Light Pink
#define nxDARKORANGE (nxColor){ 255, 140, 0, 255 }          // Dark Orange
#define nxDARKGREEN  (nxColor){ 0, 100, 0, 255 }            // Dark Green
#define nxDARKBLUE   (nxColor){ 0, 0, 139, 255 }            // Dark Blue
#define nxLAVENDER   (nxColor){ 230, 230, 250, 255 }        // Lavender
#define nxCRIMSON    (nxColor){ 220, 20, 60, 255 }          // Crimson
#define nxFUCHSIA    (nxColor){ 255, 0, 255, 255 }          // Fuchsia
#define nxLIGHTYELLOW (nxColor){ 255, 255, 224, 255 }       // Light Yellow
#define nxLIGHTGREEN  (nxColor){ 144, 238, 144, 255 }       // Light Green
#define nxLIGHTBLUE   (nxColor){ 173, 216, 230, 255 }       // Light Blue
#define nxLIGHTCORAL  (nxColor){ 240, 128, 128, 255 }       // Light Coral
#define nxTOMATO     (nxColor){ 255, 99, 71, 255 }          // Tomato
#define nxSEASHELL   (nxColor){ 255, 228, 196, 255 }        // Seashell
#define nxHONEYDEW   (nxColor){ 240, 255, 240, 255 }        // Honeydew
#define nxMISTYROSE  (nxColor){ 255, 228, 225, 255 }        // Misty Rose
#define nxWHITESMOKE (nxColor){ 245, 245, 245, 255 }        // White Smoke
#define nxAZURE      (nxColor){ 240, 255, 255, 255 }        // Azure
#define nxSANDYBROWN (nxColor){ 244, 164, 96, 255 }         // Sandy Brown
#define nxSLATEGRAY  (nxColor){ 112, 128, 144, 255 }        // Slate Gray
#define nxKHAKI      (nxColor){ 240, 230, 140, 255 }        // Khaki
#define nxLIMEGREEN  (nxColor){ 50, 205, 50, 255 }          // Lime Green
#define nxMEDIUMSLATEBLUE (nxColor){ 123, 104, 238, 255 }   // Medium Slate Blue
#define nxSADDLEBROWN (nxColor){ 139, 69, 19, 255 }         // Saddle Brown
#define nxSLATEBLUE  (nxColor){ 106, 90, 205, 255 }         // Slate Blue
#define nxDODGERBLUE (nxColor){ 30, 144, 255, 255 }         // Dodger Blue
#define nxDEEPSKYBLUE (nxColor){ 0, 191, 255, 255 }         // Deep Sky Blue
#define nxMEDIUMPURPLE (nxColor){ 147, 112, 219, 255 }      // Medium Purple
#define nxPALEVIOLETRED (nxColor){ 219, 112, 147, 255 }     // Pale Violet Red
#define nxNAVAJOWHITE (nxColor){ 255, 222, 173, 255 }       // Navajo White
#define nxGAINSBORO  (nxColor){ 220, 220, 220, 255 }        // Gainsboro
#define nxCHARTREUSE (nxColor){ 127, 255, 0, 255 }          // Chartreuse
#define nxPLUM       (nxColor){ 221, 160, 221, 255 }        // Plum
#define nxORCHID     (nxColor){ 218, 112, 214, 255 }        // Orchid
#define nxPEA        (nxColor){ 197, 227, 132, 255 }        // Pea
#define nxDARKSALMON (nxColor){ 233, 150, 122, 255 }        // Dark Salmon
#define nxLIGHTSEAGREEN (nxColor){ 32, 178, 170, 255 }      // Light Sea Green
#define nxMEDIUMAQUAMARINE (nxColor){ 102, 205, 170, 255 }  // Medium Aquamarine
#define nxTHISTLE    (nxColor){ 216, 191, 216, 255 }        // Thistle
#define nxLIGHTSTEELBLUE (nxColor){ 176, 196, 222, 255 }    // Light Steel Blue
#define nxCADETBLUE  (nxColor){ 95, 158, 160, 255 }         // Cadet Blue
#define nxDARKCYAN   (nxColor){ 0, 139, 139, 255 }          // Dark Cyan
#define nxLAVENDERBLUSH (nxColor){ 255, 240, 245, 255 }     // Lavender Blush
#define nxHOTPINK    (nxColor){ 255, 105, 180, 255 }        // Hot Pink
#define nxSILVERCHALICE (nxColor){ 192, 192, 192, 255 }     // Silver Chalice
#define nxDARKOLIVEGREEN (nxColor){ 85, 107, 47, 255 }      // Dark Olive Green
#define nxOLIVEGREEN  (nxColor){ 128, 128, 0, 255 }         // Olive Green
#define nxLIGHTCORAL  (nxColor){ 240, 128, 128, 255 }       // Light Coral
#define nxTAN        (nxColor){ 210, 180, 140, 255 }        // Tan
#define nxROSYBROWN  (nxColor){ 188, 143, 143, 255 }        // Rosy Brown
#define nxTOMATO     (nxColor){ 255, 99, 71, 255 }          // Tomato
#define nxREDVIOLET  (nxColor){ 207, 50, 119, 255 }         // Red Violet
#define nxSLATEGRAY  (nxColor){ 112, 128, 144, 255 }        // Slate Gray
#define nxMIDNIGHTBLUE (nxColor){ 25, 25, 112, 255 }        // Midnight Blue
#define nxAQUAMARINE (nxColor){ 127, 255, 212, 255 }        // Aquamarine
#define nxBRIGHTRED  (nxColor){ 255, 0, 0, 255 }            // Bright Red
#define nxDARKKHAKI  (nxColor){ 189, 183, 107, 255 }        // Dark Khaki
#define nxTOMATO     (nxColor){ 255, 99, 71, 255 }          // Tomato
#define nxFIREBRICK  (nxColor){ 178, 34, 34, 255 }          // Firebrick
#define nxCORNFLOWERBLUE (nxColor){ 100, 149, 237, 255 }    // Cornflower Blue

// ███████ ████████ ██████  ██    ██  ██████ ████████ ███████ 
// ██         ██    ██   ██ ██    ██ ██         ██    ██      
// ███████    ██    ██████  ██    ██ ██         ██    ███████ 
//      ██    ██    ██   ██ ██    ██ ██         ██         ██ 
// ███████    ██    ██   ██  ██████   ██████    ██    ███████  
//
// >>structs
typedef struct {
    SDL_Renderer* renderer;
    int cam_x, cam_y;
} nxContext;

typedef struct {
    SDL_Surface* surface;
    int width;
    int height;
} nxTexture2D;

typedef struct {
    int r;
    int g;
    int b;
    int a;
} nxColor;

typedef struct {
    int x;
    int y;
    int width;
    int height;
} nxRectangle;

typedef struct {
    nxTexture2D texture;
    int frame_width;
    int frame_height;
    int num_frames;
    float frame_time;
    int current_frame;
    float elapsed_time;
    int start_frame;
    int end_frame;
} nxAnimation;

typedef struct {
    int x, y;
    float zoom;
} nxCamera2D;

// ███████ ███    ██ ██    ██ ███    ███ ███████ 
// ██      ████   ██ ██    ██ ████  ████ ██      
// █████   ██ ██  ██ ██    ██ ██ ████ ██ ███████ 
// ██      ██  ██ ██ ██    ██ ██  ██  ██      ██ 
// ███████ ██   ████  ██████  ██      ██ ███████ 
// >>enums                                              
typedef enum {
    nxKEY_A = SDL_SCANCODE_A,
    nxKEY_B = SDL_SCANCODE_B,
    nxKEY_C = SDL_SCANCODE_C,
    nxKEY_D = SDL_SCANCODE_D,
    nxKEY_E = SDL_SCANCODE_E,
    nxKEY_F = SDL_SCANCODE_F,
    nxKEY_G = SDL_SCANCODE_G,
    nxKEY_H = SDL_SCANCODE_H,
    nxKEY_I = SDL_SCANCODE_I,
    nxKEY_J = SDL_SCANCODE_J,
    nxKEY_K = SDL_SCANCODE_K,
    nxKEY_L = SDL_SCANCODE_L,
    nxKEY_M = SDL_SCANCODE_M,
    nxKEY_N = SDL_SCANCODE_N,
    nxKEY_O = SDL_SCANCODE_O,
    nxKEY_P = SDL_SCANCODE_P,
    nxKEY_Q = SDL_SCANCODE_Q,
    nxKEY_R = SDL_SCANCODE_R,
    nxKEY_S = SDL_SCANCODE_S,
    nxKEY_T = SDL_SCANCODE_T,
    nxKEY_U = SDL_SCANCODE_U,
    nxKEY_V = SDL_SCANCODE_V,
    nxKEY_W = SDL_SCANCODE_W,
    nxKEY_X = SDL_SCANCODE_X,
    nxKEY_Y = SDL_SCANCODE_Y,
    nxKEY_Z = SDL_SCANCODE_Z,
    nxKEY_SPACE = SDL_SCANCODE_SPACE,
    nxKEY_ESCAPE = SDL_SCANCODE_ESCAPE,
    nxKEY_UP = SDL_SCANCODE_UP,
    nxKEY_DOWN = SDL_SCANCODE_DOWN,
    nxKEY_LEFT = SDL_SCANCODE_LEFT,
    nxKEY_RIGHT = SDL_SCANCODE_RIGHT,
    nxMAX_KEYS
} nxKeys;

typedef enum {
    nxMOUSE_LEFT = SDL_BUTTON_LEFT,
    nxMOUSE_MIDDLE = SDL_BUTTON_MIDDLE,
    nxMOUSE_RIGHT = SDL_BUTTON_RIGHT,
    nxMOUSE_X1 = SDL_BUTTON_X1,
    nxMOUSE_X2 = SDL_BUTTON_X2,
    nxMAX_BUTTONS
} nxMouseButtons;

// ███████ ██    ██ ███    ██  ██████ ████████ ██  ██████  ███    ██ ███████ 
// ██      ██    ██ ████   ██ ██         ██    ██ ██    ██ ████   ██ ██      
// █████   ██    ██ ██ ██  ██ ██         ██    ██ ██    ██ ██ ██  ██ ███████ 
// ██      ██    ██ ██  ██ ██ ██         ██    ██ ██    ██ ██  ██ ██      ██ 
// ██       ██████  ██   ████  ██████    ██    ██  ██████  ██   ████ ███████ 
//                                                                          
// >>functions
bool nx_init();
SDL_Window* nx_create_window(const char* title, int width, int height);
SDL_Renderer* nx_create_renderer(SDL_Window* window);
bool nx_process_events();
void nx_start(
    void (*init)(),
    void (*update)(float),
    void (*render)(nxContext*),
    const char* title,
    int width,
    int height,
    bool resizable
);
void nx_get_mouse_position(int* x, int* y);
nxTexture2D nx_load_texture(const char *file_path);
TTF_Font* nx_load_font(const char* font_path, int font_size);
bool nx_is_key_down(nxKeys key);
bool nx_is_key_pressed(nxKeys key);
bool nx_is_mouse_button_down(nxMouseButtons button);
bool nx_is_mouse_button_pressed(nxMouseButtons button);
bool nx_check_collision_rect(nxRectangle rect1, nxRectangle rect2);
void nx_play_audio(const char* sound);
void nx_play_music_looped(const char* music);
void nx_play_audio_looped(const char* sound);
void nx_stop_music();
void nx_stop_audio();
void nx_run_animation(nxAnimation* anim, float dt, bool looped);
void nx_render_animation(nxContext* ctx, nxAnimation* anim, int dest_x, int dest_y, float rotation);
void nx_render_texture(nxContext* ctx, nxTexture2D* tex, int tex_x, int tex_y, float rotation);
SDL_Color nx_convert_color(nxColor color);
void nx_render_text(nxContext* ctx, TTF_Font* font, const char* text, nxColor color, int x, int y);
void nx_render_rect_filled(nxContext* ctx, int x, int y, int width, int height, nxColor color);
void nx_render_rect_line(nxContext* ctx, int x, int y, int width, int height, nxColor color);
void nx_render_circle_line(nxContext* ctx, int center_x, int center_y, int radius, nxColor color);
void nx_render_circle_filled(nxContext* ctx, int center_x, int center_y, int radius, nxColor color);
void nx_render_line(nxContext* ctx, int x1, int y1, int x2, int y2);
void nx_clear_screen(nxContext* ctx, nxColor color);
nxAnimation* nx_create_animation(nxTexture2D texture, int frame_width, int frame_height, int num_frames, float frame_time, int start_frame, int end_frame);
float nx_get_rotation(int x1, int y1, int x2, int y2);
void nx_apply_camera(nxContext* ctx, nxCamera2D* cam);
void nx_camera_follow(nxCamera2D* cam, int target_x, int target_y);

// ██ ███    ███ ██████  ██      ███████ ███    ███ ███████ ███    ██ ████████  █████  ████████ ██  ██████  ███    ██
// ██ ████  ████ ██   ██ ██      ██      ████  ████ ██      ████   ██    ██    ██   ██    ██    ██ ██    ██ ████   ██
// ██ ██ ████ ██ ██████  ██      █████   ██ ████ ██ █████   ██ ██  ██    ██    ███████    ██    ██ ██    ██ ██ ██  ██
// ██ ██  ██  ██ ██      ██      ██      ██  ██  ██ ██      ██  ██ ██    ██    ██   ██    ██    ██ ██    ██ ██  ██ ██
// ██ ██      ██ ██      ███████ ███████ ██      ██ ███████ ██   ████    ██    ██   ██    ██    ██  ██████  ██   ████
//
// >>implementation
#ifdef NEXA_IMPLEMENTATION

int previous_key_states[NX_MAX_KEYS];
int previous_mouse_button_states[NX_MAX_BUTTONS];

bool nx_init() {
    if (SDL_Init(SDL_INIT_EVERYTHING) < 0) {
        printf("SDL: failed to initialize, error: %s\n", SDL_GetError());
        return false;
    }
    if (IMG_Init(IMG_INIT_PNG | IMG_INIT_JPG) < 0) {
        printf("SDL_image: failed to initialize, error: %s\n", SDL_GetError());
        return false;
    }
    if (TTF_Init() == -1) {
        printf("SDL_ttf: failed to initialize, error: %s\n", TTF_GetError());
        return false;
    }
    if (Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, 2, 2048) < 0) {
        fprintf(stderr, "SDL_mixer could not initialize! SDL_mixer Error: %s\n", Mix_GetError());
        return false;
    }
    if (Mix_Init(MIX_INIT_FLAC | MIX_INIT_MOD | MIX_INIT_MP3 | MIX_INIT_OGG | MIX_INIT_MID | MIX_INIT_OPUS | MIX_INIT_WAVPACK) == 0) {
        fprintf(stderr, "SDL_mixer could not initialize WAV! SDL_mixer Error: %s\n", Mix_GetError());
        return false;
    }
    return true;
}

SDL_Window* nx_create_window(const char* title, int width, int height) {
    SDL_Window* window = SDL_CreateWindow(title, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, width, height, SDL_WINDOW_SHOWN);
    if (window == NULL) {
        printf("Window could not be created! ERROR: %s", SDL_GetError());
    }

    return window;
}

SDL_Renderer* nx_create_renderer(SDL_Window* window) {
    SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (renderer == NULL) {
        printf("Renderer could not be created! ERROR: ", SDL_GetError());
    }

    return renderer;
}

bool nx_process_events() {
    SDL_Event event;
    SDL_PollEvent(&event);
    if (event.type == SDL_QUIT) {
        return false;
    }

    return true;
}

void nx_start(
    void (*init)(), 
    void (*update)(float), 
    void (*render)(nxContext*), 
    const char* title,
    int width,
    int height,
    bool resizable
) {
    nx_init();
    SDL_Window* window = nx_create_window(title, width, height);
    SDL_Renderer* renderer = nx_create_renderer(window);

    SDL_SetWindowResizable(window, resizable);

    nxContext ctx = (nxContext){renderer};

    init();

    bool running = true;
    Uint64 last_time = SDL_GetTicks();

    while (running) {
        running = nx_process_events();

        Uint64 current_time = SDL_GetTicks();
        float dt = (current_time - last_time) / 1000.0f;
        last_time = current_time;

        update(dt);

        render(&ctx);

        SDL_RenderPresent(ctx.renderer);
    }

    SDL_DestroyWindow(window);
    SDL_DestroyRenderer(ctx.renderer);
    Mix_HaltMusic();
    Mix_HaltChannel(-1);
    Mix_CloseAudio();
    TTF_Quit();
    Mix_Quit();
    SDL_Quit();
}

void nx_get_mouse_position(int* x, int* y) {
    SDL_GetMouseState(x, y);
}

nxTexture2D nx_load_texture(const char *file_path) {
    nxTexture2D texture;
    texture.width = 0;
    texture.height = 0;

    texture.surface = IMG_Load(file_path);
    if (texture.surface == NULL) {
        fprintf(stderr, "Failed to load texture! ERROR: %s\n", SDL_GetError());
        exit(1);
    }

    texture.width = texture.surface->w;
    texture.height = texture.surface->h;

    return texture;
}

TTF_Font* nx_load_font(const char* font_path, int font_size) {
    if (TTF_Init() == -1) {
        fprintf(stderr, "Failed to initialize SDL_ttf: %s\n", SDL_GetError());
        exit(1); // Handle error or return an error code
    }

    TTF_Font* font = TTF_OpenFont(font_path, font_size);
    if (font == NULL) {
        fprintf(stderr, "Failed to load font: %s\n", SDL_GetError());
        exit(1); // Handle error or return an error code
    }

    return font;
}

bool nx_is_key_down(nxKeys key) {
    const Uint8* key_state = SDL_GetKeyboardState(NULL);
    return key_state[key] == 1;
}

bool nx_is_key_pressed(nxKeys key) {
    const Uint8* key_state = SDL_GetKeyboardState(NULL);
    int current_state = key_state[key];
    int index = key; // No need for adjustment due to direct mapping
    int previous_state = previous_key_states[index];

    previous_key_states[index] = current_state;

    return current_state == 1 && previous_state == 0;
}

bool nx_is_mouse_button_down(nxMouseButtons button) {
    Uint32 mouse_state = SDL_GetMouseState(NULL, NULL);
    return (mouse_state & SDL_BUTTON(button)) != 0;
}

bool nx_is_mouse_button_pressed(nxMouseButtons button) {
    Uint32 mouse_state = SDL_GetMouseState(NULL, NULL);
    int current_state = (mouse_state & SDL_BUTTON(button)) ? 1 : 0;
    int index = button - SDL_BUTTON_LEFT; // Adjust index if needed
    int previous_state = previous_mouse_button_states[index];

    previous_mouse_button_states[index] = current_state;

    return current_state == 1 && previous_state == 0;
}

bool nx_check_collision_rect(nxRectangle rect1, nxRectangle rect2) {
    if (
        rect1.x < rect2.x + rect2.width &&
        rect1.x + rect1.width > rect2.x &&
        rect1.y < rect2.y + rect2.height &&
        rect1.y + rect1.height > rect2.y
    ) {
        return true;
    }
    else {
        return false;
    }
}

void nx_play_audio(const char* sound) {
    Mix_Chunk *audio = Mix_LoadWAV(sound);
    if (audio == NULL) {
        fprintf(stderr, "Failed to load audio: %s\n", Mix_GetError());
        return;
    }

    int channel = Mix_PlayChannel(-1, audio, 0);
    if (channel == -1) {
        fprintf(stderr, "Failed to play sound: %s\n", Mix_GetError());
    }
}

void nx_play_music_looped(const char* music) {
    Mix_Music *bgm = Mix_LoadMUS(music);
    if (bgm == NULL) {
        fprintf(stderr, "Failed to load music: %s\n", Mix_GetError());
        return;
    }

    if (Mix_PlayMusic(bgm, -1) == -1) {
        fprintf(stderr, "Failed to play music: %s\n", Mix_GetError());
        Mix_FreeMusic(bgm);  // Free the music after use
        return;
    }
}

void nx_play_audio_looped(const char* sound) {
    Mix_Chunk *audio = Mix_LoadWAV(sound);
    if (audio == NULL) {
        fprintf(stderr, "Failed to load audio: %s\n", Mix_GetError());
        return;
    }
    Mix_PlayChannel(-1, audio, -1);
    Mix_FreeChunk(audio);  // Free the chunk after use
}

void nx_stop_music() {
    Mix_HaltMusic();
}

void nx_stop_audio() {
    Mix_HaltChannel(-1);
}

nxAnimation* nx_create_animation(nxTexture2D texture, int frame_width, int frame_height, int num_frames, float frame_time, int start_frame, int end_frame) {
    nxAnimation* animation = malloc(sizeof(nxAnimation));
    if (!animation) {
        return NULL;
    }

    animation->texture = texture;
    animation->frame_width = frame_width;
    animation->frame_height = frame_height;
    animation->num_frames = num_frames;
    animation->frame_time = frame_time;
    animation->current_frame = start_frame;
    animation->elapsed_time = 0.0f;
    animation->start_frame = start_frame;
    animation->end_frame = end_frame;

    return animation;
}

void nx_run_animation(nxAnimation* anim, float dt, bool looped) {
    anim->elapsed_time += dt;

    if (anim->elapsed_time >= anim->frame_time) {
        anim->elapsed_time -= anim->frame_time;
        anim->current_frame++;

        if (looped) {
            if (anim->current_frame > anim->end_frame) {
                anim->current_frame = anim->start_frame;
            }
        } else {
            if (anim->current_frame > anim->end_frame) {
                anim->current_frame = anim->end_frame;
            }
        }
    }
}

void nx_render_animation(nxContext* ctx, nxAnimation* anim, int dest_x, int dest_y, float rotation) {
    SDL_Texture* tex = SDL_CreateTextureFromSurface(ctx->renderer, anim->texture.surface);
    if (!tex) {
        fprintf(stderr, "Failed to create texture! ERROR: %s\n", SDL_GetError());
        return;
    }

    int src_x = (anim->current_frame - 1) * anim->frame_width;
    SDL_Rect src_rect = { src_x, 0, anim->frame_width, anim->frame_height };

    SDL_Rect dst_rect = { dest_x - ctx->cam_x, dest_y - ctx->cam_y, anim->frame_width, anim->frame_height };
    SDL_Point center = { anim->frame_width / 2, anim->frame_height / 2 };

    SDL_RenderCopyEx(ctx->renderer, tex, &src_rect, &dst_rect, rotation, &center, SDL_FLIP_NONE);

    SDL_DestroyTexture(tex);
}

void nx_render_texture(nxContext* ctx, nxTexture2D* tex, int tex_x, int tex_y, float rotation) {
    SDL_Texture* texture = SDL_CreateTextureFromSurface(ctx->renderer, tex->surface);

    int width = 0, height = 0;
    if (SDL_QueryTexture(texture, NULL, NULL, &width, &height) != 0) {
        SDL_Log("Failed to render texture! ERROR: %s", SDL_GetError());
        return;
    }

    SDL_Rect dst = {tex_x - ctx->cam_x, tex_y - ctx->cam_y, width, height};
    SDL_Point center = {width / 2, height / 2};

    SDL_RenderCopyEx(ctx->renderer, texture, NULL, &dst, rotation, &center, SDL_FLIP_NONE);

    SDL_DestroyTexture(texture);
}

SDL_Color nx_convert_color(nxColor color) {
    SDL_Color sdl_color = {color.r, color.g, color.b, color.a};
    return sdl_color;
}

void nx_render_text(nxContext* ctx, TTF_Font* font, const char* text, nxColor color, int x, int y) {
    SDL_Color sdl_color = nx_convert_color(color);

    SDL_Surface* surface = TTF_RenderText_Solid(font, text, sdl_color);
    if (surface == NULL) {
        SDL_Log("Could not create text surface: %s", SDL_GetError());
        return;
    }

    SDL_Texture* texture = SDL_CreateTextureFromSurface(ctx->renderer, surface);
    if (texture == NULL) {
        SDL_FreeSurface(surface);
        SDL_Log("Could not create text texture: %s", SDL_GetError());
        return;
    }

    int w = 0, h = 0;
    SDL_QueryTexture(texture, NULL, NULL, &w, &h);

    int scaled_x = x - ctx->cam_x;
    int scaled_y = y - ctx->cam_y;
    int scaled_width = w;
    int scaled_height = h;

    SDL_Rect dest_rect = {scaled_x, scaled_y, scaled_width, scaled_height};
    SDL_RenderCopy(ctx->renderer, texture, NULL, &dest_rect);

    SDL_DestroyTexture(texture);
    SDL_FreeSurface(surface);
}

void nx_render_rect_filled(nxContext* ctx, int x, int y, int width, int height, nxColor color) {
    SDL_SetRenderDrawColor(ctx->renderer, color.r, color.g, color.b, color.a);
    SDL_Rect rect = {x - ctx->cam_x, y - ctx->cam_y, width, height};
    SDL_RenderFillRect(ctx->renderer, &rect);
}

void nx_render_rect_line(nxContext* ctx, int x, int y, int width, int height, nxColor color) {
    SDL_SetRenderDrawColor(ctx->renderer, color.r, color.g, color.b, color.a);
    SDL_Rect rect = {x - ctx->cam_x, y - ctx->cam_y, width, height};
    SDL_RenderDrawRect(ctx->renderer, &rect);
}

void nx_render_circle_line(nxContext* ctx, int center_x, int center_y, int radius, nxColor color) {
    int diameter = radius * 2;
    int x = radius - 1;
    int y = 0;
    int tx = 1;
    int ty = 1;
    int error = tx - diameter;

    SDL_SetRenderDrawColor(ctx->renderer, color.r, color.g, color.b, color.a);
    center_x -= ctx->cam_x;
    center_y -= ctx->cam_y;
    while (x >= y) {
        SDL_RenderDrawPoint(ctx->renderer, center_x + x, center_y - y);
        SDL_RenderDrawPoint(ctx->renderer, center_x + x, center_y + y);
        SDL_RenderDrawPoint(ctx->renderer, center_x - x, center_y - y);
        SDL_RenderDrawPoint(ctx->renderer, center_x - x, center_y + y);
        SDL_RenderDrawPoint(ctx->renderer, center_x + y, center_y - x);
        SDL_RenderDrawPoint(ctx->renderer, center_x + y, center_y + x);
        SDL_RenderDrawPoint(ctx->renderer, center_x - y, center_y - x);
        SDL_RenderDrawPoint(ctx->renderer, center_x - y, center_y + x);

        if (error <= 0) {
            y++;
            error += ty;
            ty += 2;
        }

        if (error > 0) {
            x--;
            tx += 2;
            error += tx - diameter;
        }
    }
}

void nx_render_circle_filled(nxContext* ctx, int center_x, int center_y, int radius, nxColor color) {
    int diameter = radius * 2;
    int x = radius - 1;
    int y = 0;
    int tx = 1;
    int ty = 1;
    int error = tx - diameter;

    SDL_SetRenderDrawColor(ctx->renderer, color.r, color.g, color.b, color.a);
    center_x -= ctx->cam_x;
    center_y -= ctx->cam_y;
    while (x >= y) {
        SDL_RenderDrawLine(ctx->renderer, center_x - x, center_y - y, center_x + x, center_y - y);
        SDL_RenderDrawLine(ctx->renderer, center_x - x, center_y + y, center_x + x, center_y + y);
        SDL_RenderDrawLine(ctx->renderer, center_x - y, center_y - x, center_x + y, center_y - x);
        SDL_RenderDrawLine(ctx->renderer, center_x - y, center_y + x, center_x + y, center_y + x);

        if (error <= 0) {
            y++;
            error += ty;
            ty += 2;
        }

        if (error > 0) {
            x--;
            tx += 2;
            error += tx - diameter;
        }
    }
}

void nx_render_line(nxContext* ctx, int x1, int y1, int x2, int y2) {
    SDL_RenderDrawLine(ctx->renderer, x1 - ctx->cam_x, y1 - ctx->cam_y, x2 - ctx->cam_x, y2 - ctx->cam_y);
}

void nx_clear_screen(nxContext* ctx, nxColor color) {
    SDL_SetRenderDrawColor(ctx->renderer, color.r, color.g, color.b, color.a);
    SDL_RenderClear(ctx->renderer);
}

float nx_get_rotation(int x1, int y1, int x2, int y2) {
    float rotation = -90 + atan2(y1 - y2, x1 - x2) * (180 / PI);

    return rotation >= 0 ? rotation : 360 + rotation;
}

void nx_apply_camera(nxContext* ctx, nxCamera2D* cam) {
    ctx->cam_x = cam->x;
    ctx->cam_y = cam->y;

    SDL_RenderSetScale(ctx->renderer, cam->zoom, cam->zoom);
}

void nx_camera_follow(nxCamera2D* cam, int target_x, int target_y) {
    cam->x = target_x;
    cam->y = target_y;
}

#endif // NEXA_IMPLEMENTATION

#endif // NEXA_H
