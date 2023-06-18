#include<iostream>
#include<algorithm>
#include<string.h>
#include <cmath>
#define ll long long
using namespace std;
int main()
{
    int x,j;
    cin>>x;
    for(int i=0; i<x; i++)
    {
        for( j=i+1; j<x; j++)
            cout<<" ";
        for(int k=(i+1)*2; k>1; k--)
            cout<<'*';
        cout<<endl;
    }
       for(int i=x-1; i>=0; i--)
    {
        for( j=x-1; j>i; j--)
            cout<<" ";
        for(int k=(i+1)*2; k>1; k--)
            cout<<'*';
        cout<<endl;
    }
    return 0;
}
