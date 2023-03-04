all: compile link

compile:
	windres resource.rc -O coff -o resource.res
	g++ -c main.cpp -I"C:\Dev\Libraries\SFML-2.5.1\include" -DSFML_STATIC

link: 
	g++ main.o -o SpaceInvaders -L"C:\Dev\Libraries\SFML-2.5.1\lib" -lsfml-graphics-s -lsfml-window-s -lsfml-audio-s -lsfml-system-s  -lopengl32 -lfreetype -lwinmm -lgdi32  -lopenal32 -lflac -lvorbisenc -lvorbisfile -lvorbis -logg -mwindows resource.res -lsfml-main

clean: 
	rm -f main *.o