package androidx.appcompat.app;

class l
{
  private static l d;
  public long a;
  public long b;
  public int c;
  
  static l b()
  {
    if (d == null) {
      d = new l();
    }
    return d;
  }
  
  public void a(long paramLong, double paramDouble1, double paramDouble2)
  {
    float f1 = (float)(paramLong - 946728000000L) / 86400000.0F;
    float f2 = 0.01720197F * f1 + 6.24006F;
    double d1 = f2;
    double d2 = Math.sin(d1) * 0.03341960161924362D + d1 + Math.sin(2.0F * f2) * 0.0003490659873933D + Math.sin(f2 * 3.0F) * 5.236000106378924E-006D + 1.796593063D + 3.141592653589793D;
    paramDouble2 = -paramDouble2 / 360.0D;
    paramDouble2 = (float)Math.round(f1 - 0.0009F - paramDouble2) + 0.0009F + paramDouble2 + Math.sin(d1) * 0.0053D + Math.sin(2.0D * d2) * -0.0069D;
    d2 = Math.asin(Math.sin(d2) * Math.sin(0.4092797040939331D));
    paramDouble1 = 0.0174532923847437D * paramDouble1;
    paramDouble1 = (Math.sin(-0.1047197580337524D) - Math.sin(paramDouble1) * Math.sin(d2)) / (Math.cos(paramDouble1) * Math.cos(d2));
    if (paramDouble1 >= 1.0D)
    {
      this.c = 1;
      this.a = -1L;
      this.b = -1L;
      return;
    }
    if (paramDouble1 <= -1.0D)
    {
      this.c = 0;
      this.a = -1L;
      this.b = -1L;
      return;
    }
    paramDouble1 = (float)(Math.acos(paramDouble1) / 6.283185307179586D);
    this.a = (Math.round((paramDouble2 + paramDouble1) * 86400000.0D) + 946728000000L);
    long l = Math.round((paramDouble2 - paramDouble1) * 86400000.0D) + 946728000000L;
    this.b = l;
    if ((l < paramLong) && (this.a > paramLong)) {
      this.c = 0;
    } else {
      this.c = 1;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.l
 * JD-Core Version:    0.7.0.1
 */