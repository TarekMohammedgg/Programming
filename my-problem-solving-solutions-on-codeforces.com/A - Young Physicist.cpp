#include<iostream>
#include<cstring>
#include<string>
#include<string.h>
#include<algorithm>
#include<ctype.h>
#include<iomanip>
#include <bits/stdc++.h>
using namespace std ;
typedef struct dir{
    int x , y , z ;
}dir;

int main(){
int n ,sum_x =0 , sum_y=0 , sum_z=0  ;
cin>>  n ;
dir dr[n] ;
for (int i=0 ; i<n ; i++ ) {
    cin>>dr[i].x;
    cin>>dr[i].y ;
    cin>>dr[i].z ;
    sum_x += dr[i] .x;
    sum_y +=dr[i].y ;
    sum_z +=dr[i].z;

}
if(sum_x == 0 && sum_y ==0 && sum_z == 0 ) {
    cout << "Yes" << endl ;

}else {
cout << "No" << endl; }




return 0;  }
