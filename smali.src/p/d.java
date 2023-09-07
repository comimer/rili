package p;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class d
{
  private a a;
  private String b;
  private int c = 0;
  private String d = null;
  public int e = 0;
  ArrayList<b> f = new ArrayList();
  
  public float a(float paramFloat)
  {
    return (float)this.a.a(paramFloat);
  }
  
  public String toString()
  {
    String str = this.b;
    DecimalFormat localDecimalFormat = new DecimalFormat("##.##");
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append("[");
      localStringBuilder.append(localb.a);
      localStringBuilder.append(" , ");
      localStringBuilder.append(localDecimalFormat.format(localb.b));
      localStringBuilder.append("] ");
      str = localStringBuilder.toString();
    }
    return str;
  }
  
  static class a
  {
    public double a(float paramFloat)
    {
      throw null;
    }
  }
  
  static class b
  {
    int a;
    float b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p.d
 * JD-Core Version:    0.7.0.1
 */