% Dialog open box to select files for upload.
[fileName, filePath, filterIndex] = uigetfile({'*.csv'; '*.xls'; '*.xlsx'}, 'Select an excel file');

if isequal(filterIndex, 0)
    return;
else
    fullfileName = fullfile(filePath,fileName);
end

%%if(ext == '.xls')
    %num = xlsread(fullfileName)
%%else
    alldata = csvread(fullfileName,1,0);
    angle = alldata(:,1);
    intensity = alldata(:,2);
%%end

% Locate XRD Scan Range
ll = min(angle); 
ul = max(angle);

% Variable memory allocation 
min = min(intensity);
max = max(intensity);
diff = max - min;
N = length(intensity);
normIntensity = zeros([N 1]);

%%
% For loop to normalize X-ray difaction machine reported PSD/counts
for i = 1:N
    normIntensity(i) = (intensity(i) - min) ./ diff;
end

%%
clear min max N diff i;

%% 
%Plot the XRD data

%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data
X1 = angle;
Y1 = normIntensity;

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

