function Even = O(k)
tic
Even = [];
for l = 1:k
    if (mod(l,2)==0)
        Even = [Even,l];
    end
end
toc
end
%1- Make a function that generates even numbers until 50,000. 
%Use a for loop and if condition to accomplish this.
