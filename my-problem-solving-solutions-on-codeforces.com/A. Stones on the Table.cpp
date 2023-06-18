#include<iostream>
#include<string>
#include<string.h>
using namespace std ;
int main (){
int n  , counter = 0 ;
cin>> n ;
string x ;
cin>> x ;
for (int i =0; i<n ; i++){
    if(x[i] == x[i+1])
    counter ++ ;
}
cout << counter<<endl;
return 0 ; }
