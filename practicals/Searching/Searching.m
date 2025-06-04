% create array with 1000 numbers
% use tic/toc to measure time for;
    % Linear search
    % Binary Search
% compare results

arr = 1:1000;
found = false;
n = length(arr);
target = 998;

% Binary Search
fprintf("Binary Search\n");
function find = binarySearch(arr, target)
    left = 1;
    right = length(arr);

    while left <= right
        mid = floor((left+right) / 2);

        if( arr(mid) == target)
            find = mid;
            return;
        elseif arr(mid) < target
            left = mid + 1;
        else 
            right = mid - 1;
        end
    end
end

tic;
find = binarySearch(arr, target);
elapsedTime1 = toc;

if find == -1
    fprintf('Target Not Found');
else
    fprintf('Target Found At Index %d', find);
end

fprintf('\nTime: %f s\n', elapsedTime1);


% Linear Search
fprintf("\nLinear Search");
tic;
for i = 1:n
    if (arr(i) == target)
        found = true;
        fprintf('\nTarget Found at index %d', i);
        break;
    end
end

if(found == false)
    fprintf('\nTarget not found');
end


elapsedTime2 = toc;
fprintf('\nTime: %f s\n ', elapsedTime2);

