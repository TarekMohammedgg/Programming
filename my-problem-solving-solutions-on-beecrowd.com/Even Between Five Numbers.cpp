#include<iostream>
using namespace std ;
int main() {
int numbers[5] , sum=0  ;
for (int i=0 ; i<5; i++ ) {
    cin>> numbers[i] ;
}
for (int i=0 ; i<5; i++) {
    if (i%2==0) {
        sum ++ ;
    }
}
cout << sum <<" valores pares" << endl ;


return 0; }
