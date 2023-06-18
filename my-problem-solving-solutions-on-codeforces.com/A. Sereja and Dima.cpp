#include<iostream>
#include<bits/stdc++.h>
#include<vector>
using namespace std ;
int main (){
    int x;
    cin>>x;
    int b=0,e=x-1,s=0,j=0,d=0;
    int y[x];
    for(int i=0;i<x;i++)
        cin>>y[i];
    while(s!=x){
        if(s%2==0){
            if(y[b]>y[e]){
                j+=y[b];
                b++;
            }
            else{
                j+=y[e];
                e--;
            }
        }
        else{
            if(y[b]>y[e]){
                d+=y[b];
                b++;
            }
            else{
                d+=y[e];
                e--;
            }
        }
        s++;
    }
    cout<<j<<" "<<d;
    return 0;
}
