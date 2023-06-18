#include<iostream>
using namespace std ;
int main (){
int x , y , z ;
int counter = 0 ;
cin>> x >> y ;
for(int i = 0 ; i<x ; i++){
    cin>> z ;
    if(z > y ){
        counter +=2 ;
    }
    else
        counter ++ ;

}
cout<< counter << endl;
return 0 ; }
