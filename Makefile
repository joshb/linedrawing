CXX=g++
CXXFLAGS=`pkg-config sdl2 --cflags`
LDFLAGS=`pkg-config sdl2 --libs`
OBJS=main.o Color.o Rasterizer.o

linedrawing:	$(OBJS)
	$(CXX) $(OBJS) $(LDFLAGS) -o linedrawing

clean:
	rm -f linedrawing
	rm -f $(OBJS)

main.o: main.cpp
Color.o: Color.cpp
Rasterizer.o: Rasterizer.cpp
