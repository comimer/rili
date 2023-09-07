package l6;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import m6.e;

public abstract class a
{
  private static volatile a a = new a();
  
  public static Intent a(Context paramContext)
  {
    return a.b(paramContext);
  }
  
  public static Intent c(Context paramContext, Parcelable paramParcelable, String paramString1, String paramString2, Bundle paramBundle)
  {
    return a.d(paramContext, paramParcelable, paramString1, paramString2, paramBundle);
  }
  
  public static Intent e(Context paramContext)
  {
    return a.f(paramContext);
  }
  
  public static Intent g(Context paramContext, e parame)
  {
    return a.h(paramContext, parame);
  }
  
  public static void i(a parama)
  {
    if (parama != null) {
      try
      {
        a = parama;
        return;
      }
      finally
      {
        break label31;
      }
    }
    parama = new java/lang/IllegalStateException;
    parama.<init>("param impl can not be null");
    throw parama;
    label31:
    throw parama;
  }
  
  public abstract Intent b(Context paramContext);
  
  public abstract Intent d(Context paramContext, Parcelable paramParcelable, String paramString1, String paramString2, Bundle paramBundle);
  
  public abstract Intent f(Context paramContext);
  
  public abstract Intent h(Context paramContext, e parame);
  
  class a
    extends a
  {
    public Intent b(Context paramContext)
    {
      throw new IllegalStateException("should invoke method: set(AuthenticatorIntentInterface impl) first");
    }
    
    public Intent d(Context paramContext, Parcelable paramParcelable, String paramString1, String paramString2, Bundle paramBundle)
    {
      throw new IllegalStateException("should invoke method: set(AuthenticatorIntentInterface impl) first");
    }
    
    public Intent f(Context paramContext)
    {
      throw new IllegalStateException("should invoke method: set(AuthenticatorIntentInterface impl) first");
    }
    
    public Intent h(Context paramContext, e parame)
    {
      throw new IllegalStateException("should invoke method: set(AuthenticatorIntentInterface impl) first");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l6.a
 * JD-Core Version:    0.7.0.1
 */