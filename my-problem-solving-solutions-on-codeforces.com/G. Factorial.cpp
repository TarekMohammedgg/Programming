#include<iostream>
using namespace std ;
int main () {
int range ,  n ;
long long res=1  ;
cin >> range ;
for (int i = 1 ; i<=range ; i++){
    cin >> n ;
    for (int j = 1 ; j<=n ; j++ ) {
            res = res * j ;
    }
    cout << res << endl;
    res = 1; }

return 0 ; }

