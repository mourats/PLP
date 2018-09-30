//PLP 2018.2
//Aluno: Thiago Santos de Moura - 116210967

#include <iostream>

using namespace std;

int main() {

  string first;

  string second;
  
  cin >> first;
  cin >> second;

  int lastOfFirst = first.size() - 1;
  int lastOfSecond = second.size() - 1;

  if(first[0] != second[0]) {
    cout << "N" <<endl;
  } else if(first[lastOfFirst] != second[lastOfSecond]){
    cout << "N"<<endl;
  } else{
    cout << "S"<<endl;
  }

}
