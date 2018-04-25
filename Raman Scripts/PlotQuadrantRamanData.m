%{

Author: Gottlieb Uahengo Jr.
Date: 4/24/2018

Description:

    Plot the Raman spectroscopy of bulk samples YSZ bulk smaples sliced into
    quadrants. Each respective quadrant is annealed at 700 C for a different
    time. Namely, 0 hour (thermally untreated), 1 hour, 2 hours and 3 hours.

    The bulk samples numbers are:
    3YSZ - #41
    4YSZ - #11
    6YSZ - #55
    8YSZ - #134

%}

filepath = '/Users/uahengojr/Dropbox/Research/UCSD Work/Raman Data/2018/Apr 19th/';


%%
% ------------------------ Subplots ------------------------ %

% ------------------ Stacked Raman Data Figure ------------------ %

figure(100);

subplot(2, 2, 1), hold on;
plot(zero_hour_3YSZ_wavenumber, zero_hour_normalized_3YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_3YSZ_wavenumber, one_hour_normalized_3YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_3YSZ_wavenumber, two_hour_normalized_3YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_3YSZ_wavenumber, three_hour_normalized_3YSZ_intensity + 3, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('3YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

subplot(2, 2, 2), hold on;
plot(zero_hour_4YSZ_wavenumber, zero_hour_normalized_4YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_4YSZ_wavenumber, one_hour_normalized_4YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_4YSZ_wavenumber, two_hour_normalized_4YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_4YSZ_wavenumber, three_hour_normalized_4YSZ_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('4YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

% Adjust the fontsize to 32 and font weight to bold in the property editor
suptitle('Raman Spectra of Bulk Samples');

subplot(2, 2, 3), hold on;
plot(zero_hour_6YSZ_wavenumber, zero_hour_normalized_6YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_6YSZ_wavenumber, one_hour_normalized_6YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_6YSZ_wavenumber, two_hour_normalized_6YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_6YSZ_wavenumber, three_hour_normalized_6YSZ_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('6YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

subplot(2, 2, 4), hold on;
plot(zero_hour_8YSZ_wavenumber, zero_hour_normalized_8YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_8YSZ_wavenumber, one_hour_normalized_8YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_8YSZ_wavenumber, two_hour_normalized_8YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_8YSZ_wavenumber, three_hour_normalized_8YSZ_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('8YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;


% ------------------ Overlapping Raman Data Figure ------------------ %

figure(200);

subplot(2, 2, 1), hold on;
plot(zero_hour_3YSZ_wavenumber, zero_hour_normalized_3YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_3YSZ_wavenumber, one_hour_normalized_3YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_3YSZ_wavenumber, two_hour_normalized_3YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_3YSZ_wavenumber, three_hour_normalized_3YSZ_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('3YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 1.3]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

subplot(2, 2, 2), hold on;
plot(zero_hour_4YSZ_wavenumber, zero_hour_normalized_4YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_4YSZ_wavenumber, one_hour_normalized_4YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_4YSZ_wavenumber, two_hour_normalized_4YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_4YSZ_wavenumber, three_hour_normalized_4YSZ_intensity, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('4YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 1.3]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

% Adjust the fontsize to 32 and font weight to bold in the property editor
suptitle('Overlay of Raman Spectra for Yttria Stabilized Zirconia Bulk Samples'); 

subplot(2, 2, 3), hold on;
plot(zero_hour_6YSZ_wavenumber, zero_hour_normalized_6YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_6YSZ_wavenumber, one_hour_normalized_6YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_6YSZ_wavenumber, two_hour_normalized_6YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_6YSZ_wavenumber, three_hour_normalized_6YSZ_intensity, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('6YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 1.3]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

subplot(2, 2, 4), hold on;
plot(zero_hour_8YSZ_wavenumber, zero_hour_normalized_8YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_8YSZ_wavenumber, one_hour_normalized_8YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_8YSZ_wavenumber, two_hour_normalized_8YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_8YSZ_wavenumber, three_hour_normalized_8YSZ_intensity, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('8YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 1.3]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

% ------------------ IR-Region Raman Data Figure ------------------ %

figure(300);

subplot(2, 2, 1), hold on;
plot(zero_hour_3YSZ_DeepIR_wavenumber, zero_hour_normalized_3YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_3YSZ_DeepIR_wavenumber, one_hour_normalized_3YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_3YSZ_DeepIR_wavenumber, two_hour_normalized_3YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_3YSZ_DeepIR_wavenumber, three_hour_normalized_3YSZ_DeepIR_intensity + 3, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('3YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

subplot(2, 2, 2), hold on;
plot(zero_hour_4YSZ_DeepIR_wavenumber, zero_hour_normalized_4YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_4YSZ_DeepIR_wavenumber, one_hour_normalized_4YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_4YSZ_DeepIR_wavenumber, two_hour_normalized_4YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_4YSZ_DeepIR_wavenumber, three_hour_normalized_4YSZ_DeepIR_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('4YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

% Adjust the fontsize to 32 and font weight to bold in the property editor
suptitle('Raman Spectra of the mid-IR Region of Bulk Sample');

subplot(2, 2, 3), hold on;
plot(zero_hour_6YSZ_DeepIR_wavenumber, zero_hour_normalized_6YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_6YSZ_DeepIR_wavenumber, one_hour_normalized_6YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_6YSZ_DeepIR_wavenumber, two_hour_normalized_6YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_6YSZ_DeepIR_wavenumber, three_hour_normalized_6YSZ_DeepIR_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('6YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;

subplot(2, 2, 4), hold on;
plot(zero_hour_8YSZ_DeepIR_wavenumber, zero_hour_normalized_8YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_8YSZ_DeepIR_wavenumber, one_hour_normalized_8YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_8YSZ_DeepIR_wavenumber, two_hour_normalized_8YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_8YSZ_DeepIR_wavenumber, three_hour_normalized_8YSZ_DeepIR_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 18, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('8YSZ Bulk Sample', 'FontSize', 22);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 20), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 20), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 10);
grid on, grid minor;








%%

% ------------ * Individual Composition Plots * ------------ %

%{
% ------------ * 3YSZ * ------------ %
zero_hour_3YSZ = importdata([filepath, '3YSZ_Unannealed_0hr_Sample#41_50X_Measurment.xlsx']);
one_hour_3YSZ = importdata([filepath, '3YSZ_Annealed_1hr_Sample#41_50X_Measurment.xlsx']);
two_hour_3YSZ = importdata([filepath, '3YSZ_Annealed_2hr_Sample#41_50X_Measurment.xlsx']);
three_hour_3YSZ = importdata([filepath,'3YSZ_Annealed_3hr_Sample#41_50X_Measurment.xlsx']);

zero_hour_3YSZ_wavenumber = zero_hour_3YSZ(:, 1);
zero_hour_normalized_3YSZ_intensity = normalize(zero_hour_3YSZ(:, 2));

one_hour_3YSZ_wavenumber = one_hour_3YSZ(:, 1);
one_hour_normalized_3YSZ_intensity = normalize(one_hour_3YSZ(:, 2));

two_hour_3YSZ_wavenumber = two_hour_3YSZ(:, 1);
two_hour_normalized_3YSZ_intensity = normalize(two_hour_3YSZ(:, 2));

three_hour_3YSZ_wavenumber = three_hour_3YSZ(:, 1);
three_hour_normalized_3YSZ_intensity = normalize(three_hour_3YSZ(:, 2));

% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(1), hold on;

plot(zero_hour_3YSZ_wavenumber, zero_hour_normalized_3YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_3YSZ_wavenumber, one_hour_normalized_3YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_3YSZ_wavenumber, two_hour_normalized_3YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_3YSZ_wavenumber, three_hour_normalized_3YSZ_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 3YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(2), hold on;

plot(zero_hour_3YSZ_wavenumber, zero_hour_normalized_3YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_3YSZ_wavenumber, one_hour_normalized_3YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_3YSZ_wavenumber, two_hour_normalized_3YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_3YSZ_wavenumber, three_hour_normalized_3YSZ_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 3YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %


%%

% ------------ * 4YSZ * ------------ %
zero_hour_4YSZ = importdata([filepath, '4YSZ_Unannealed_0hr_Sample#11_50X_Measurment.xlsx']);
one_hour_4YSZ = importdata([filepath, '4YSZ_Annealed_1hr_Sample#11_50X_Measurment.xlsx']);
two_hour_4YSZ = importdata([filepath, '4YSZ_Annealed_2hr_Sample#11_50X_Measurment.xlsx']);
three_hour_4YSZ = importdata([filepath,'4YSZ_Annealed_3hr_Sample#11_50X_Measurment.xlsx']);

zero_hour_4YSZ_wavenumber = zero_hour_4YSZ(:, 1);
zero_hour_normalized_4YSZ_intensity = normalize(zero_hour_4YSZ(:, 2));

one_hour_4YSZ_wavenumber = one_hour_4YSZ(:, 1);
one_hour_normalized_4YSZ_intensity = normalize(one_hour_4YSZ(:, 2));

two_hour_4YSZ_wavenumber = two_hour_4YSZ(:, 1);
two_hour_normalized_4YSZ_intensity = normalize(two_hour_4YSZ(:, 2));

three_hour_4YSZ_wavenumber = three_hour_4YSZ(:, 1);
three_hour_normalized_4YSZ_intensity = normalize(three_hour_4YSZ(:, 2));

% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(3), hold on;

plot(zero_hour_4YSZ_wavenumber, zero_hour_normalized_4YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_4YSZ_wavenumber, one_hour_normalized_4YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_4YSZ_wavenumber, two_hour_normalized_4YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_4YSZ_wavenumber, three_hour_normalized_4YSZ_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 4YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(4), hold on;

plot(zero_hour_4YSZ_wavenumber, zero_hour_normalized_4YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_4YSZ_wavenumber, one_hour_normalized_4YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_4YSZ_wavenumber, two_hour_normalized_4YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_4YSZ_wavenumber, three_hour_normalized_4YSZ_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 4YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %


%%

% ------------ * 6YSZ * ------------ %
zero_hour_6YSZ = importdata([filepath, '6YSZ_Unannealed_0hr_Sample#55_50X_Measurment.xlsx']);
one_hour_6YSZ = importdata([filepath, '6YSZ_Annealed_1hr_Sample#55_50X_Measurment.xlsx']);
two_hour_6YSZ = importdata([filepath, '6YSZ_Annealed_2hr_Sample#55_50X_Measurment.xlsx']);
three_hour_6YSZ = importdata([filepath,'6YSZ_Annealed_3hr_Sample#55_50X_Measurment.xlsx']);

zero_hour_6YSZ_wavenumber = zero_hour_6YSZ(:, 1);
zero_hour_normalized_6YSZ_intensity = normalize(zero_hour_6YSZ(:, 2));

one_hour_6YSZ_wavenumber = one_hour_6YSZ(:, 1);
one_hour_normalized_6YSZ_intensity = normalize(one_hour_6YSZ(:, 2));

two_hour_6YSZ_wavenumber = two_hour_6YSZ(:, 1);
two_hour_normalized_6YSZ_intensity = normalize(two_hour_6YSZ(:, 2));

three_hour_6YSZ_wavenumber = three_hour_6YSZ(:, 1);
three_hour_normalized_6YSZ_intensity = normalize(three_hour_6YSZ(:, 2));

% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(5), hold on;

plot(zero_hour_6YSZ_wavenumber, zero_hour_normalized_6YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_6YSZ_wavenumber, one_hour_normalized_6YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_6YSZ_wavenumber, two_hour_normalized_6YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_6YSZ_wavenumber, three_hour_normalized_6YSZ_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 6YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(6), hold on;

plot(zero_hour_6YSZ_wavenumber, zero_hour_normalized_6YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_6YSZ_wavenumber, one_hour_normalized_6YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_6YSZ_wavenumber, two_hour_normalized_6YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_6YSZ_wavenumber, three_hour_normalized_6YSZ_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 6YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %


%%

% ------------ * 8YSZ * ------------ %
zero_hour_8YSZ = importdata([filepath, '8YSZ_Unannealed_0hr_Sample#134_50X_Measurment.xlsx']);
one_hour_8YSZ = importdata([filepath, '8YSZ_Annealed_1hr_Sample#134_50X_Measurment.xlsx']);
two_hour_8YSZ = importdata([filepath, '8YSZ_Annealed_2hr_Sample#134_50X_Measurment.xlsx']);
three_hour_8YSZ = importdata([filepath,'8YSZ_Annealed_3hr_Sample#134_50X_Measurment.xlsx']);

zero_hour_8YSZ_wavenumber = zero_hour_8YSZ(:, 1);
zero_hour_normalized_8YSZ_intensity = normalize(zero_hour_8YSZ(:, 2));

one_hour_8YSZ_wavenumber = one_hour_8YSZ(:, 1);
one_hour_normalized_8YSZ_intensity = normalize(one_hour_8YSZ(:, 2));

two_hour_8YSZ_wavenumber = two_hour_8YSZ(:, 1);
two_hour_normalized_8YSZ_intensity = normalize(two_hour_8YSZ(:, 2));

three_hour_8YSZ_wavenumber = three_hour_8YSZ(:, 1);
three_hour_normalized_8YSZ_intensity = normalize(three_hour_8YSZ(:, 2));

% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(7), hold on;

plot(zero_hour_8YSZ_wavenumber, zero_hour_normalized_8YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_8YSZ_wavenumber, one_hour_normalized_8YSZ_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_8YSZ_wavenumber, two_hour_normalized_8YSZ_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_8YSZ_wavenumber, three_hour_normalized_8YSZ_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 8YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(8), hold on;

plot(zero_hour_8YSZ_wavenumber, zero_hour_normalized_8YSZ_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_8YSZ_wavenumber, one_hour_normalized_8YSZ_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_8YSZ_wavenumber, two_hour_normalized_8YSZ_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_8YSZ_wavenumber, three_hour_normalized_8YSZ_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 8YSZ Bulk Samples', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([100 900]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %


%% 

% ------------------------------------ Deep IR Region Raman Plots ------------------------------------ %

% ------------ * 3YSZ * ------------ %
zero_hour_3YSZ_DeepIR = importdata([filepath, '3YSZ_Unannealed_0hr_Sample#41_50X_Measurment_DeepIR.xlsx']);
one_hour_3YSZ_DeepIR = importdata([filepath, '3YSZ_Annealed_1hr_Sample#41_50X_Measurment_DeepIR.xlsx']);
two_hour_3YSZ_DeepIR = importdata([filepath, '3YSZ_Annealed_2hr_Sample#41_50X_Measurment_DeepIR.xlsx']);
three_hour_3YSZ_DeepIR = importdata([filepath,'3YSZ_Annealed_3hr_Sample#41_50X_Measurment_DeepIR.xlsx']);

zero_hour_3YSZ_DeepIR_wavenumber = zero_hour_3YSZ_DeepIR(:, 1);
zero_hour_normalized_3YSZ_DeepIR_intensity = normalize(zero_hour_3YSZ_DeepIR(:, 2));

one_hour_3YSZ_DeepIR_wavenumber = one_hour_3YSZ_DeepIR(:, 1);
one_hour_normalized_3YSZ_DeepIR_intensity = normalize(one_hour_3YSZ_DeepIR(:, 2));

two_hour_3YSZ_DeepIR_wavenumber = two_hour_3YSZ_DeepIR(:, 1);
two_hour_normalized_3YSZ_DeepIR_intensity = normalize(two_hour_3YSZ_DeepIR(:, 2));

three_hour_3YSZ_DeepIR_wavenumber = three_hour_3YSZ_DeepIR(:, 1);
three_hour_normalized_3YSZ_DeepIR_intensity = normalize(three_hour_3YSZ_DeepIR(:, 2));

% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(9), hold on;

plot(zero_hour_3YSZ_DeepIR_wavenumber, zero_hour_normalized_3YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_3YSZ_DeepIR_wavenumber, one_hour_normalized_3YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_3YSZ_DeepIR_wavenumber, two_hour_normalized_3YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_3YSZ_DeepIR_wavenumber, three_hour_normalized_3YSZ_DeepIR_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 3YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(10), hold on;

plot(zero_hour_3YSZ_DeepIR_wavenumber, zero_hour_normalized_3YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_3YSZ_DeepIR_wavenumber, one_hour_normalized_3YSZ_DeepIR_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_3YSZ_DeepIR_wavenumber, two_hour_normalized_3YSZ_DeepIR_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_3YSZ_DeepIR_wavenumber, three_hour_normalized_3YSZ_DeepIR_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 3YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %


% ------------ * 4YSZ * ------------ %
zero_hour_4YSZ_DeepIR = importdata([filepath, '4YSZ_Unannealed_0hr_Sample#11_50X_Measurment_DeepIR.xlsx']);
one_hour_4YSZ_DeepIR = importdata([filepath, '4YSZ_Annealed_1hr_Sample#11_50X_Measurment_DeepIR.xlsx']);
two_hour_4YSZ_DeepIR = importdata([filepath, '4YSZ_Annealed_2hr_Sample#11_50X_Measurment_DeepIR.xlsx']);
three_hour_4YSZ_DeepIR = importdata([filepath,'4YSZ_Annealed_3hr_Sample#11_50X_Measurment_DeepIR.xlsx']);

zero_hour_4YSZ_DeepIR_wavenumber = zero_hour_4YSZ_DeepIR(:, 1);
zero_hour_normalized_4YSZ_DeepIR_intensity = normalize(zero_hour_4YSZ_DeepIR(:, 2));

one_hour_4YSZ_DeepIR_wavenumber = one_hour_4YSZ_DeepIR(:, 1);
one_hour_normalized_4YSZ_DeepIR_intensity = normalize(one_hour_4YSZ_DeepIR(:, 2));

two_hour_4YSZ_DeepIR_wavenumber = two_hour_4YSZ_DeepIR(:, 1);
two_hour_normalized_4YSZ_DeepIR_intensity = normalize(two_hour_4YSZ_DeepIR(:, 2));

three_hour_4YSZ_DeepIR_wavenumber = three_hour_4YSZ_DeepIR(:, 1);
three_hour_normalized_4YSZ_DeepIR_intensity = normalize(three_hour_4YSZ_DeepIR(:, 2));


% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(11), hold on;

plot(zero_hour_4YSZ_DeepIR_wavenumber, zero_hour_normalized_4YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_4YSZ_DeepIR_wavenumber, one_hour_normalized_4YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_4YSZ_DeepIR_wavenumber, two_hour_normalized_4YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_4YSZ_DeepIR_wavenumber, three_hour_normalized_4YSZ_DeepIR_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 4YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(12), hold on;

plot(zero_hour_4YSZ_DeepIR_wavenumber, zero_hour_normalized_4YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_4YSZ_DeepIR_wavenumber, one_hour_normalized_4YSZ_DeepIR_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_4YSZ_DeepIR_wavenumber, two_hour_normalized_4YSZ_DeepIR_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_4YSZ_DeepIR_wavenumber, three_hour_normalized_4YSZ_DeepIR_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 4YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %


% ------------ * 6YSZ * ------------ %
zero_hour_6YSZ_DeepIR = importdata([filepath, '6YSZ_Unannealed_0hr_Sample#55_50X_Measurment_DeepIR.xlsx']);
one_hour_6YSZ_DeepIR = importdata([filepath, '6YSZ_Annealed_1hr_Sample#55_50X_Measurment_DeepIR.xlsx']);
two_hour_6YSZ_DeepIR = importdata([filepath, '6YSZ_Annealed_2hr_Sample#55_50X_Measurment_DeepIR.xlsx']);
three_hour_6YSZ_DeepIR = importdata([filepath,'6YSZ_Annealed_3hr_Sample#55_50X_Measurment_DeepIR.xlsx']);

zero_hour_6YSZ_DeepIR_wavenumber = zero_hour_6YSZ_DeepIR(:, 1);
zero_hour_normalized_6YSZ_DeepIR_intensity = normalize(zero_hour_6YSZ_DeepIR(:, 2));

one_hour_6YSZ_DeepIR_wavenumber = one_hour_6YSZ_DeepIR(:, 1);
one_hour_normalized_6YSZ_DeepIR_intensity = normalize(one_hour_6YSZ_DeepIR(:, 2));

two_hour_6YSZ_DeepIR_wavenumber = two_hour_4YSZ_DeepIR(:, 1);
two_hour_normalized_6YSZ_DeepIR_intensity = normalize(two_hour_4YSZ_DeepIR(:, 2));

three_hour_6YSZ_DeepIR_wavenumber = three_hour_6YSZ_DeepIR(:, 1);
three_hour_normalized_6YSZ_DeepIR_intensity = normalize(three_hour_6YSZ_DeepIR(:, 2));

% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(13), hold on;

plot(zero_hour_6YSZ_DeepIR_wavenumber, zero_hour_normalized_6YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_6YSZ_DeepIR_wavenumber, one_hour_normalized_6YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_6YSZ_DeepIR_wavenumber, two_hour_normalized_6YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_6YSZ_DeepIR_wavenumber, three_hour_normalized_6YSZ_DeepIR_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 6YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(14), hold on;

plot(zero_hour_6YSZ_DeepIR_wavenumber, zero_hour_normalized_6YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_6YSZ_DeepIR_wavenumber, one_hour_normalized_6YSZ_DeepIR_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_6YSZ_DeepIR_wavenumber, two_hour_normalized_6YSZ_DeepIR_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_6YSZ_DeepIR_wavenumber, three_hour_normalized_6YSZ_DeepIR_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 6YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %

% ------------ * 8YSZ * ------------ %
zero_hour_8YSZ_DeepIR = importdata([filepath, '8YSZ_Unannealed_0hr_Sample#134_50X_Measurment_DeepIR.xlsx']);
one_hour_8YSZ_DeepIR = importdata([filepath, '8YSZ_Annealed_1hr_Sample#134_50X_Measurment_DeepIR.xlsx']);
two_hour_8YSZ_DeepIR = importdata([filepath, '8YSZ_Annealed_2hr_Sample#134_50X_Measurment_DeepIR.xlsx']);
three_hour_8YSZ_DeepIR = importdata([filepath,'8YSZ_Annealed_3hr_Sample#134_50X_Measurment_DeepIR.xlsx']);

zero_hour_8YSZ_DeepIR_wavenumber = zero_hour_8YSZ_DeepIR(:, 1);
zero_hour_normalized_8YSZ_DeepIR_intensity = normalize(zero_hour_8YSZ_DeepIR(:, 2));

one_hour_8YSZ_DeepIR_wavenumber = one_hour_8YSZ_DeepIR(:, 1);
one_hour_normalized_8YSZ_DeepIR_intensity = normalize(one_hour_8YSZ_DeepIR(:, 2));

two_hour_8YSZ_DeepIR_wavenumber = two_hour_8YSZ_DeepIR(:, 1);
two_hour_normalized_8YSZ_DeepIR_intensity = normalize(two_hour_8YSZ_DeepIR(:, 2));

three_hour_8YSZ_DeepIR_wavenumber = three_hour_8YSZ_DeepIR(:, 1);
three_hour_normalized_8YSZ_DeepIR_intensity = normalize(three_hour_8YSZ_DeepIR(:, 2));

% ================  Start Figures ================ %
% ----- Stacked Raman Data ----- %
figure(15), hold on;

plot(zero_hour_8YSZ_DeepIR_wavenumber, zero_hour_normalized_8YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_8YSZ_DeepIR_wavenumber, one_hour_normalized_8YSZ_DeepIR_intensity + 1, 'b', 'LineWidth', 2.0);
plot(two_hour_8YSZ_DeepIR_wavenumber, two_hour_normalized_8YSZ_DeepIR_intensity + 2, 'r', 'LineWidth', 2.0);
plot(three_hour_8YSZ_DeepIR_wavenumber, three_hour_normalized_8YSZ_DeepIR_intensity + 3, 'g', 'LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra of 8YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 4.5]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ----- Overlay of Raman Data ----- %

figure(16), hold on;

plot(zero_hour_8YSZ_DeepIR_wavenumber, zero_hour_normalized_8YSZ_DeepIR_intensity, 'k', 'LineWidth', 2.0);
plot(one_hour_8YSZ_DeepIR_wavenumber, one_hour_normalized_8YSZ_DeepIR_intensity, 'b', 'LineWidth', 2.0);
plot(two_hour_8YSZ_DeepIR_wavenumber, two_hour_normalized_8YSZ_DeepIR_intensity, 'r', 'LineWidth', 2.0);
plot(three_hour_8YSZ_DeepIR_wavenumber, three_hour_normalized_8YSZ_DeepIR_intensity, 'g','LineWidth', 2.0);

set(gca, 'FontSize', 26, 'FontWeight', 'bold');
set(gca, 'YTickLabel', []);
title('Raman Spectra Overlay of 8YSZ Bulk Samples in mid-IR Range', 'FontSize', 52);
xlabel('Raman Shift, \lambda (cm^{-1})', 'FontSize', 38), xlim([1000 2500]);
ylabel('Normalized Intensity (a.u.)', 'FontSize', 38), ylim([0 1.1]);

legend({'0 hr', '1 hr', '2 hrs', '3 hrs'}, 'FontSize', 30);
grid on, grid minor;

% ================  End Figures ================ %
%}
