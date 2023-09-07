package p;

import java.text.DecimalFormat;
import java.text.Format;

public abstract class f
{
  protected a a;
  protected int b = 0;
  protected int[] c = new int[10];
  protected float[][] d = new float[10][3];
  protected int e;
  protected String f;
  protected float[] g = new float[3];
  protected boolean h = false;
  protected long i;
  protected float j = (0.0F / 0.0F);
  
  public String toString()
  {
    String str = this.f;
    DecimalFormat localDecimalFormat = new DecimalFormat("##.##");
    for (int k = 0; k < this.e; k++)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append("[");
      localStringBuilder.append(this.c[k]);
      localStringBuilder.append(" , ");
      localStringBuilder.append(localDecimalFormat.format(this.d[k]));
      localStringBuilder.append("] ");
      str = localStringBuilder.toString();
    }
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p.f
 * JD-Core Version:    0.7.0.1
 */