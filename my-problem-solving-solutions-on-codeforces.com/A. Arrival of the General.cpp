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
    string up , down ;
    vector <int > res  ;
    cin>> up >> down ;
    for (int i=0 ;i<up.size() ; i ++ ) {
        if ((up[i] == '1' && down[i] == '0' ) || (up[i] == '0' && down[i] == '1'))
            res.push_back(1) ;
        else res.push_back(0) ;
    }

for (int i=0 ; i<res.size(); i++ ) {
    cout << res[i] ;
}
cout << endl;
return 0 ;}
