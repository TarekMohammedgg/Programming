#include<iostream>
using namespace std ;
int main (){

int n , a , b , c , counter = 0  ;
cin>> n ;
for (int i =0 ; i<n ; i++){
    cin>> a >> b >> c ;
    if((a==1 && b==1)|| (a==1 && c==1) || (b==1 && c==1)){
        counter ++ ;
    }
}
cout<< counter << endl;

return 0 ; }
