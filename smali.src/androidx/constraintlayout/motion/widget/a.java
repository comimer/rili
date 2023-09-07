package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;

@SuppressLint({"LogConditional"})
public class a
{
  public static String a(Context paramContext, int paramInt)
  {
    if (paramInt != -1) {}
    try
    {
      return paramContext.getResources().getResourceEntryName(paramInt);
    }
    catch (Exception paramContext)
    {
      paramContext = new StringBuilder();
      paramContext.append("?");
      paramContext.append(paramInt);
    }
    return "UNKNOWN";
    return paramContext.toString();
  }
  
  public static String b(View paramView)
  {
    try
    {
      paramView = paramView.getContext().getResources().getResourceEntryName(paramView.getId());
      return paramView;
    }
    catch (Exception paramView) {}
    return "UNKNOWN";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.motion.widget.a
 * JD-Core Version:    0.7.0.1
 */