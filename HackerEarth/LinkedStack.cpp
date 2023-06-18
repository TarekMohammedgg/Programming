#include<iostream>
using namespace std;
template <class t >
class linkedStack {
    struct node {
        t item ;
        node*next ;
    };
    node*top , *cur ;

public :
    linkedStack ():top(NULL){}
    void push(int element ){
        node * newnode = new node ;
        newnode->item = element ;
        newnode->next = top ;
        top  = newnode ;
    }
    void pop () {
        node *temp = new node ;
        temp = top ;
        top = top->next ;
        temp = temp->next = NULL ;
        delete temp ;
    }
void display () {
    cur = top ;
    while(cur!=NULL){
        cout << cur->item << endl;
        cur = cur->next ;
    }
}
};
int main () {
    linkedStack<int> stack1 ;
    stack1.push(1) ;
    stack1.push(2) ;
    stack1.display () ;
}
