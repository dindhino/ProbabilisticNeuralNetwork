% Nama: Dindin Dhino Alamsyah
% NIM : 1301144360

close all;
clear;
clc;

% 19(a) Visualisasi data
dataset = load('Aggregation.csv');
figure;
gscatter(dataset(:,1), dataset(:,2), dataset(:,3));
title('Probabilistic Neural Network');
xlabel('Atribut 1');
ylabel('Atribut 2');

% 19(b) Pilih 3 data secara random sebagai data tes, sisanya sebagai data training
r = randperm(length(dataset));
r = r(1:3);
r = sort(r);
fprintf('Data object yang dijadikan data tes (index): %i, %i, dan %i \n', r(1), r(2), r(3));
datates = [dataset(r(1),:); dataset(r(2),:); dataset(r(3),:)]
datatrain = dataset([1:r(1)-1, r(1)+1:r(2)-1, r(2)+1:r(3)-1, r(3)+1:end],:);

% 19(c) Implementasi PNN
prediksi = PNN(datatrain, [datates(:,1) datates(:,2)])
benar = 0;
for i=1:length(prediksi)
    if prediksi(i)==datates(i,3)
        benar = benar+1;
    end
end
fprintf('Akurasi: %d', 100*benar/length(prediksi));
disp('%');

% 19(d) Plot decision boundaries
decbound2D(dataset(:,1), dataset(:,2), dataset(:,3))