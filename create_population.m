function populasi = create_population(target,jumlah_populasi)
    populasi = struct();
    for i = 1:jumlah_populasi
        gen_baru = create_gen(length(target));
        populasi(i).gen = gen_baru;
        populasi(i).fitness = calculate_fitness(gen_baru,target);
    end
end