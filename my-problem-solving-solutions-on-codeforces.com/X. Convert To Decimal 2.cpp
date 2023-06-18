#include<iostream>
#include<algorithm>
#include<string.h>
#include <cmath>
#define ll long long
using namespace std;

int main()
{
    int x,y,z;
    cin>>x;
    for(int i=0;i<x;i++){
        cin>>y;
        int count =0,result=0;
        while(y!=0){
            z=y%2;
            if(z==1){
                count++;
            }
            y/=2;
        }
        for(int i=0;i<count;i++){
            result+=1*pow(2,i);
        }
        cout<<result<<endl;
    }

    return 0;
}
