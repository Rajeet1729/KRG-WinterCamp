class Solution
{
    
    private : 
    int func(vector<vector<int>> &dp,int idx,int wt[],int W,int val[]){
        if(idx < 0 )
            return 0;
        // if(idx == 0){
        //     if(wt[idx] < W){
        //         return val[idx];
        //     return 0;
        //     }
        // } 
        if(dp[idx][W]!=-1)
            return dp[idx][W];
        
        int notTake = 0 + func(dp,idx-1,wt,W,val);
        int take = INT_MIN;
        if(wt[idx]<=W)
            take =  val[idx] + func(dp,idx -1,wt, W - wt[idx], val);
        return dp[idx][W] = max(take, notTake);
    }
    public:
    int knapSack(int W, int wt[], int val[], int n) 
    { 
        vector<vector<int>> dp(n+1,vector<int> (W+1,-1));
        return func(dp,n-1, wt,W,val);
    }
};
