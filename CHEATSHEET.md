# WELCOME
Hello! This is a simple cheatsheet of all the functinality of Nexa. This will go over all the functions, structs, enums, etc and give a short explanation of how they work. Enjoy :)

# DEFINES
## Colors
All the preset colors available for use.
```c
#define nxWHITE             (nxColor){ 255, 255, 255, 255 }    // White
#define nxBLACK             (nxColor){ 0, 0, 0, 255 }          // Black
#define nxRED               (nxColor){ 255, 0, 0, 255 }        // Red
#define nxGREEN             (nxColor){ 0, 255, 0, 255 }        // Green
#define nxBLUE              (nxColor){ 0, 0, 255, 255 }        // Blue
#define nxYELLOW            (nxColor){ 255, 255, 0, 255 }      // Yellow
#define nxCYAN              (nxColor){ 0, 255, 255, 255 }      // Cyan
#define nxMAGENTA           (nxColor){ 255, 0, 255, 255 }      // Magenta
#define nxORANGE            (nxColor){ 255, 165, 0, 255 }      // Orange
#define nxPURPLE            (nxColor){ 128, 0, 128, 255 }      // Purple
#define nxBROWN             (nxColor){ 165, 42, 42, 255 }      // Brown
#define nxGRAY              (nxColor){ 128, 128, 128, 255 }    // Gray
#define nxLIGHTGRAY         (nxColor){ 211, 211, 211, 255 }    // Light Gray
#define nxDARKGRAY          (nxColor){ 169, 169, 169, 255 }    // Dark Gray
#define nxPINK              (nxColor){ 255, 192, 203, 255 }    // Pink
#define nxGOLD              (nxColor){ 255, 215, 0, 255 }      // Gold
#define nxSILVER            (nxColor){ 192, 192, 192, 255 }    // Silver
#define nxMAROON            (nxColor){ 128, 0, 0, 255 }        // Maroon
#define nxOLIVE             (nxColor){ 128, 128, 0, 255 }      // Olive
#define nxLIME              (nxColor){ 50, 205, 50, 255 }      // Lime
#define nxTEAL              (nxColor){ 0, 128, 128, 255 }      // Teal
#define nxNAVY              (nxColor){ 0, 0, 128, 255 }        // Navy
#define nxVIOLET            (nxColor){ 238, 130, 238, 255 }    // Violet
#define nxINDIGO            (nxColor){ 75, 0, 130, 255 }       // Indigo
#define nxTURQUOISE         (nxColor){ 64, 224, 208, 255 }     // Turquoise
#define nxPEACH             (nxColor){ 255, 218, 185, 255 }    // Peach
#define nxMINT              (nxColor){ 189, 252, 201, 255 }    // Mint
#define nxCORAL             (nxColor){ 255, 127, 80, 255 }     // Coral
#define nxLIGHTPINK         (nxColor){ 255, 182, 193, 255 }    // Light Pink
#define nxDARKORANGE        (nxColor){ 255, 140, 0, 255 }      // Dark Orange
#define nxDARKGREEN         (nxColor){ 0, 100, 0, 255 }        // Dark Green
#define nxDARKBLUE          (nxColor){ 0, 0, 139, 255 }        // Dark Blue
#define nxLAVENDER          (nxColor){ 230, 230, 250, 255 }    // Lavender
#define nxCRIMSON           (nxColor){ 220, 20, 60, 255 }      // Crimson
#define nxFUCHSIA           (nxColor){ 255, 0, 255, 255 }      // Fuchsia
#define nxLIGHTYELLOW       (nxColor){ 255, 255, 224, 255 }    // Light Yellow
#define nxLIGHTGREEN        (nxColor){ 144, 238, 144, 255 }    // Light Green
#define nxLIGHTBLUE         (nxColor){ 173, 216, 230, 255 }    // Light Blue
#define nxLIGHTCORAL        (nxColor){ 240, 128, 128, 255 }    // Light Coral
#define nxTOMATO            (nxColor){ 255, 99, 71, 255 }      // Tomato
#define nxSEASHELL          (nxColor){ 255, 228, 196, 255 }    // Seashell
#define nxHONEYDEW          (nxColor){ 240, 255, 240, 255 }    // Honeydew
#define nxMISTYROSE         (nxColor){ 255, 228, 225, 255 }    // Misty Rose
#define nxWHITESMOKE        (nxColor){ 245, 245, 245, 255 }    // White Smoke
#define nxAZURE             (nxColor){ 240, 255, 255, 255 }    // Azure
#define nxSANDYBROWN        (nxColor){ 244, 164, 96, 255 }     // Sandy Brown
#define nxSLATEGRAY         (nxColor){ 112, 128, 144, 255 }    // Slate Gray
#define nxKHAKI             (nxColor){ 240, 230, 140, 255 }    // Khaki
#define nxLIMEGREEN         (nxColor){ 50, 205, 50, 255 }      // Lime Green
#define nxMEDIUMSLATEBLUE   (nxColor){ 123, 104, 238, 255 }    // Medium Slate Blue
#define nxSADDLEBROWN       (nxColor){ 139, 69, 19, 255 }      // Saddle Brown
#define nxSLATEBLUE         (nxColor){ 106, 90, 205, 255 }     // Slate Blue
#define nxDODGERBLUE        (nxColor){ 30, 144, 255, 255 }     // Dodger Blue
#define nxDEEPSKYBLUE       (nxColor){ 0, 191, 255, 255 }      // Deep Sky Blue
#define nxMEDIUMPURPLE      (nxColor){ 147, 112, 219, 255 }    // Medium Purple
#define nxPALEVIOLETRED     (nxColor){ 219, 112, 147, 255 }    // Pale Violet Red
#define nxNAVAJOWHITE       (nxColor){ 255, 222, 173, 255 }    // Navajo White
#define nxGAINSBORO         (nxColor){ 220, 220, 220, 255 }    // Gainsboro
#define nxCHARTREUSE        (nxColor){ 127, 255, 0, 255 }      // Chartreuse
#define nxPLUM              (nxColor){ 221, 160, 221, 255 }    // Plum
#define nxORCHID            (nxColor){ 218, 112, 214, 255 }    // Orchid
#define nxPEA               (nxColor){ 197, 227, 132, 255 }    // Pea
#define nxDARKSALMON        (nxColor){ 233, 150, 122, 255 }    // Dark Salmon
#define nxLIGHTSEAGREEN     (nxColor){ 32, 178, 170, 255 }     // Light Sea Green
#define nxMEDIUMAQUAMARINE  (nxColor){ 102, 205, 170, 255 }    // Medium Aquamarine
#define nxTHISTLE           (nxColor){ 216, 191, 216, 255 }    // Thistle
#define nxLIGHTSTEELBLUE    (nxColor){ 176, 196, 222, 255 }    // Light Steel Blue
#define nxCADETBLUE         (nxColor){ 95, 158, 160, 255 }     // Cadet Blue
#define nxDARKCYAN          (nxColor){ 0, 139, 139, 255 }      // Dark Cyan
#define nxLAVENDERBLUSH     (nxColor){ 255, 240, 245, 255 }    // Lavender Blush
#define nxHOTPINK           (nxColor){ 255, 105, 180, 255 }    // Hot Pink
#define nxSILVERCHALICE     (nxColor){ 192, 192, 192, 255 }    // Silver Chalice
#define nxDARKOLIVEGREEN    (nxColor){ 85, 107, 47, 255 }      // Dark Olive Green
#define nxOLIVEGREEN        (nxColor){ 128, 128, 0, 255 }      // Olive Green
#define nxLIGHTCORAL        (nxColor){ 240, 128, 128, 255 }    // Light Coral
#define nxTAN               (nxColor){ 210, 180, 140, 255 }    // Tan
#define nxROSYBROWN         (nxColor){ 188, 143, 143, 255 }    // Rosy Brown
#define nxTOMATO            (nxColor){ 255, 99, 71, 255 }      // Tomato
#define nxREDVIOLET         (nxColor){ 207, 50, 119, 255 }     // Red Violet
#define nxSLATEGRAY         (nxColor){ 112, 128, 144, 255 }    // Slate Gray
#define nxMIDNIGHTBLUE      (nxColor){ 25, 25, 112, 255 }      // Midnight Blue
#define nxAQUAMARINE        (nxColor){ 127, 255, 212, 255 }    // Aquamarine
#define nxBRIGHTRED         (nxColor){ 255, 0, 0, 255 }        // Bright Red
#define nxDARKKHAKI         (nxColor){ 189, 183, 107, 255 }    // Dark Khaki
#define nxFIREBRICK         (nxColor){ 178, 34, 34, 255 }      // Firebrick
#define nxCORNFLOWERBLUE    (nxColor){ 100, 149, 237, 255 }    // Cornflower Blue
```

