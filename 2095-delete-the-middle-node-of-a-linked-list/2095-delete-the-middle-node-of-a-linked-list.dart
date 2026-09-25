/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteMiddle(ListNode? head) {
   
    if (head == null || head.next == null) {
      return null;
    }

    ListNode? slow = head;
    ListNode? fast = head.next?.next;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }

    slow?.next = slow.next?.next;

    return head;
  }
}