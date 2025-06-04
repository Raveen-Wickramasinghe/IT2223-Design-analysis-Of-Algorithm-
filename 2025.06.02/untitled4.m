%G = digraph([1 2], [2 3]);
%plot(G);
%title('Directed Graph');


s= [1 2 2];
t =[2 3 4];
weights = [10 5 7];
G = graphs(s, t,weights);
plot(G,'EdgeLabel',G.Edges.Weight);
title('Weighted undirected Graph');