# STRUCTS
## nxContext
The struct for the user to access the low level renderer.
```c
typedef struct {            
    SDL_Renderer* renderer; // A variable to access the underlying renderer
} nxContext;
```

The struct for a 2D texture.
```c
typedef struct {
    SDL_Surface* surface; // Basically the id of the texture
    int width;            // The width of the texture
    int height;           // The height of the texture
} nxTexture2D;
```

## nxColor
The struct to make a rgba color.
```c
typedef struct {
    int r;  // red
    int g;  // green
    int b;  // blue
    int a;  // alpha
} nxColor;
```

## nxRectangle
The struct to make a simple rectangle shape.
```c
typedef struct {
    int x;         // x position
    int y;         // y position
    int width;     // width of the rectangle
    int height;    // height of the rectangle
} nxRectangle;
```

## nxAnimation
The struct to make an animation.
```c
typedef struct {
    nxTexture2D texture;     // The entire spritesheet texture
    int frame_width;         // The width of one frame
    int frame_height;        // The height of one frame
    int num_frames;          // The number of frames for the animation to go through
    float frame_time;        // How long to stay on a frame
    int current_frame;       // The current frame
    float elapsed_time;      // The amount of time that passes between frames
    int start_frame;         // The starting frame of the animation
    int end_frame;           // The frame to stop on before looping back
} nxAnimation;
```

