filepath = '/Users/uahengojr/Dropbox/Research/UCSD Work/Raman Data/2018/Analysis Data/';

filename = {    
    'Raman_Spectra_for_All_YSZ_Bulk_Samples_from_3200_to_100.xlsx'
};

for i = 1:length(filename)
    
    rawRamanData = importdata([filepath, filename{i}]);
    
    wavenumber = rawRamanData.data(:,1);
    
    % Extract the averaged raman spectra for individual samples, and normalize.
    
    % --- 3YSZ Composition --- %
    norm_3ysz_Num33 = normalize(rawRamanData.data(:, 2));
    norm_3ysz_Num34 = normalize(rawRamanData.data(:, 3));
    norm_3ysz_Num37 = normalize(rawRamanData.data(:, 4));
    norm_3ysz_Num38 = normalize(rawRamanData.data(:, 5));
    %norm_3ysz_No = normalize(rawRamanData.data(:,));
    
    % --- 4YSZ Composition --- %
    norm_4ysz_Num3 = normalize(rawRamanData.data(:, 7));
    norm_4ysz_Num4 = normalize(rawRamanData.data(:, 8));
    norm_4ysz_Num5 = normalize(rawRamanData.data(:, 9));
    norm_4ysz_Num6 = normalize(rawRamanData.data(:, 10));
    norm_4ysz_Num8 = normalize(rawRamanData.data(:, 11));
    
    % --- 6YSZ Composition --- %
    norm_6ysz_Num39 = normalize(rawRamanData.data(:, 13));
    norm_6ysz_Num48 = normalize(rawRamanData.data(:, 14));
    norm_6ysz_Num50 = normalize(rawRamanData.data(:, 15));
    norm_6ysz_Num51 = normalize(rawRamanData.data(:, 16));
    norm_6ysz_Num52 = normalize(rawRamanData.data(:, 17));
    
    % --- 8YSZ Composition --- %
    norm_8ysz_Num123C = normalize(rawRamanData.data(:, 19));
    norm_8ysz_Num126 = normalize(rawRamanData.data(:, 20));
    norm_8ysz_Num127 = normalize(rawRamanData.data(:, 21));
    norm_8ysz_Num128 = normalize(rawRamanData.data(:, 22));
    norm_8ysz_Num130 = normalize(rawRamanData.data(:, 23));
    
end
%% --- 0 Hour Annealed Samples

figure(1), hold on;
plot(wavenumber, norm_3ysz_Num34, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num6 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num52 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num128 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of Unannealed YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 3200]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 30);
title(lgd, 'Y_{2}O_{3} Composition');
grid on, grid minor;

%% --- 1 Hour Annealed Samples

figure(2), hold on;
plot(wavenumber, norm_3ysz_Num37, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num4 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber,norm_6ysz_Num51 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber,norm_8ysz_Num127 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of YSZ Bulk Samples Annealed in Oxygen for 1 Hour', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 3200]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 30);
title(lgd, 'Y_{2}O_{3} Composition');
grid on, grid minor;


%% --- 2 Hours Annealed Samples

figure(3), hold on;
plot(wavenumber, norm_3ysz_Num38, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num5 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num50 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num126 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of YSZ Bulk Samples Annealed in Oxygen for 2 Hours', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 3200]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 30);
title(lgd, 'Y_{2}O_{3} Composition');
grid on, grid minor;

%% --- 3 Hours Annealed Samples

figure(4), hold on;

plot(wavenumber, norm_3ysz_Num33, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num3 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num39 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num123C + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of YSZ Bulk Samples Annealed in Oxygen for 3 Hours', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 3200]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 30);
title(lgd, 'Y_{2}O_{3} Composition');
grid on, grid minor;


%%
figure(5);

% All samples have been annealed in Oxygen atmosphere.

subplot(2,2,1), hold on;
plot(wavenumber, norm_3ysz_Num34, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num6 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num52 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num128 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of Untreated YSZ Bulk Samples', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.3]);
lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 8);
title(lgd, 'Y_{2}O_{3} Composition');

grid on;% grid minor;

subplot(2,2,2), hold on;
plot(wavenumber, norm_3ysz_Num37, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num4+ 1, 'b', 'LineWidth', 2.0);
plot(wavenumber,norm_6ysz_Num51 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber,norm_8ysz_Num127 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of YSZ Bulk Samples Annealed for 1 Hour', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.3]);
lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 8);
title(lgd, 'Y_{2}O_{3} Composition');
grid on;% grid minor;


subplot(2,2,3), hold on;
plot(wavenumber, norm_3ysz_Num38, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num5 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber,norm_6ysz_Num50 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber,norm_8ysz_Num126 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of YSZ Bulk Samples Annealed for 2 Hours', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.3]);
lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 8);
title(lgd, 'Y_{2}O_{3} Composition');
grid on;% grid minor;

subplot(2,2,4), hold on;
plot(wavenumber, norm_3ysz_Num33, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num3 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num39 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num123C + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of YSZ Bulk Samples Annealed for 3 Hours', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.3]);
lgd = legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'}, 'FontSize', 8);
title(lgd, 'Y_{2}O_{3} Composition');
grid on;% grid minor;





%%
figure(6);

subplot(4,1,1), hold on;
plot(wavenumber, norm_3ysz_Num34, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num6 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num52 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num128 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
xlim([100 3200]);
legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'});
grid on;

subplot(4,1,2), hold on;
plot(wavenumber, norm_3ysz_Num37, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num4 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num51 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num127 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
xlim([100 3200]);
legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'});
grid on;

subplot(4,1,3), hold on;
plot(wavenumber, norm_3ysz_Num33, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num3 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num39 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num123C + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
xlim([100 3200]);
legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'});
grid on;

subplot(4,1,4), hold on;
plot(wavenumber, norm_3ysz_Num38, 'k', 'LineWidth', 2.0);
plot(wavenumber, norm_4ysz_Num5 + 1, 'b', 'LineWidth', 2.0);
plot(wavenumber, norm_6ysz_Num50 + 2, 'g', 'LineWidth', 2.0);
plot(wavenumber, norm_8ysz_Num126 + 3, 'r', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 3200]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.3]);
legend({'3YSZ', '4YSZ', '6YSZ', '8YSZ'});
grid on;
