#include <stdio.h>
#include <stdbool.h>
 
int main(void) {

  int red = 0;
  int green = 0;
  int blue = 0;
 
  scanf("%d", &red);
  scanf("%d", &green);
  scanf("%d", &blue);

  bool guard = false;

  if(red < 128) {
      guard = true; 
  } else if(green < 128) {
      guard = true; 
  } else if(blue < 128) {
      guard = true; 
  }
    
  if(guard){
  printf("PRETO");
  } else {
    printf("BRANCO");
  }

}
