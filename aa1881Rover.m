function [direction, takeSample, takePhoto] = aa1881Rover (waterData, elevationData, cWater, cElevation)

%find max value in the array to compare
waterMax = max(waterData);
elevationMax = max(elevationData);

if (waterMax > cWater) && (waterMax > 700)
    takePhoto = 0;
    takeSample = 0;
    if waterMax == waterData(1) %identifying index of the array
        direction = 'L';
    elseif waterMax == waterData(2)
        direction = 'F';
    elseif waterMax == waterData(3)
        direction = 'R';
    end
elseif (cWater > waterMax ) && (cWater > 1000)
    takeSample = 1;
elseif (elevationMax > cElevation) 
    takePhoto = 0;
    takeSample = 0;
    if elevationMax == elevationData(1)
        direction = 'L';
    elseif elevationMax == elevationData(2)
        direction = 'F';
    elseif elevationMax == elevationData(3)
        direction = 'R';
    end
elseif cElevation > elevationMax
    takeSample = 0;
    takePhoto = 1;
    direction = 'F';
end
end