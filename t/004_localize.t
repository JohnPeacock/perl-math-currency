#!/usr/bin/perl -w
use Test::More tests => 16;
use Math::Currency;

# monetary_locale testing
use POSIX qw( locale_h );
my $locale = setlocale( LC_ALL, "en_GB" );
my $format = {};
Math::Currency->localize( \$format );

SKIP: {

    # NOTE: once Test::More::skip works, replace this with skip()
    skip ("No locale support", 16) unless Math::Currency->localize();
    pass("Re-initialized locale with en_GB");

    foreach my $param qw(
      INT_CURR_SYMBOL CURRENCY_SYMBOL MON_DECIMAL_POINT
      MON_THOUSANDS_SEP MON_GROUPING POSITIVE_SIGN
      NEGATIVE_SIGN INT_FRAC_DIGITS FRAC_DIGITS
      P_CS_PRECEDES P_SEP_BY_SPACE N_CS_PRECEDES
      N_SEP_BY_SPACE P_SIGN_POSN N_SIGN_POSN
      )    # hardcoded keys to be sure they are all there
      {
        ok( defined $format->{$param},
            sprintf( " \t%-20s = '%s'", $param, $format->{$param} ) );
      }

}
