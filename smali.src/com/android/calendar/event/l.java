package com.android.calendar.event;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import miuix.appcompat.app.l.b;

public class l
  implements DialogInterface.OnClickListener
{
  private final Activity a;
  private int b = -1;
  private miuix.appcompat.app.l c;
  private DialogInterface.OnClickListener d;
  private DialogInterface.OnClickListener e = new a();
  
  public l(Activity paramActivity)
  {
    this.a = paramActivity;
  }
  
  public int c()
  {
    return this.b;
  }
  
  public void d(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.d = paramOnClickListener;
  }
  
  public void e(int paramInt)
  {
    this.b = paramInt;
  }
  
  public void f(int paramInt)
  {
    if (this.d == null) {
      this.d = this;
    }
    miuix.appcompat.app.l locall = new l.b(this.a).F(2131886279).j(16843605).B(2130903060, paramInt, this.e).z(17039370, this.d).r(17039360, null).J();
    this.c = locall;
    if (paramInt == -1) {
      locall.e(-1).setEnabled(false);
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {}
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      l.a(l.this, paramInt);
      l.b(l.this).e(-1).setEnabled(true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.l
 * JD-Core Version:    0.7.0.1
 */