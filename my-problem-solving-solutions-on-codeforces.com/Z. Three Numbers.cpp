#include<iostream>
using namespace std ;
int main () {
int s  ,e ;
cin>> s >> e ;
int counter  =0 ;
for(int i = 0 ; i<=s ; i++){
    for(int j = 0 ; j<=s ; j++){
        if(e-i-j >=0 && e-i-j <= s){
            counter ++ ;
        }
    }
}
cout<< counter << endl;
return 0 ; }
