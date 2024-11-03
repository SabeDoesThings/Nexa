build:
	gcc -o out/app.exe examples/*.c -Iinclude -Llib -lmingw32 -lSDL2main -lSDL2 -lSDL2_image -lSDL2_mixer -lSDL2_ttf

run:
	.\app.exe