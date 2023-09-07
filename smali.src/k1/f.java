package k1;

public class f
{
  private float a;
  private int b;
  
  public void a(float paramFloat)
  {
    paramFloat = this.a + paramFloat;
    this.a = paramFloat;
    int i = this.b + 1;
    this.b = i;
    if (i == 2147483647)
    {
      this.a = (paramFloat / 2.0F);
      this.b = (i / 2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.f
 * JD-Core Version:    0.7.0.1
 */