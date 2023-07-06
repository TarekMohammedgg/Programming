#include<iostream>
using namespace std ;
int main() {
int n ;
cin>> n ;
int arr[n] ;
int x ;
for (int i =0 ; i<n ; i++){
    cin>> x ;
    if (x > 0 )
        arr[i] = 1 ;
    else if (x<0)
        arr[i] = 2 ;
    else
        arr[i] = x ;
}
for (int i =0 ; i< n ; i++){
    cout << arr[i] <<" " ;
}
cout << endl ;
return 0  ; }
