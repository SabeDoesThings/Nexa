package main;

import fmt "core:fmt";
import os "core:os";
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

audio: nx.Audio;

font: nx.Font;

init :: proc() {
	music := nx.load_music("./res/music.wav");
	nx.play_music_looped(music);

	square_tex := nx.load_texture("./res/newnexa.png");
	square.tex = square_tex;
	square.x = 0;
	square.y = 0;

	anim_tex := nx.load_texture("./res/character_spritesheet.png");
	anim = nx.create_animation(anim_tex, 48, 48, 6, 0.1, 11, 16);

	cam = {nx.Vector2{WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2}, nx.Vector2{0, 0}, 0, 1.0};

	audio = nx.load_audio("./res/sfx.wav");

	font = nx.load_font("./res/arial.ttf", 50);
}

update :: proc(dt: f32) {
	if nx.is_key_pressed(.ESCAPE) {
		os.exit(0);
	}

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

	// Update camera to follow the square's position
	nx.camera_follow(&cam, square.x, square.y);

	// You can also manually adjust the camera's position here if needed, for instance:
	// cam.position.x = square.x - WINDOW_WIDTH / 2;
	// cam.position.y = square.y - WINDOW_HEIGHT / 2;

	if nx.is_key_pressed(.P) {
		nx.play_audio(audio);
	}

	if nx.is_mouse_button_pressed(.LEFT) {
		fmt.println("left mouse button pressed");
	}
	if nx.is_mouse_button_down(.RIGHT) {
		fmt.println("right mouse button down");
	}

	nx.run_animation(anim, dt, true);

	mouse_pos := nx.get_mouse_position();
	fmt.printf("x: %d, y: %d\n", mouse_pos.x, mouse_pos.y);

	fmt.println(square.x, square.y);
}

render :: proc() {
	nx.clear_screen(nx.CORNFLOWERBLUE);

	nx.apply_camera(cam);

	nx.render_texture(square.tex, square.x, square.y, 0.0, false, false);

	nx.render_rect_line(300, 60, 64, 64, nx.RED);
    nx.render_rect_filled(300, 400, 64, 64, nx.WHITE);

    nx.render_circle_line(320, 240, 100, nx.GREEN);
    nx.render_circle_filled(320, 600, 100, nx.YELLOW);

    nx.render_text(font, "Hello World!", 50, 16, nx.BLACK, 0, 0);

    nx.render_animation(anim, 100, 100, 0.0, false, false);

    nx.end_camera();
}

main :: proc() {
	nx.game(init, update, render, "Nexa in Odin!", WINDOW_WIDTH, WINDOW_HEIGHT);
}