## nxCamera2D
The struct for a 2d camera.
```c
typedef struct {
    int x, y;         // x and y position
    float zoom;       // zoom amount
} nxCamera2D;
```

# ENUMS
## nxKeys
The keys you can use in a program.
```c
typedef enum {
    nxKEY_A      = SDL_SCANCODE_A,     // The 'A' key          
    nxKEY_B      = SDL_SCANCODE_B,     // The 'B' key          
    nxKEY_C      = SDL_SCANCODE_C,     // The 'C' key          
    nxKEY_D      = SDL_SCANCODE_D,     // The 'D' key          
    nxKEY_E      = SDL_SCANCODE_E,     // The 'E' key          
    nxKEY_F      = SDL_SCANCODE_F,     // The 'F' key          
    nxKEY_G      = SDL_SCANCODE_G,     // The 'G' key          
    nxKEY_H      = SDL_SCANCODE_H,     // The 'H' key          
    nxKEY_I      = SDL_SCANCODE_I,     // The 'I' key          
    nxKEY_J      = SDL_SCANCODE_J,     // The 'J' key          
    nxKEY_K      = SDL_SCANCODE_K,     // The 'K' key          
    nxKEY_L      = SDL_SCANCODE_L,     // The 'L' key          
    nxKEY_M      = SDL_SCANCODE_M,     // The 'M' key          
    nxKEY_N      = SDL_SCANCODE_N,     // The 'N' key          
    nxKEY_O      = SDL_SCANCODE_O,     // The 'O' key          
    nxKEY_P      = SDL_SCANCODE_P,     // The 'P' key          
    nxKEY_Q      = SDL_SCANCODE_Q,     // The 'Q' key          
    nxKEY_R      = SDL_SCANCODE_R,     // The 'R' key          
    nxKEY_S      = SDL_SCANCODE_S,     // The 'S' key          
    nxKEY_T      = SDL_SCANCODE_T,     // The 'T' key          
    nxKEY_U      = SDL_SCANCODE_U,     // The 'U' key          
    nxKEY_V      = SDL_SCANCODE_V,     // The 'V' key          
    nxKEY_W      = SDL_SCANCODE_W,     // The 'W' key          
    nxKEY_X      = SDL_SCANCODE_X,     // The 'X' key          
    nxKEY_Y      = SDL_SCANCODE_Y,     // The 'Y' key          
    nxKEY_Z      = SDL_SCANCODE_Z,     // The 'Z' key          
    nxKEY_SPACE  = SDL_SCANCODE_SPACE, // The 'SPACE' key      
    nxKEY_ESCAPE = SDL_SCANCODE_ESCAPE, // The 'ESCAPE' key     
    nxKEY_UP     = SDL_SCANCODE_UP,    // The 'UP' arrow key   
    nxKEY_DOWN   = SDL_SCANCODE_DOWN,  // The 'DOWN' arrow key 
    nxKEY_LEFT   = SDL_SCANCODE_LEFT,  // The 'LEFT' arrow key 
    nxKEY_RIGHT  = SDL_SCANCODE_RIGHT, // The 'RIGHT' arrow key
    nxMAX_KEYS                          // The maximum amount of keys
} nxKeys;
```

## nxMouseButtons
The mouse buttons you can use in a program.
```c
typedef enum {
    nxMOUSE_LEFT   = SDL_BUTTON_LEFT,      // The 'LEFT' mouse button       
    nxMOUSE_MIDDLE = SDL_BUTTON_MIDDLE,    // The 'MIDDLE' mouse button     
    nxMOUSE_RIGHT  = SDL_BUTTON_RIGHT,     // The 'RIGHT' mouse button      
    nxMOUSE_X1     = SDL_BUTTON_X1,        // The 'X1' mouse button         
    nxMOUSE_X2     = SDL_BUTTON_X2,        // The 'X2' mouse button         
    nxMAX_BUTTONS                          // The maximum amount of mouse buttons
} nxMouseButtons;
```

