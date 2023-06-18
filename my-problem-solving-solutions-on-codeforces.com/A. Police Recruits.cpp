#include<iostream>
#include<bits/stdc++.h>
#include<vector>
using namespace std ;
int main (){
    int x,m=0,s=0;
    cin>>x;
    int y[x];
    for(int i=0;i<x;i++)
        cin>>y[i];
    for(int i=0;i<x;i++){
        if(y[i]==-1&&s==0)
            m++;
        else if(y[i]>0)
            s+=y[i];
        else if(y[i]==-1&&s!=0)
            s--;
    }
    cout<<m;
    return 0;
}
