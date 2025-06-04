fprintf("Original Array: ");
disp(arr);
arr = [74, 2, 36, 89, 5, 12];

function sorted = insertionSort(arr)
    for i = 2:length(arr)
        key = arr(i);
        j = i - 1;
        
        while j >= 1 && arr(j) > key
            arr(j + 1) = arr(j);
            j = j - 1;
        end
        arr(j + 1) = key;
    end
    sorted = arr;
end

sortedArr = insertionSort(arr);
fprintf("Sorted Array: ");
disp(sortedArr);
