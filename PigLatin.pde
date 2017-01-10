import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	int c = 0;
  	String vowel = "aeiou";
  
  	for(int j = 0; j<sWord.length(); j++){//int j = 0; j<word.length(); j++
    	for(int i = 0; i<vowel.length(); i++){
      //System.out.println(word.charAt(j)+", "+vowel.charAt(i));
      		if(sWord.charAt(j)==vowel.charAt(i)){
        		c++;
        		return(j);
      		}
    	}
    	if(c>0){
      		break;
    	}
  	}
  	return(-1);
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	
	if(findFirstVowel(sWord) > 0)
	{
		String a = sWord.substring(findFirstVowel(sWord),sWord.length());
		String b = sWord.substring(0,findFirstVowel(sWord));
		return ( a + b + "ay");
	}
	else if(findFirstVowel(sWord)==0)
	{
		return(sWord+"way");
	}
	else if(findFirstVowel(sWord)==-1){
		return sWord + "ay";
	}else if(sWord.substring(0,2).equals("qu")){
		
	}

	return "Hi";
}
