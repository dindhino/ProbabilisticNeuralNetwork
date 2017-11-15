% Nama: Dindin Dhino Alamsyah
% NIM : 1301144360

function y_test = PNN(datatraining, x_test)
%     Fungsi ini mengimplementasikan PNN
%     dengan input yang berupa trainingset(x,y) dan atribut x' dari testset.
%     Fungsi ini akan mengeluarkan nilai prediksi kelas y' untuk testset.
    y_test = zeros(1, size(x_test,1));
    x_train = [datatraining(:,1) datatraining(:,2)];
    y_train = datatraining(:,3);
    sigma = 1;
    
%     kelas = unique(y_train)
%     nkelas = length(kelas)
    
%     ada 7 kelas
    train1 = x_train(y_train==1,:);
    train2 = x_train(y_train==2,:);
    train3 = x_train(y_train==3,:);
    train4 = x_train(y_train==4,:);
    train5 = x_train(y_train==5,:);
    train6 = x_train(y_train==6,:);
    train7 = x_train(y_train==7,:);
    
    hasilpenjumlahan = zeros(1,7);
    jumlah = 0;
    for i=1:size(x_test,1)
%         hitung kelas 1
        jumlah = 0;
        for kelas1=1:size(train1,1)
            jumlah = jumlah + exp(-((x_test(i,1)-train1(kelas1,1))^2+(x_test(i,2)-train1(kelas1,2))^2)/(2*(sigma^2)));
        end
        hasilpenjumlahan(1) = jumlah;
        
%         hitung kelas 2
        jumlah = 0;
        for kelas2=1:size(train2,1)
            jumlah = jumlah + exp(-((x_test(i,1)-train2(kelas2,1))^2+(x_test(i,2)-train2(kelas2,2))^2)/(2*(sigma^2)));
        end
        hasilpenjumlahan(2) = jumlah;
        
%         hitung kelas 3
        jumlah = 0;
        for kelas3=1:size(train3,1)
            jumlah = jumlah + exp(-((x_test(i,1)-train3(kelas3,1))^2+(x_test(i,2)-train3(kelas3,2))^2)/(2*(sigma^2)));
        end
        hasilpenjumlahan(3) = jumlah;
        
%         hitung kelas 4
        jumlah = 0;
        for kelas4=1:size(train4,1)
            jumlah = jumlah + exp(-((x_test(i,1)-train4(kelas4,1))^2+(x_test(i,2)-train4(kelas4,2))^2)/(2*(sigma^2)));
        end
        hasilpenjumlahan(4) = jumlah;

%         hitung kelas 5
        jumlah = 0;
        for kelas5=1:size(train5,1)
            jumlah = jumlah + exp(-((x_test(i,1)-train5(kelas5,1))^2+(x_test(i,2)-train5(kelas5,2))^2)/(2*(sigma^2)));
        end
        hasilpenjumlahan(5) = jumlah;

%         hitung kelas 6
        jumlah = 0;
        for kelas6=1:size(train6,1)
            jumlah = jumlah + exp(-((x_test(i,1)-train6(kelas6,1))^2+(x_test(i,2)-train6(kelas6,2))^2)/(2*(sigma^2)));
        end
        hasilpenjumlahan(6) = jumlah;

%         hitung kelas 7
        jumlah = 0;
        for kelas7=1:size(train7,1)
            jumlah = jumlah + exp(-((x_test(i,1)-train7(kelas7,1))^2+(x_test(i,2)-train7(kelas7,2))^2)/(2*(sigma^2)));
        end
        hasilpenjumlahan(7) = jumlah;
        
        y_test(i) = find(hasilpenjumlahan==max(hasilpenjumlahan));
    end
end

