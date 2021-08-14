function mutant = mutation(child,laju_mutasi)
    mutant = child; %menyimpan data dari child1

    for i = 1:length(mutant.gen) %looping untuk mengecek 1-1 apakah akan dimutasi atau tidak
        if rand <= laju_mutasi
            mutant.gen(i) = char(randi([32 126])); 
        end
    end
end