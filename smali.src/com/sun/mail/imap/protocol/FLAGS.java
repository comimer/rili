package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.c;
import javax.mail.Flags;
import javax.mail.Flags.a;

public class FLAGS
  extends Flags
  implements h
{
  static final char[] name = { 70, 76, 65, 71, 83 };
  private static final long serialVersionUID = 439049847053756670L;
  public int msgno;
  
  public FLAGS(f paramf)
    throws ParsingException
  {
    this.msgno = paramf.i();
    paramf.g();
    String[] arrayOfString = paramf.j();
    if (arrayOfString != null) {
      for (int i = 0; i < arrayOfString.length; i++)
      {
        paramf = arrayOfString[i];
        if ((paramf.length() >= 2) && (paramf.charAt(0) == '\\'))
        {
          int j = Character.toUpperCase(paramf.charAt(1));
          if (j != 42)
          {
            if (j != 65)
            {
              if (j != 68)
              {
                if (j != 70)
                {
                  if (j != 82)
                  {
                    if (j != 83) {
                      add(paramf);
                    } else {
                      add(Flags.a.g);
                    }
                  }
                  else {
                    add(Flags.a.f);
                  }
                }
                else {
                  add(Flags.a.e);
                }
              }
              else if (paramf.length() >= 3)
              {
                j = paramf.charAt(2);
                if ((j != 101) && (j != 69))
                {
                  if ((j == 114) || (j == 82)) {
                    add(Flags.a.d);
                  }
                }
                else {
                  add(Flags.a.c);
                }
              }
              else
              {
                add(paramf);
              }
            }
            else {
              add(Flags.a.b);
            }
          }
          else {
            add(Flags.a.h);
          }
        }
        else
        {
          add(paramf);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.protocol.FLAGS
 * JD-Core Version:    0.7.0.1
 */