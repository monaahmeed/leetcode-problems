class Solution {
  int equalPairs(List<List<int>> grid) {
    Map<String, int> rows = {};
    int n = grid.length;

    for (var row in grid) {
      String key = row.join(',');
      rows[key] = (rows[key] ?? 0) + 1;
    }

    int ans = 0;

    for (int col = 0; col < n; col++) {
      List<int> column = [];

      for (int row = 0; row < n; row++) {
        column.add(grid[row][col]);
      }

      String key = column.join(',');
      ans += rows[key] ?? 0;
    }

    return ans;
  }
}