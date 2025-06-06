s=[1 1 2 3 4];
t=[2 3 4 4 5];
%weights = [];
G =graph(s,t);

%arrage the nodes in nice way using layout
nodeColors=[
    1 0 0; %node 1 Red 
    0 1 0; %node 2 green
    0 0 1; %node 3 blue
    1 1 0; %node 4 yellow
    1 0 1; %node 5 magenta
    ];
   plot(G, 'NodeColor', nodeColors,'LineWidth',1.5);