% Dialog open box to select files for upload.
[fileName, filePath, filterIndex] = uigetfile({'*.csv; *.xls; *.xlsx', 'Excel & CSV files'}, 'Select a file');

if isequal(filterIndex, 0)
    disp('User selected Cancel.');
    return;
else
    fullfileName = fullfile(filePath,fileName);
    [pathstr, name, ext] = fileparts(fileName);
end

% Load data into workspace
if strcmp(ext, '.xls')

    data = xlsread(fullfileName);
    ang = data(:, 1);
    int = data(:, 2);
    
%%elseif strcmp(ext, '.xlsx')

    % Do something..
    
else
    % Its a CSV file
    data = csvread(fullfileName,1,0);
    angle = data(:,1);
    intensity = data(:,2);
end

% Locate XRD Scan Range
ll = min(angle); 
ul = max(angle);

% Normalize Data
y_data = normalize(intensity);

%% 
%Plot the XRD data

%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

X1 = angle;
Y1 = y_data;

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);

xlim(axes1, [ll ul]);
ylim(axes1, [0 1.1]);

box(axes1,'on');
hold(axes1,'on');

% Set font size and wieght
set(gca, 'fontsize', 26, 'fontweight', 'bold');

% Create ylabel
ylabel('Intensity (a.u.)', 'fontsize', 26);

% Create xlabel
xlabel('2\theta (degrees)','fontsize', 26);

% Create title
title('Sample XRD Pattern', 'fontsize', 32);

% Create plot
plot(X1,Y1, 'LineWidth', 1.5);

