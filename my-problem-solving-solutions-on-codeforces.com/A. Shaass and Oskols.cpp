#include<iostream>
using namespace std ;
int main (){
int n ;
cin>> n ;
int box [100] ;
for(int i =0 ; i<n ;i ++){
    cin>> box[i] ;
}
int r ;
cin>> r;
for(int i = 0 ; i<r ;i++){
    int x , y ;
    cin>> x >> y ;
    --x ;
    if(x!=0){
        box[x-1] += y-1 ;
    }if (x!=n-1){
        box[x+1] +=box[x] - y ;
    }
    box [x] = 0 ;

}
for(int i =0 ; i<n ; i++){
cout<< box[i]<<endl;
}



return 0 ; }
