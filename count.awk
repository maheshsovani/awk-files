#! /usr/bin/awk -f

BEGIN{

  FS="|"
  no_of_lines=no_of_lines+1
}

END{
  print no_of_lines
}
