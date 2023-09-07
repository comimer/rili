package androidx.core.text;

import java.util.Locale;

public final class d
{
  public static final c a = new e(null, false);
  public static final c b = new e(null, true);
  public static final c c;
  public static final c d;
  public static final c e = new e(a.b, false);
  public static final c f = f.b;
  
  static
  {
    b localb = b.a;
    c = new e(localb, false);
    d = new e(localb, true);
  }
  
  static int a(int paramInt)
  {
    if (paramInt != 0)
    {
      if ((paramInt != 1) && (paramInt != 2)) {
        return 2;
      }
      return 0;
    }
    return 1;
  }
  
  static int b(int paramInt)
  {
    if (paramInt != 0)
    {
      if ((paramInt != 1) && (paramInt != 2)) {}
      switch (paramInt)
      {
      default: 
        return 2;
      case 16: 
      case 17: 
        return 0;
      }
    }
    return 1;
  }
  
  private static class a
    implements d.c
  {
    static final a b = new a(true);
    private final boolean a;
    
    private a(boolean paramBoolean)
    {
      this.a = paramBoolean;
    }
    
    public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      int i = 0;
      for (int j = paramInt1; j < paramInt2 + paramInt1; j++)
      {
        int k = d.a(Character.getDirectionality(paramCharSequence.charAt(j)));
        if (k != 0)
        {
          if (k != 1) {
            continue;
          }
          if (!this.a) {
            return 1;
          }
        }
        else if (this.a)
        {
          return 0;
        }
        i = 1;
      }
      if (i != 0) {
        return this.a;
      }
      return 2;
    }
  }
  
  private static class b
    implements d.c
  {
    static final b a = new b();
    
    public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      int i = 2;
      for (int j = paramInt1; (j < paramInt2 + paramInt1) && (i == 2); j++) {
        i = d.b(Character.getDirectionality(paramCharSequence.charAt(j)));
      }
      return i;
    }
  }
  
  private static abstract interface c
  {
    public abstract int a(CharSequence paramCharSequence, int paramInt1, int paramInt2);
  }
  
  private static abstract class d
    implements c
  {
    private final d.c a;
    
    d(d.c paramc)
    {
      this.a = paramc;
    }
    
    private boolean b(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      paramInt1 = this.a.a(paramCharSequence, paramInt1, paramInt2);
      if (paramInt1 != 0)
      {
        if (paramInt1 != 1) {
          return a();
        }
        return false;
      }
      return true;
    }
    
    protected abstract boolean a();
    
    public boolean isRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      if ((paramCharSequence != null) && (paramInt1 >= 0) && (paramInt2 >= 0) && (paramCharSequence.length() - paramInt2 >= paramInt1))
      {
        if (this.a == null) {
          return a();
        }
        return b(paramCharSequence, paramInt1, paramInt2);
      }
      throw new IllegalArgumentException();
    }
  }
  
  private static class e
    extends d.d
  {
    private final boolean b;
    
    e(d.c paramc, boolean paramBoolean)
    {
      super();
      this.b = paramBoolean;
    }
    
    protected boolean a()
    {
      return this.b;
    }
  }
  
  private static class f
    extends d.d
  {
    static final f b = new f();
    
    f()
    {
      super();
    }
    
    protected boolean a()
    {
      int i = e.a(Locale.getDefault());
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.text.d
 * JD-Core Version:    0.7.0.1
 */