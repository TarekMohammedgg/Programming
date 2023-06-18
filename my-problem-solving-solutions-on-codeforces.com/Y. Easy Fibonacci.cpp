#include<iostream>
#include<algorithm>
#include<string.h>
#include <cmath>
#define ll long long
using namespace std;

int main()
{
    int x;
    cin>>x;
    int y[x];
    y[0]=0;
    y[1]=1;
    for(int i=2;i<x;i++)
        y[i]=y[i-1]+y[i-2];
    for(int i=0;i<x;i++)
        cout<<y[i]<<" ";
    return 0;
}
