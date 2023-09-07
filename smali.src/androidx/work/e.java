package androidx.work;

import android.app.Notification;

public final class e
{
  private final int a;
  private final int b;
  private final Notification c;
  
  public e(int paramInt1, Notification paramNotification, int paramInt2)
  {
    this.a = paramInt1;
    this.c = paramNotification;
    this.b = paramInt2;
  }
  
  public int a()
  {
    return this.b;
  }
  
  public Notification b()
  {
    return this.c;
  }
  
  public int c()
  {
    return this.a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (e.class == paramObject.getClass()))
    {
      paramObject = (e)paramObject;
      if (this.a != paramObject.a) {
        return false;
      }
      if (this.b != paramObject.b) {
        return false;
      }
      return this.c.equals(paramObject.c);
    }
    return false;
  }
  
  public int hashCode()
  {
    return (this.a * 31 + this.b) * 31 + this.c.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ForegroundInfo{");
    localStringBuilder.append("mNotificationId=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", mForegroundServiceType=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", mNotification=");
    localStringBuilder.append(this.c);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.e
 * JD-Core Version:    0.7.0.1
 */