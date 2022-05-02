//Rogelio C. Suganob Jr. BSCpE - 3B

import 'dart:io';
import 'dart:core';

var morse = [".-", "-...", "-.-.", "-..", ".", "..-.",
             "--.", "....", "..", ".---", "-.-", ".-..",
             "--", "-.", "---", ".--.", "--.-", ".-.",
             "...", "-", "..-", "...-", ".--", "-..-",
             "-.--", "--.."];
var alphabet = ["A", "B", "C", "D", "E", "F",
                "G", "H", "I", "J", "K", "L",
                "M", "N", "O", "P", "Q", "R",
                "S", "T", "U", "V", "W", "X",
                "Y", "Z"];

void main(){
    var str = stdin.readLineSync();
    morse_decode(str, "");
}

bool is_valid(var str){
    for(var i=0;i<26;i++)
      if(str==morse[i])
        return true;
    return false;
}

void morse_decode(var toDecode, var decoded){
  if(toDecode.length == 0)
    print(decoded);
  else{
    for(int i=0;i<26;i++){
      if(toDecode.startsWith(morse[i])){
        var currentDecoded = decoded + alphabet[i];
        var currentToDecode = toDecode.substring(morse[i].length);
        morse_decode(currentToDecode, currentDecoded);
      }
    }
  }
}
