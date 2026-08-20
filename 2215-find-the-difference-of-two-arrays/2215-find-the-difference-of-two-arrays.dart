class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    final set1 = nums1.toSet();
    final set2 = nums2.toSet();

    final onlyInNums1 = set1.difference(set2).toList();
    final onlyInNums2 = set2.difference(set1).toList();

    return [onlyInNums1, onlyInNums2];
  }
}