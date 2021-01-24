function [final2DMatrix] = aa1881GameOfLife(matrix, iterations) %function takes in a matrix and the number of iterations as an input and returns a new matrix as an output
matrixSize = size(matrix);%finds the size of the matrix given as the input
newMatrix = zeros(matrixSize(1), matrixSize(2));%makes a new matrix full of zeros in the same size as the input matrix)
for loops = 1:iterations %goes through the function as many times the iterations are given
    for rows = 2:matrixSize(1)%goes through the number of times the rows have every other turn
        for columns = 2:matrixSize(2)%goes through number of every other rows
            if matrix(rows,columns) == 1%conditions to go through if in case the number at that spot on the matrix is 1
                newMatrix(rows,columns) =1;
            elseif matrix(rows,columns) ~= 1%conditions to go through if in case the number at that spot on the matrix is 0
                if (matrix(rows+1,columns)==1) && (matrix(rows-1,columns)==1)&& 
                    newMatrix(rows,columns) = 1;
                if (matrix(rows,columns+1)==1) && (matrix(rows,columns-1)==1)
                    newMatrix(rows,columns) = 1;
                    else
                        newMatrix(rows,columns) = 0; %if even after the if statements, then it is 0
                end
                end
            end
        end
    end
end
final2DMatrix = newMatrix; %set the new matrix as the output
imagesc(final2DMatrix);%display the matrix as a picture
 pause(0.5);%pauses before going throung the next itiration.

                    
                    
            