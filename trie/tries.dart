// class Node {
//   Map<String, Node> children = {};
//   bool isendofWord = false;
// }

// class Tries {
//   Node root = Node();
//   void addTries(String word) {
//     Node temp = root;
//     for (int i = 0; i < word.length; i++) {
//       final char = word[i];
//       if (!temp.children.containsKey(char)) {
//         temp.children[char] = Node();
//       }
//       temp = temp.children[char]!;
//     }
//     temp.isendofWord = true;
//   }

//   bool search(String word) {
//     Node? temp = root;
//     for (var i = 0; i < word.length; i++) {
//       final char = word[i];
//       if (!temp!.children.containsKey(char)) {
//         return false;
//       } else {
//         temp = temp.children[char];
//       }
//     }
//     return temp != null && temp.isendofWord;
//   }

//   bool startwith(String word) {
//     Node? temp = root;
//     for (var i = 0; i < word.length; i++) {
//       final char = word[i];
//       if (!temp!.children.containsKey(char)) {
//         return false;
//       } else {
//         temp = temp.children[char];
//       }
//     }
//     return temp != null;
//   }

//   String Lcp() {
//     Node? temp = root;
//     String prefix = '';
//     while (temp!.children.length == 1 && !temp.isendofWord) {
//       String char = temp.children.keys.first;
//       prefix += char;
//       temp = temp.children[char];
//     }
//     return prefix;
//   }
// }

// void main() {
//   Tries tries = Tries();
//   tries.addTries('hai');
//   tries.addTries('hello');
//   tries.addTries('hoi');
//   tries.addTries('hoo');
//   print(tries.startwith('v'));
//   print(tries.search('hom'));
//   print(tries.Lcp());
// }



class Node {
  Map<String, Node> children = {};
  bool isEndofWord = false;
}

class Tries {
  Node? root = Node();

  addTries(String words) {
    Node? temp = root;
    for (var i = 0; i < words.length; i++) {
      final Char = words[i];
      if (!temp!.children.containsKey(Char)) {
        temp.children[Char] = Node();
      } 
        temp = temp.children[Char];
      
    }
    temp!.isEndofWord = true;
  }

  Search(String words) {
    Node? temp = root;
    for (var i = 0; i < words.length; i++) {
      final char = words[i];
      if (!temp!.children.containsKey(char)) {
        return false;
      } else {
        temp = temp.children[char];
      }
    }
    return temp != null && temp.isEndofWord;
  }

  StartWith(String words) {
    Node? temp = root;
    for (var i = 0; i < words.length; i++) {
      final Char = words[i];
      if (!temp!.children.containsKey(Char)) {
        return false;
      } else {
        temp = temp.children[Char];
      }
    }
    return temp != null;
  }

  String lcp() {
    Node? temp = root;
    String prefix = '';
    while (temp!.children.length == 1 && !temp.isEndofWord) {
      String char = temp.children.keys.first;
      prefix += char;
       temp = temp.children[char];
    }
    return prefix;
  }
}

void main() {
  Tries tries = Tries();
  tries.addTries('hai');
  tries.addTries('hello');
  tries.addTries('hi');
  tries.addTries('hoi');
  tries.addTries('hii');
  tries.addTries('hey');
  tries.addTries('hiy');
  print(tries.Search('b'));
  print(tries.StartWith('h'));
  print(tries.lcp());
}
