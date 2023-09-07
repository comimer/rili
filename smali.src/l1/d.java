package l1;

public class d
{
  private float a;
  private float b;
  
  public d()
  {
    this(1.0F, 1.0F);
  }
  
  public d(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    boolean bool;
    if ((this.a == paramFloat1) && (this.b == paramFloat2)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public float b()
  {
    return this.a;
  }
  
  public float c()
  {
    return this.b;
  }
  
  public void d(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b());
    localStringBuilder.append("x");
    localStringBuilder.append(c());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l1.d
 * JD-Core Version:    0.7.0.1
 */