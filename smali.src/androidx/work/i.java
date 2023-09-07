package androidx.work;

public abstract class i
{
  public static i c()
  {
    return new a();
  }
  
  public abstract h a(String paramString);
  
  public final h b(String paramString)
  {
    h localh1 = a(paramString);
    h localh2 = localh1;
    if (localh1 == null) {
      localh2 = h.a(paramString);
    }
    return localh2;
  }
  
  class a
    extends i
  {
    public h a(String paramString)
    {
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.i
 * JD-Core Version:    0.7.0.1
 */