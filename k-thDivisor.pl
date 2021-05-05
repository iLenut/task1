use v5.20;

my $line = <>;
my @firstArray, my @secondArray;
my $j = 0;
chomp($line);
my ($n, $k) = split(' ', $line);
my $counter = 0;
foreach (1 .. sqrt($n)) {
  if ($n % $_ == 0) {
    push (@firstArray, $_);
    if ($_ != $n / $_) {
      push (@secondArray, ($n / $_));
      $j++;
    }
    $j++;
  }
}
if ($j >= $k) {
  if ($k > scalar @firstArray) {
    say ($secondArray[$j - $k]);
  } else {
    say ($firstArray[$k - 1]);
  }
} else {
  say ("-1");
}
