#include <stdio.h>
#include <string.h>

int main(){

char first[256];
char second[256];
scanf("%s", first);
scanf("%s", second);

if(strlen(first) == strlen(second)){
    printf("%s\n", first);
    printf("%s\n", first);
} else if (strlen(first) < strlen(second)) {
    printf("%s\n", first);
    printf("%s\n", second);
} else {
    printf("%s\n", second);
    printf("%s\n", first);
}

}