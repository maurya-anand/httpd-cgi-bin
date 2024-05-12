#!/usr/bin/perl
use DBI;
use CGI qw(:standard);

print header;
print start_html('Test MySQL Connection');

my $driver   = "mysql";
my $database = $ENV{"MYSQL_DATABASE"};
my $hostname = $ENV{"MYSQL_HOST"};

my $userid   = $ENV{"MYSQL_USER"};
my $password = $ENV{"MYSQL_PASSWORD"};

my $dsn = "DBI:$driver:database=$database;host=$hostname";

my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 })
            or die "Failed to connect to database: $DBI::errstr";

print h2("Successfully connected to the database.");

my $sth = $dbh->prepare("SELECT customer_id, customer_name FROM customer");
$sth->execute();

print h2("Data from the customer table:");

print "<table>\n";
print "<tr><th>Customer ID</th><th>Customer Name</th></tr>\n";
while (my @row = $sth->fetchrow_array) {
   print "<tr><td>$row[0]</td><td>$row[1]</td></tr>\n";
}
print "</table>\n";

$sth->finish();
$dbh->disconnect();

print '<p><a href="/">Localhost</a></p>';


print end_html;