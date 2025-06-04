array = [5,2,8,1,7];

disp('Original Array :')
disp(array);

sortedArr = quickSort(array);
disp('Quick Sorted Array :')
disp(sortedArr);




function sortedArray = quickSort(array)
    if length(array) <= 1
        sortedArray = array;
        return;
    end

    pivot = array(end);  % Choose the last element as pivot
    left = array(array < pivot);
    middle = array(array == pivot);
    right = array(array > pivot);

    sortedArray = [quickSort(left), middle, quickSort(right)];
end
