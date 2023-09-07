package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

public final class a
{
  static final c d;
  private static final String e;
  private static final String f;
  static final a g;
  static final a h;
  private final boolean a;
  private final int b;
  private final c c;
  
  static
  {
    c localc = d.c;
    d = localc;
    e = Character.toString('‎');
    f = Character.toString('‏');
    g = new a(false, 2, localc);
    h = new a(true, 2, localc);
  }
  
  a(boolean paramBoolean, int paramInt, c paramc)
  {
    this.a = paramBoolean;
    this.b = paramInt;
    this.c = paramc;
  }
  
  private static int a(CharSequence paramCharSequence)
  {
    return new b(paramCharSequence, false).d();
  }
  
  private static int b(CharSequence paramCharSequence)
  {
    return new b(paramCharSequence, false).e();
  }
  
  public static a c()
  {
    return new a().a();
  }
  
  static boolean e(Locale paramLocale)
  {
    int i = e.a(paramLocale);
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  private String f(CharSequence paramCharSequence, c paramc)
  {
    boolean bool = paramc.isRtl(paramCharSequence, 0, paramCharSequence.length());
    if ((!this.a) && ((bool) || (b(paramCharSequence) == 1))) {
      return e;
    }
    if ((this.a) && ((!bool) || (b(paramCharSequence) == -1))) {
      return f;
    }
    return "";
  }
  
  private String g(CharSequence paramCharSequence, c paramc)
  {
    boolean bool = paramc.isRtl(paramCharSequence, 0, paramCharSequence.length());
    if ((!this.a) && ((bool) || (a(paramCharSequence) == 1))) {
      return e;
    }
    if ((this.a) && ((!bool) || (a(paramCharSequence) == -1))) {
      return f;
    }
    return "";
  }
  
  public boolean d()
  {
    boolean bool;
    if ((this.b & 0x2) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public CharSequence h(CharSequence paramCharSequence)
  {
    return i(paramCharSequence, this.c, true);
  }
  
  public CharSequence i(CharSequence paramCharSequence, c paramc, boolean paramBoolean)
  {
    if (paramCharSequence == null) {
      return null;
    }
    boolean bool = paramc.isRtl(paramCharSequence, 0, paramCharSequence.length());
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    if ((d()) && (paramBoolean))
    {
      if (bool) {
        paramc = d.b;
      } else {
        paramc = d.a;
      }
      localSpannableStringBuilder.append(g(paramCharSequence, paramc));
    }
    if (bool != this.a)
    {
      int i;
      int j;
      if (bool)
      {
        i = 8235;
        j = i;
      }
      else
      {
        i = 8234;
        j = i;
      }
      localSpannableStringBuilder.append(j);
      localSpannableStringBuilder.append(paramCharSequence);
      localSpannableStringBuilder.append('‬');
    }
    else
    {
      localSpannableStringBuilder.append(paramCharSequence);
    }
    if (paramBoolean)
    {
      if (bool) {
        paramc = d.b;
      } else {
        paramc = d.a;
      }
      localSpannableStringBuilder.append(f(paramCharSequence, paramc));
    }
    return localSpannableStringBuilder;
  }
  
  public String j(String paramString)
  {
    return k(paramString, this.c, true);
  }
  
  public String k(String paramString, c paramc, boolean paramBoolean)
  {
    if (paramString == null) {
      return null;
    }
    return i(paramString, paramc, paramBoolean).toString();
  }
  
  public static final class a
  {
    private boolean a;
    private int b;
    private c c;
    
    public a()
    {
      c(a.e(Locale.getDefault()));
    }
    
    private static a b(boolean paramBoolean)
    {
      a locala;
      if (paramBoolean) {
        locala = a.h;
      } else {
        locala = a.g;
      }
      return locala;
    }
    
    private void c(boolean paramBoolean)
    {
      this.a = paramBoolean;
      this.c = a.d;
      this.b = 2;
    }
    
    public a a()
    {
      if ((this.b == 2) && (this.c == a.d)) {
        return b(this.a);
      }
      return new a(this.a, this.b, this.c);
    }
  }
  
  private static class b
  {
    private static final byte[] f = new byte[1792];
    private final CharSequence a;
    private final boolean b;
    private final int c;
    private int d;
    private char e;
    
    static
    {
      for (int i = 0; i < 1792; i++) {
        f[i] = Character.getDirectionality(i);
      }
    }
    
    b(CharSequence paramCharSequence, boolean paramBoolean)
    {
      this.a = paramCharSequence;
      this.b = paramBoolean;
      this.c = paramCharSequence.length();
    }
    
    private static byte c(char paramChar)
    {
      byte b1;
      byte b2;
      if (paramChar < '܀')
      {
        b1 = f[paramChar];
        b2 = b1;
      }
      else
      {
        b1 = Character.getDirectionality(paramChar);
        b2 = b1;
      }
      return b2;
    }
    
    private byte f()
    {
      int i = this.d;
      int j;
      do
      {
        j = this.d;
        if (j <= 0) {
          break;
        }
        CharSequence localCharSequence = this.a;
        j--;
        this.d = j;
        j = localCharSequence.charAt(j);
        this.e = ((char)j);
        if (j == 38) {
          return 12;
        }
      } while (j != 59);
      this.d = i;
      this.e = ((char)59);
      return 13;
    }
    
    private byte g()
    {
      int i;
      do
      {
        i = this.d;
        if (i >= this.c) {
          break;
        }
        CharSequence localCharSequence = this.a;
        this.d = (i + 1);
        i = localCharSequence.charAt(i);
        this.e = ((char)i);
      } while (i != 59);
      return 12;
    }
    
    private byte h()
    {
      int i = this.d;
      int j;
      CharSequence localCharSequence;
      do
      {
        j = this.d;
        if (j <= 0) {
          break;
        }
        localCharSequence = this.a;
        j--;
        this.d = j;
        j = localCharSequence.charAt(j);
        this.e = ((char)j);
        if (j == 60) {
          return 12;
        }
        if (j == 62) {
          break;
        }
      } while ((j != 34) && (j != 39));
      for (;;)
      {
        int k = this.d;
        if (k <= 0) {
          break;
        }
        localCharSequence = this.a;
        k--;
        this.d = k;
        k = localCharSequence.charAt(k);
        this.e = ((char)k);
        if (k == j) {
          break;
        }
      }
      this.d = i;
      this.e = ((char)62);
      return 13;
    }
    
    private byte i()
    {
      int i = this.d;
      int j;
      CharSequence localCharSequence;
      do
      {
        j = this.d;
        if (j >= this.c) {
          break;
        }
        localCharSequence = this.a;
        this.d = (j + 1);
        j = localCharSequence.charAt(j);
        this.e = ((char)j);
        if (j == 62) {
          return 12;
        }
      } while ((j != 34) && (j != 39));
      for (;;)
      {
        int k = this.d;
        if (k >= this.c) {
          break;
        }
        localCharSequence = this.a;
        this.d = (k + 1);
        k = localCharSequence.charAt(k);
        this.e = ((char)k);
        if (k == j) {
          break;
        }
      }
      this.d = i;
      this.e = ((char)60);
      return 13;
    }
    
    byte a()
    {
      char c1 = this.a.charAt(this.d - 1);
      this.e = c1;
      int i;
      if (Character.isLowSurrogate(c1))
      {
        i = Character.codePointBefore(this.a, this.d);
        this.d -= Character.charCount(i);
        return Character.getDirectionality(i);
      }
      this.d -= 1;
      byte b1 = c(this.e);
      byte b2 = b1;
      if (this.b)
      {
        i = this.e;
        if (i == 62)
        {
          i = h();
          b2 = i;
        }
        else
        {
          b2 = b1;
          if (i == 59)
          {
            i = f();
            b2 = i;
          }
        }
      }
      return b2;
    }
    
    byte b()
    {
      char c1 = this.a.charAt(this.d);
      this.e = c1;
      int i;
      if (Character.isHighSurrogate(c1))
      {
        i = Character.codePointAt(this.a, this.d);
        this.d += Character.charCount(i);
        return Character.getDirectionality(i);
      }
      this.d += 1;
      byte b1 = c(this.e);
      byte b2 = b1;
      if (this.b)
      {
        i = this.e;
        if (i == 60)
        {
          i = i();
          b2 = i;
        }
        else
        {
          b2 = b1;
          if (i == 38)
          {
            i = g();
            b2 = i;
          }
        }
      }
      return b2;
    }
    
    int d()
    {
      this.d = 0;
      int i = 0;
      int j = i;
      int k = j;
      while ((this.d < this.c) && (i == 0))
      {
        int m = b();
        if (m != 0)
        {
          if ((m != 1) && (m != 2))
          {
            if (m == 9) {}
          }
          else {
            switch (m)
            {
            default: 
              break;
            case 18: 
              k--;
              j = 0;
              break;
            case 16: 
            case 17: 
              k++;
              j = 1;
              break;
            case 14: 
            case 15: 
              k++;
              j = -1;
              continue;
              if (k != 0) {
                break label131;
              }
              return 1;
            }
          }
        }
        else
        {
          if (k == 0) {
            return -1;
          }
          label131:
          i = k;
        }
      }
      if (i == 0) {
        return 0;
      }
      if (j != 0) {
        return j;
      }
      while (this.d > 0) {
        switch (a())
        {
        default: 
          break;
        case 18: 
          k++;
          break;
        case 16: 
        case 17: 
          if (i == k) {
            return 1;
          }
        case 14: 
        case 15: 
          if (i == k) {
            return -1;
          }
          k--;
        }
      }
      return 0;
    }
    
    int e()
    {
      throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: fail exe a8 = a0\r\n\tat com.googlecode.dex2jar.ir.ts.an.BaseAnalyze.exec(BaseAnalyze.java:92)\r\n\tat com.googlecode.dex2jar.ir.ts.an.BaseAnalyze.exec(BaseAnalyze.java:31)\r\n\tat com.googlecode.dex2jar.ir.ts.Cfg.dfs(Cfg.java:255)\r\n\tat com.googlecode.dex2jar.ir.ts.an.BaseAnalyze.analyze0(BaseAnalyze.java:75)\r\n\tat com.googlecode.dex2jar.ir.ts.an.BaseAnalyze.analyze(BaseAnalyze.java:69)\r\n\tat com.googlecode.dex2jar.ir.ts.Ir2JRegAssignTransformer.transform(Ir2JRegAssignTransformer.java:182)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:167)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:442)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:40)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:132)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:575)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:434)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:450)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:175)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:275)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:112)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:290)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:33)\r\nCaused by: java.lang.NullPointerException: Cannot assign field \"used\" because \"aValue\" is null\r\n\tat com.googlecode.dex2jar.ir.ts.an.SimpleLiveAnalyze.onUseLocal(SimpleLiveAnalyze.java:89)\r\n\tat com.googlecode.dex2jar.ir.ts.an.SimpleLiveAnalyze.onUseLocal(SimpleLiveAnalyze.java:27)\r\n\tat com.googlecode.dex2jar.ir.ts.an.BaseAnalyze.onUse(BaseAnalyze.java:166)\r\n\tat com.googlecode.dex2jar.ir.ts.an.BaseAnalyze.onUse(BaseAnalyze.java:31)\r\n\tat com.googlecode.dex2jar.ir.ts.Cfg.travel(Cfg.java:331)\r\n\tat com.googlecode.dex2jar.ir.ts.Cfg.travel(Cfg.java:387)\r\n\tat com.googlecode.dex2jar.ir.ts.an.BaseAnalyze.exec(BaseAnalyze.java:90)\r\n\t... 17 more\r\n");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.text.a
 * JD-Core Version:    0.7.0.1
 */