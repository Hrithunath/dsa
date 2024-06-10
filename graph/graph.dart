// import 'dart:collection';

// class Graph {
//   Map<int, List<int>> adjacentList = {};

//   void addVertex(int vertex) {
//     if (!adjacentList.containsKey(vertex)) {
//       adjacentList[vertex] = [];
//     }
//   }

//   void addEdge(int vertex1, int vertex2) {
//     if (adjacentList.containsKey(vertex1) &&
//         adjacentList.containsKey(vertex2)) {
//       adjacentList[vertex1]?.add(vertex2);
//       adjacentList[vertex2]?.add(vertex1);
//     }
//   }

//   void removeEdge(int vertext1, int vertex2) {
//     adjacentList[vertext1]?.remove(vertex2);
//     adjacentList[vertex2]?.remove(vertext1);
//   }

//   void removeVertex(int vertex) {
//     if (adjacentList.containsKey(vertex)) {
//       adjacentList[vertex]?.forEach((neibour) {
//         adjacentList[neibour]?.remove(vertex);
//       });
//       adjacentList.remove(vertex);
//     }
//   }

//   void bfs(int start) {
//     Set<int> visited = {};
//     Queue<int> queue = Queue<int>();
//     queue.add(start);

//     while (queue.isNotEmpty) {
//       int vertex = queue.removeFirst();
//       if (!visited.contains(vertex)) {
//         print(vertex);
//         visited.add(vertex);
//         queue.addAll(adjacentList[vertex]!
//             .where((neighbor) => !visited.contains(neighbor)));
//       }
//     }
//   }

//   void dfs(int start) {
//     Set<int> visited = {};
//     List<int> stack = [];
//     stack.add(start);

//     while (stack.isNotEmpty) {
//       int vertex = stack.removeLast();
//       if (!visited.contains(vertex)) {
//         print(vertex);
//         visited.add(vertex);
//         stack.addAll(adjacentList[vertex]!
//             .where((neighbor) => !visited.contains(neighbor)));
//       }
//     }
//   }
// }

// void main() {
//   Graph gph = Graph();
//   gph.addVertex(10);
//   gph.addVertex(20);
//   gph.addVertex(30);
//   gph.addVertex(40);
//   gph.addEdge(10, 20);
//   gph.addEdge(20, 30);
//   gph.removeEdge(20, 30);
//   gph.removeVertex(40);
//   gph.bfs(10);
//   // gph.dfs(10);
//   // print(gph.adjacentList);
// }

class Graph {
  Map<int, List<int>> adjacentList = {};

  void addVertex(int vertex) {
    if (!adjacentList.containsKey(vertex)) {
      adjacentList[vertex] = [];
    }
  }

  void addEdges(int vertex1, int vertex2) {
    if (adjacentList.containsKey(vertex1) &&
        adjacentList.containsKey(vertex2)) {
      adjacentList[vertex1]?.add(vertex2);
    }
  }

  void removeEdges(int vertex1, int vertex2) {
    adjacentList[vertex1]?.remove(vertex2);
    adjacentList[vertex2]?.remove(vertex1);
  }

  void removeVertex(int vertex) {
    if (adjacentList.containsKey(vertex)) {
      adjacentList[vertex]?.forEach((neibour) {
        adjacentList[neibour]?.remove(vertex);
      });
      adjacentList.remove(vertex);
    }
  }

  void dst(int start) {
    Set<int> visited = {};
    List<int> stack = [];
    stack.add(start);
    while (stack.isNotEmpty) {
      int vertex = stack.removeLast();
      if (!visited.contains(vertex)) {
        print(vertex);
        visited.add(vertex);
        stack.addAll(adjacentList[vertex]!
            .where((neibour) => visited.contains(neibour)));
      }
    }
  }
}

void main() {
  Graph graph = Graph();

  graph.addVertex(10);
  graph.addVertex(20);
  graph.addVertex(30);
  graph.addVertex(40);
  graph.addVertex(50);
  graph.addEdges(10, 30);
  graph.addEdges(10, 20);
  graph.addEdges(30, 40);
  graph.addEdges(30, 20);
  graph.removeEdges(30, 20);
  graph.removeVertex(50);
  print(graph.adjacentList);
}
