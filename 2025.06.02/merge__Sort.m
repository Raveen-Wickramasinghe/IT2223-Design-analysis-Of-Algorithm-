array =[102,66,22,33,120];

disp('Original array :');
disp(array);

sortedArr = mergeSort(array);
disp('Sorted Array :');
disp(sortedArr);


function sortedArray = mergeSort(array)
    
    if length(array) <= 1
        sortedArray = array;
        return;
    end

    
    mid = floor(length(array)/2);
    left = array(1:mid);
    right = array(mid+1:end);

    
    sortedLeft = mergeSort(left);
    sortedRight = mergeSort(right);

   
    sortedArray = merge(sortedLeft, sortedRight);
end

function merged = merge(left, right)
    merged = [];
    i = 1; j = 1;

       while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            merged(end+1) = left(i);
            i = i + 1;
        else
            merged(end+1) = right(j);
            j = j + 1;
        end
    end

   
    if i <= length(left)
        merged = [merged, left(i:end)];
    end
    if j <= length(right)
        merged = [merged, right(j:end)];
    end
end
