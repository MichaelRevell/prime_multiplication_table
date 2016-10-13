# prime_multiplication_table

Prints a formated multiplication table in standard output
for the first n number of prime numbers where n is the
first argument of the command.

`usage: /usr/local/bin/prime_multiplication_table [number]`

## Install

`gem build prime_multiplication_table.gemspec`

`install prime_multiplication_table-0.0.1.gem`


## Development & Testing

`bundle install`

`gem build prime_multiplication_table.gemspec`

`install prime_multiplication_table-0.0.1.gem`

`ruby ./test/prime_multiplication_table.rb`

## Examples

default is 10

```
$ prime_multiplication_table
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
```

```
$prime_multiplication_table 15
+----+----+-----+-----+-----+-----+-----+-----+-----+------+------+------+------+------+------+------+
|    | 2  | 3   | 5   | 7   | 11  | 13  | 17  | 19  | 23   | 29   | 31   | 37   | 41   | 43   | 47   |
| 2  | 4  | 6   | 10  | 14  | 22  | 26  | 34  | 38  | 46   | 58   | 62   | 74   | 82   | 86   | 94   |
| 3  | 6  | 9   | 15  | 21  | 33  | 39  | 51  | 57  | 69   | 87   | 93   | 111  | 123  | 129  | 141  |
| 5  | 10 | 15  | 25  | 35  | 55  | 65  | 85  | 95  | 115  | 145  | 155  | 185  | 205  | 215  | 235  |
| 7  | 14 | 21  | 35  | 49  | 77  | 91  | 119 | 133 | 161  | 203  | 217  | 259  | 287  | 301  | 329  |
| 11 | 22 | 33  | 55  | 77  | 121 | 143 | 187 | 209 | 253  | 319  | 341  | 407  | 451  | 473  | 517  |
| 13 | 26 | 39  | 65  | 91  | 143 | 169 | 221 | 247 | 299  | 377  | 403  | 481  | 533  | 559  | 611  |
| 17 | 34 | 51  | 85  | 119 | 187 | 221 | 289 | 323 | 391  | 493  | 527  | 629  | 697  | 731  | 799  |
| 19 | 38 | 57  | 95  | 133 | 209 | 247 | 323 | 361 | 437  | 551  | 589  | 703  | 779  | 817  | 893  |
| 23 | 46 | 69  | 115 | 161 | 253 | 299 | 391 | 437 | 529  | 667  | 713  | 851  | 943  | 989  | 1081 |
| 29 | 58 | 87  | 145 | 203 | 319 | 377 | 493 | 551 | 667  | 841  | 899  | 1073 | 1189 | 1247 | 1363 |
| 31 | 62 | 93  | 155 | 217 | 341 | 403 | 527 | 589 | 713  | 899  | 961  | 1147 | 1271 | 1333 | 1457 |
| 37 | 74 | 111 | 185 | 259 | 407 | 481 | 629 | 703 | 851  | 1073 | 1147 | 1369 | 1517 | 1591 | 1739 |
| 41 | 82 | 123 | 205 | 287 | 451 | 533 | 697 | 779 | 943  | 1189 | 1271 | 1517 | 1681 | 1763 | 1927 |
| 43 | 86 | 129 | 215 | 301 | 473 | 559 | 731 | 817 | 989  | 1247 | 1333 | 1591 | 1763 | 1849 | 2021 |
| 47 | 94 | 141 | 235 | 329 | 517 | 611 | 799 | 893 | 1081 | 1363 | 1457 | 1739 | 1927 | 2021 | 2209 |
+----+----+-----+-----+-----+-----+-----+-----+-----+------+------+------+------+------+------+------+
```
