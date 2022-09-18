% x and y are your data, in rows of a matrix.
numDataSets = size(x, 1);
plotColors = jet(numDataSets);
for row = 1 : numDataSets
    % Extract this particular set of (x,y) coordinates from the whole data set.
    thisX = x(row, :);
    thisY = y(row, :);
    % Now plot just this one.
    plot(thisX, thisY, '-', 'Color', plotColors(row, :), 'LineWidth', 2);
    hold on;  % Leave plots up so we'll see all of them at the end.
end
grid on;
xlabel('x', 'FontSize', 20);
ylabel('y', 'FontSize', 20);
title('Demo by Image Analyst', 'FontSize', 20);