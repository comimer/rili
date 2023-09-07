package g1;

import k1.b;
import k1.g;

public class d
{
  private final float[] a;
  private final int[] b;
  
  public d(float[] paramArrayOfFloat, int[] paramArrayOfInt)
  {
    this.a = paramArrayOfFloat;
    this.b = paramArrayOfInt;
  }
  
  public int[] a()
  {
    return this.b;
  }
  
  public float[] b()
  {
    return this.a;
  }
  
  public int c()
  {
    return this.b.length;
  }
  
  public void d(d paramd1, d paramd2, float paramFloat)
  {
    if (paramd1.b.length == paramd2.b.length)
    {
      for (int i = 0; i < paramd1.b.length; i++)
      {
        this.a[i] = g.i(paramd1.a[i], paramd2.a[i], paramFloat);
        this.b[i] = b.c(paramFloat, paramd1.b[i], paramd2.b[i]);
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot interpolate between gradients. Lengths vary (");
    localStringBuilder.append(paramd1.b.length);
    localStringBuilder.append(" vs ");
    localStringBuilder.append(paramd2.b.length);
    localStringBuilder.append(")");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.d
 * JD-Core Version:    0.7.0.1
 */