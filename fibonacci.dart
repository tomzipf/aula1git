import 'dart:math';

void main() {
  
  String seqFibo = '';
  seqFibo = fibonacci (12);
  print (seqFibo);
  
      
}

String fibonacci (int vezes) {
  String seq = '0';
  if  (vezes < 2) {
      return seq;
  }
  seq = '0, 1';
  if  (vezes < 3) {
      return seq;
  }
  int anterior1 = 1;
  int anterior2 = 0;
  int soma = 0;
  for (var i=2;i<vezes;i++) {
       
      soma = anterior1 + anterior2;
      seq = seq + ", $soma";
      anterior2 = anterior1;
      anterior1 = soma;
  }
  return seq;
}
