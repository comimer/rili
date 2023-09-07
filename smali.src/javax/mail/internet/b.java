package javax.mail.internet;

public class b
{
  private static final a h = new a(-4, null);
  private String a;
  private boolean b;
  private String c;
  private int d;
  private int e;
  private int f;
  private int g;
  
  public b(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, true);
  }
  
  public b(String paramString1, String paramString2, boolean paramBoolean)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    this.a = str;
    this.b = paramBoolean;
    this.c = paramString2;
    this.g = 0;
    this.f = 0;
    this.d = 0;
    this.e = str.length();
  }
  
  private a a(char paramChar, boolean paramBoolean)
    throws ParseException
  {
    int i = this.d;
    int k;
    String str1;
    for (int j = 0;; j = k)
    {
      k = this.d;
      if (k >= this.e) {
        break;
      }
      char c1 = this.a.charAt(k);
      if (c1 == '\\') {
        this.d += 1;
      }
      while (c1 == '\r')
      {
        k = 1;
        break;
      }
      k = j;
      if (c1 == paramChar)
      {
        paramChar = this.d + 1;
        this.d = paramChar;
        if (j != 0) {
          str1 = b(this.a, i, paramChar - '\001', paramBoolean);
        } else {
          str1 = this.a.substring(i, paramChar - '\001');
        }
        String str2 = str1;
        if (c1 != '"')
        {
          str2 = i(str1);
          this.d -= 1;
        }
        return new a(-2, str2);
      }
      this.d += 1;
    }
    if (paramChar != '"')
    {
      if (j != 0) {
        str1 = b(this.a, i, k, paramBoolean);
      } else {
        str1 = this.a.substring(i, k);
      }
      return new a(-2, i(str1));
    }
    throw new ParseException("Unbalanced quoted string");
  }
  
  private static String b(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = i;
    int k = paramInt1;
    paramInt1 = i;
    while (k < paramInt2)
    {
      char c1 = paramString.charAt(k);
      if ((c1 == '\n') && (paramInt1 != 0)) {}
      for (;;)
      {
        paramInt1 = 0;
        break label120;
        if (j != 0) {
          break;
        }
        if (c1 == '\\')
        {
          paramInt1 = 0;
          j = 1;
          break label120;
        }
        if (c1 == '\r')
        {
          paramInt1 = 1;
          break label120;
        }
        localStringBuilder.append(c1);
      }
      if (paramBoolean) {
        localStringBuilder.append('\\');
      }
      localStringBuilder.append(c1);
      paramInt1 = 0;
      j = paramInt1;
      label120:
      k++;
    }
    return localStringBuilder.toString();
  }
  
  private a c(char paramChar, boolean paramBoolean)
    throws ParseException
  {
    if (this.d >= this.e) {
      return h;
    }
    if (h() == -4) {
      return h;
    }
    char c1 = this.a.charAt(this.d);
    char c2 = '\000';
    char c3 = c1;
    while (c3 == '(')
    {
      int i = this.d + 1;
      this.d = i;
      for (char c4 = '\001'; c4 > 0; c4 = c1)
      {
        c1 = this.d;
        if (c1 >= this.e) {
          break;
        }
        int j = this.a.charAt(c1);
        if (j == 92) {
          this.d += 1;
        }
        char c5;
        while (j == 13)
        {
          c5 = '\001';
          c1 = c4;
          break;
        }
        if (j == 40)
        {
          c1 = c4 + '\001';
          c5 = c2;
        }
        else
        {
          c5 = c2;
          c1 = c4;
          if (j == 41)
          {
            c1 = c4 - '\001';
            c5 = c2;
          }
        }
        this.d += 1;
        c2 = c5;
      }
      if (c4 == 0)
      {
        if (!this.b)
        {
          String str;
          if (c2 != 0) {
            str = b(this.a, i, this.d - 1, paramBoolean);
          } else {
            str = this.a.substring(i, this.d - 1);
          }
          return new a(-3, str);
        }
        if (h() == -4) {
          return h;
        }
        c1 = this.a.charAt(this.d);
        c3 = c1;
      }
      else
      {
        throw new ParseException("Unbalanced comments");
      }
    }
    if (c3 == '"')
    {
      this.d += 1;
      return a('"', paramBoolean);
    }
    if ((c3 >= ' ') && (c3 < '') && (this.c.indexOf(c3) < 0))
    {
      c1 = this.d;
      for (;;)
      {
        c2 = this.d;
        if (c2 >= this.e) {
          break label474;
        }
        c2 = this.a.charAt(c2);
        if ((c2 < ' ') || (c2 >= '') || (c2 == '(') || (c2 == ' ') || (c2 == '"') || (this.c.indexOf(c2) >= 0)) {
          break;
        }
        this.d += 1;
      }
      if ((paramChar > 0) && (c2 != paramChar))
      {
        this.d = c1;
        return a(paramChar, paramBoolean);
      }
      label474:
      return new a(-1, this.a.substring(c1, this.d));
    }
    if ((paramChar > 0) && (c3 != paramChar)) {
      return a(paramChar, paramBoolean);
    }
    this.d += 1;
    return new a(c3, new String(new char[] { c3 }));
  }
  
  private int h()
  {
    for (;;)
    {
      int i = this.d;
      if (i >= this.e) {
        break;
      }
      i = this.a.charAt(i);
      if ((i != 32) && (i != 9) && (i != 13) && (i != 10)) {
        return this.d;
      }
      this.d += 1;
    }
    return -4;
  }
  
  private static String i(String paramString)
  {
    for (int i = paramString.length() - 1; i >= 0; i--)
    {
      int j = paramString.charAt(i);
      if ((j != 32) && (j != 9) && (j != 13) && (j != 10)) {
        break;
      }
    }
    if (i <= 0) {
      return "";
    }
    return paramString.substring(0, i + 1);
  }
  
  public String d()
  {
    if (this.f >= this.a.length()) {
      return null;
    }
    return this.a.substring(this.f);
  }
  
  public a e()
    throws ParseException
  {
    return g('\000', false);
  }
  
  public a f(char paramChar)
    throws ParseException
  {
    return g(paramChar, false);
  }
  
  public a g(char paramChar, boolean paramBoolean)
    throws ParseException
  {
    this.d = this.f;
    a locala = c(paramChar, paramBoolean);
    int i = this.d;
    this.g = i;
    this.f = i;
    return locala;
  }
  
  public static class a
  {
    private int a;
    private String b;
    
    public a(int paramInt, String paramString)
    {
      this.a = paramInt;
      this.b = paramString;
    }
    
    public int a()
    {
      return this.a;
    }
    
    public String b()
    {
      return this.b;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.b
 * JD-Core Version:    0.7.0.1
 */