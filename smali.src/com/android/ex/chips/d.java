package com.android.ex.chips;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.BaseBundle;
import android.os.Bundle;

public class d
  extends DialogFragment
  implements DialogInterface.OnClickListener
{
  private String a;
  
  public static d a(String paramString)
  {
    d locald = new d();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("text", paramString);
    locald.setArguments(localBundle);
    return locald;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1) {
      ((ClipboardManager)getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, this.a));
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    this.a = getArguments().getString("text");
    return new AlertDialog.Builder(getActivity()).setMessage(this.a).setPositiveButton(o.d, this).setNegativeButton(o.c, null).create();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.d
 * JD-Core Version:    0.7.0.1
 */