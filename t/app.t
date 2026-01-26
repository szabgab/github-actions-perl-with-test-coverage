use strict;
use warnings;
use Test::More;

use App;

is App::add(2, 3), 5;

#is App::multiply(2, 3), 6;
#

eval {
    App::fibonacci("four");
};
like $@, qr/^Not a number /;


eval {
    App::fibonacci(-1);
};
like $@, qr/^Must provide a positive number /;

eval {
    App::fibonacci(0.2);
};
like $@, qr/^Must provide a whole number /;

is App::fibonacci(0), 0;
is App::fibonacci(1), 1;
is App::fibonacci(2), 1;
is App::fibonacci(3), 2;


done_testing;


