## Results

Originally, I implemented the tri, as I had previously implemented a scramble with friends cheater
(albeit in Perl), and that is how I solved it, as the combinations of tiles was very large, and so
I figured the infrastructure to build the tri would be worth it.  I wasn't sure if it would be for
this, as the set is so much smaller with 7 tiles in any order than 16 tiles in multiple directions.

This is 1 run each with some tiles that I knew would make a few larger words.  It appears the tri
is worth building in all cases, even if the code is simpler for the simple scan.

| Tiles         | Scan Execution Time | Tri Execution Time |
|---------------|--------------------:|-------------------:|
| L A B C U S A |              4.419s |             3.801s |
| X J E L W D E |              4.427s |             3.794s |
| N D P U O C E |              4.468s |             3.811s |
