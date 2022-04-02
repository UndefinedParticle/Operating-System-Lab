#include<iostream>
using namespace std;
int main(){
    cout<<"Enter the total number of process => ";
    int n;cin>>n;
    int p[n];//[6];
    int at[n];
    cout<<"Enter the arrival times(Serial-wise) => ";
    for(int i=1;i<=n;i++){
        cin>>at[i];
        //cin>>p[i][1];
        //at[i]=p[i][1];
    }
    int bt[n];
    cout<<"Enter the burst times(Serial-wise) => ";
    for(int i=1;i<=n;i++){
        cin>>bt[i];
        //cin>>p[i][2];
        //bt[i]=p[i][2];
    }
    //completion time
    int ct[n];
    ct[1]=bt[1]+at[1];
    for(int i=2;i<n+1;i++){
        if(at[i]<=ct[i-1])
            ct[i]=ct[i-1]+bt[i];
        else{
            ct[i]=at[i]+bt[i];
        }
    }
    //turn around time
    int tat[n];
    float avgTat=0;
    for(int i=1;i<n+1;i++){
        tat[i]=ct[i]-at[i];
        avgTat=avgTat+tat[i];
    }
    //waiting time
    int wt[n],rt[n];
    float avgWt=0;
    for(int i=1;i<n+1;i++){
        wt[i]=tat[i]-bt[i];
        rt[i]=wt[i];
        avgWt=avgWt+wt[i];
    }
    cout<<"Pr \t At \t Bt \t Ct \t Tat \t Wt \t Rt \n";
    for(int i=1;i<n+1;i++){
        cout<<"P"<<i<<" \t "<<at[i]<<" \t "<<bt[i]<<" \t "<<ct[i]<<" \t "<<tat[i]<<" \t "<<wt[i]<<" \t "<<rt[i]<<endl;
    }
    float ans1=avgTat/n;
    float ans2=avgWt/n;
    cout<<"Average Turn Around Time => "<<ans1<<endl;
    cout<<"Average Waiting Time => "<<ans2<<endl;;
    return 0;
}