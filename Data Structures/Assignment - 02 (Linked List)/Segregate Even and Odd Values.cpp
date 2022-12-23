// Problem Link: https://practice.geeksforgeeks.org/problems/segregate-even-and-odd-nodes-in-a-linked-list5035/1

//time Complexity: O(N)
//Space Complexity: O(1)

class Solution
{
public:
    Node *divide(int N, Node *head)
    {
        Node *evenHead = new Node(-1);
        Node *oddHead = new Node(-1);
        Node *even = evenHead;
        Node *odd = oddHead;
        while (head)
        {
            if ((head->data & 1))
            {
                odd->next = head;
                odd = odd->next;
            }
            else
            {
                even->next = head;
                even = even->next;
            }
            head = head->next;
        }
        if (evenHead == even)
            return oddHead->next;
        oddHead = oddHead->next;
        evenHead = evenHead->next;
        even->next = oddHead;
        odd->next = NULL;
        return evenHead;
    }
};