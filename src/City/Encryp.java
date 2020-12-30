package City;
public class Encryp{
 
public String EncryptMyPasword(String PlainText)
    {
        String EncryptedText = "";
        int ASCIIValue;
        char mychar;
        for(int i=0;i<PlainText.length();i++)
        {
        	char ch=PlainText.charAt(i);
            
            ASCIIValue = ch;
            if (ASCIIValue >= 65 && ASCIIValue <= 90)
            {
                ASCIIValue = 65 - ASCIIValue + 90;
            }
            else if (ASCIIValue >= 97 && ASCIIValue <= 122)
            {
                ASCIIValue = 97 - ASCIIValue + 90;
            }
            else if (ASCIIValue >= 48 && ASCIIValue <= 57)
            {
                ASCIIValue = 57 - ASCIIValue + 48;
            }
            mychar = (char)ASCIIValue;
            EncryptedText = EncryptedText + mychar;
        }
        return EncryptedText;
    }
}
