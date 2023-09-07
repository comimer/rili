package com.xiaomi.teg.config.c;

public enum e$a
{
  int f;
  
  static
  {
    a locala1 = new a("VERBOSE", 0, 0);
    a = locala1;
    a locala2 = new a("INFO", 1, 1);
    b = locala2;
    a locala3 = new a("DEBUG", 2, 2);
    c = locala3;
    a locala4 = new a("WARNING", 3, 3);
    d = locala4;
    a locala5 = new a("ERROR", 4, 4);
    e = locala5;
    g = new a[] { locala1, locala2, locala3, locala4, locala5 };
  }
  
  private e$a(int paramInt)
  {
    this.f = paramInt;
  }
  
  public static a a(String paramString)
  {
    return (a)Enum.valueOf(a.class, paramString);
  }
  
  public static a[] a()
  {
    return (a[])g.clone();
  }
  
  public int b()
  {
    return this.f;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.teg.config.c.e.a
 * JD-Core Version:    0.7.0.1
 */