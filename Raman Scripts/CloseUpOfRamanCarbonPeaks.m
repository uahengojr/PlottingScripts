filepath = '/Users/uahengojr/Dropbox/Research/UCSD Work/Raman Data/2018/Analysis Data/';

filename = {    
    %-------- 3YSZ Composition --------%
    'Varying Annealing Times for 3YSZ Composition.xlsx'
    %-------- 4YSZ Composition --------%
    'Varying Annealing Times for 4YSZ Composition.xlsx'
    %-------- 6YSZ Composition --------%
    'Varying Annealing Times for 6YSZ Composition.xlsx'
    %-------- 8YSZ Composition --------%
    'Varying Annealing Times for 8YSZ Composition.xlsx'
};  


% Overlapping Plots

for i = 1:length(filename)
    
    rawRamanData = importdata([filepath, filename{i}]);
    
    % Wavenumber
    wavenumber = rawRamanData.data(:, 1);
    
    % Unannealed
        norm_zero_hour = normalize(rawRamanData.data(:, 2));
    % Half-hour annealed
        norm_half_hour = normalize(rawRamanData.data(:, 3));
    % 1-hour annealed
        norm_1_hour = normalize(rawRamanData.data(:, 4));
    % 2-hour annealed
        norm_2_hours = normalize(rawRamanData.data(:, 5));
    % 3-hour annealed
        norm_3_hours = normalize(rawRamanData.data(:, 6));
        
    % Plot retrieved data
    
    figure(i), hold on;
    
    plot(wavenumber, norm_zero_hour, 'k', 'LineWidth', 2.0);
    plot(wavenumber, norm_half_hour, 'g', 'LineWidth', 2.0);
    plot(wavenumber, norm_1_hour, 'b', 'LineWidth', 2.0);
    plot(wavenumber, norm_2_hours, 'y', 'LineWidth', 2.0);
    plot(wavenumber, norm_3_hours, 'r', 'LineWidth', 2.0);
    
    set(gca, 'FontSize', 26, 'FontWeight', 'bold');
    title('Raman Spectra of * YSZ Bulk Samples', 'FontSize', 52);
    xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1100 2500]);
    ylabel('Normalized Intensity (arb.)', 'FontSize', 38), ylim([0 1.1]);
    legend({'0 hr', '1/2 hr', '1 hr', '2 hrs', '3 hrs'});
    grid on, grid minor;
    
end


% Waterfall/Stacked Plots

for j = 1:length(filename)
    
    rawRamanData = importdata([filepath, filename{j}]);
    
    % Wavenumber
    wavenumber = rawRamanData.data(:, 1);
    
    % Unannealed
        norm_zero_hour = normalize(rawRamanData.data(:, 2));
    % Half-hour annealed
        norm_half_hour = normalize(rawRamanData.data(:, 3));
    % 1-hour annealed
        norm_1_hour = normalize(rawRamanData.data(:, 4));
    % 2-hour annealed
        norm_2_hours = normalize(rawRamanData.data(:, 5));
    % 3-hour annealed
        norm_3_hours = normalize(rawRamanData.data(:, 6));
        
    % Plot retrieved data
    k = j * 10;
    
    figure(k), hold on;
    
    plot(wavenumber, norm_zero_hour, 'k', 'LineWidth', 2.0);
    plot(wavenumber, norm_half_hour + 1, 'g', 'LineWidth', 2.0);
    plot(wavenumber, norm_1_hour + 2, 'b', 'LineWidth', 2.0);
    plot(wavenumber, norm_2_hours + 3, 'y', 'LineWidth', 2.0);
    plot(wavenumber, norm_3_hours + 4, 'r', 'LineWidth', 2.0);
    
    set(gca, 'FontSize', 26, 'FontWeight', 'bold');
    title('Raman Spectra of * YSZ Bulk Samples', 'FontSize', 52);
    xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1100 2500]);
    ylabel('Normalized Intensity (arb.)', 'FontSize', 38), ylim([0 5.1]);
    legend({'0 hr', '1/2 hr', '1 hr', '2 hrs', '3 hrs'});
    grid on, grid minor;
    
end