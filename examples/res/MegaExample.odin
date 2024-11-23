package main;

import fmt "core:fmt";
import nx "../nexa";

WINDOW_WIDTH :: 1280;
WINDOW_HEIGHT :: 720;

Square :: struct {
	tex: nx.Texture2D,
	x, y: f32,
}

square: Square;
anim: ^nx.Animation;
cam: nx.Camera2D;

init :: proc() {
	square_tex := nx.load_texture("./res/newnexa.png");
	square.tex = square_tex;
	square.x = f32(WINDOW_WIDTH / 2) - f32(square.tex.width / 2);
	square.y = f32(WINDOW_HEIGHT / 2) - f32(square.tex.height / 2);

	anim_tex := nx.load_texture("./res/character_spritesheet.png");
	anim = nx.create_animation(anim_tex, 48, 48, 6, 0.1, 11, 16);

	cam = {0, 0, 1.0};
}

update :: proc(dt: f32) {
	if nx.is_key_down(.W) {
		square.y -= 400 * dt;
	}
	if nx.is_key_down(.A) {
		square.x -= 400 * dt;
	}
	if nx.is_key_down(.S) {
		square.y += 400 * dt;
	}
	if nx.is_key_down(.D) {
		square.x += 400 * dt;
	}

	nx.camera_follow(&cam, i32(square.x), i32(square.y));

	if nx.is_key_pressed(.P) {
		nx.play_audio("./res/sfx.wav");
	}

	if nx.is_mouse_button_pressed(.LEFT) {
		fmt.println("left mouse button pressed");
	}
	if nx.is_mouse_button_down(.RIGHT) {
		fmt.println("right mouse button down");
	}

	nx.run_animation(anim, dt, true);

	x, y: i32;
	nx.get_mouse_position(&x, &y);
	fmt.printf("x: %d, y: %d\n", x, y);

	fmt.println(square.x, square.y);
}

render :: proc(ctx: ^nx.Context) {
	nx.clear_screen(ctx, nx.CORNFLOWERBLUE);

	nx.apply_camera(ctx, &cam);

	nx.render_texture(ctx, &square.tex, i32(square.x), i32(square.y), 0.0, false);

	nx.render_rect_line(ctx, 300, 60, 64, 64, nx.RED);
    nx.render_rect_filled(ctx, 300, 400, 64, 64, nx.WHITE);

    nx.render_circle_line(ctx, 320, 240, 100, nx.GREEN);
    nx.render_circle_filled(ctx, 320, 600, 100, nx.YELLOW);

    nx.render_text(ctx, nx.load_font("./res/arial.ttf", 50), "Hello World!", nx.BLACK, 0, 0);

    nx.render_animation(ctx, anim, 100, 100, 0.0, false);
}

main :: proc() {
	nx.game(init, update, render, "Nexa in Odin!", WINDOW_WIDTH, WINDOW_HEIGHT);
}