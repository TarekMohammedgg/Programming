#include<iostream>
using namespace std ;
int main() {
int n , res = 0   ;
cin>> n ;
for (int i =1 ; i<=n; i++){
    if (i%2==0){
            res = i ;
            cout << res << endl ;

    }

}
if (res == 0){
    cout << -1 << endl ;
}
return 0 ; }
