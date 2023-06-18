#include<iostream>
using namespace std ;
int main (){

int y , w ;
  int Y,W,mx=0;
  cin>>Y>>W;
  mx=max(Y,W);
  if(mx==1)
    cout<<1<<"/"<<1<<'\n';
  if(mx==2)
    cout<<5<<"/"<<6<<'\n';
  if(mx==3)
    cout<<2<<"/"<<3<<'\n';
  if(mx==4)
    cout<<1<<"/"<<2<<'\n';
  if(mx==5)
    cout<<1<<"/"<<3<<'\n';
  if(mx==6)
    cout<<1<<"/"<<6<<'\n';

return 0 ; }
