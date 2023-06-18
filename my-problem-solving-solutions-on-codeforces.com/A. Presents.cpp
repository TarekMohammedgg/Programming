#include<iostream>
using namespace std ;
int main (){

int n  ;
cin>> n ;
int arr[n] ;
int pi ;
for (int i =1 ;i<= n ; i++){
    cin>>pi ;
    arr[pi-1] = i ;
}
for (int i =0 ; i<n ; i++){
    cout << arr[i] << " " ;
}

return 0 ; }
