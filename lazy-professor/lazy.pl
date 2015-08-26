open $fh, '<', './test.txt';

my @answers;
while (<$fh>) {
  chomp;
  my $i;
  $answers[$i++]{$_}++ for split ''
}

for (@answers) {
  my $most_frequent = [];
  while (my ($answer, $count) = each %$_) {
    $most_frequent ||= [$answer, $count];
    $most_frequent = [$answer, $count] if $count > $most_frequent->[1]
  }
  print $most_frequent->[0]
}

print "\n"
