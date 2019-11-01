function crimeStats(yearsToSearch,category,style)

% Write a function that takes in the years and the category you have considered to plot. 
% You will need to read the file ? FBIDataSet.xlsx?  to get the data to plot. 
% The first column of the spreadsheet contains the years, and the first row contains 
%     the headers. 
% Find the column that contains the given category (second input), and plot each 
%     data point from this column for each corresponding year (first input).

% The plot should be labelled on both axes. 
% The x-axis will always have the label ? Years ?. 
% The y-axis should be labelled with the category name. 
% The title of the graph have a title in the following format:
%             ? Plot of <Category> vs Years? 
% The third input tells you the line type, plot symbol and color for the graph. 
% If style is ? Type 1 ?, the graph should have stars connected by a blue dotted line. 
% If style is ? Type 2 ?, the graph should have circles connected with a 
%     black solid line. 
% If style if ? Type 3 ?, the graph should have diamonds connected by a red dashed line.

yearsToSearch = sort(yearsToSearch);

indx = 0; %column indx to plot data from
[num,txt,raw] = xlsread('FBIDataSet.xlsx'); %txt is a cell array
for i = 1 : length(txt) %iterate through titles to find which column to take data from
    cat = txt{i};
    if strcmp(cat,category)
        indx = i;
    end
end  

stats = num(:,indx); %gets stats for that category
years = num(:,1); %years is always first column
minYear = min(years); %find lowest year number - used to later index correct values
indx = yearsToSearch - minYear + 1;
data = stats(indx);

type = '';
if strcmp(style,'Type 1')
    type = ':*b';
elseif strcmp(style,'Type 2')
    type = '-ok';
elseif strcmp(style,'Type 3')
    type = 'd--r';
end

plot(yearsToSearch,data,type);

title(['Plot of ',category,' vs Years']);
xlabel('Years');
ylabel(category);


end