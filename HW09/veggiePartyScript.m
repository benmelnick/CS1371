% Test Cases:
[sorted1, ingredients1] = veggieParty(dishCA1, 'Yelp', 'ingredients.txt');
[sorted1_soln, ingredients1_soln] = veggieParty_soln(dishCA1, 'Yelp', 'ingredients.txt');

% 	sorted1 =>  
%     'Dish'                        'Michelin'    'Yelp'
%     'stuffing'                    [      82]    [  66]
%     'guacamole'                   [      73]    [  52]
%     'butternut squash ravioli'    [      82]    [  15]
% 	ingredients1 =>     'onions'    'celery'    'bread crumbs'
% 
[sorted2, ingredients2] = veggieParty(dishCA2, 'Mom', 'ingredients.txt');
[sorted2_soln, ingredients2_soln] = veggieParty_soln(dishCA2, 'Mom', 'ingredients.txt');

% 	sorted2 =>  
%     'Dish'              'Thrillist'    'Mom'    'Cafeteria Lady'
%     'giadiniera'        [       45]    [100]    [            15]
%     'mac and cheese'    [       51]    [ 87]    [            66]
%     'gnocchi'           [       64]    [ 64]    [            61]
%     'orzo salad'        [       96]    [ 36]    [            39]
%     'stuffing'          [       86]    [  7]    [            23]
% 	ingredients2 =>     'peppers'    'jalapeno'    'celery'    'carrot'    'onion'
% 
[sorted3, ingredients3] = veggieParty(dishCA3, 'Gordon Ramsay', 'ingredients.txt');
[sorted3_soln, ingredients3_soln] = veggieParty_soln(dishCA3, 'Gordon Ramsay', 'ingredients.txt');

% 	sorted3 =>  
%   Columns 1 through 3                                     
%     'Dish'                        'Thrillist'    'Grandma'
%     'margarita pizza'             [       71]    [     36]
%     'lentil shepherd's pie'       [       56]    [     69]
%     'butternut squash ravioli'    [       18]    [     34]
%     'broccoli penne'              [       63]    [     84]
%     'quinoa bowl'                 [       99]    [     60]
%     'asparagus carbonara'         [       26]    [     99]
%     'baked tomatoes'              [       92]    [     88]
%     'vegetarian posole'           [       22]    [     41]
%     'stuffing'                    [       20]    [     40]
%     'veggie stir-fry'             [       32]    [     30]
%     'ratatouille'                 [       32]    [      8]
%     'mac and cheese'              [       90]    [     41]
%     'mushroom bolognese'          [       71]    [     63]
%     'egplant parmesan'            [       32]    [     69]
%     'vegetable paella'            [        8]    [     76]
%     'chips and salsa'             [       17]    [     26]
%     'guacamole'                   [       22]    [     17]
%     'orzo salad'                  [       17]    [     54]
%     'tofu tacos'                  [       56]    [     16]
%     'vegetable risotto'           [       19]    [     39]
%   Columns 4 through 6                                     
%     'Gordon Ramsay'    'Yelp'    'Michelin'               
%     [           96]    [  16]    [      93]               
%     [           94]    [  96]    [      80]               
%     [           79]    [  75]    [      23]               
%     [           77]    [   4]    [      26]               
%     [           76]    [  81]    [      76]               
%     [           75]    [  10]    [      42]               
%     [           66]    [  71]    [      17]               
%     [           56]    [  22]    [      40]               
%     [           46]    [  11]    [      53]               
%     [           45]    [  55]    [      58]               
%     [           43]    [  69]    [      33]               
%     [           42]    [  83]    [      19]               
%     [           41]    [  18]    [      26]               
%     [           36]    [  47]    [      55]               
%     [           32]    [  52]    [      94]               
%     [           30]    [  75]    [      13]               
%     [           29]    [  90]    [      66]               
%     [           25]    [  68]    [      45]               
%     [           13]    [  17]    [       3]               
%     [            3]    [  67]    [      93]               
% 	ingredients3 =>     'tomatoes'    'pizza dough'    'garlic'    'basil'    'mozzarella'

match1a = isequal(sorted1,sorted1_soln);
match1b = isequal(ingredients1,ingredients1_soln);

match2a = isequal(sorted2,sorted2_soln);
match2b = isequal(ingredients2,ingredients2_soln);

match3a = isequal(sorted3,sorted3_soln);
match3b = isequal(ingredients3,ingredients3_soln);