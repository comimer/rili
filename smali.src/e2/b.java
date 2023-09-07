package e2;

import android.content.Context;
import android.content.res.Resources;
import android.widget.RemoteViews;
import b2.a;

public class b
{
  public static int a(Context paramContext, int paramInt)
  {
    paramInt = g(paramContext, paramInt);
    if (paramInt == 0) {
      return -1;
    }
    if (paramInt == 1) {
      return paramContext.getResources().getColor(2131101008);
    }
    return -1;
  }
  
  public static int b(Context paramContext, int paramInt)
  {
    paramInt = g(paramContext, paramInt);
    if (paramInt == 0) {
      return -1;
    }
    if (paramInt == 1) {
      return paramContext.getResources().getColor(2131101009);
    }
    return -1;
  }
  
  public static int c(Context paramContext, int paramInt)
  {
    paramInt = g(paramContext, paramInt);
    if (paramInt == 0) {
      return paramContext.getResources().getColor(2131101035);
    }
    if (paramInt == 1) {
      return paramContext.getResources().getColor(2131101039);
    }
    return -1;
  }
  
  public static int d(Context paramContext, int paramInt)
  {
    paramInt = g(paramContext, paramInt);
    if (paramInt == 0) {
      return paramContext.getResources().getColor(2131101024);
    }
    if (paramInt == 1) {
      return paramContext.getResources().getColor(2131101025);
    }
    return -1;
  }
  
  public static int e(Context paramContext, int paramInt)
  {
    paramInt = g(paramContext, paramInt);
    if (paramInt == 0) {
      return paramContext.getResources().getColor(2131101034);
    }
    if (paramInt == 1) {
      return paramContext.getResources().getColor(2131101038);
    }
    return -1;
  }
  
  public static int f(Context paramContext, int paramInt)
  {
    paramInt = g(paramContext, paramInt);
    if (paramInt == 0) {
      return -1;
    }
    if (paramInt == 1) {
      return paramContext.getResources().getColor(2131100061);
    }
    return -1;
  }
  
  public static int g(Context paramContext, int paramInt)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("month_view_widget_style_");
    ((StringBuilder)localObject).append(paramInt);
    localObject = ((StringBuilder)localObject).toString();
    paramInt = a.a(paramContext, "month_view_widget_style", -1);
    if (paramInt >= 0)
    {
      a.i(paramContext, (String)localObject, paramInt);
      a.g(paramContext, "month_view_widget_style");
      return paramInt;
    }
    return a.a(paramContext, (String)localObject, 0);
  }
  
  public static void h(Context paramContext, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("month_view_widget_style_");
    localStringBuilder.append(paramInt1);
    a.i(paramContext, localStringBuilder.toString(), paramInt2);
  }
  
  public static void i(Context paramContext, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("month_view_widget_style_");
    localStringBuilder.append(paramInt);
    a.g(paramContext, localStringBuilder.toString());
  }
  
  private static void j(int paramInt, RemoteViews paramRemoteViews)
  {
    if (paramInt == 0) {
      paramInt = 2131232506;
    } else if (paramInt == 1) {
      paramInt = 2131232509;
    } else {
      paramInt = 0;
    }
    paramRemoteViews.setInt(2131362213, "setBackgroundResource", paramInt);
  }
  
  public static void k(Context paramContext, RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramInt2 = g(paramContext, paramInt2);
    if (paramInt2 == 0) {
      paramInt2 = 2131101030;
    } else if (paramInt2 == 1) {
      paramInt2 = 2131101031;
    } else {
      paramInt2 = 0;
    }
    paramRemoteViews.setInt(paramInt1, "setBackgroundColor", paramInt2);
  }
  
  public static void l(Context paramContext, RemoteViews paramRemoteViews, int paramInt)
  {
    int i = g(paramContext, paramInt);
    m(i, paramRemoteViews);
    j(i, paramRemoteViews);
    k(paramContext, paramRemoteViews, 2131363384, paramInt);
  }
  
  private static void m(int paramInt, RemoteViews paramRemoteViews)
  {
    if (paramInt == 0) {
      paramInt = 2131232510;
    } else if (paramInt == 1) {
      paramInt = 2131232511;
    } else {
      paramInt = 0;
    }
    paramRemoteViews.setInt(2131362516, "setBackgroundResource", paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e2.b
 * JD-Core Version:    0.7.0.1
 */