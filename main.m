clear
clc

target = 'wiro sableng'
jumlah_populasi = 10;
laju_mutasi = 0.1;
[solusi,generasi] = simpleGA(target,jumlah_populasi,laju_mutasi);





%%
% %tujuan dari program ini adalah membuat sebuah program
% %dengan menggunakan algoritma genetika untuk mendekati nilai dari target
% 
%  target = 'wiro sableng';    %bertipe char (cek whos)
%  %mulai dari buat char yang random
%  %char random dapat dibuat melalui random number (ascii) kemudian dikonversi
%  
%  panjang_target = length(target);
%  random_number = randi([32 126],1,panjang_target);  %randi random integer
%  gen = char(random_number)  %konversi menjadi char
%  
%  %selanjutnya dihitung fitness value dari gen, bagus atau tidak (tingkat kecocokan)
%  fitness = (sum(target == gen)/panjang_target) * 100
%   
% 
%  %representasi genetik
%  
%  %fitness function

%%
%dibuat menjadi fungsi supaya rapi
%dan dibuatkan file tersendiri

% target = 'wiro sableng'
% panjang_target = length(target);
% 
% gen_baru = create_gen(panjang_target)
% fitness = calculate_fitness(gen_baru,target)
% 
% %representasi gen
% function gen = create_gen(panjang_gen)
%     random_number = randi([32 126],1,panjang_gen);
%     gen = char(random_number);
% end
% 
% %fitness function
% function fitness = calculate_fitness(gen,target)
%     fitness = (sum(target == gen)/length(target)) * 100;
% end

%buat populasi dengan menggunakan struct