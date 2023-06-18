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
#include<set>
using namespace std ;

int main(){
int n ;
cin>> n ;
set<int> levels  ;
int sx ;
cin>> sx ;
for (int i =0 ; i<sx ; i++ ) {
    int x ;
    cin>> x ;
    levels.insert(x) ;
}
int sy;
cin>> sy ;
for (int i =0 ; i<sy ; i++ ) {
    int y ;
    cin>> y ;
    levels.insert(y) ;

}
if (levels.size() == n ) {
    cout << "I become the guy."<< endl ;
}else
cout << "Oh, my keyboard!" << endl;
return 0 ;}
