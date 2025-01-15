import 'dart:collection';

class Graph {
  Map<int, Map<int, int>> adjList = {};

  void addEdge(int u, int v, int weight) {
    adjList.putIfAbsent(u, () => {});
    adjList[u]![v] = weight;
  }

  List<int> dijkstra(int start) {
    Map<int, int> dist = {};
    Map<int, int> prev = {};
    PriorityQueue<MapEntry<int, int>> pq = PriorityQueue<MapEntry<int, int>>(
        (a, b) => a.value.compareTo(b.value));

    adjList.keys.forEach((node) {
      dist[node] = double.infinity.toInt();
      prev[node] = -1;
    });
    dist[start] = 0;
    pq.add(MapEntry(start, 0));

    while (pq.isNotEmpty) {
      int u = pq.remove().key;

      adjList[u]?.forEach((v, weight) {
        int alt = dist[u]! + weight;
        if (alt < dist[v]!) {
          dist[v] = alt;
          prev[v] = u;
          pq.add(MapEntry(v, dist[v]!));
        }
      });
    }

    return dist.values.toList();
  }
}

void main() {
  Graph g = Graph();
  g.addEdge(0, 1, 4);
  g.addEdge(0, 2, 1);
  g.addEdge(2, 1, 2);
  g.addEdge(1, 3, 5);
  g.addEdge(2, 3, 8);

  var distances = g.dijkstra(0);
  print('Shortest distances from node 0: $distances');
}
