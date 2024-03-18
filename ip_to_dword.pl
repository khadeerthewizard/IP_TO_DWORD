#!/usr/bin/perl

use Socket;
use Math::BigInt;

my $quiet, $host, @ip;

$logo ="";                            

print $logo;


if($#ARGV < 0){
    print "$0";
    print "Usage: $0 [-q \ --quiet] host \n";
    exit;
}

if($ARGV[0] =~ /-q|--quiet/){
    $quiet=1;
    $name = $ARGV[1];
}
else{
    $name = $ARGV[0];
}

@host = gethostbyname($name);
$foo = $host[4];

for $n(1..4){
    $ip[$n] = ord(substr($foo, ($n-1), 1));
}
if($quiet !=1){
    print "$name = $ip[1].$ip[2].$ip[3].$ip[4] = ";
}
for $n(1..4){
    $ip[$n] = ($ip[$n] *(2**((3-($n-1))*8)));
}
print ($ip[1]+$ip[2]+$ip[3]+$ip[4]);
print "\n";
exit;