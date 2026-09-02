class Solution {
public:
    vector<int> asteroidCollision(vector<int>& asteroids) {
    vector<int> st;

        for (int ast : asteroids) {
            bool alive = true;

            while (alive && ast < 0 && !st.empty() && st.back() > 0) {
                if (abs(ast) > st.back()) {
                    st.pop_back();
                } else if (abs(ast) == st.back()) {
                    st.pop_back();
                    alive = false;
                } else {
                    alive = false;
                }
            }

            if (alive) {
                st.push_back(ast);
            }
        }

        return st;
    }
};