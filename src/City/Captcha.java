package City;
import java.util.*;
public class Captcha{
public String generateCaptcha(){
Random random=new Random();
int length=6;
StringBuffer captchaString=new StringBuffer();
for(int i=0;i<length;i++){
int captchaNumber =Math.abs(random.nextInt())%60;
int charNumber = 0;
if(captchaNumber<26){
charNumber=65+captchaNumber;
}
else if(captchaNumber<52){
charNumber=97+(captchaNumber-26);
}
else{
charNumber=48+(captchaNumber-52);
}
captchaString.append((char)charNumber);
}
return captchaString.toString();
}
}