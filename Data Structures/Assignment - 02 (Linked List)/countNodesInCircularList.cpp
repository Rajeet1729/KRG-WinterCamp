//Space Complexity: O(1)
//Time Complexity: O(n)

int countNodes(ListNode* head){
    int countLen = 0;
    ListNode* temp = head;
    if( head ){
        do{
            temp = temp->next;
            countLen += 1;
        }while( temp != head );
    }
    return countLen;
}