function [fpd_number, H, C] = graph_domination(n)

    fpd_number = (n-1)*(n-2); % this is an initial guess based on formula
    
    size = n + 2;
    A = delsq(numgrid('S',size));
    H = graph(A, 'omitselfloops');
    plot(H)

    adj = full(adjacency(H));
    
    vec_nodes = 1:(n^2);
    C = combnk(vec_nodes,fpd_number+1);
    
    
    
end