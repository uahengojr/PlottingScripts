filepath = '/Users/uahengojr/Desktop/AGS Data/Jan 12/8YSZ/Analyzed Data/';


% List all .csv files to be imported.
filename =  {
    %'8YSZ #127_01_anlayzed.csv'
    %'8YSZ #127_02_analyzed.csv'
    %'8YSZ #127_03_analyzed.csv'
    %'8YSZ #127_05_analyzed.csv'
    %'8YSZ #127_06_analyzed.csv'
    %'8YSZ #127_07_analyzed.csv'
    %'8YSZ #127_08_analyzed.csv'
    %'8YSZ #127_13_analyzed.csv'
    '8YSZ #127_14_analyzed.csv'
    '8YSZ #127_15_analyzed.csv'
    '8YSZ #127_16_analyzed.csv'
    };

% Allocate variable space
grainSpace = cell(size(filename));
grainData = zeros(size(filename));

for i = 1:length(filename)
    
    grainSizeData = importdata([filepath, filename{i}]);
    
    grainLength16 = grainSizeData.data(:, 3);
    grainSpace{i} = grainSizeData.data(:, 3);
     
end
%{

totalGrains_8YSZ = [
    grainLength1;
    grainLength2;
    grainLength3;
    %grainLength4;
    grainLength5;
    grainLength6;
    grainLength7;
    grainLength8;
    %grainLength9;
    %grainLength10;
    %grainLength11;
    %grainLength12;
    grainLength13;
    grainLength14;
    grainLength15;
    grainLength16;
    %grainLength17;
    %grainLength18;
];

%}



