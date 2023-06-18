#include<iostream>
using namespace std  ;
const int Max_size = 10 ;
class Stack
{   private :
    int top ;

    int arr[Max_size] ;
   public :  Stack(){
    top = -1 ;
    }

    bool isfull ()
    {
        return top>= Max_size ;
    }
    bool isempty ()
    {
        return top < 0 ;
    }
    void push (int element )
    {
        if (isfull() )
            cout << "the stack is full " << endl;
        else
        {
            top ++ ;
            arr[top] = element ;
        }
    }


void pop () {
    if (!isempty() )
        top --  ;
    else
        cout << "the stack is empty " << endl ;
}
int pop (int&element ) {
     if (!isempty() )
        {
            element  = arr[top] ;
        top --  ;
        }
    else
        cout << "the stack is empty " << endl ;

}

int getTop (int&element) {
    return arr[top] ;
}
void printStack (){
for (int i = top ; i>=0 ; i--){
    cout << arr[i] << " " ;
}
cout << endl;
}


};


int main () {
Stack stack1 ;
int  n ;
cout << "input the size of stack: " ;
cin >> n ;
int x ;
for(int i =0 ; i<n ; i++){
    cin>> x  ;
    stack1.push(x) ;
}
cout << "Your stack is: " << endl;
stack1.printStack() ;
int topValue ;
cout << "the value of the top element is : " << stack1.getTop(topValue) ;

}
