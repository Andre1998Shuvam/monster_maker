#!"D:\Xampp\perl\bin\perl.exe"

use DBI;
use CGI;
use Data::Dumper;
use CGI::Carp qw(fatalsToBrowser);
use JSON;
use XML::Simple;
use XML::LibXML;

$dbh = DBI->connect("DBI:mysql:monster:localhost", "root", "");

my $query = new CGI;
my $design_ID = $query->param('w');

if($design_ID != '-1')
{
    $sth = $dbh->prepare("SELECT Data from parts where Design_ID = '$design_ID' ");
    $result = $sth->execute();
    if($result >= 1)
    {
        $text = $sth->fetch();
        print $query->header;
        print @$text;
    }
    else
    {
        print $query->header;
        print "Not Found!";
    }
}
else
{
    @arr = ();
    $sth = $dbh->prepare("Select Design_ID from parts");
    $sth->execute();
    $sth->bind_columns(undef, \$design_ID,\$Data);
    while(  @row = $sth->fetchrow_array) {
	    push(@arr,$design_ID);
    }
    my $json_new = JSON->new;
    my $json = {id=>\@arr};
    my $json = $json_new->encode($json);
    print $query->header;
    print $json;   
}