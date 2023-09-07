package e6;

public class e
  implements Comparable<e>
{
  public int a = 1;
  public int b = 0;
  public int c = 0;
  
  public e(String paramString)
  {
    try
    {
      paramString = paramString.split("\\.");
      this.a = Integer.parseInt(paramString[0]);
      this.b = Integer.parseInt(paramString[1]);
      this.c = Integer.parseInt(paramString[2]);
      label56:
      return;
    }
    catch (Exception paramString)
    {
      break label56;
    }
  }
  
  public int b(e parame)
  {
    if (parame == null) {
      return 1;
    }
    int i = this.a;
    int j = parame.a;
    if (i != j) {
      return i - j;
    }
    j = this.b;
    i = parame.b;
    if (j != i) {
      return j - i;
    }
    return this.c - parame.c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append(".");
    localStringBuilder.append(this.b);
    localStringBuilder.append(".");
    localStringBuilder.append(this.c);
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e6.e
 * JD-Core Version:    0.7.0.1
 */