#! /usr/bin/perl
my ($src) = @ARGV[0];
#print "$src\n";
## if Argument has more than one valu 
if ($#ARGV>=1 || $#ARGV<0){
print" please enter one argument only.\n";

} else {
$found=0;
if (!open PASSWD, "/etc/passwd.bak"){
die "how did you get dogged in ?($!)";
}
while (<PASSWD>)
{
if ($_ =~ /$src/){
chomp $_;

($username,$num1,$num2,$num3,$description,$home,$shell) = split(':', $_);
 
 print "User ID:    $num2\n";
 print "Home directory: $home\n";

$found=1;
}
}
 if ($found==0){
print"User: username does not exist.\n";
}
  }
close PASSWD;








