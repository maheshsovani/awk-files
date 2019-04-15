#! /usr/bin/awk -f

BEGIN {
  FS="|"
  length_of_longest_movie=0
  name_of_long_movie=""
};

(length($1) == length_of_longest_movie) {
  name_of_long_movie=$1 "," name_of_long_movie

print name_of_long_movie
}

(length($1) > length_of_longest_movie) {
  length_of_longest_movie=length($1)
  name_of_long_movie=$1
};

END {
  print name_of_long_movie " " length_of_longest_movie
};
