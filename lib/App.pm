package App;
use strict;
use warnings;

use Scalar::Util qw(looks_like_number);


our $VERSION = '0.01';

sub add {
    my ($x, $y) = @_;
    $x + $y;
}

sub multiply {
    my ($x, $y) = @_;
    $x * $y;
}

sub sum {
    my $sum = 0;
    for my $value (@_) {
        $sum += $value;
    }
    $sum;
}

sub fibonacci {
    my $n = shift;
    die "Not a number" if not looks_like_number($n);

    if ($n < 0) {
        die "Must provide a positive number";
    }

    if ($n != int($n)) {
        die "Must provide a whole number";
    }

    return 0 if $n == 0;
    if ($n == 1) {
        return 1;
    }
    return fibonacci($n-1) + fibonacci($n-2);
}


1;

=head1 NAME

App - Demo Perl package

=cut



