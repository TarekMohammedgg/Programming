#include<iostream>
#include<string.h>
#include <cstring>

using namespace std;
int main (){
int n ;
cin>> n;
string str ;
for (int i=0 ; i<n; i++){
cin>> str;
if(str.size()>10)
{
    cout<<str[0]<<str.size()-2<<str[str.size()-1] << endl;
}else
    cout << str <<endl; }


return 0 ; }
