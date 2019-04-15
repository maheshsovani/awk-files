#! /usr/bin/awk -f
{
  text=$0"\n"text
}
END{
  print text
}
