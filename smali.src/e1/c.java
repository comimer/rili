package e1;

import g1.k;
import java.util.List;

public class c
{
  private final List<k> a;
  private final char b;
  private final double c;
  private final double d;
  private final String e;
  private final String f;
  
  public c(List<k> paramList, char paramChar, double paramDouble1, double paramDouble2, String paramString1, String paramString2)
  {
    this.a = paramList;
    this.b = ((char)paramChar);
    this.c = paramDouble1;
    this.d = paramDouble2;
    this.e = paramString1;
    this.f = paramString2;
  }
  
  public static int c(char paramChar, String paramString1, String paramString2)
  {
    return (('\000' + paramChar) * 31 + paramString1.hashCode()) * 31 + paramString2.hashCode();
  }
  
  public List<k> a()
  {
    return this.a;
  }
  
  public double b()
  {
    return this.d;
  }
  
  public int hashCode()
  {
    return c(this.b, this.f, this.e);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e1.c
 * JD-Core Version:    0.7.0.1
 */