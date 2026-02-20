##!C:\xampp\perl\bin\perl.exe
use strict;
use warnings;
use CGI qw(:standard);

my @last_day = split(' ', cookie('last_day') || '');
my @weekdays = qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday);
my @months = qw(January February March April May June July August September October November December);

my $day_of_week = $weekdays[(localtime)[6]];
my $day_of_month = (localtime)[3];
my $month = $months[(localtime)[4]];

my @day_stuff = ($day_of_week, $day_of_month, $month);
my $day_cookie = cookie(-name => 'last_day', 
                        -value => join(' ', @day_stuff), 
                        -expires => '+5d');

print header(-cookie => $day_cookie);
print start_html('This is day_cookie.pl');

if (scalar(@last_day) == 0) {
    print "Welcome to our website for the first time!<br>";
} else {
    ($day_of_week, $day_of_month, $month) = @last_day;
    print "Welcome back! Your last visit was on $day_of_week $day_of_month $month.<br>";
}

print end_html();