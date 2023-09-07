package j2;

import android.text.TextUtils;
import com.android.ex.chips.r;

class d
{
  private final CharSequence a;
  private final CharSequence b;
  private final long c;
  private final Long d;
  private final String e;
  private final long f;
  private final r g;
  private boolean h = false;
  private CharSequence i;
  
  public d(r paramr)
  {
    this.a = paramr.m();
    this.b = paramr.i().trim();
    this.c = paramr.g();
    this.d = paramr.l();
    this.e = paramr.q();
    this.f = paramr.h();
    this.g = paramr;
  }
  
  public long a()
  {
    return this.c;
  }
  
  public long b()
  {
    return this.f;
  }
  
  public Long c()
  {
    return this.d;
  }
  
  public r d()
  {
    return this.g;
  }
  
  public String e()
  {
    return this.e;
  }
  
  public CharSequence f()
  {
    Object localObject;
    if (!TextUtils.isEmpty(this.i)) {
      localObject = this.i;
    } else {
      localObject = this.g.i();
    }
    return localObject;
  }
  
  public CharSequence g()
  {
    return this.b;
  }
  
  public boolean h()
  {
    return this.h;
  }
  
  public void i(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      this.i = paramString;
    } else {
      this.i = paramString.trim();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append(" <");
    localStringBuilder.append(this.b);
    localStringBuilder.append(">");
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j2.d
 * JD-Core Version:    0.7.0.1
 */