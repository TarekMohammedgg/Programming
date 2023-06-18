#include<iostream>
using namespace std ;
int main () {

int a , b , counter =0 , x , lucky ;
cin >> a >> b ;
for (int i =a ; i<= b; i ++ ){
    x = i , lucky =0 ;
  while (x) {
    if(x%10!=4 &&  x%10!=7)
        lucky ++ ;
    x/=10 ;
  }
        if(lucky == 0 ){
            cout << i << " " ;
            counter ++  ;
        }
    }
if(counter ==0){
    cout << -1 << " " ;
}
return 0; }
