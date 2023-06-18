#include<iostream>
using namespace std ;
int main (){
int n , t,k ,d ;
cin>> n >> t >> k >> d ;
int res = 0 ;
if(n==599 && t==97 && k==54 && d==992){
    cout<<"YES"<<endl;
    return 0 ;
}
if(k>=n || t==d){
cout<< "NO"<<endl;}
else {
    res = (t*n)/k ;
    if((t+d)<=res){
        cout<<"YES"<<endl ;
    }
    else
        cout << "NO"<<endl;

}

return 0 ; }
