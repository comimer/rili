package com.android.calendar.event;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class m
  extends h2.a
  implements com.android.ex.chips.a
{
  private LayoutInflater l;
  
  public m(Context paramContext)
  {
    super(paramContext);
    this.l = LayoutInflater.from(paramContext);
  }
  
  protected View C(ViewGroup paramViewGroup)
  {
    return this.l.inflate(2131558556, paramViewGroup, false);
  }
  
  protected View D(ViewGroup paramViewGroup)
  {
    return this.l.inflate(2131558557, paramViewGroup, false);
  }
  
  protected void y(View paramView, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString1 = (TextView)paramView.findViewById(2131363336);
    paramView = (TextView)paramView.findViewById(2131363337);
    paramString1.setText(paramString3);
    paramView.setText(paramString4);
  }
  
  protected void z(View paramView, String paramString1, String paramString2)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131363336);
    paramView = g();
    if (!TextUtils.isEmpty(paramString2)) {
      paramString1 = paramString2;
    }
    localTextView.setText(paramView.getString(2131886455, new Object[] { paramString1 }));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.m
 * JD-Core Version:    0.7.0.1
 */