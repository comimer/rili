package v2;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import androidx.core.content.res.h;
import h.d;

public final class a
{
  private static volatile boolean a = true;
  
  public static Drawable a(Context paramContext, int paramInt, Resources.Theme paramTheme)
  {
    return c(paramContext, paramContext, paramInt, paramTheme);
  }
  
  public static Drawable b(Context paramContext1, Context paramContext2, int paramInt)
  {
    return c(paramContext1, paramContext2, paramInt, null);
  }
  
  private static Drawable c(Context paramContext1, Context paramContext2, int paramInt, Resources.Theme paramTheme)
  {
    try
    {
      if (a)
      {
        Drawable localDrawable = e(paramContext2, paramInt, paramTheme);
        return localDrawable;
      }
    }
    catch (IllegalStateException paramTheme)
    {
      if (!paramContext1.getPackageName().equals(paramContext2.getPackageName())) {
        return androidx.core.content.a.e(paramContext2, paramInt);
      }
      throw paramTheme;
    }
    catch (NoClassDefFoundError paramContext1)
    {
      a = false;
      if (paramTheme == null) {
        paramTheme = paramContext2.getTheme();
      }
      return d(paramContext2, paramInt, paramTheme);
    }
    catch (Resources.NotFoundException paramContext1)
    {
      label45:
      break label45;
    }
  }
  
  private static Drawable d(Context paramContext, int paramInt, Resources.Theme paramTheme)
  {
    return h.d(paramContext.getResources(), paramInt, paramTheme);
  }
  
  private static Drawable e(Context paramContext, int paramInt, Resources.Theme paramTheme)
  {
    Object localObject = paramContext;
    if (paramTheme != null) {
      localObject = new d(paramContext, paramTheme);
    }
    return e.a.b((Context)localObject, paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v2.a
 * JD-Core Version:    0.7.0.1
 */