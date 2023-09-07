package androidx.appcompat.widget;

class r0
{
  private int a = 0;
  private int b = 0;
  private int c = -2147483648;
  private int d = -2147483648;
  private int e = 0;
  private int f = 0;
  private boolean g = false;
  private boolean h = false;
  
  public int a()
  {
    int i;
    if (this.g) {
      i = this.a;
    } else {
      i = this.b;
    }
    return i;
  }
  
  public int b()
  {
    return this.a;
  }
  
  public int c()
  {
    return this.b;
  }
  
  public int d()
  {
    int i;
    if (this.g) {
      i = this.b;
    } else {
      i = this.a;
    }
    return i;
  }
  
  public void e(int paramInt1, int paramInt2)
  {
    this.h = false;
    if (paramInt1 != -2147483648)
    {
      this.e = paramInt1;
      this.a = paramInt1;
    }
    if (paramInt2 != -2147483648)
    {
      this.f = paramInt2;
      this.b = paramInt2;
    }
  }
  
  public void f(boolean paramBoolean)
  {
    if (paramBoolean == this.g) {
      return;
    }
    this.g = paramBoolean;
    if (this.h)
    {
      int i;
      if (paramBoolean)
      {
        i = this.d;
        if (i == -2147483648) {
          i = this.e;
        }
        this.a = i;
        i = this.c;
        if (i == -2147483648) {
          i = this.f;
        }
        this.b = i;
      }
      else
      {
        i = this.c;
        if (i == -2147483648) {
          i = this.e;
        }
        this.a = i;
        i = this.d;
        if (i == -2147483648) {
          i = this.f;
        }
        this.b = i;
      }
    }
    else
    {
      this.a = this.e;
      this.b = this.f;
    }
  }
  
  public void g(int paramInt1, int paramInt2)
  {
    this.c = paramInt1;
    this.d = paramInt2;
    this.h = true;
    if (this.g)
    {
      if (paramInt2 != -2147483648) {
        this.a = paramInt2;
      }
      if (paramInt1 != -2147483648) {
        this.b = paramInt1;
      }
    }
    else
    {
      if (paramInt1 != -2147483648) {
        this.a = paramInt1;
      }
      if (paramInt2 != -2147483648) {
        this.b = paramInt2;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.r0
 * JD-Core Version:    0.7.0.1
 */