package e1;

public class g
{
  private final String a;
  public final float b;
  public final float c;
  
  public g(String paramString, float paramFloat1, float paramFloat2)
  {
    this.a = paramString;
    this.c = paramFloat2;
    this.b = paramFloat1;
  }
  
  public boolean a(String paramString)
  {
    boolean bool1 = this.a.equalsIgnoreCase(paramString);
    boolean bool2 = true;
    if (bool1) {
      return true;
    }
    if (this.a.endsWith("\r"))
    {
      String str = this.a;
      if (str.substring(0, str.length() - 1).equalsIgnoreCase(paramString)) {}
    }
    else
    {
      bool2 = false;
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e1.g
 * JD-Core Version:    0.7.0.1
 */