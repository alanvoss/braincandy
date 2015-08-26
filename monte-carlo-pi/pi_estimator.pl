for (1..1000000) {
  $hit++ if sqrt((rand(2)-1)**2 + (rand(2)-1)**2) <= 1;
  $all++;
}

print $hit / $all * 4, "\n";
