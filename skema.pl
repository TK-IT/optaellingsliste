#!/usr/bin/perl -w
#
# File: uger.pl
# Time-stamp: <2014-09-22 17:42:10 (neic)>
# Author: Steffen Videbæk Petersen

use utf8;
use strict;
use DateTime;

# Det forventes at der i det følge sættes en dato, der er en mandag!
my $dt = DateTime->new(
    locale => "da_DK",
    year => 2014,
    month => 9,
    day => 22
);

my $datoformat = "%{day}. %B %Y";

# Hvor mange uger skal genereres?
for (1..61) {
    printf "\\skema{%s-%s}{%s}{%s}\n",
	$dt->week,
	$dt->strftime($datoformat),
	$dt->add(days => 6)->strftime($datoformat);
    $dt->add(days => 1);
}
