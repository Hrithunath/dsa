import 'dart:collection';

import '../heap/pr.dart';

class Graph {
  Map<int, List<int>> adjacentList = {};
  addVertex(int vertex) {
    if (!adjacentList.containsKey(vertex)) {
      adjacentList[vertex] = [];
    }
  }

  addEdges(int vertex1, int vertex2) {
    if (adjacentList.containsKey(vertex1) &&
        adjacentList.containsKey(vertex2)) {
      adjacentList[vertex1]?.add(vertex2);
      adjacentList[vertex2]?.add(vertex1);
    }
  }

  removeVertex(int vertex) {
    if (adjacentList.containsKey(vertex)) {
      adjacentList[vertex]?.forEach((neibour) {
        adjacentList[neibour]?.remove(vertex);
      });
      adjacentList.remove(vertex);
    }
  }

  removeedges(int vertex1, int vertex2) {
    adjacentList[vertex1]?.remove(vertex2);
    adjacentList[vertex2]?.remove(vertex1);
  }

  dfs(int start) {
    Set<int> visied = {};
    List<int> stack = [];
    stack.add(start);
    while (stack.isNotEmpty) {
      int vertex = stack.removeLast();
      if (!visied.contains(vertex)) {
        print(vertex);
        visied.add(vertex);
        stack.addAll(adjacentList[vertex]!
            .where((neibour) => !visied.contains(neibour)));
      }
    }
  }

  bfs(int start) {
    Set<int> visited = {};
    Queue<int> queue = Queue<int>();
    queue.add(start);
    while (queue.isNotEmpty) {
      int vertex = queue.removeFirst();
      if (!visited.contains(vertex)) {
        print(vertex);
        visited.add(vertex);
        queue.addAll(adjacentList[vertex]!
            .where((neibour) => !visited.contains(neibour)));
      }
    }
  }
}

void main() {
  Graph graph = Graph();
  graph.addVertex(30);
  graph.addVertex(20);
  graph.addVertex(10);
  graph.addVertex(40);
  graph.addVertex(50);
  graph.addVertex(60);
  graph.addEdges(30, 20);
  graph.addEdges(20, 40);
  graph.addEdges(40, 30);
  graph.addEdges(50, 10);
  graph.removeVertex(60);
  graph.removeedges(50, 10);
  graph.dfs(40);
  
  print(graph.adjacentList);
  graph.bfs(40);
}
