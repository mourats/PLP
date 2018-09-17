#include <stdio.h>
#include <stdlib.h>
#include <math.h>
 
int main(void) {

  int po1;
  int v1;
  int po2;
  int v2;
  int t = 0;

  scanf("%d", &po1);
  scanf("%d", &v1);
  scanf("%d", &po2);
  scanf("%d", &v2);
  scanf("%d", &t);

  int p1 = po1 + v1 * t;
  int p2 = po2 + v2 * t;

  int result = abs(p1-p2);

  printf("%d\n", result);

}
