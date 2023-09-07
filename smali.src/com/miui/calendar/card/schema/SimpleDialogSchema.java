package com.miui.calendar.card.schema;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import androidx.annotation.Keep;
import miuix.appcompat.app.l.b;

@Keep
public class SimpleDialogSchema
{
  public String message;
  public DialogInterface.OnClickListener negativeButtonClickListener;
  public String negativeButtonText;
  public DialogInterface.OnClickListener positiveButtonClickListener;
  public String positiveButtonText;
  public String title;
  
  public void show(Context paramContext)
  {
    new l.b(paramContext).n(this.message).G(this.title).A(this.positiveButtonText, this.positiveButtonClickListener).s(this.negativeButtonText, this.negativeButtonClickListener).J();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.schema.SimpleDialogSchema
 * JD-Core Version:    0.7.0.1
 */