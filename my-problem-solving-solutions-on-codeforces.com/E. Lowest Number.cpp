#include<iostream>
#include <bits/stdc++.h>

using  namespace std ;
int main ()
{
    int n ;
    cin>> n ;
    int arr[n] ;
    for (int i =0 ; i<n ; i++ )
    {
        cin >> arr[i] ;
    }
    int number = arr[0] ;
    int index = 0;
    for (int i =1 ; i<n ; i++ )
    {
        number = min (number, arr[i]) ;


    }
    for (int i =0 ; i< n ; i++)
    {
        if (arr[i] == number )
           {
                index = i + 1  ;
            break ;
           }
    }
    cout << number << " " << index << endl;


    return 0;
}
