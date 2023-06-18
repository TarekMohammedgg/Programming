#include<iostream>
using namespace std;
int main (){
int n , a=0 , b=0 , c=0 ;
cin>>n ;
int arr[n] , x[n] , y[n] , z[n] ;
for(int i =0 ; i<n ; i++){
    cin>>arr[i] ;
    if(arr[i] == 1 ){
        x[a] = i ;
        a++;
        }
    else if (arr[i] ==2){
        y[b] = i ;
        b++ ;
        }
    else if (arr[i] == 3){
        z[c] = i ;
        c++ ;
        }
}
int team =0 ;
while(a && b && c){
    a-- ;
    b-- ;
    c--  ;
    team ++ ;
}
cout<<team<< endl;
for(int i=0; i<team ; i++){
    cout << x[i]+1<<" "<<y[i]+1 <<" " << z[i]+1<< endl;
}



return 0 ; }
