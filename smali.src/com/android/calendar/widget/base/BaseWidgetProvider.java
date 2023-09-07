package com.android.calendar.widget.base;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.BroadcastReceiver;
import android.content.BroadcastReceiver.PendingResult;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.z;
import f2.e;
import f2.k;
import f2.l;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.w0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/widget/base/BaseWidgetProvider;", "Landroid/appwidget/AppWidgetProvider;", "Landroid/content/Context;", "context", "", "appWidgetIds", "Lkotlin/u;", "f", "i", "g", "Landroid/content/BroadcastReceiver$PendingResult;", "result", "c", "Landroid/content/Intent;", "intent", "onReceive", "onEnabled", "Landroid/appwidget/AppWidgetManager;", "appWidgetManager", "onUpdate", "onDeleted", "", "appWidgetId", "Landroid/os/Bundle;", "newOptions", "onAppWidgetOptionsChanged", "k", "Landroid/content/ComponentName;", "d", "", "a", "Z", "isMiuiWidget", "Ljava/lang/Class;", "e", "()Ljava/lang/Class;", "widgetProviderClass", "<init>", "()V", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public abstract class BaseWidgetProvider
  extends AppWidgetProvider
{
  public static final a b = new a(null);
  protected boolean a;
  
  private final void c(BroadcastReceiver.PendingResult paramPendingResult)
  {
    h.d(l0.a(w0.a()), null, null, new SuspendLambda(paramPendingResult, null)
    {
      int label;
      
      public final kotlin.coroutines.c<u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
      {
        return new 1(this.$result, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject = a.d();
        int i = this.label;
        if (i != 0)
        {
          if (i == 1) {
            j.b(paramAnonymousObject);
          } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
        }
        else
        {
          j.b(paramAnonymousObject);
          this.label = 1;
          if (DelayKt.b(1500L, this) == localObject) {
            return localObject;
          }
        }
        this.$result.finish();
        paramAnonymousObject = new StringBuilder();
        paramAnonymousObject.append("updateAppWidget result:");
        paramAnonymousObject.append(this.$result);
        z.a("Cal:D:CalendarAppWidgetProvider", paramAnonymousObject.toString());
        return u.a;
      }
    }, 3, null);
  }
  
  private final void f(Context paramContext, int[] paramArrayOfInt)
  {
    z.g("Cal:D:CalendarAppWidgetProvider", "initOptions");
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfInt[j];
      Object localObject = localAppWidgetManager.getAppWidgetOptions(k);
      if (localObject != null)
      {
        int m = ((BaseBundle)localObject).getInt("appWidgetMaxWidth");
        int n = ((BaseBundle)localObject).getInt("appWidgetMinWidth");
        int i1 = ((BaseBundle)localObject).getInt("appWidgetMaxHeight");
        int i2 = ((BaseBundle)localObject).getInt("appWidgetMinHeight");
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("preferences_key_widget_max_width");
        ((StringBuilder)localObject).append(k);
        int i3 = k.a(paramContext, ((StringBuilder)localObject).toString(), 0);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("preferences_key_widget_min_width");
        ((StringBuilder)localObject).append(k);
        int i4 = k.a(paramContext, ((StringBuilder)localObject).toString(), 0);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("preferences_key_widget_max_height");
        ((StringBuilder)localObject).append(k);
        int i5 = k.a(paramContext, ((StringBuilder)localObject).toString(), 0);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("preferences_key_widget_min_height");
        ((StringBuilder)localObject).append(k);
        int i6 = k.a(paramContext, ((StringBuilder)localObject).toString(), 0);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onAppWidgetOptionsChanged() newWidth:");
        ((StringBuilder)localObject).append(m);
        ((StringBuilder)localObject).append(" oldWidth:");
        ((StringBuilder)localObject).append(i3);
        ((StringBuilder)localObject).append(" newMaxHeight:");
        ((StringBuilder)localObject).append(i1);
        ((StringBuilder)localObject).append(" oldMaxHeight:");
        ((StringBuilder)localObject).append(i5);
        ((StringBuilder)localObject).append(" oldMinHeight:");
        ((StringBuilder)localObject).append(i6);
        z.a("Cal:D:CalendarAppWidgetProvider", ((StringBuilder)localObject).toString());
        if ((i3 != m) || (i4 != n) || (i5 != i1))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("preferences_key_widget_max_width");
          ((StringBuilder)localObject).append(k);
          k.e(paramContext, ((StringBuilder)localObject).toString(), m);
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("preferences_key_widget_min_width");
          ((StringBuilder)localObject).append(k);
          k.e(paramContext, ((StringBuilder)localObject).toString(), n);
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("preferences_key_widget_max_height");
          ((StringBuilder)localObject).append(k);
          k.e(paramContext, ((StringBuilder)localObject).toString(), i1);
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("preferences_key_widget_min_height");
          ((StringBuilder)localObject).append(k);
          k.e(paramContext, ((StringBuilder)localObject).toString(), i2);
        }
      }
    }
  }
  
  private final void g(Context paramContext, int[] paramArrayOfInt)
  {
    z.a("Cal:D:CalendarAppWidgetProvider", "miuiUpdateAppWidget");
    int i;
    if (paramArrayOfInt.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      z.a("Cal:D:CalendarAppWidgetProvider", "appWidget not added");
      return;
    }
    f(paramContext, paramArrayOfInt);
    e.a(new c(this, paramContext, paramArrayOfInt, goAsync()));
  }
  
  private static final void h(BaseWidgetProvider paramBaseWidgetProvider, Context paramContext, int[] paramArrayOfInt, BroadcastReceiver.PendingResult paramPendingResult)
  {
    r.f(paramBaseWidgetProvider, "this$0");
    r.f(paramContext, "$context");
    r.f(paramArrayOfInt, "$appWidgetIds");
    paramBaseWidgetProvider.a = l.f(paramContext);
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfInt[j];
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onUpdate appWidgetId:");
      localStringBuilder.append(k);
      z.a("Cal:D:CalendarAppWidgetProvider", localStringBuilder.toString());
      paramBaseWidgetProvider.k(paramContext, k);
    }
    r.e(paramPendingResult, "result");
    paramBaseWidgetProvider.c(paramPendingResult);
  }
  
  private final void i(Context paramContext, int[] paramArrayOfInt)
  {
    z.a("Cal:D:CalendarAppWidgetProvider", "updateAppWidget");
    int i;
    if (paramArrayOfInt.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      z.a("Cal:D:CalendarAppWidgetProvider", "appWidget not added");
      return;
    }
    e.a(new b(this, paramContext, paramArrayOfInt));
  }
  
  private static final void j(BaseWidgetProvider paramBaseWidgetProvider, Context paramContext, int[] paramArrayOfInt)
  {
    r.f(paramBaseWidgetProvider, "this$0");
    r.f(paramContext, "$context");
    r.f(paramArrayOfInt, "$appWidgetIds");
    paramBaseWidgetProvider.a = l.f(paramContext);
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfInt[j];
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onUpdate appWidgetId:");
      localStringBuilder.append(k);
      z.a("Cal:D:CalendarAppWidgetProvider", localStringBuilder.toString());
      paramBaseWidgetProvider.k(paramContext, k);
    }
  }
  
  protected final ComponentName d(Context paramContext)
  {
    r.c(paramContext);
    Class localClass = e();
    r.c(localClass);
    return new ComponentName(paramContext, localClass);
  }
  
  protected abstract Class<? extends BaseWidgetProvider> e();
  
  protected abstract void k(Context paramContext, int paramInt);
  
  public void onAppWidgetOptionsChanged(Context paramContext, AppWidgetManager paramAppWidgetManager, int paramInt, Bundle paramBundle)
  {
    r.f(paramContext, "context");
    r.f(paramAppWidgetManager, "appWidgetManager");
    r.f(paramBundle, "newOptions");
    super.onAppWidgetOptionsChanged(paramContext, paramAppWidgetManager, paramInt, paramBundle);
    paramAppWidgetManager = new StringBuilder();
    paramAppWidgetManager.append("onAppWidgetOptionsChanged appWidgetId:");
    paramAppWidgetManager.append(paramInt);
    z.a("Cal:D:CalendarAppWidgetProvider", paramAppWidgetManager.toString());
    paramAppWidgetManager = paramBundle.keySet().iterator();
    while (paramAppWidgetManager.hasNext())
    {
      String str = (String)paramAppWidgetManager.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onAppWidgetOptionsChanged() newOptions: key:");
      localStringBuilder.append(str);
      localStringBuilder.append(", value:");
      localStringBuilder.append(paramBundle.get(str));
      z.a("Cal:D:CalendarAppWidgetProvider", localStringBuilder.toString());
    }
    if (l.f(paramContext))
    {
      int i = paramBundle.getInt("appWidgetMaxWidth");
      int j = paramBundle.getInt("appWidgetMinWidth");
      int k = paramBundle.getInt("appWidgetMaxHeight");
      int m = paramBundle.getInt("appWidgetMinHeight");
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_max_width");
      paramAppWidgetManager.append(paramInt);
      int n = k.a(paramContext, paramAppWidgetManager.toString(), 0);
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_min_width");
      paramAppWidgetManager.append(paramInt);
      int i1 = k.a(paramContext, paramAppWidgetManager.toString(), 0);
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_max_height");
      paramAppWidgetManager.append(paramInt);
      int i2 = k.a(paramContext, paramAppWidgetManager.toString(), 0);
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_min_height");
      paramAppWidgetManager.append(paramInt);
      int i3 = k.a(paramContext, paramAppWidgetManager.toString(), 0);
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("onAppWidgetOptionsChanged() newWidth:");
      paramAppWidgetManager.append(i);
      paramAppWidgetManager.append(" oldWidth:");
      paramAppWidgetManager.append(n);
      paramAppWidgetManager.append(" newMaxHeight:");
      paramAppWidgetManager.append(k);
      paramAppWidgetManager.append(" oldMaxHeight:");
      paramAppWidgetManager.append(i2);
      paramAppWidgetManager.append(" oldMinHeight:");
      paramAppWidgetManager.append(i3);
      z.a("Cal:D:CalendarAppWidgetProvider", paramAppWidgetManager.toString());
      if ((n == i) && (i1 == j) && (i2 == k)) {
        return;
      }
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_max_width");
      paramAppWidgetManager.append(paramInt);
      k.e(paramContext, paramAppWidgetManager.toString(), i);
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_min_width");
      paramAppWidgetManager.append(paramInt);
      k.e(paramContext, paramAppWidgetManager.toString(), j);
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_max_height");
      paramAppWidgetManager.append(paramInt);
      k.e(paramContext, paramAppWidgetManager.toString(), k);
      paramAppWidgetManager = new StringBuilder();
      paramAppWidgetManager.append("preferences_key_widget_min_height");
      paramAppWidgetManager.append(paramInt);
      k.e(paramContext, paramAppWidgetManager.toString(), m);
      i(paramContext, new int[] { paramInt });
    }
    else
    {
      i(paramContext, new int[] { paramInt });
    }
  }
  
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    r.f(paramContext, "context");
    r.f(paramArrayOfInt, "appWidgetIds");
    super.onDeleted(paramContext, paramArrayOfInt);
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfInt[j];
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onDeleted appWidgetId:");
      localStringBuilder.append(k);
      z.a("Cal:D:CalendarAppWidgetProvider", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("preferences_key_widget_max_width");
      localStringBuilder.append(k);
      k.d(paramContext, localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("preferences_key_widget_min_width");
      localStringBuilder.append(k);
      k.d(paramContext, localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("preferences_key_widget_max_height");
      localStringBuilder.append(k);
      k.d(paramContext, localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("preferences_key_widget_min_height");
      localStringBuilder.append(k);
      k.d(paramContext, localStringBuilder.toString());
    }
  }
  
  public void onEnabled(Context paramContext)
  {
    r.f(paramContext, "context");
    super.onEnabled(paramContext);
    z.g("Cal:D:CalendarAppWidgetProvider", "onEnabled");
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    r.f(paramContext, "context");
    r.f(paramIntent, "intent");
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    int[] arrayOfInt = localAppWidgetManager.getAppWidgetIds(d(paramContext));
    String str = paramIntent.getAction();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onReceive action: ");
    localStringBuilder.append(str);
    z.g("Cal:D:CalendarAppWidgetProvider", localStringBuilder.toString());
    if ((!TextUtils.equals(Utils.h0(paramContext), str)) && (!r.a("android.intent.action.TIME_SET", str)) && (!r.a("android.intent.action.TIMEZONE_CHANGED", str)) && (!r.a("com.miui.action.MIDNIGHT", str)) && (!TextUtils.equals(str, Utils.g0(paramContext))) && (!r.a("android.intent.action.PROVIDER_CHANGED", str)) && (!r.a("android.intent.action.LOCALE_CHANGED", str)))
    {
      if (r.a("miui.appwidget.action.APPWIDGET_UPDATE", str))
      {
        r.e(arrayOfInt, "appwidgetIds");
        g(paramContext, arrayOfInt);
      }
      else
      {
        super.onReceive(paramContext, paramIntent);
      }
    }
    else
    {
      r.e(localAppWidgetManager, "appWidgetManager");
      r.e(arrayOfInt, "appwidgetIds");
      onUpdate(paramContext, localAppWidgetManager, arrayOfInt);
    }
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    r.f(paramContext, "context");
    r.f(paramAppWidgetManager, "appWidgetManager");
    r.f(paramArrayOfInt, "appWidgetIds");
    z.g("Cal:D:CalendarAppWidgetProvider", "onUpdate");
    i(paramContext, paramArrayOfInt);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/widget/base/BaseWidgetProvider$a;", "", "", "DELAY_TIME", "J", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.base.BaseWidgetProvider
 * JD-Core Version:    0.7.0.1
 */