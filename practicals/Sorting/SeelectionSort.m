function sorted = selectionSort(arr)
    n = length(arr); 
    for i = 1 : n-1
        minIdx = i;
        for j = i+1 : n
            if arr(j) < arr(minIdx)
                minIdx = j; 
            end
        end

        if minIdx ~= i
            temp = arr(i);
            arr(i) = arr(minIdx);
            arr(minIdx) = temp;
        end
    end
    sorted = arr; 
end

fprintf("Original Array: ");
arr = [7, 4, 10, 8, 3, 1];
disp(arr);


fprintf("Sorted Array: ");
sortedArr = selectionSort(arr);
disp(sortedArr);
