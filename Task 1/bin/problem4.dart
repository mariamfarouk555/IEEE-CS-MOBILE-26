import 'dart:io';

void main() {
  stdout.write("Enter your Text :");
  String? text = stdin.readLineSync();
  String textlower = text!.toLowerCase();
  String reversed = textlower.split('').reversed.join('');
  if (textlower == reversed) {
    print("it is palindrome");
  } else {
    print("it is nonpalindrome");
  }
}
