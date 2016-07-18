#!/usr/bin/perl

use 5.010;
use strict;
use utf8;

binmode STDIN, ':utf8';
binmode STDOUT, ':utf8';

while (<>) {
    s/(\p{Han})([a-zA-Z0-9@#&=\[\$\%\^\-\+\(\/\\])/\1 \2/g;
    s/([a-zA-Z0-9!#&;=\]\,\.\:\?\$\%\^\-\+\)\/\\])\p{Han}/\1 \2/g;
    print;
    next;
}
