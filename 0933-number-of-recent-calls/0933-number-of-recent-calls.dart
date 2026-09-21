import 'dart:collection';

class RecentCounter {
  final Queue<int> q;

  RecentCounter() : q = Queue<int>();

  int ping(int t) {
    q.add(t);

    while ( q.first < t - 3000) {
      q.removeFirst();
    }
    
    return q.length;
  }
}