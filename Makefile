.PHONY: all clean

way1 = src/main.cpp
way2 = src/chessboard.cpp
way3 = src/chessgame.cpp
way4 = src/print_chess.cpp
obj1 = build/src/main.o
obj2 = build/src/chessboard.o
obj3 = build/src/chessgame.o
obj4 = build/src/print_chess.o

all: bin/chessviz

bin/chessviz: $(obj1) $(obj2) $(obj3) $(obj4)
	g++ $^ -o $@

$(obj1): $(way1)
	g++ -c $^ -Werror -o $@

$(obj2): $(way2)
	g++ -c $^ -Werror -o $@

$(obj3): $(way3)
	g++ -c $^ -Werror -o $@

$(obj4): $(way4)
	g++ -c $^ -Werror -o $@

clean:
	rm -rf build/src/*.o
	rm -rf build/test/*.o
	rm -rf *.o
