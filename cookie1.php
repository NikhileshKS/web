<html>
<body bgcolor="aqua" text="red">
<?php
$duration = time() + 60*60*24*60;
$found = 0;
$visit = "lastvisit";

if (isset($_COOKIE[$visit])) {
    $found = 1;
    $lastvisit = $_COOKIE[$visit];
}
setcookie($visit, date("m/d/y-G:i:s"), $duration);
print "<center>";
if ($found == 1) {
    print "<h2>Welcome back, You have visited on $lastvisit</h2>";
} else {
    print "<h3>Welcome to this website</h3>";
}
print "</center>";
?>
</body>
</html>