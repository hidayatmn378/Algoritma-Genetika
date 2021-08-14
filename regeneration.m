function new_populasi = regeneration(children,populasi)
    %ambil fitness dari populasi
    fitness =  zeros(1,length(populasi)); %membuat matriks nol untuk fitness
    for i = 1:length(fitness) %memasukkan nilai populasi kedalam matriks fitness
        fitness(i) = populasi(i).fitness;
    end
    % populasi.gen %menampilkan populasi

    %kita remove berdasarkan fitness paling minimum
    for i = 1:length(children) %agar meremove sebanyak children
        [~,index] = min(fitness); %mengambil nilai min dari fitness
        populasi(index) = [];
        fitness(index) = [];
    end

    %add member
    for i = 1:length(children)
        n = length(populasi)+1;
        populasi(n) = children(i);
    end
        new_populasi = populasi;
end
% populasi.gen %menampilkan populasi yg baru