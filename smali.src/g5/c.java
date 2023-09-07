package g5;

public class c
{
  private String a;
  private int b;
  private int c;
  private int d;
  private String e;
  private boolean f;
  private char g;
  
  public c(String paramString)
  {
    this.a = paramString;
    this.b = 0;
    this.c = paramString.length();
    this.d = 1;
    this.e = "";
    this.f = false;
    this.g = ((char)59);
  }
  
  private static String a(String paramString)
  {
    int i = paramString.length();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.ensureCapacity(i);
    for (int j = 0; j < i; j++)
    {
      char c1 = paramString.charAt(j);
      if (c1 != '\\')
      {
        localStringBuffer.append(c1);
      }
      else if (j < i - 1)
      {
        j++;
        localStringBuffer.append(paramString.charAt(j));
      }
      else
      {
        localStringBuffer.append(c1);
      }
    }
    return localStringBuffer.toString();
  }
  
  private static boolean c(char paramChar)
  {
    return Character.isISOControl(paramChar);
  }
  
  private static boolean d(char paramChar)
  {
    if ((paramChar != '"') && (paramChar != ',') && (paramChar != '/') && (paramChar != '(') && (paramChar != ')')) {}
    boolean bool;
    switch (paramChar)
    {
    default: 
      switch (paramChar)
      {
      default: 
        bool = false;
      }
      break;
    case ':': 
    case ';': 
    case '<': 
    case '=': 
    case '>': 
    case '?': 
    case '@': 
      bool = true;
    }
    return bool;
  }
  
  private static boolean e(char paramChar)
  {
    boolean bool;
    if ((!d(paramChar)) && (!c(paramChar)) && (!f(paramChar))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean f(char paramChar)
  {
    return Character.isWhitespace(paramChar);
  }
  
  public static String g(int paramInt)
  {
    String str;
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 5)
          {
            if (paramInt != 47)
            {
              if (paramInt != 59)
              {
                if (paramInt != 61) {
                  str = "really unknown";
                } else {
                  str = "'='";
                }
              }
              else {
                str = "';'";
              }
            }
            else {
              str = "'/'";
            }
          }
          else {
            str = "EOI";
          }
        }
        else {
          str = "string";
        }
      }
      else {
        str = "start";
      }
    }
    else {
      str = "unknown";
    }
    return str;
  }
  
  private void i()
  {
    int i = this.b;
    int j = 0;
    int k;
    for (;;)
    {
      k = this.b;
      if ((k >= this.c) || (j != 0)) {
        break;
      }
      if (this.a.charAt(k) != this.g) {
        this.b += 1;
      } else {
        j = 1;
      }
    }
    this.d = 2;
    this.e = a(this.a.substring(i, k));
  }
  
  private void j()
  {
    int i = this.b;
    for (;;)
    {
      int j = this.b;
      if ((j >= this.c) || (!e(this.a.charAt(j)))) {
        break;
      }
      this.b += 1;
    }
    this.d = 2;
    this.e = this.a.substring(i, this.b);
  }
  
  public String b()
  {
    return this.e;
  }
  
  public int h()
  {
    if (this.b < this.c)
    {
      for (;;)
      {
        i = this.b;
        if ((i >= this.c) || (!f(this.a.charAt(i)))) {
          break;
        }
        this.b += 1;
      }
      int i = this.b;
      if (i < this.c)
      {
        char c1 = this.a.charAt(i);
        if (this.f)
        {
          if ((c1 != ';') && (c1 != '='))
          {
            i();
          }
          else
          {
            this.d = c1;
            this.e = new Character(c1).toString();
            this.b += 1;
          }
        }
        else if (e(c1))
        {
          j();
        }
        else if ((c1 != '/') && (c1 != ';') && (c1 != '='))
        {
          this.d = 0;
          this.e = new Character(c1).toString();
          this.b += 1;
        }
        else
        {
          this.d = c1;
          this.e = new Character(c1).toString();
          this.b += 1;
        }
      }
      else
      {
        this.d = 5;
        this.e = null;
      }
    }
    else
    {
      this.d = 5;
      this.e = null;
    }
    return this.d;
  }
  
  public void k(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g5.c
 * JD-Core Version:    0.7.0.1
 */