#!C:\xampp\perl\bin\perl.exe
use strict;
use warnings;
use CGI qw(:standard);
my $ampm;
my ($sec,$min,$hour) = localtime();
print header;
print start_html(-bgcolor=>"orange");
print h1("THE DIGITAL CLOCK");
print "<META HTTP-EQUIV='Refresh' CONTENT='1'>";
if ($hour >= 12) {
 $ampm = "PM";
 $hour -= 12 if $hour > 12;
} else {
 $ampm = "AM";
}
print h2("$hour:$min:$sec $ampm");
print end_html();