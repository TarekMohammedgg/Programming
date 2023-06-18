#include<iostream>
#include<cstring>
#include<string>
#include<string.h>
#include<algorithm>
#include<ctype.h>
#include<iomanip>
#include <bits/stdc++.h>
#include<vector>
#include<queue>
#include<stack>
#include<list>
using namespace std ;

int main(){
    string str1 ;
    cin>> str1 ;
    for (int i=0 ; i<str1.size() ; i++ ) {
        if (str1[i] == 'H' || str1[i] == 'Q' || str1[i] == '9')
        {cout<<"YES" << endl;
        return 0 ;  }
    }cout<< "NO"<< endl;
return 0 ;}
