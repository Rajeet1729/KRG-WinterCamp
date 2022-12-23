#include <bits/stdc++.h>
using namespace std;

class treeNode
{
public:
    int data;
    treeNode *left;
    treeNode *right;

    treeNode(int data, treeNode *left = NULL, treeNode *right = NULL)
    {
        this->data = data;
        this->left = left;
        this->right = right;
    }
};

void createTree(treeNode *head)
{
    int val;
    cout << "Enter the value of the left node whose parent node is (" << head->data << ") or enter -1 : ";
    cin >> val;
    if (val != -1)
    {
        head->left = new treeNode(val);
        createTree(head->left);
    }
    cout << "Enter the value of the right node whose parent node is (" << head->data << ") or enter -1 : ";
    cin >> val;
    if (val != -1)
    {
        head->right = new treeNode(val);
        createTree(head->right);
    }
}

void BFS(treeNode *root)
{
    queue<treeNode *> q;
    q.push(root);
    while (!q.empty())
    {
        int sz = q.size();
        while (sz--)
        {
            root = q.front();
            q.pop();
            cout << root->data << " ";
            if (root->left)
                q.push(root->left);
            if (root->right)
                q.push(root->right);
        }
        cout << endl;
    }
    cout << endl;
}

int main()
{
    int root;
    cout << "Enter the value of the root node: ";
    cin >> root;
    treeNode *head = new treeNode(root);
    treeNode *tHead = head;
    createTree(tHead);

    BFS(head);
}