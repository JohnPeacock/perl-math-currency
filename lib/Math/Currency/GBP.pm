#!/usr/bin/perl -w
package Math::Currency::GBP;

use Exporter;
use Math::Currency qw($LC_MONETARY $FORMAT);
use vars qw($VERSION @ISA);

$VERSION = 0.01;
@ISA     = qw(Exporter Math::Currency);

$LC_MONETARY->{'GBP'} = {
    INT_CURR_SYMBOL   => 'GBP ',
    CURRENCY_SYMBOL   => '�',
    MON_DECIMAL_POINT => '.',
    MON_THOUSANDS_SEP => ',',
    MON_GROUPING      => '',
    POSITIVE_SIGN     => '',
    NEGATIVE_SIGN     => '-',
    INT_FRAC_DIGITS   => '2',
    FRAC_DIGITS       => '2',
    P_CS_PRECEDES     => '1',
    P_SEP_BY_SPACE    => '0',
    N_CS_PRECEDES     => '1',
    N_SEP_BY_SPACE    => '0',
    P_SIGN_POSN       => '1',
    N_SIGN_POSN       => '1',
};

1;
