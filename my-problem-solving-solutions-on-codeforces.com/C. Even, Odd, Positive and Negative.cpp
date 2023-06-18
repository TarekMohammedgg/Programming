#include<iostream>
using namespace std ;
int main() {
int n , input , ecounter =0, ocounter =0, pcounter =0 , ncounter = 0  ;
cin>> n ;
for (int i =1 ; i<=n; i++){
    cin >> input ;
    if (input%2==0){
            ecounter ++ ; }
    else
        ocounter ++ ;
     if (input>0){
        pcounter++ ;
    }else if (input<0)
        ncounter ++ ;

}
cout <<"Even: "<<ecounter << endl ;
cout <<"Odd: "<<ocounter << endl ;
cout <<"Positive: "<<pcounter << endl ;
cout <<"Negative: "<<ncounter << endl ;


return 0 ; }

