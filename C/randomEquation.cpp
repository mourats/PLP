#include <iostream>
#include <stdio.h>
#include <stdlib.h>

int main() {
  srand(time(NULL));
  int x = rand() % 3;
  int v = rand() % 3;

  int xvalores[x];
  int vvalores[v];

  for (int i = 0; i < x; i++) {
    xvalores[i] = rand() % 10;
  }

  for (int i = 0; i < v; i++) {
     vvalores[i] = rand() % 10;
  }

  char equation[120];
  int pos = 0;
}
