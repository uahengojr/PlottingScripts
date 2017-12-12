

filepath = '/Users/uahengojr/Downloads/Angle/';

filename = {
    'testFile.csv'
};

for i = 1:length(filename)
    
    rawData = importdata([filepath, filename{i}]);
    
    % Extract the wavelegth(s) from imported data
    wavelength = rawData.data(:,1);
    
    angleStr = regexpi(rawData.textdata{1}, ',,', 'split');
    isaBaseline = ~cellfun(@isempty, regexpi(angleStr, 'baseline'));
    angleStr = angleStr(~isaBaseline);
    
    % Extract the file baseline(s)
    baseline = rawData.data(:, isaBaseline);
    
    % Extracting detector angle(s)
    sampleAngleString = regexpi(angleStr, '_S(\(?[0-9]+.?[0-9]*\)?)_', 'tokens');
    detectorAngleString = regexpi(angleStr, '_D(\(?[0-9]+.?[0-9]*\)?)', 'tokens');
    
    sampleAngle = zeros(1,length(angleStr));
    detectorAngle = zeros(1,length(angleStr));
    
    for j = 1:length(angleStr)
        if sampleAngleString{j}{1}{1}(1) == '('
            negNumStr = regexpi(sampleAngleString{j}{1}{1}, '\(([0-9]+.?[0-9]*)\)','tokens');
           % disp(negNumStr); % debugging purposes
            sampleAngle(j) = -1 * str2num(sampleAngleString{1}{1});
        else
            sampleAngle(j) = str2num(sampleAngleString{j}{1}{1});
           % disp(sampleAngle(j)); % debugging purposes
        end
        
        if detectorAngleString{j}{1}{1} == '('
            negNumStr = regexpi(detectorAngleString{j}{1}{1}, '\(([0-9]+.?[0-9]*)\)','tokens');
           % disp(negNumStr); % debugging purposes
            detectorAngle(j) = -1 * str2num(negNumStr{1}{1});
        else
            detectorAngle(j) = str2num(detectorAngleString{j}{1}{1});
            disp(detectorAngle(j)); % debugging purposes
        end
        
    end
    
    % Extracting intensity value
    
    %{
        For all rows (:) extract %T (intensity), starting from the second 
        column, and every second column thereafter.
    %}
    
    intensity = rawData.data(:, 2:2:end);
    
    intensity = intensity(:, ~isaBaseline); % What is going on here?

    %Transpose Intensity
     transposedIntensity = transpose(intensity);
    
    %sort wavelength, detectorAngle, and intensity
    %detectorAngle = mod(detectorAngle,360)-180; % What is this mod-function doing?
    
    %[wavelength, sortByWavelength] = sort(wavelength, 'ascend');
    %[detectorAngle, sortByDetectorAngle] = sort(detectorAngle, 'ascend');
    
end