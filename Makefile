CXX=g++
CXXFLAGS=`sdl-config --cflags`
LDFLAGS=`sdl-config --libs`
OBJS=main.o Color.o Rasterizer.o

linedrawing:	$(OBJS)
	$(CXX) $(LDFLAGS) $(OBJS) -o linedrawing

clean:
	rm -f linedrawing
	rm -f $(OBJS)

main.o: main.cpp
Color.o: Color.cpp
Rasterizer.o: Rasterizer.cpp
