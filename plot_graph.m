function [ output_args ] = plot(x, y, x_axis, y_axis, title)
%Plot Summary of this function goes here
%   Detailed explanation goes here

%{
    CREATE FIGURE(X1, Y1)
    X1: a vector of x-data
    Y1: a vector of y-data
%}


X1 = x;
Y1 = y;

% Create figure

figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);

% Set axes range limits
xlim(axes1,[ll ul]);
ylim(axes1,[ll ul]);

% Create box  and hold around figure
box(axes1, 'on');
hold(axes1, 'on');

% Set fontsize and fontweight

set(gca, 'fontsize', 26, 'fontweight', 'bold');

% Create X-label and Y-label


xlabel(x_axis, 'fontsize', 26);
ylabel(y_axis, 'fontsize', 26);


%Create graph title
title(title ,'fontsize', 26);

% Finished doing WORK!
output_args = 'Done!';
disp('Done ploting your data...');

end

