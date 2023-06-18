#include<iostream>
#include<bits/stdc++.h>

using namespace std ;
int main (){
    int x,m=0;
    cin>>x;
    int y[x];
    for(int i=0;i<x;i++)
        cin>>y[i];
    for(int i=0;i<x-1;i++){
        if(y[i]==y[i+1])
            continue;
        else
            m++;
    }
    cout<<m+1;
    return 0;
}
