% Dialog open box to select files for upload.
[fileName, filePath, filterIndex] = uigetfile({'*.xls; *.xlsx','Excel files';'*.csv','CSV files';}, 'Select a file');

if isequal(filterIndex, 0)
    disp('User pressed "Cancel"');
    return;
else
    fullfileName = fullfile(filePath,fileName);
    [pathstr, name, ext] = fileparts(fileName);
end

% Load data into workspace
if strcmp(ext, '.xls')
    %data  = xlsread(fullfileName, 'E:E');
    %size = 
elseif strcmp(ext, '.xlsx')
    data10 = xlsread(fullfileName, 'E:E');
     %{ 
     if()
         data = [data; data];
     else
         data = xlsread(fullfileName, 'E:E');
     end
     %}
else
    %Else its a .csv file
    data  = csvread(fullfileName, 'E:E');
    %csvread(fullfileName, 1,0);
end

 %%xlswrite()
 %HistFit(x1,y1,x2,y2);