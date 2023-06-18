#include<iostream>
#include<cstring>
#include<string>
#include<string.h>
#include<algorithm>
#include<ctype.h>
#include<iomanip>
#include <bits/stdc++.h>
using namespace std ;

int main(){
string str ;
int counter =0 ;
cin >> str ;
for (int i=0 ;i<str.size() ; i++  ) {
    if(str[i] == '4' || str[i] == '7' )
        counter ++ ;
}
if (counter == 4 || counter == 7)
    cout << "YES" << endl;
else
    cout <<"NO" << endl ;
return 0;  }
