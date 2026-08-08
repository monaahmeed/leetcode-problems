class Solution {
  bool increasingTriplet(List<int> nums) {
    int first=double.maxFinite.toInt();
    int second=double.maxFinite.toInt();
    for( int num in nums){
        if(num<=first)
            first =num;
        else if (num<=second)
            second=num;
        else
            return true;
    }
    return false;
  }
}
