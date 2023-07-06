#include<iostream>
using namespace std ;
int main () {
int n ;
cin >> n ;
int x ;
int sum =0 ;
int arr[x] ;
for (int i = 1; i<= n ; i++){
    cin >> x ;
    for (int j = i+1 ; j< x  ; j++  )
    {
        cin >> arr[i] ;
        sum = arr[1] + arr[2] + 2 - 1  ;
        sum = min (sum  , arr[i] + arr[j] + j- i) ;
    }
}
cout << sum  ;

return 0 ; }
