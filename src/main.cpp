#include "chessboard.h"
#include "chessgame.h"
#include "print_chess.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
using namespace std;
int main()
{
    char b[8][8];
    chessboard(b);
    printchess(b);
    while (true) {
        chessgame(b);
        printchess(b);
    }
    return 0;
}
