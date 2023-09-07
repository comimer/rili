package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.text.Selection;
import android.text.Spannable;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.core.view.c.a;

final class r
{
  static boolean a(View paramView, DragEvent paramDragEvent)
  {
    if ((Build.VERSION.SDK_INT < 31) && (paramDragEvent.getLocalState() == null) && (a0.C(paramView) != null))
    {
      Activity localActivity = c(paramView);
      if (localActivity == null)
      {
        paramDragEvent = new StringBuilder();
        paramDragEvent.append("Can't handle drop: no activity: view=");
        paramDragEvent.append(paramView);
        Log.i("ReceiveContent", paramDragEvent.toString());
        return false;
      }
      if (paramDragEvent.getAction() == 1) {
        return paramView instanceof TextView ^ true;
      }
      if (paramDragEvent.getAction() == 3)
      {
        boolean bool;
        if ((paramView instanceof TextView)) {
          bool = a.a(paramDragEvent, (TextView)paramView, localActivity);
        } else {
          bool = a.b(paramDragEvent, paramView, localActivity);
        }
        return bool;
      }
    }
    return false;
  }
  
  static boolean b(TextView paramTextView, int paramInt)
  {
    int i = Build.VERSION.SDK_INT;
    int j = 0;
    if ((i < 31) && (a0.C(paramTextView) != null) && ((paramInt == 16908322) || (paramInt == 16908337)))
    {
      Object localObject = (ClipboardManager)paramTextView.getContext().getSystemService("clipboard");
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = ((ClipboardManager)localObject).getPrimaryClip();
      }
      if ((localObject != null) && (((ClipData)localObject).getItemCount() > 0))
      {
        localObject = new c.a((ClipData)localObject, 1);
        if (paramInt == 16908322) {
          paramInt = j;
        } else {
          paramInt = 1;
        }
        a0.b0(paramTextView, ((c.a)localObject).c(paramInt).a());
      }
      return true;
    }
    return false;
  }
  
  static Activity c(View paramView)
  {
    for (paramView = paramView.getContext(); (paramView instanceof ContextWrapper); paramView = ((ContextWrapper)paramView).getBaseContext()) {
      if ((paramView instanceof Activity)) {
        return (Activity)paramView;
      }
    }
    return null;
  }
  
  private static final class a
  {
    static boolean a(DragEvent paramDragEvent, TextView paramTextView, Activity paramActivity)
    {
      paramActivity.requestDragAndDropPermissions(paramDragEvent);
      int i = paramTextView.getOffsetForPosition(paramDragEvent.getX(), paramDragEvent.getY());
      paramTextView.beginBatchEdit();
      try
      {
        Selection.setSelection((Spannable)paramTextView.getText(), i);
        paramActivity = new androidx/core/view/c$a;
        paramActivity.<init>(paramDragEvent.getClipData(), 3);
        a0.b0(paramTextView, paramActivity.a());
        return true;
      }
      finally
      {
        paramTextView.endBatchEdit();
      }
    }
    
    static boolean b(DragEvent paramDragEvent, View paramView, Activity paramActivity)
    {
      paramActivity.requestDragAndDropPermissions(paramDragEvent);
      a0.b0(paramView, new c.a(paramDragEvent.getClipData(), 3).a());
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.r
 * JD-Core Version:    0.7.0.1
 */