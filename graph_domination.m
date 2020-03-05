% for a 2x2 grid
A = [0 1 1 0; 1 0 0 1; 1 0 0 1; 0 1 1 0];
G = graph(A~=0);
plot(G)

n = 4;
A = delsq(numgrid('S',n));
H = graph(A, 'omitselfloops');
plot(H)

adj = full(adjacency(H));

% combination:
C = combnk(G.Nodes,1)
