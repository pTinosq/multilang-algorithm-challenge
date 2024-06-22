ENTRY_DATA = [9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2];

N = length(ENTRY_DATA);

for i = 1:N
    for j = 1:N-1
        if (ENTRY_DATA(j) > ENTRY_DATA(j+1)) 
            temp = ENTRY_DATA(j);
            ENTRY_DATA(j) = ENTRY_DATA(j+1);
            ENTRY_DATA(j+1) = temp;
        end
    end
end

fprintf('SORTED: [%s]\n', join(string(ENTRY_DATA), ','));