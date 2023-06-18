#include<iostream>
using namespace std ;
int main (){
int a1 , a2 , a3 , a4 ;
cin >>a1>>a2>>a3>>a4;
int s =0 ;
string str;
cin>> str ;
for (int i =0 ; i<str.size() ; i++ )
{
    if(str[i] =='1')
        s+=a1;
    else if (str[i] =='2')
    s+=a2 ;
    else if (str[i] =='3')
        s+=a3 ;
    else
    s+=a4 ;
}
cout << s<<endl ;



return 0 ; }
