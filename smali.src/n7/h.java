package n7;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class h
{
  private final SharedPreferences a;
  
  public h(Context paramContext, String paramString)
  {
    this.a = paramContext.getSharedPreferences(paramString, 0);
  }
  
  public int a(String paramString, int paramInt)
  {
    return this.a.getInt(paramString, paramInt);
  }
  
  public long b(String paramString, long paramLong)
  {
    return this.a.getLong(paramString, paramLong);
  }
  
  public void c(String paramString, int paramInt)
  {
    this.a.edit().putInt(paramString, paramInt).apply();
  }
  
  public void d(String paramString, long paramLong)
  {
    this.a.edit().putLong(paramString, paramLong).apply();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n7.h
 * JD-Core Version:    0.7.0.1
 */