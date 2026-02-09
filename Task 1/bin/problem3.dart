//String Operations
void main() {
  String s1 = "Hello";
  String s2 = "World";
  //String s3 = s1 + "  " + s2;
  String s3 = "$s1  $s2";
  var length = s3.length;
  print("Concatenated:$s3");
  print("Length:$length");
  print("Substring :${s3.substring(1, 5)}");
  print("lowercase: ${s3.toLowerCase()}");
  print("UPPERCASE: ${s3.toUpperCase()}");
}
//------------------------------------------------------------------