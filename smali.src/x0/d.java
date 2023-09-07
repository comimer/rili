package x0;

public class d
{
  public String a;
  public Long b;
  
  public d(String paramString, long paramLong)
  {
    this.a = paramString;
    this.b = Long.valueOf(paramLong);
  }
  
  public d(String paramString, boolean paramBoolean)
  {
    this(paramString, l);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof d)) {
      return false;
    }
    Object localObject = (d)paramObject;
    if (!this.a.equals(((d)localObject).a)) {
      return false;
    }
    paramObject = this.b;
    localObject = ((d)localObject).b;
    if (paramObject != null) {
      bool = paramObject.equals(localObject);
    } else if (localObject != null) {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    int i = this.a.hashCode();
    Long localLong = this.b;
    int j;
    if (localLong != null) {
      j = localLong.hashCode();
    } else {
      j = 0;
    }
    return i * 31 + j;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.d
 * JD-Core Version:    0.7.0.1
 */