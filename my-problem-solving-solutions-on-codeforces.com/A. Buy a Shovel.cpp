#include<iostream>
using namespace std ;
int main (){

int k , r , res =1  ;
cin>> k >> r ;

for(int i = k ; ; i+=k){
    if(i%10==0){
        break ;
    }else if(i%10==r){
    break ;}
    else
        res++ ;

}

cout<< res << endl;


return 0  ; }
