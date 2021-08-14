function [solusi,generasi] = simpleGA(target,jumlah_populasi,laju_mutasi)
populasi = create_population(target,jumlah_populasi);
islooping = true
generasi = 0;
%langkah terakhir adalah looping proses2 yg terjadi
%selection - crossover - mutation - regeneration
%pakai while , for loop tidak bisa karena for loop adalah looping yg
%berhenti pada suatu titik yg telah ditentukan
%tapi dalam program ini belum diketahui kapan proses selesai

while islooping
    %seleksi
    [parent1,parent2] = selection(populasi);

    %crossover
    [child1,child2] = crossover(parent1,parent2);

    %mutasi
    mutant1 = mutation(child1,laju_mutasi);
    mutant2 = mutation(child2,laju_mutasi);

    %hitung fitness mutant
    mutant1.fitness = calculate_fitness(mutant1.gen,target);
    mutant2.fitness = calculate_fitness(mutant2.gen,target);

    %regenerasi (mirip selection)
    %calon anggota
    children = [mutant1,mutant2];
%     new_populasi = regeneration(children,populasi)
    populasi = regeneration(children,populasi);
    %agar bisa looping terus new_populasi harus diubah jadi populasi
%     populasi.fitness    %melihat finalisasi dapat 100
    generasi = generasi + 1;
    [islooping,solusi] = termination(populasi);
    logging(populasi,target,solusi,generasi);
%     islooping = false;
end
end



%cek
% while true
% disp('hallo')
% end