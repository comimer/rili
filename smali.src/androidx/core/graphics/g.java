package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.res.e.b;
import androidx.core.content.res.e.c;
import androidx.core.content.res.e.e;
import androidx.core.content.res.h.e;
import androidx.core.provider.g.b;
import androidx.core.provider.g.c;
import n.e;

public class g
{
  private static final l a;
  private static final e<String, Typeface> b = new e(16);
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 29) {
      a = new k();
    } else if (i >= 28) {
      a = new j();
    } else {
      a = new i();
    }
  }
  
  public static Typeface a(Context paramContext, Typeface paramTypeface, int paramInt)
  {
    if (paramContext != null) {
      return Typeface.create(paramTypeface, paramInt);
    }
    throw new IllegalArgumentException("Context cannot be null");
  }
  
  public static Typeface b(Context paramContext, CancellationSignal paramCancellationSignal, g.b[] paramArrayOfb, int paramInt)
  {
    return a.b(paramContext, paramCancellationSignal, paramArrayOfb, paramInt);
  }
  
  public static Typeface c(Context paramContext, e.b paramb, Resources paramResources, int paramInt1, String paramString, int paramInt2, int paramInt3, h.e parame, Handler paramHandler, boolean paramBoolean)
  {
    if ((paramb instanceof e.e))
    {
      paramb = (e.e)paramb;
      Typeface localTypeface = g(paramb.c());
      if (localTypeface != null)
      {
        if (parame != null) {
          parame.callbackSuccessAsync(localTypeface, paramHandler);
        }
        return localTypeface;
      }
      boolean bool;
      if (paramBoolean ? paramb.a() == 0 : parame == null) {
        bool = true;
      } else {
        bool = false;
      }
      int i;
      if (paramBoolean) {
        i = paramb.d();
      } else {
        i = -1;
      }
      paramHandler = h.e.getHandler(paramHandler);
      parame = new a(parame);
      paramContext = androidx.core.provider.g.c(paramContext, paramb.b(), paramInt3, bool, i, paramHandler, parame);
    }
    else
    {
      paramb = a.a(paramContext, (e.c)paramb, paramResources, paramInt3);
      paramContext = paramb;
      if (parame != null) {
        if (paramb != null)
        {
          parame.callbackSuccessAsync(paramb, paramHandler);
          paramContext = paramb;
        }
        else
        {
          parame.callbackFailAsync(-3, paramHandler);
          paramContext = paramb;
        }
      }
    }
    if (paramContext != null) {
      b.d(e(paramResources, paramInt1, paramString, paramInt2, paramInt3), paramContext);
    }
    return paramContext;
  }
  
  public static Typeface d(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    paramContext = a.c(paramContext, paramResources, paramInt1, paramString, paramInt3);
    if (paramContext != null)
    {
      paramResources = e(paramResources, paramInt1, paramString, paramInt2, paramInt3);
      b.d(paramResources, paramContext);
    }
    return paramContext;
  }
  
  private static String e(Resources paramResources, int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    paramResources = new StringBuilder(paramResources.getResourcePackageName(paramInt1));
    paramResources.append('-');
    paramResources.append(paramString);
    paramResources.append('-');
    paramResources.append(paramInt2);
    paramResources.append('-');
    paramResources.append(paramInt1);
    paramResources.append('-');
    paramResources.append(paramInt3);
    return paramResources.toString();
  }
  
  public static Typeface f(Resources paramResources, int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    return (Typeface)b.c(e(paramResources, paramInt1, paramString, paramInt2, paramInt3));
  }
  
  private static Typeface g(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (paramString != null) {
      if (paramString.isEmpty())
      {
        localObject2 = localObject1;
      }
      else
      {
        paramString = Typeface.create(paramString, 0);
        Typeface localTypeface = Typeface.create(Typeface.DEFAULT, 0);
        localObject2 = localObject1;
        if (paramString != null)
        {
          localObject2 = localObject1;
          if (!paramString.equals(localTypeface)) {
            localObject2 = paramString;
          }
        }
      }
    }
    return localObject2;
  }
  
  public static class a
    extends g.c
  {
    private h.e a;
    
    public a(h.e parame)
    {
      this.a = parame;
    }
    
    public void a(int paramInt)
    {
      h.e locale = this.a;
      if (locale != null) {
        locale.onFontRetrievalFailed(paramInt);
      }
    }
    
    public void b(Typeface paramTypeface)
    {
      h.e locale = this.a;
      if (locale != null) {
        locale.onFontRetrieved(paramTypeface);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.g
 * JD-Core Version:    0.7.0.1
 */