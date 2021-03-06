% Dialog open box to select files for upload.
[fileName, filePath, filterIndex] = uigetfile({'*.csv; *.xls; *.xlsx', 'excel or csv files only'}, 'Select a file');

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
    xdata = data(:, 1);
    ydata = data(:, 2);
    
elseif strcmp(ext, '.xlsx')

    % Do something..
    
else
    % Its a CSV file
    data = csvread(fullfileName,1,0);
    xdata = data(:,1);
    ydata = data(:,2);
end

% Locate XRD Scan Range
ll = min(xdata); 
ul = max(ydata);
%%
%Send to normalization function

% Normalize Data
ydata = normalize(intensity);

%% 
%Plot the XRD data

%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

X1 = xdata;
Y1 = ydata;

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

%{
%User defined 'type'
switch type

    case 'XRD'
        x_axis = '2\theta (degrees)';
        y_axis = 'Intensity (a.u.)';
        title = 'Sample XRD Pattern';

    case 'Transmission'
        x_axis = 'Wavelength (nm)';
        y_axis = '%T';
        title = 'Sample Transmission Profile';

    case 'Reflection'
        x_axis = '2\theta (degrees)';
        y_axis = '%R';
        title = 'Sample Reflection Profile';

    otherwise
        warning('Dude! Help me; Help you!');
end
%}