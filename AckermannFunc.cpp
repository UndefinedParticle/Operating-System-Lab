#include<bits/stdc++.h>
using namespace std;
int A(int x,int y){
    if(x==0){
        return y+1;
    }else if(y==0){
        return A(x-1,1);
    }else{
        return A(x-1,A(x,y-1));
    }
}
int main(){
    cout<<"Give the value of x => ";
    int x;cin>>x;//cout<<endl;
    cout<<"Give the value of y => ";
    int y;cin>>y;//cout<<endl;
    //while(1<2);
    cout<<"The value of A("<<x<<","<<y<<") is => "<<A(x,y)<<endl;
    return 0;
}