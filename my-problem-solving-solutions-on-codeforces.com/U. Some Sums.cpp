#include<iostream>
using namespace std;
int Sum (int x ){
int sum = 0 ;
while (x){
    int d = x%10;
    sum +=d;
    x/=10;
}

return sum ;
}
int main () {
int n , a , b;
cin >> n >> a >> b ;
int sum = 0 ;
    for(int i = 1 ; i<=n ; i++){
        if(Sum(i)>=a && Sum(i)<=b ){
            sum+=i;
        }
    }
    cout<< sum ;


return 0 ;}
