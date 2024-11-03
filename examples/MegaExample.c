#define NEXA_IMPLEMENTATION
#include "../nexa.h"
#include <stdio.h>

const int WINDOW_WIDTH = 1280;
const int WINDOW_HEIGHT = 720;

typedef struct {
	nxTexture2D tex;
	int x;
	int y;
} Square;

Square square;
nxAnimation* anim;

void on_run() {
	nx_play_music_looped("./examples/res/music.mp3");

	square.tex = nx_load_texture("./examples/res/newnexa.png");
    square.x = WINDOW_WIDTH / 2 - square.tex.width / 2;
    square.y = WINDOW_HEIGHT / 2 - square.tex.height / 2;

    anim = nx_create_animation(nx_load_texture("./examples/res/character_spritesheet.png"), 48, 48, 6, 0.1f, 11, 16);
}

void update(float dt) {
	if (nx_is_key_down("w")) {
		square.y -= 400 * dt;
	}
	if (nx_is_key_down("a")) {
		square.x -= 400 * dt;
	}
	if (nx_is_key_down("s")) {
		square.y += 400 * dt;
	}
	if (nx_is_key_down("d")) {
		square.x += 400 * dt;
	}

	if (nx_is_key_pressed("p")) {
		nx_play_audio("./examples/res/sfx.wav");
	}

	if (nx_is_mouse_button_pressed("left")) {
		printf("left mouse button pressed\n");
	}
	if (nx_is_mouse_button_down("right")) {
		printf("right mouse button down\n");
	}

	nx_update_animation(anim, dt, true);

	int x, y;
	nx_get_mouse_position(&x, &y);
	printf("x: %d, y: %d\n", x, y);
}

void render(nxContext* ctx) {
	nx_clear_screen(ctx, nxCORNFLOWERBLUE);

	nx_render_texture(ctx, &square.tex, square.x, square.y, 1.0f, 1.0f);

	nx_render_rect_line(ctx, 300, 60, 64, 64, nxRED);
	nx_render_rect_filled(ctx, 300, 400, 64, 64, nxWHITE);

	nx_render_circle_line(ctx, 320, 240, 100, nxGREEN);
	nx_render_circle_filled(ctx, 320, 600, 100, nxYELLOW);

	nx_render_text(ctx, nx_load_font("./examples/res/arial.ttf", 50), "Hello World!", nxBLACK, 0, 0, 2.0f, 6.0f);

	nx_render_animation(ctx, anim, 100, 100, 5.0f, 3.0f);
}

int main(int argc, char *argv[]) {
	nx_start(on_run, update, render, "My Window", WINDOW_WIDTH, WINDOW_HEIGHT, false);

	return 0;
}