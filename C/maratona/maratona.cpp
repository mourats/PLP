//PLP 2018.2
//Aluno: Thiago Santos de Moura - 116210967

#include <stdio.h>
#include <string.h>

int main(){

int qtdQuestoes;
scanf("%d", &qtdQuestoes);

int questoes[qtdQuestoes];
for (int i = 0; i < qtdQuestoes; i++){
  scanf(" %d", &questoes[i]);
}

int qtdPart;
scanf("%d", &qtdPart);

char respostas[qtdPart][qtdQuestoes];

int id = 0;
int maior = 0;
int qtdA = 0;

for (int i = 0; i < qtdPart; i++){
  for (int j = 0; j < qtdQuestoes; j++){
    scanf(" %c", &respostas[i][j]);

    if(respostas[i][j] == 'V'){
      qtdA = qtdA + questoes[j];
    }
  }

  if(qtdA > maior){
    maior = qtdA;
    qtdA = 0;
    id = i;
  }else{
    qtdA = 0;
  }

}

printf("%d:%d\n", id+1, maior);

}
