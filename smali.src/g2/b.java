package g2;

import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.widget.AutoCompleteTextView.Validator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Deprecated
public class b
  implements AutoCompleteTextView.Validator
{
  private static final Pattern c = Pattern.compile("[^\\s@]+@([^\\s@\\.]+\\.)+[a-zA-z][a-zA-Z][a-zA-Z]*");
  private String a;
  private boolean b = false;
  
  public b(String paramString)
  {
    this.a = paramString;
  }
  
  private String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramString.length();
    for (int j = 0; j < i; j++)
    {
      char c1 = paramString.charAt(j);
      if ((c1 > ' ') && (c1 <= '~') && (c1 != '(') && (c1 != ')') && (c1 != '<') && (c1 != '>') && (c1 != '@') && (c1 != ',') && (c1 != ';') && (c1 != ':') && (c1 != '\\') && (c1 != '"') && (c1 != '[') && (c1 != ']')) {
        localStringBuilder.append(c1);
      }
    }
    return localStringBuilder.toString();
  }
  
  public void b(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public CharSequence fixText(CharSequence paramCharSequence)
  {
    if (TextUtils.getTrimmedLength(paramCharSequence) == 0) {
      return "";
    }
    Rfc822Token[] arrayOfRfc822Token = Rfc822Tokenizer.tokenize(paramCharSequence);
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < arrayOfRfc822Token.length; i++)
    {
      paramCharSequence = arrayOfRfc822Token[i].getAddress();
      if ((!this.b) || (isValid(paramCharSequence)))
      {
        int j = paramCharSequence.indexOf('@');
        Object localObject1;
        Object localObject2;
        if (j < 0)
        {
          if (this.a != null)
          {
            localObject1 = arrayOfRfc822Token[i];
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(a(paramCharSequence));
            ((StringBuilder)localObject2).append("@");
            ((StringBuilder)localObject2).append(this.a);
            ((Rfc822Token)localObject1).setAddress(((StringBuilder)localObject2).toString());
          }
        }
        else
        {
          String str = a(paramCharSequence.substring(0, j));
          if (TextUtils.isEmpty(str)) {
            continue;
          }
          paramCharSequence = a(paramCharSequence.substring(j + 1));
          if (paramCharSequence.length() == 0) {
            j = 1;
          } else {
            j = 0;
          }
          if ((j == 0) || (this.a != null))
          {
            localObject2 = arrayOfRfc822Token[i];
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append(str);
            ((StringBuilder)localObject1).append("@");
            if (j != 0) {
              paramCharSequence = this.a;
            }
            ((StringBuilder)localObject1).append(paramCharSequence);
            ((Rfc822Token)localObject2).setAddress(((StringBuilder)localObject1).toString());
          }
        }
        localStringBuilder.append(arrayOfRfc822Token[i].toString());
        if (i + 1 < arrayOfRfc822Token.length) {
          localStringBuilder.append(", ");
        }
      }
    }
    return localStringBuilder;
  }
  
  public boolean isValid(CharSequence paramCharSequence)
  {
    paramCharSequence = Rfc822Tokenizer.tokenize(paramCharSequence);
    int i = paramCharSequence.length;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i == 1)
    {
      bool2 = bool1;
      if (c.matcher(paramCharSequence[0].getAddress()).matches()) {
        bool2 = true;
      }
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g2.b
 * JD-Core Version:    0.7.0.1
 */