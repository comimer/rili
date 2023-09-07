package g2;

import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;

public class a
  implements InputFilter
{
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    if ((paramInt2 - paramInt1 == 1) && (paramCharSequence.charAt(paramInt1) == ' '))
    {
      paramInt1 = 0;
      while (paramInt3 > 0)
      {
        paramInt3--;
        paramInt2 = paramSpanned.charAt(paramInt3);
        if (paramInt2 == 44) {
          break;
        }
        if (paramInt2 != 46)
        {
          if (paramInt2 == 64)
          {
            if (paramInt1 == 0) {
              return null;
            }
            if ((paramCharSequence instanceof Spanned))
            {
              paramSpanned = new SpannableStringBuilder(",");
              paramSpanned.append(paramCharSequence);
              return paramSpanned;
            }
            return ", ";
          }
        }
        else {
          paramInt1 = 1;
        }
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g2.a
 * JD-Core Version:    0.7.0.1
 */