package com.miui.calendar.util;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "", "message", "", "duration", "Lkotlin/u;", "d", "stringId", "", "", "args", "g", "(Landroid/content/Context;I[Ljava/lang/Object;)V", "a", "pluralsId", "quantity", "i", "(Landroid/content/Context;II[Ljava/lang/Object;)V", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class t0
{
  public static final void a(Context paramContext, int paramInt, Object... paramVarArgs)
  {
    r.f(paramContext, "context");
    r.f(paramVarArgs, "args");
    int i;
    if (paramVarArgs.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramVarArgs = paramContext.getString(paramInt);
    } else {
      paramVarArgs = paramContext.getString(paramInt, Arrays.copyOf(paramVarArgs, paramVarArgs.length));
    }
    r.e(paramVarArgs, "if (args.isEmpty()) cont…etString(stringId, *args)");
    d(paramContext, paramVarArgs, 1);
  }
  
  public static final void c(Context paramContext, String paramString)
  {
    r.f(paramContext, "context");
    r.f(paramString, "message");
    e(paramContext, paramString, 0, 4, null);
  }
  
  public static final void d(Context paramContext, String paramString, int paramInt)
  {
    r.f(paramContext, "context");
    r.f(paramString, "message");
    Toast.makeText(paramContext.getApplicationContext(), paramString, paramInt).show();
  }
  
  public static final void f(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    h(paramContext, paramInt, null, 4, null);
  }
  
  public static final void g(Context paramContext, int paramInt, Object... paramVarArgs)
  {
    r.f(paramContext, "context");
    r.f(paramVarArgs, "args");
    int i;
    if (paramVarArgs.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramVarArgs = paramContext.getString(paramInt);
    } else {
      paramVarArgs = paramContext.getString(paramInt, Arrays.copyOf(paramVarArgs, paramVarArgs.length));
    }
    r.e(paramVarArgs, "if (args.isEmpty()) cont…etString(stringId, *args)");
    d(paramContext, paramVarArgs, 0);
  }
  
  public static final void i(Context paramContext, int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    r.f(paramContext, "context");
    r.f(paramVarArgs, "args");
    int i;
    if (paramVarArgs.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramVarArgs = paramContext.getResources().getQuantityString(paramInt1, paramInt2);
    } else {
      paramVarArgs = paramContext.getResources().getQuantityString(paramInt1, paramInt2, Arrays.copyOf(paramVarArgs, paramVarArgs.length));
    }
    r.e(paramVarArgs, "if (args.isEmpty()) cont…uralsId, quantity, *args)");
    d(paramContext, paramVarArgs, 0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.t0
 * JD-Core Version:    0.7.0.1
 */