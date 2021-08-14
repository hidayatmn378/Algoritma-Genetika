function [best1, best2] = selection(populasi)
    fitness_data = zeros(1,length(populasi));   %buat matriks nol untuk mengambil data struct
    for i = 1:length(populasi)  %looping memasukkan populasi kedalam matriks nol yg dibuat
        fitness_data(i) = populasi(i).fitness;
    end
    
    [~,index] = max(fitness_data); %mengambil index dari nilai max pada fitness_data
    parent1 = populasi(index);  %menjadikan index dari nilai max sebagai parent
    
    populasi(index) = [];   %menghapus nilai populasi
    fitness_data(index) = []; 
   
    [~,index] = max(fitness_data);
    parent2 = populasi(index);
    
    best1 = parent1;
    best2 = parent2;
end