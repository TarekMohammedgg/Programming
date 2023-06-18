#include <iostream>

using namespace std;

void heapify (int arr [] ,int n , int i ){
    int l = 2*i+1;
    int r = 2*i+2 ;
    int Max = i ;
    if (l<n &&arr[l] > arr[Max])
        Max = l ;
    if (r<n &&arr[r] > arr[Max])
        Max = r ;
    if (Max != i ){
        swap(arr[i] , arr[Max]) ;
        heapify(arr , n , Max ) ;
    }}

void buildHeap (int arr[] , int n ){


    for (int i =(n/2)-1 ; i>=0 ; i--){
        heapify(arr , n , i) ;
    }

}
void heapSort(int arr []  , int n ){
    buildHeap(arr , n ) ;
    for (int i = n-1 ; i>=0 ; i--){
        swap(arr[0] , arr[i]) ;
        heapify(arr , i ,0 ) ;
    }
}
void printHeap(int arr[] , int n ){
for (int i =0 ; i<n ; i++){
    cout << arr[i] <<" ";
}
cout <<endl;
}

int main1()
{
    int arr[]  = {90 , 10 , 40 , 70 , 5 } ;
    int n = sizeof(arr) / sizeof(arr[0]) ;
    heapSort(arr , n ) ;
    printHeap(arr , n ) ;

    return 0;
}
