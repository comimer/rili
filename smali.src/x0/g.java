package x0;

public class g
{
  public final String a;
  public final int b;
  
  public g(String paramString, int paramInt)
  {
    this.a = paramString;
    this.b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof g)) {
      return false;
    }
    paramObject = (g)paramObject;
    if (this.b != paramObject.b) {
      return false;
    }
    return this.a.equals(paramObject.a);
  }
  
  public int hashCode()
  {
    return this.a.hashCode() * 31 + this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.g
 * JD-Core Version:    0.7.0.1
 */