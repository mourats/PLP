//PLP 2018.2
//Aluno: Thiago Santos de Moura - 116210967

#include <iostream>
using namespace std;

char matriz[100][100];
int main(){
    int x;
    cin >> x;
    for(int i = 0; i < x; i++){
        for(int j = 0; j < x; j++)
            cin >> matriz[i][j];
    }
    int l;
    cin >> l;
    string s;
    cin >> s;
    for(int i = 0; i < x; i++)
        for(int j = 0; j < x; j++){
            bool guard = false;
            for(int k = 0; k <= l; k++){
                if(k == l){
                    guard = true;
                    break;
                }
                int nx = i, ny = j + k;
                if(matriz[nx][ny] != s[k]) break;
            }
            for(int k = 0; k <= l; k++){
                if(k == l){
                    guard = true;
                    break;
                }
                int nx = i + k, ny = j;
                if(nx < 0 || ny < 0 || matriz[nx][ny] != s[k]) break;
            }
            for(int k = 0; k <= l; k++){
                if(k == l){
                    guard = true;
                    break;
                }
                int nx = i + k, ny = j + k;
                if(nx < 0 || ny < 0 || matriz[nx][ny] != s[k]) break;
            }
            for(int k = 0; k <= l; k++){
                if(k == l){
                    guard = true;
                    break;
                }
                int nx = i + k, ny = j - k;
                if(nx < 0 || ny < 0 || matriz[nx][ny] != s[k]) break;
            }
            if(guard){
                cout << "TRUE" << endl;
                return 0;
            }
        }
    cout << "FALSE" << endl;
    return 0;
}
