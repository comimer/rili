package f3;

public class i
{
  private Class<?> a;
  private Class<?> b;
  private Class<?> c;
  
  public i() {}
  
  public i(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    a(paramClass1, paramClass2, paramClass3);
  }
  
  public void a(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    this.a = paramClass1;
    this.b = paramClass2;
    this.c = paramClass3;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (getClass() == paramObject.getClass()))
    {
      paramObject = (i)paramObject;
      if (!this.a.equals(paramObject.a)) {
        return false;
      }
      if (!this.b.equals(paramObject.b)) {
        return false;
      }
      return k.c(this.c, paramObject.c);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = this.a.hashCode();
    int j = this.b.hashCode();
    Class localClass = this.c;
    int k;
    if (localClass != null) {
      k = localClass.hashCode();
    } else {
      k = 0;
    }
    return (i * 31 + j) * 31 + k;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MultiClassKey{first=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", second=");
    localStringBuilder.append(this.b);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.i
 * JD-Core Version:    0.7.0.1
 */