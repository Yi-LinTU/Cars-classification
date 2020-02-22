clc;
clear;


myFolder = 'D:\研所課程\機器學習\HW4\crop_cars_train\';

if ~isdir(myFolder)
    errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
    uiwait(warndlg(errorMessage));
    return;
end

for class = 1:196
    class_path = num2str(class);
    classFolder = strcat(myFolder, class_path)
    filePattern = fullfile(classFolder, '*.jpg');
    jpegFiles = dir(filePattern);

    for k = 1:length(jpegFiles)

        baseFileName = jpegFiles(k).name;
        fullFileName = fullfile(classFolder, baseFileName);
        expandFileName = fullfile(classFolder, baseFileName);

        fprintf('(%3d/%3d) Now reading %s\n', k, length(jpegFiles), fullFileName);
        imageArray = imread(fullFileName);
        
%         newLRImage = fliplr(imageArray);
%         
%         newFileName = strrep(expandFileName, '.jpg', '_lr.jpg');
%         imwrite(newLRImage, newFileName);
        
        newUDImage = flipud(imageArray);
        
        newFileName = strrep(expandFileName, '.jpg', '_ud.jpg');
        imwrite(newUDImage, newFileName);

    end
end
