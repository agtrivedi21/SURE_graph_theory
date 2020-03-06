function [fpd_number, H, C, adj] = graph_domination(n)

    fpd_number = (n-1)*(n-2); % this is an initial guess based on formula
    
    size = n + 2;
    A = delsq(numgrid('S',size));
    H = graph(A, 'omitselfloops');
    plot(H)

    
    vec_nodes = 1:(n^2);
    C = combnk(vec_nodes,fpd_number+1); % all possible combinations of nodes to pick
    
    for i = 1:length(C) % each row of C is the set of possible points to check (all patterns)
        
        % mark nodes in each row of C
        
        adj = full(adjacency(H));
        temp = C(i,:); % vector that stores each row of the combination one at a time
        
        for j = 1:length(temp)
            
            % for each "picked" node, it is marked on the adjacency matrix
            % as a 2 on the diagonal (so if node 1 is picked, (1,1) is
            % marked on the adjacency matrix
            
            adj(temp(j),temp(j)) = 2;
            % first step:
            for k = 1:length(adj)
                
                % checks every row of the adjacency matrix that has a
                % picked node, if there are ones in that row it means the
                % picked node is connected to something (step 1). If there
                % is a 1 it is changed to a 2.
                
                if adj(temp(j),k) == 1
                    adj(temp(j),k) = 2;
                end
            end
        end
    end 
end