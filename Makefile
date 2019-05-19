CFLAGS = -std=c++11
OBJ = g++ $(CFAGS)  -c $< -o $@
TEST = g++ $(CFLAGS) -I thirtdparty/catch2 -c $< -o $@
.PHONY: clean

all: folder1 folder2 folder3 folder4  bin/geometry.exe 

folder1:
	mkdir -p build

folder2:
	mkdir -p bin

folder3:
	mkdir -p build/src

folder4:
	mkdir -p build/test


bin/geometry.exe: build/src/main.o build/src/circle_intersects.o build/src/printCircle.o build/src/printPoligon.o build/src/printTriangle.o build/src/proverka.o build/src/proverka_perecech_otrezkov.o build/src/input_data.o build/src/areCollinear.o build/src/getMin.o build/src/getMax.o build/src/prijectionsIntersect.o build/src/getSlope.o build/src/getYIntercept.o build/src/getCos.o build/src/testing.o build/src/perpendicular.o build/src/distan.o build/src/prov_data.o build/src/print_posle_prov.o

	g++ $(CFLAGS) $^ -o $@

build/src/main.o: src/main.c src/geometry.h src/figure.h
	$(OBJ)

build/src/circle_intersects.o: src/circle_intersects.c src/geometry.h
	$(OBJ)

build/src/printCircle.o: src/printCircle.c src/geometry.h
	$(OBJ)

build/src/printPoligon.o: src/printPoligon.c src/geometry.h
	$(OBJ)

build/src/printTriangle.o: src/printTriangle.c src/geometry.h
	$(OBJ)

build/src/proverka.o: src/proverka.c src/geometry.h
	$(OBJ)

build/src/proverka_perecech_otrezkov.o: src/perecechotrezkov.c src/geometry.h
	$(OBJ)

build/src/input_data.o: src/input_data.c src/geometry.h
	$(OBJ)	

build/src/areCollinear.o: src/areCollinear.c src/geometry.h
	$(OBJ)

build/src/getMin.o: src/getMin.c src/geometry.h
	$(OBJ)

build/src/getMax.o: src/getMax.c src/geometry.h
	$(OBJ)

build/src/prijectionsIntersect.o: src/prijectionsIntersect.c src/geometry.h
	$(OBJ)

build/src/getSlope.o: src/getSlope.c src/geometry.h
	$(OBJ)

build/src/getYIntercept.o: src/getYIntercept.c src/geometry.h
	$(OBJ)

build/src/getCos.o: src/getCos.c src/geometry.h
	$(OBJ)

build/src/distan.o: src/distan.c src/geometry.h
	$(OBJ)

build/src/perpendicular.o: src/perpendicular.c src/geometry.h
	$(OBJ)

build/src/testing.o: src/testing.c src/geometry.h
	$(OBJ)

build/src/prov_data.o: src/prov_data.c src/geometry.h src/figure.h
	$(OBJ)

build/src/print_posle_prov.o: src/print_posle_prov.c src/geometry.h src/figure.h
	$(OBJ)





clean:
	
	rm -r build
	rm -r bin	








