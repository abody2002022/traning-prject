import 'dart:io';

void main() {
  //monthes

  print("entar your gpa");
  int gpa = int.parse(stdin.readLineSync());

  if(gpa>=50 && gpa<=60)
  print("c");
  else if(gpa>=60 && gpa<=65)
  print("b");
  else if(gpa>=65 && gpa<=70)
  print("b+");
  else if(gpa>=70 && gpa<=75)
  print("a");
  else if(gpa>=75 && gpa<=80)
  print("a+");


  
  
}
