filepath = '/Users/uahengojr/Desktop/Photo Luminescence Data/';

filename = {
    
    %--- 3YSZ & 8YSZ ---%
    'Gottlieb_Zro2_Acquisition 1 2018-01-20 14_23_21.session.xlsx'
    
};

%---- Import Experimental Data form Files ----%

for i = 1:length(filename)
    
    rawData = importdata([filepath, filename{i}]);
    
    %--- Extract Data ---%
    wavelength = rawData.data(:, 1);
    
    %--- Cubic 8YSZ Samples ---%
    cubic_8YSZ_0hrs = rawData.data(:, 2);
    normalized_Cubic_8YSZ_0hrs = normalize(rawData.data(:, 2));
    
    cubic_8YSZ_3hrs = rawData.data(:, 3);
    normalized_Cubic_8YSZ_3hrs = normalize(rawData.data(:, 3));
    
    %--- Tetragonal 3YSZ Samples ---%
    tetragonal_3YSZ_3hrs = rawData.data(:, 4);
    normalized_Tetragonal_3YSZ_3hrs = normalize(rawData.data(:, 4));
    
    tetragonal_3YSZ_0hrs = rawData.data(:, 5);
    normalized_Tetragonal_3YSZ_0hrs = normalize(rawData.data(:, 5));
    
    
end

%---- Create Figure & Plot Raw Data ----%
figure(1);

plot(wavelength, cubic_8YSZ_0hrs,'b:'), hold on;
plot(wavelength, tetragonal_3YSZ_0hrs,'r:');

plot(wavelength, cubic_8YSZ_3hrs, 'b', 'LineWidth', 1.5);
plot(wavelength, tetragonal_3YSZ_3hrs, 'r', 'LineWidth', 1.5);

set(gca, 'FontSize', 30, 'FontWeight', 'bold');
title('PL Of Bulk Zirconia Samples at Room Temperature', 'FontSize', 44);
xlabel('Wavelength (nm)', 'FontSize', 38), ylabel('Intensity (a.u.)', 'FontSize', 38);

lgd = legend({'8YSZ, 0 hr','3YSZ, 0 hr', '8YSZ, 3 hrs', '3YSZ, 3hrs'}, 'FontSize', 30);
title(lgd, 'Anneal Time');

grid on, grid minor;


%---- Create Figure & Plot Normalized Data ----%
figure(2);

plot(wavelength, normalized_Cubic_8YSZ_0hrs, 'b:', 'LineWidth', 0.5), hold on;
plot(wavelength, normalized_Tetragonal_3YSZ_0hrs, 'r:','LineWidth', 0.5);

plot(wavelength, normalized_Cubic_8YSZ_3hrs, 'b', 'LineWidth', 1.5);
plot(wavelength, normalized_Tetragonal_3YSZ_3hrs, 'r', 'LineWidth', 1.5);

set(gca, 'FontSize', 30, 'FontWeight', 'bold');
title('Normalized PL Of Bulk Zirconia Samples', 'FontSize', 44);
xlabel('Wavelength (nm)', 'FontSize', 38), ylabel('Normalized Intensity (a.u.)', 'FontSize', 38);

lgd = legend({'8YSZ, 0 hr','3YSZ, 0 hr', '8YSZ, 3 hrs', '3YSZ, 3hrs'}, 'FontSize', 30);
title(lgd, 'Anneal Time');

grid on, grid minor;

