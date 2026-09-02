class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    List<int> st = [];

    for (int ast in asteroids) {
      bool alive = true;

      while (alive && ast < 0 && st.isNotEmpty && st.last > 0) {
        if (ast.abs() > st.last) {
          st.removeLast();
        } else if (ast.abs() == st.last) {
          st.removeLast();
          alive = false;
        } else {
          alive = false;
        }
      }

      if (alive) {
        st.add(ast);
      }
    }

    return st;
  }
}