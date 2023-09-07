package com.miui.calendar.view;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnWindowAttachListener;
import android.view.Window;

public class g
  implements DialogInterface.OnClickListener
{
  private DialogInterface.OnClickListener a;
  
  private g(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a = paramOnClickListener;
  }
  
  public static g c(DialogInterface.OnClickListener paramOnClickListener)
  {
    return new g(paramOnClickListener);
  }
  
  public void b(Dialog paramDialog)
  {
    if ((paramDialog != null) && (paramDialog.getWindow() != null) && (paramDialog.getWindow().getDecorView() != null)) {
      paramDialog.getWindow().getDecorView().getViewTreeObserver().addOnWindowAttachListener(new a());
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    DialogInterface.OnClickListener localOnClickListener = this.a;
    if (localOnClickListener != null) {
      localOnClickListener.onClick(paramDialogInterface, paramInt);
    }
  }
  
  class a
    implements ViewTreeObserver.OnWindowAttachListener
  {
    a() {}
    
    public void onWindowAttached() {}
    
    public void onWindowDetached()
    {
      g.a(g.this, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.g
 * JD-Core Version:    0.7.0.1
 */