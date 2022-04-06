#include<iostream>
using namespace std;
int main(){
    cout<<"Give Number Of Process => ";
    int p;cin>>p;
    cout<<"Give number of Resources => ";
    int r;cin>>r;
    cout<<"Enter the values of Allocation(Row-wise) => \n";
    int allocation[p][r];
    for(int i=1;i<p+1;i++){
        for(int j=1;j<r+1;j++){
            cout<<"Allocation["<<i<<"]["<<j<<"] = ";
            cin>>allocation[i][j];
        }
    }
    cout<<"Enter the values of Max(Row-wise) => \n";
    int maxi[p][r];
    for(int i=1;i<p+1;i++){
        for(int j=1;j<r+1;j++){
            cout<<"Maxi["<<i<<"]["<<j<<"] = ";
            cin>>maxi[i][j];
        }
    }
   
    //cout<<"The values of Need(Row-wise) => \n";
    int need[p][r];
    for(int i=1;i<p+1;i++){
        for(int j=1;j<r+1;j++){
            need[i][j]=maxi[i][j]-allocation[i][j];
            //cout<<need[i][j]<<" ";
        }//cout<<endl;
    }
    cout<<"Enter the values of Available => \n";
    int avail[r];
    for(int i=1;i<=r;i++){
        cout<<"Avail["<<i<<"] = ";
        cin>>avail[i];
    }
    int process[p];
    for(int i=1;i<=p;i++){
        process[i]=0;
    }
    cout<<"Allocation => \n";
    for(int i=1;i<=p;i++){
        for(int j=1;j<=r;j++){
            cout<<allocation[i][j]<<" ";
        }cout<<endl;
    }
    cout<<"Max Need => \n";
    for(int i=1;i<=p;i++){
        for(int j=1;j<=r;j++){
            cout<<maxi[i][j]<<" ";
        }cout<<endl;
    }
    cout<<"Available => \n";
        for(int j=1;j<=r;j++){
            cout<<avail[j]<<" ";
        }cout<<endl;
    cout<<"Remaining Need => \n";
    for(int i=1;i<=p;i++){
        for(int j=1;j<=r;j++){
            cout<<need[i][j]<<" ";
        }cout<<endl;
    }

    int mark[p];
    //int flag=1;
    int x=1;
    for(int z=1;z<=p;z++){
        for(int i=1;i<=p;i++){
            
            if(process[i]==0){
                int flag=1;
                for(int j=1;j<=r;j++){
                    if(need[i][j]>avail[j]){
                        flag=0;
                        break;
                    }
                }
                if(flag==1){
                    mark[x]=i;
                    x++; 
                    for(int k=1;k<=r;k++){
                        avail[k]=avail[k]+allocation[i][k];
                    }process[i]=1;
                }   
            }    
        }    
    }
    cout<<endl;
    int check=1;
    for(int i=1;i<=p;i++){
        if(process[i]==0){
            check=0;
            cout<<"Not in Safe State.\n";
            break;
        }
    }
    if(check==1){
        cout<<"The safe sequence is => \n";
        for(int i=1;i<p;i++)
            cout<<" P"<<mark[i]<<" ->";
        cout<<" P"<<mark[p]<<endl;
    }



    return 0;
}