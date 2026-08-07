class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
   int maxCandies = candies.reduce(max);

    return candies.map((candy) => candy + extraCandies >= maxCandies).toList();
  }
}