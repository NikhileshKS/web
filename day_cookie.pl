#!C:\xampp\perl\bin\perl.exe
use CGI qw(:standard);

@last_day = cookie('last_day');
@weekdays = qw(Sun Mon Tue Wed Thu Fri Sat);
@months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
@time = localtime();
$day_of_week = $weekdays[$time[6]];
$month = $months[$time[4]];
$day_of_month = $time[3];
@day_stuff = ($day_of_week, $month, $day_of_month);
$day_cookie = cookie(-name => 'last_day', 
                        -value => join(' ', @day_stuff), 
                        -expires => '+5d');

print header(-cookie => $day_cookie);
print start_html('This is day_cookie2.pl');

if (scalar @last_day == 0) {
    print "Welcome to you on your first visit to our site<br>";
} else {
    ($day_of_week, $month, $day_of_month) = @last_day;
    print "Welcome back!<br/> Your last visit on ", $day_of_week, " ", $month, " ", $day_of_month, "<br>";
}

print end_html();