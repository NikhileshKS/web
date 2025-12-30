#!"C:\xampp\perl\bin\perl.exe"  
use CGI ':standard';  
print "Content-Type: text/html\n\n";  
print "number of visitors:";  
open(file,'<count.txt');  
$count=<file>;  
$count++;  
print"$count";  
open(file,'>count.txt');  
print file "$count";  
close(file);  
exit(0);