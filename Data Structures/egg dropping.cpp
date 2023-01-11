class Solution
{
private:
    int dp[201][201];

    int func(int egg, int flor){
        if( egg == 1 )
            return flor;
        if( flor == 0 || flor == 1 )
            return flor;
        if( dp[egg][flor] != -1 )
            return dp[egg][flor];
        int minMoves = 1e9;
        for(int k = 1; k <= flor; k++){
            int eggBreak = func(egg - 1, k - 1);
            int eggNotBreak = func(egg, flor - k);
            int maxMoves = 1 + max(eggBreak, eggNotBreak);
            minMoves = min(minMoves, maxMoves);
        }
        return dp[egg][flor] = minMoves;
    }
    
public:
    int eggDrop(int n, int k) 
    {
        memset(dp, -1, sizeof(dp));
        int minMoves = func(n, k);
        return minMoves;
    }
};
