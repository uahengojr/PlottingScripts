filepath = '/Users/uahengojr/Downloads/Angle/';
filename = {
     'Angle Resolved Measurement on a Blank [350_to_2500nm]SlitSizes3_SlitReduced Run1.csv'
%{
            'Angle Resolved Measurement on a Blank [350_to_2500nm]SlitSizes1_SlitReduced Run1.csv'
            'Angle Resolved Measurement on a Blank [350_to_2500nm]SlitSizes2_SlitReduced Run1.csv'
            'Angle Resolved Measurement on a Blank [350_to_2500nm]SlitSizes3_SlitReduced Run1.csv'
            'Angle Resolved Measurement on a Blank [350_to_2500nm]SlitSizes4_SlitReduced Run1.csv'
%}            
};

for i = 1:length(filename)
    
    % variables
    %    wavelength - wavelength range
    %    Wavelength - ndgrid wavelength range (use for surf plotting)
    %    detectorAngle - detector angle
    %    DetectorAngle - ndgrid detector angle (use for surf plotting)
    %    sampleAnlge - sample angle
    %    baseline - intensity of all baselines (each column is a baseline; use 'baseline(end)' to access most recent baseline)
    %    intensity - intensity of experiments in units [% transmission] (each column is an intensity vs wavelength experiment, different columns for different detector angles)    
    
    % import data and extract wavelength, sampleAngle, detectorAngle, baseline, and intensity 
    rawData = importdata([filepath,filename{i}]);
    
    wavelength = rawData.data(:,1);
    
    angleStr = regexpi(rawData.textdata{1},',,','split');
    isaBaseline = ~cellfun(@isempty,regexpi(angleStr, 'baseline'));
    angleStr = angleStr(~isaBaseline);
    
    baseline = rawData.data(:,isaBaseline);
    
    sampleAngleStr = regexpi(angleStr,'_S(\(?[0-9]+.?[0-9]*\)?)_','tokens');
    detectorAngleStr = regexpi(angleStr,'_D(\(?[0-9]+.?[0-9]*\)?)','tokens');
    sampleAngle = zeros(1,length(angleStr));
    detectorAngle = zeros(1,length(angleStr));
    for j=1:length(angleStr)
        if sampleAngleStr{j}{1}{1}(1) == '('
            negNumberStr = regexpi(sampleAngleStr{j}{1}{1},'\(([0-9]+.?[0-9]*)\)','tokens');
            sampleAngle(j) = -1*str2num(negNumberStr{1}{1});
        else
            sampleAngle(j) = str2num(sampleAngleStr{j}{1}{1});
        end
        if detectorAngleStr{j}{1}{1}(1) == '('
            negNumberStr = regexpi(detectorAngleStr{j}{1}{1},'\(([0-9]+.?[0-9]*)\)','tokens');
            detectorAngle(j) = -1*str2num(negNumberStr{1}{1});
        else
            detectorAngle(j) = str2num(detectorAngleStr{j}{1}{1});
        end
    end
    
    intensity = rawData.data(:,2:2:end); 
    
    intensity = intensity(:,~isaBaseline);
    
    %sort wavelength, detectorAngle, and intensity
    detectorAngle = mod(detectorAngle,360)-180;
    [wavelength, sortByWavelength] = sort(wavelength, 'ascend');
    [detectorAngle, sortByDetectorAngle] = sort(detectorAngle, 'ascend');
    [SortByWavelength, SortByDetectorAngle] = ndgrid(sortByWavelength,sortByDetectorAngle);
    [Wavelength, DetectorAngle] = ndgrid(wavelength, detectorAngle);
    intensity = intensity(SortByWavelength+(SortByDetectorAngle-1).*length(wavelength));
    
    figure(i)
    surf(Wavelength,DetectorAngle,intensity, 'LineStyle','none');
    title(['scattering field - ',filename{i}]);
    xlabel('wavelength [nm]');
    ylabel('detector-OA angle [°]');
    zlabel('intensity [% transmission]');
    
    %e.g. to store wavelength for each file use: wavelength_{i} = wavelength
end
