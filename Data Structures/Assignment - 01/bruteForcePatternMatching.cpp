#include <iostream>
using namespace std;

int patternMatching(string s, string pat)
{
    int n = s.size();
    int m = pat.size();
    for (int i = 0; i < n - m; i++)
    {
        bool flag = 1;
        for (int j = i; j < m; j++)
        {
            if (s[i] != pat[j])
                flag = false;
        }
        if (flag)
            return i;
    }
    return -1;
}

int main()
{
    string a, b;
    cin >> a >> b;
    bool flag = patternMatching(a, b);
    cout << (flag ? "Yes" : "No");
}