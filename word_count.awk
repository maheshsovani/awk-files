#! usr/bin/awk -f

BEGIN{
  FS="|"
  line_no=0
  char_no=0
};
{
  line_no++
  char_no=length($0)}
{
  print line_no  ":" char_no
}
