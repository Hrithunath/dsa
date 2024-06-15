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
import 'dart:collection';

class Graph {
  Map<int, List<int>> adjcentList = {};
  AddVertex(int vertex) {
    if (!adjcentList.containsKey(vertex)) {
      adjcentList[vertex] = [];
    }
  }

  AddEdges(int vertex1, int vertex2) {
    if (adjcentList.containsKey(vertex1) && adjcentList.containsKey(vertex2)) {
      adjcentList[vertex1]?.add(vertex2);
      adjcentList[vertex2]?.add(vertex1);
    }
  }

  removeVertex(int vertex) {
    if (adjcentList.containsKey(vertex)) {
      adjcentList[vertex]?.forEach((neibour) {
        adjcentList[neibour]?.remove(vertex);
      });
      adjcentList.remove(vertex);
    }
  }

  removeEdges(int vertex1, int vertex2) {
    adjcentList[vertex1]?.remove(vertex2);
    adjcentList[vertex2]?.remove(vertex1);
  }

  DFS(int start) {
    Set<int> visited = {};
    List<int> stack = [];
    stack.add(start);
    while (stack.isNotEmpty) {
      int vertex = stack.removeLast();
      if (!visited.contains(vertex)) {
        print(vertex);
        visited.add(vertex);
        stack.addAll(adjcentList[vertex]!.where((neibour)=>!visited.contains(neibour)));
      }
    }
  }

  BFS(int start) {
    Set<int> visited = {};
    Queue<int> queue = Queue<int>();
    queue.add(start);
    while (queue.isNotEmpty) {
      int vertex = queue.removeFirst();
      if (!visited.contains(vertex)) {
        print(vertex);
        visited.add(vertex);
        queue.addAll(adjcentList[vertex]!
            .where((neibour) => !visited.contains(neibour)));
      }
    }
  }
}

void main() {
  Graph graph = Graph();
  graph.AddVertex(10);
  graph.AddVertex(20);
  graph.AddVertex(30);
  graph.AddVertex(40);
  graph.AddVertex(50);
  graph.AddVertex(60);
  graph.AddEdges(40, 30);
  graph.AddEdges(40, 10);
  graph.AddEdges(40, 60);
  graph.removeEdges(40, 10);
  graph.removeVertex(50);
  graph.DFS(40);
  graph.BFS(40);
  print(graph.adjcentList);
}
