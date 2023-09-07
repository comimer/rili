package f2;

import android.content.Context;
import android.content.res.Resources;
import android.widget.RemoteViews;
import com.miui.calendar.util.x0;

public class c
{
  public static int a(Context paramContext, boolean paramBoolean)
  {
    if (x0.s0(paramContext))
    {
      if (paramBoolean) {
        return 2131232541;
      }
      return 2131232540;
    }
    if (paramBoolean) {
      return 2131232542;
    }
    return 2131232539;
  }
  
  public static int b(Context paramContext)
  {
    return paramContext.getResources().getColor(2131101064);
  }
  
  public static int c(Context paramContext)
  {
    return paramContext.getResources().getColor(2131101065);
  }
  
  public static int d(Context paramContext)
  {
    return paramContext.getResources().getColor(2131101011);
  }
  
  public static int e(Context paramContext)
  {
    return paramContext.getResources().getColor(2131101012);
  }
  
  public static void f(Context paramContext, RemoteViews paramRemoteViews, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 7: 
      if (x0.s0(paramContext))
      {
        g(paramRemoteViews, 2131363573, 2131232560);
        h(paramRemoteViews, 2131362645, 2131232488);
      }
      else
      {
        g(paramRemoteViews, 2131363573, 2131232559);
        h(paramRemoteViews, 2131362645, 2131232487);
      }
      break;
    case 6: 
      if (x0.s0(paramContext)) {
        g(paramRemoteViews, 2131363582, 2131232560);
      } else {
        g(paramRemoteViews, 2131363582, 2131232559);
      }
      break;
    case 5: 
      if (x0.s0(paramContext)) {
        g(paramRemoteViews, 2131363576, 2131232538);
      } else {
        g(paramRemoteViews, 2131363576, 2131232491);
      }
      break;
    case 4: 
      if (x0.s0(paramContext)) {
        g(paramRemoteViews, 2131362467, 2131232538);
      } else {
        g(paramRemoteViews, 2131362467, 2131232524);
      }
      break;
    case 3: 
      if (x0.s0(paramContext))
      {
        g(paramRemoteViews, 2131362562, 2131231379);
        g(paramRemoteViews, 2131362739, 2131232508);
      }
      else
      {
        g(paramRemoteViews, 2131362562, 2131231378);
        g(paramRemoteViews, 2131362739, 2131232507);
      }
      break;
    case 2: 
      if (x0.s0(paramContext)) {
        g(paramRemoteViews, 2131363584, 2131232538);
      } else {
        g(paramRemoteViews, 2131363584, 2131232557);
      }
      break;
    case 1: 
      if (x0.s0(paramContext))
      {
        g(paramRemoteViews, 2131362886, 2131232538);
        g(paramRemoteViews, 2131362871, 2131231382);
        h(paramRemoteViews, 2131362822, 2131232544);
      }
      else
      {
        g(paramRemoteViews, 2131362886, 2131232537);
        g(paramRemoteViews, 2131362871, 2131231381);
        h(paramRemoteViews, 2131362822, 2131232543);
      }
      break;
    }
  }
  
  public static void g(RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setInt(paramInt1, "setBackgroundResource", paramInt2);
  }
  
  public static void h(RemoteViews paramRemoteViews, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setInt(paramInt1, "setImageResource", paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.c
 * JD-Core Version:    0.7.0.1
 */