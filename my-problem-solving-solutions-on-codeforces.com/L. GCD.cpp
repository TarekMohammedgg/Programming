#include<iostream>
using namespace std ;
int main () {
int a , b , gcd =0;
cin >> a >> b ;
int range  = max(a,b) ;
for (int i = 1 ; i<= range ; i++ ){
    if(a%i ==0 && b%i==0){
        gcd = max (gcd , i) ;
    }
}
cout << gcd << endl;
return 0 ; }