# FUNCTIONS
## nx_start
The function that creates your nexa app.
You pass in your on_run, update, and render functions and you title, width and height of the window, and whether or not you want to window to be resizable or not.
```c
void nx_start(
    void (*on_run)(), 
    void (*update)(float), 
    void (*render)(nxContext*), 
    const char* title, 
    int width, 
    int height, 
    bool resizable
);
```

## nx_get_mouse_position
A simple fucntion to get the position of the mouse.
```c
void nx_get_mouse_position(int* x, int* y);
```

## nx_load_texture
The function needed to load a texture to use.
```c
nxTexture2D nx_load_texture(const char *file_path);
```

## nx_load_font
The function need to load a font to use.
```c
TTF_Font* nx_load_font(const char* font_path, int font_size);
```

## nx_is_key_down
A check to see if a key is held down.
```c
bool nx_is_key_down(nxKeys key);
```

## nx_is_key_pressed
A check to see if a key is pressed.
```c
bool nx_is_key_pressed(nxKeys key);
```

## nx_is_mouse_button_down
A check to see if a mouse button is held down.
```c
bool nx_is_mouse_button_down(nxMouseButtons button);
```

## nx_is_mouse_button_pressed
A check to see if a mouse button is pressed.
```c
bool nx_is_mouse_button_pressed(nxMouseButtons button);
```

## nx_check_collision_rect
A check to see if 2 rectangles collided with eachother
```c
bool nx_check_collision_rect(nxRectangle rect1, nxRectangle rect2);
```

## nx_play_audio
The function to play a audio file.
```c
void nx_play_audio(const char* sound);
```

## nx_play_audio_looped
The function to play a audio file looped.
```c
void nx_play_audio_looped(const char* sound);
```

## nx_play_music_looped
The function to play music. (Basically just any longer sound file played over and over again)
```c
void nx_play_music_looped(const char* music);
```

## nx_stop_music
The function to stop any music playing.
```c
void nx_stop_music();
```

## nx_stop_audio
The function to stop any audio playing
```c
void nx_stop_audio();
```

## nx_update_animation
The function need to play an animation.
```c
void nx_update_animation(nxAnimation* anim, float dt, bool looped);
```

## nx_render_animation
The function to render an animation to the screen.
```c
void nx_render_animation(
    nxContext* ctx, 
    nxAnimation* anim, 
    int dest_x, 
    int dest_y, 
    float scale_x, 
    float scale_y, 
    float rotation
);
```

## nx_render_texture
The function to render a texture to the screen.
```c
void nx_render_texture(
    nxContext* ctx, 
    nxTexture2D* tex, 
    int tex_x, 
    int tex_y, 
    float scale_x, 
    float scale_y, 
    float rotation
);
```

## nx_render_text
The function to render text to the screen.
```c
void nx_render_text(
    nxContext* ctx, 
    TTF_Font* font, 
    const char* text, 
    nxColor color, 
    int x, 
    int y, 
    float scale_x, 
    float scale_y
);
```

## nx_render_rect_filled
The function to render a filled rectangle shape to the screen.
```c
void nx_render_rect_filled(nxContext* ctx, int x, int y, int width, int height, nxColor color);
```

## nx_render_rect_line
The function to render an outline of a rectangle shape to the screen.
```c
void nx_render_rect_line(nxContext* ctx, int x, int y, int width, int height, nxColor color);
```

## nx_render_circle_filled
The function to render a filled circle shape to the screen.
```c
void nx_render_circle_filled(nxContext* ctx, int center_x, int center_y, int radius, nxColor color);
```

## nx_render_circle_line
The function to render an outline of a circle shape to the screen.
```c
void nx_render_circle_line(nxContext* ctx, int center_x, int center_y, int radius, nxColor color);
```

## nx_render_line
The function to render a line to the screen.
```c
void nx_render_line(nxContext* ctx, int x1, int y1, int x2, int y2);
```

## nx_clear_screen
The function to clear the screen every frame to a certain color.
```c
void nx_clear_screen(nxContext* ctx, nxColor color);
```

## nx_create_animation
The function to create a new animation.
```c
nxAnimation* nx_create_animation(
    nxTexture2D texture, 
    int frame_width, 
    int frame_height, 
    int num_frames, 
    float frame_time, 
    int start_frame, 
    int end_frame
);
```

## nx_get_rotation
The function to get the rotation between two points.
```c
float nx_get_rotation(int x1, int y1, int x2, int y2);
```

## nx_apply_camera
The function to apply the camera to the application.
```c
void nx_apply_camera(nxContext* ctx, nxCamera2D* cam);
```

## nx_camera_follow
The function to make the camera follow an object.
```c
void nx_camera_follow(nxCamera2D* cam, int target_x, int target_y);
```
