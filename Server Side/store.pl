#!"D:\Xampp\perl\bin\perl.exe"

#print "Content-type: text/html\n\n";
use DBI;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use JSON;
use XML::Simple;
use Data::Dumper;

$dbh = DBI->connect("DBI:mysql:monster:localhost", "root", "");
my $cgi = new CGI;
my $data = $cgi->param("r");
my $xml = XMLin($data,KeepRoot => 1, ForceArray => 1);
my $id = $xml->{monster}[0]{design_id};
$xml = XMLout($xml, RootName => undef);

$sth = $dbh->prepare("Select * from parts where Design_ID = '$id'");
$rows = $sth->execute();
if ($rows >= 1)
{
	# $sth = $dbh->prepare("UPDATE parts set Data =  '$xml' where Design_ID = '$id'");
	# $sth->execute(); 
	print $cgi->header;
	# print "XML Data updated successfully!";
	print "Oops! Design ID Already Present! Provide a different design id";	
}
else
{
	$sth = $dbh->prepare("INSERT into parts values('$id', '$xml')");
	$sth->execute(); 
	print $cgi->header;
	print "XML Data inserted successfully!";
}

$sth->finish();
