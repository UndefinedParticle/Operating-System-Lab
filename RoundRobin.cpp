#include<iostream>
#include<queue>
using namespace std;
int main(){
    cout<<"Enter the total number of process => ";
    int n;cin>>n;
    /*int p[n];//process
    for(int i=1;i<=n;i++){
        p[i]=i;
    }*/
    cout<<"Enter the arrival times(Ascending-Order) => ";
    int at[n];
    for(int i=1;i<=n;i++){
        cin>>at[i];
    }
    cout<<"Enter the burst times(Serial-wise) => ";
    int bt[n];
    int reTime[n];//remaining time
    for(int i=1;i<=n;i++){
        cin>>bt[i];
        reTime[i]=bt[i];
    }
    cout<<"Give the time-quantam => ";
    int q;cin>>q;
    int ct[n];
    int wt[n];
    int current=at[1];//current time
    float sum1=0;
    while(1){
        int process=1;
        for(int i=1;i<=n;i++){
           if(reTime[i]>0){
                process=0;
                if(reTime[i]>q){
                    current=current+q;
                    reTime[i]=reTime[i]-q;
                }else{
                    current=current+reTime[i];
                    //ct[i]=current;
                    wt[i]=current-bt[i];
                    sum1=sum1+wt[i];
                    reTime[i]=0;
                }
           }
        }
        if(process==1)
            break;
    }
    
    int tat[n];//turn around time
    float sum=0.0;
    for(int i=1;i<=n;i++){
        tat[i]=wt[i]+bt[i];
        sum=sum+tat[i];
    }
    float avgWt=sum1/n;
    float avgTat=sum/n;
    cout<<"Pro. \t Bt \t Wt \t TAT \n";
    for(int i=1;i<=n;i++){
        cout<<i<<" \t "<<bt[i]<<" \t "<<wt[i]<<" \t "<<tat[i]<<endl;
    }
    cout<<"Average Waiting time => "<<avgWt<<endl;
    cout<<"Average Turn-Around time => "<<avgTat<<endl;

    return 0;
}
