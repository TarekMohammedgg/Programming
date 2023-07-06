#include<iostream>
using namespace std ;

int main ()
{
    int n ;
    cin >> n ;
    long long arr [n];
    long long key ;
    for (int i =0 ; i<n ; i++)
    {
        cin >> arr[i] ;
    }
    cin >> key ;

    bool flag = false ;
    for (int i = 0 ; i<n ; i++)
    {
        if (arr[i] == key)
        {
            cout << i << endl ;
            flag = true ;
            break ;
        }
    }
    if(flag == false )
        cout << -1 ;

    return 0 ;
}
