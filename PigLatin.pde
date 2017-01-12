import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	String hymns[] = loadStrings("LowellHymn.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
	for (int j = 0 ; j < hymns.length; j++) {
	  System.out.println(hymn(hymns[j]));
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
  	String vowel = new String("aeiou");
  
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
	
	if(sWord.substring(0,2).equals("qu")){
		return(sWord.substring(2,sWord.length())+sWord.substring(0,2)+"ay");
	}
	else if(findFirstVowel(sWord)==0)
	{
		return(sWord+"way");
	}
	else if(findFirstVowel(sWord)==-1){
		return sWord + "ay";
	}else if(findFirstVowel(sWord) > 0)
	{
		String a = new String(sWord.substring(findFirstVowel(sWord),sWord.length()));
		String b = new String(sWord.substring(0,findFirstVowel(sWord)));
		return ( a + b + "ay");
	}
	return "Hi";
}

public String hymn(String l){
	ArrayList<Integer> index = new ArrayList<Integer>();
	ArrayList<String> word = new ArrayList<String>();
	for(int i = 0; i<l.length(); i++){
		index.add(0,0);
		if(l.substring(i,i+1).equals(" ")||l.substring(i,i+1).equals(",")||l.substring(i,i+1).equals(".")||l.substring(i,i+1).equals(".")){
			index.add(i);
		}
	}
	for(int i = 0; i<l.length(); i++){
		for(int j = 0; j<index.size()-1; j++){
			word.add(0,(l.substring(index.get(0),index.get(1))));
			word.add(l.substring(index.get(j)+1,index.get(j+1)));
			
		}
	}
	System.out.println(word);
	return("Hi");
}