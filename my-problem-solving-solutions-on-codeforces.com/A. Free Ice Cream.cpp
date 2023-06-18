#include<iostream>
using namespace std;
int main (){
int n , x ;
cin>> n >> x ;
long long  amount , sum =0 ;
char c ;
for(int i =0 ; i<n ; i++){
    cin>> c >> amount;
   if(c =='+')
    x+=amount ;
   else {
    if(amount > x){
      sum++;
    }else
        x-=amount ;
   }
}
cout << x << " " << sum;
return 0 ; }
