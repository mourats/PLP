#include <stdio.h>
#include <string.h>
 
int main(void) {
  char scale[5] = {'A','E','U','O','I'};
  char word[256];
  char xplot = 'I';

  int corrent = -1;
  int index = 5;
 
  scanf("%s", word);
 
  for (int i = 0; i < strlen(word); i++){
    
    for (int j = 0; j < strlen(scale); j++){
      if(word[i] == scale[j]){
        corrent = j;
        break;
       }
    }

    if(corrent != -1 && corrent < index) {
      index = corrent;
      corrent = -1;
   }
    
  }
  printf("%c\n", scale[index]);
}
