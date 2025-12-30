#!C:\xampp\perl\bin\perl.exe 
use strict; 
use warnings; 
use CGI qw(:standard); 
my @msgs = ("Welcome", "Have a nice day", "Hi", "How are you"); 
my $len = scalar @msgs; 
my $n = int(rand($len)); 
if (param()) { 
print header(); 
print start_html(-bgcolor => "pink"); 
my $name = param("name"); 
print b("Hello $name! $msgs[$n]"), br(); 
print start_form(); 
print submit(-value => "Back"); 
print end_form(); 
print end_html(); 
} else { 
print header(); 
print start_html(-bgcolor => "pink", -text => "blue"); 
print start_form(); 
print b("Enter user name "); 
print textfield(-name => "name"), br(); 
print submit(-value => "submit"); 
print end_form(); 
print end_html(); 
} 
