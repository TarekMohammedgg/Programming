#include<iostream>
using namespace std ;
int isprime (int n ){
for (int i =2 ; i<=(n/2) ; i++){
    if(n%i==0)
        return 0 ;
}
return 1 ;
}
int main () {
int range ;
cin>>range ;
for(int i = 2 ; i<=range; i++){
       if(isprime(i)==1){
    cout<<i<<" ";
}
}
return 0 ; }


