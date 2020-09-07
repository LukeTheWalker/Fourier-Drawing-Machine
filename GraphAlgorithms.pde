import java.util.*;
import java.io.*;

//ArrayList < Boolean > visited = new ArrayList< Boolean > (); 
boolean [] visited;
ArrayList <Integer> [] graph;
ArrayList <PVector> orderedPoints = new ArrayList <PVector> ();

void addLink(int a, int b) {
  //println(graph);
  graph[a].add(b);
  graph[b].add(a);
}

void dfs (int node, ArrayList<PVector> points) { //DFS
  visited[node] = true;
  orderedPoints.add(points.get(node));
  for (int i = 0; i < graph[node].size(); i++)
    if (!visited[graph[node].get(i)])
      dfs(graph[node].get(i), points);
}

ArrayList <PVector> Kruskal (ArrayList<PVector> points) {
  int V = points.size();
  visited = new boolean [V];
  graph = new ArrayList [V];
  for(int i = 0; i < V; i++)
    graph[i] = new ArrayList <Integer> ();

  ArrayList<IntegerTriple> EdgeList = new ArrayList<IntegerTriple>();
  // sort by edge weight O(E log E)
  // PQ default: sort descending. Trick: use <(negative) weight(i, j), <i, j> >
  for (int i = 0; i < V; i++) {
    for (int j = 0; j < V; j++) {
      float cost = sqrt(pow(points.get(i).x - points.get(j).x, 2) +
        pow(points.get(i).y - points.get(j).y, 2));
      if (i == j || cost > 5) continue;                          //check for maximum cost
      //if (i*j % 1000000 == 0)println(EdgeList.size());
      EdgeList.add(new IntegerTriple(cost, i, j));                // (w, u, v)
    }
  }
  Collections.sort(EdgeList);
  println(EdgeList.size());
  int mst_cost = 0;           // all V are disjoint sets at the beginning
  UnionFind UF = new UnionFind(V);
  for (int i = 0; i < EdgeList.size(); i++) {                   // for each edge, O(E)
    IntegerTriple front = EdgeList.get(i);
    if (!UF.isSameSet(front.second(), front.third())) {          // check
      mst_cost += front.first();            // add the weight of e to MST
      addLink(front.second(), front.third());
      UF.unionSet(front.second(), front.third());            // link them
    }
  }
  ArrayList <IntegerPair> cs = new ArrayList <IntegerPair> ();
  ArrayList <IntegerTriple> pos = new ArrayList <IntegerTriple> ();
  for (int i = 0; i < V; i++) {
    int  index = cs.indexOf( new IntegerPair(UF.sizeOfSet(i), UF.findSet(i)));
    if (index == -1) {
      cs.add(new IntegerPair(UF.sizeOfSet(i), UF.findSet(i)));
      pos.add(new IntegerTriple (points.get(i).x, UF.sizeOfSet(i), UF.findSet(i))); //appending the axis value
      //println((UF.sizeOfSet(i)+" "+ UF.findSet(i)));
      //println(cs.get(0).first()+" "+cs.get(0).second());
      index = cs.indexOf( new IntegerPair(UF.sizeOfSet(i), UF.findSet(i)));
      //println(new IntegerPair(UF.sizeOfSet(i), UF.findSet(i)) == cs.get(0));
    }
    //println(index);
    pos.get(index).setFirst(pos.get(index).first()+points.get(i).x);               //summing the axis value
  }
  for (int i = 0; i < pos.size(); i++) {
    pos.get(i).setFirst(pos.get(i).first()/pos.get(i).second());
  }
  Collections.sort(pos);
  for (int i = 0; i < cs.size(); i++)
    //if (cs.get(i).first() < 100)
      dfs(pos.get(i).third(), points);
  // note: the number of disjoint sets must eventually be 1 for a valid MST
  println("MST cost = %d (Kruskal's)\n", mst_cost);
  return orderedPoints;
}
