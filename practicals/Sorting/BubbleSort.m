fprintf("Original array: ");
arr = [64, 34, 25, 12, 22, 1, 90];

disp(arr);

tic;
function sorted = bubbleSort(arr)
    len = length(arr);
    for i = 1 : len - 1
        for j = 1 : len - i
            if arr(j) > arr(j+1)
                temp = arr(j);
                arr(j) = arr(j + 1);
                arr(j + 1) = temp;
            end
        end
    end
    sorted = arr;
end
elapsedTime = toc;
sortedArray = bubbleSort(arr);
fprintf("\nSorted Array: ");
disp(sortedArray);
fprintf("\nTime: %f\n", elapsedTime);
