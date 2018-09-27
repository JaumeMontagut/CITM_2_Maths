function y = minehunting(I,J,M,N)
    %%y: mine matris we will return
    %%I: row position of the mines
    %%J: column position of the mines
    %%M: number of rows
    %%N: number of columns
    y = zeros(M,N);
    iSize = length(I);
    jSize = length(J);
    mineMatrix = zeros(M, N);
    for row = 1:1:iSize
        for column = 1:1:jSize
            %%Put mine
            mineMatrix(row, column) = -1;
            %%Put clues
            %%- Top left
            if(row ~= 1 && column ~= 1)
                if(y(row-1, column -1) ~= -1)
                    y(row-1,column-1) =  y(row-1,column-1) + 1;
                end
            end
            %%- Top
            if(row ~= 1)
                if(y(row-1, column) ~= -1)
                    y(row-1,column) =  y(row-1,column) + 1;
                end
            end
            %%- Top right
            if(row ~= 1 && column ~= jSize)
                if(y(row-1, column+1) ~= -1)
                    y(row-1,column+1) =  y(row-1,column+1) + 1;
                end
            end
            %%- Right
            if(column ~= jSize)
                if(y(row, column+1) ~= -1)
                    y(row,column+1) =  y(row,column+1) + 1;
                end
            end
            %%- Bottom right
            if(row ~= iSize && column ~= jSize)
                if(y(row+1, column+1) ~= -1)
                    y(row+1,column+1) =  y(row+1,column+1) +1;
                end
            end
            %%- Bottom
            if(row ~= iSize)
                if(y(row+1, column) ~= -1)
                    y(row+1,column) =  y(row+1,column) + 1;
                end
            end
            %%- Bottom left
            if(row ~= iSize && column ~= 1)
                if(y(row+1, column -1) ~= -1)
                    y(row+1,column-1) =  y(row+1,column-1) + 1;
                end
            end
            %%- Left
            if(column ~= 1)
                if(y(row, column-1) ~= -1)
                    y(row,column-1) =  y(row,column-1) + 1;
                end
            end
        end
    end
end