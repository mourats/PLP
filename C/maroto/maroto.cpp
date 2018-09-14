//PLP 2018.2
//Aluno: Thiago Santos de Moura - 116210967

#include <stdio.h>
#include <string.h>

#define TAM 50
int main() {
  
  int xBegin, yBegin, xEnd, yEnd;
  scanf("%d%d%d%d", &xBegin, &yBegin, &xEnd, &yEnd);
  char cdn[TAM];
  scanf("%s", cdn);
  
  int corredor = 0;
  for(int i = 0; i < strlen(cdn); i++){
    if(cdn[i] == 'N'){
      yBegin += 1;
    }else if(cdn[i] == 'S'){
      yBegin -= 1;
    }else if(cdn[i] == 'L'){
      xBegin += 1;
    }else if(cdn[i] == 'O'){
      xBegin -= 1;
    }else if(cdn[i] == 'P'){
      int j = i - 1;
      do{
        if(cdn[j] == 'N'){
          yBegin -= 1;
        }else if(cdn[j] == 'S'){
          yBegin += 1;
        }else if(cdn[j] == 'L'){
          xBegin -= 1;
        }else if(cdn[j] == 'O'){
          xBegin += 1;
        }
        j--;
      }while(j >= 0 && cdn[j] == cdn[i - 1]);
    }
  }
  char resposta[4];
  if(xBegin == xEnd && yBegin == yEnd){
    resposta[0] = 'S';
    resposta[1] = 'I';
    resposta[2] = 'M';
  }else{
    resposta[0] = 'N';
    resposta[1] = 'A';
    resposta[2] = 'O';
  }
  resposta[3] = '\0';
  printf("%s", resposta);
  return 0;
}
