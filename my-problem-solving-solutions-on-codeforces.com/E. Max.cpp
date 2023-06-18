#include<iostream>
using namespace std ;
int main () {
int range , inputs , res =0  ;
cin>>range ;
for(int i =0 ; i<range; i++){
    cin>> inputs ;
   res =  max(res, inputs) ;  }
cout <<res<<endl ;

return 0 ; }
