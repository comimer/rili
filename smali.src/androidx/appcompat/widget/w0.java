package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class w0
  extends ContextWrapper
{
  private static final Object c = new Object();
  private static ArrayList<WeakReference<w0>> d;
  private final Resources a;
  private final Resources.Theme b;
  
  private w0(Context paramContext)
  {
    super(paramContext);
    if (d1.c())
    {
      Object localObject = new d1(this, paramContext.getResources());
      this.a = ((Resources)localObject);
      localObject = ((Resources)localObject).newTheme();
      this.b = ((Resources.Theme)localObject);
      ((Resources.Theme)localObject).setTo(paramContext.getTheme());
    }
    else
    {
      this.a = new y0(this, paramContext.getResources());
      this.b = null;
    }
  }
  
  private static boolean a(Context paramContext)
  {
    boolean bool1 = paramContext instanceof w0;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (!bool1)
    {
      bool3 = bool2;
      if (!(paramContext.getResources() instanceof y0)) {
        if ((paramContext.getResources() instanceof d1))
        {
          bool3 = bool2;
        }
        else
        {
          bool3 = bool2;
          if (d1.c()) {
            bool3 = true;
          }
        }
      }
    }
    return bool3;
  }
  
  public static Context b(Context paramContext)
  {
    if (a(paramContext)) {
      synchronized (c)
      {
        Object localObject2 = d;
        if (localObject2 == null)
        {
          localObject2 = new java/util/ArrayList;
          ((ArrayList)localObject2).<init>();
          d = (ArrayList)localObject2;
        }
        else
        {
          for (int i = ((ArrayList)localObject2).size() - 1; i >= 0; i--)
          {
            localObject2 = (WeakReference)d.get(i);
            if ((localObject2 == null) || (((Reference)localObject2).get() == null)) {
              d.remove(i);
            }
          }
          for (i = d.size() - 1; i >= 0; i--)
          {
            localObject2 = (WeakReference)d.get(i);
            if (localObject2 != null) {
              localObject2 = (w0)((Reference)localObject2).get();
            } else {
              localObject2 = null;
            }
            if ((localObject2 != null) && (((ContextWrapper)localObject2).getBaseContext() == paramContext)) {
              return localObject2;
            }
          }
        }
        localObject2 = new androidx/appcompat/widget/w0;
        ((w0)localObject2).<init>(paramContext);
        paramContext = d;
        WeakReference localWeakReference = new java/lang/ref/WeakReference;
        localWeakReference.<init>(localObject2);
        paramContext.add(localWeakReference);
        return localObject2;
      }
    }
    return paramContext;
  }
  
  public AssetManager getAssets()
  {
    return this.a.getAssets();
  }
  
  public Resources getResources()
  {
    return this.a;
  }
  
  public Resources.Theme getTheme()
  {
    Resources.Theme localTheme1 = this.b;
    Resources.Theme localTheme2 = localTheme1;
    if (localTheme1 == null) {
      localTheme2 = super.getTheme();
    }
    return localTheme2;
  }
  
  public void setTheme(int paramInt)
  {
    Resources.Theme localTheme = this.b;
    if (localTheme == null) {
      super.setTheme(paramInt);
    } else {
      localTheme.applyStyle(paramInt, true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.w0
 * JD-Core Version:    0.7.0.1
 */