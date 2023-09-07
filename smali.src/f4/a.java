package f4;

import android.text.TextUtils;

public class a
{
  public boolean a;
  public String b;
  public String c;
  public String d;
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof a)) {
      return false;
    }
    try
    {
      paramObject = (a)paramObject;
      if ((this.a == paramObject.a) && (TextUtils.equals(this.b, paramObject.b)) && (TextUtils.equals(this.c, paramObject.c)))
      {
        boolean bool2 = TextUtils.equals(this.d, paramObject.d);
        if (bool2) {}
      }
      else
      {
        bool1 = false;
      }
      return bool1;
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  public int hashCode()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append(this.b);
    localStringBuilder.append(this.c);
    localStringBuilder.append(this.d);
    return localStringBuilder.toString().hashCode();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f4.a
 * JD-Core Version:    0.7.0.1
 */