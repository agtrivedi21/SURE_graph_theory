function fpd_number = graph_domination(n)

    fpd_number = (n-1)*(n-2); % this is an initial guess based on formula
    
    size = size + 2;
    A = delsq(numgrid('S',size));
    H = graph(A, 'omitselfloops');
    plot(H)

    adj = full(adjacency(H));
    
    
    
end