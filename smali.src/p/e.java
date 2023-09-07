package p;

import java.text.DecimalFormat;
import java.text.NumberFormat;

public abstract class e
{
  protected a a;
  protected int[] b = new int[10];
  protected float[] c = new float[10];
  private int d;
  private String e;
  
  public float a(float paramFloat)
  {
    return (float)this.a.a(paramFloat, 0);
  }
  
  public String toString()
  {
    String str = this.e;
    DecimalFormat localDecimalFormat = new DecimalFormat("##.##");
    for (int i = 0; i < this.d; i++)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append("[");
      localStringBuilder.append(this.b[i]);
      localStringBuilder.append(" , ");
      localStringBuilder.append(localDecimalFormat.format(this.c[i]));
      localStringBuilder.append("] ");
      str = localStringBuilder.toString();
    }
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p.e
 * JD-Core Version:    0.7.0.1
 */