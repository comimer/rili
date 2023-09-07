package com.android.calendar.event;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import b2.a;
import com.miui.calendar.util.g0;
import miuix.appcompat.app.l.b;
import t1.b;

public class k
{
  private static boolean a(Context paramContext)
  {
    long l1 = a.b(paramContext, "preferences_edit_event_dislike_shown_start", 0L);
    long l2 = a.b(paramContext, "preferences_edit_event_dislike_shown_end", 0L);
    long l3 = System.currentTimeMillis();
    boolean bool;
    if ((l1 <= l3) && (l3 <= l2)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (!a.d(paramContext, "preferences_edit_event_dislike_shown2", false))
      {
        bool2 = bool1;
        if (a(paramContext)) {
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  public static void c(Context paramContext, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    b.a("Cal:D:EditEventStatsHelper", "showDislikeDialog()");
    paramOnDismissListener = new l.b(paramContext).F(2131886492).w(paramOnDismissListener).v(new b()).k(2130903074, new a()).a();
    paramOnDismissListener.setCancelable(false);
    paramOnDismissListener.show();
    a.l(paramContext, "preferences_edit_event_dislike_shown2", true);
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      paramDialogInterface = new StringBuilder();
      paramDialogInterface.append("showDislikeDialog::onClick():");
      paramDialogInterface.append(paramInt);
      b.a("Cal:D:EditEventStatsHelper", paramDialogInterface.toString());
      g0.f("edit_event_dislike", new String[] { "strvalue", String.valueOf(paramInt) });
    }
  }
  
  class b
    implements DialogInterface.OnCancelListener
  {
    public void onCancel(DialogInterface paramDialogInterface)
    {
      b.a("Cal:D:EditEventStatsHelper", "showDislikeDialog::onCancel()");
      g0.f("edit_event_dislike", new String[] { "strvalue", "cancel" });
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.k
 * JD-Core Version:    0.7.0.1
 */