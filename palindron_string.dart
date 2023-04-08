class char{
  final String myString;
  final  List<String> characters=[];
  bool palindrome=true;


  char(this.myString){
    String c;
    int i=0;
    int lngth=myString.length;
    for(i=0;i<lngth;i++){
      c=myString.substring(i,i+1);
      characters.add(c);
    }
    int l=(myString.length/2).toInt();
    for(i=0;i<l;i++)
      {
        if(characters[i] !=characters[lngth-i-1]){
          palindrome=false;
        }
      }
  }

  List<String> get chary => characters;
  bool get isPalindrome=>palindrome;

}

void main(List<String> arguments){

  List<String> phrases=['civic', 'radar','Hello', 'level', 'rotor','tattarrattat', 'kayak', 'madam'];


  List<char> myChars=phrases.map((e) => char(e)).toList();
 // myChars.map((e) => print(e.chary));
  myChars.forEach((element) {print('${element.chary} and Palindrome state is ${element.palindrome}');});
  //int t=(5/2).toInt();
  //print(t);
  //print(myChars[0].chary);




}
