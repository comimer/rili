package com.xiaomi.passport.ui.settings;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import n5.e;
import n5.f;
import n5.i;

public class AccountPreferenceView
  extends LinearLayout
{
  private TextView a;
  private TextView b;
  private ImageView c;
  private ImageView d;
  
  public AccountPreferenceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = LayoutInflater.from(paramContext).inflate(f.p, this);
    this.a = ((TextView)localView.findViewById(e.D0));
    this.b = ((TextView)localView.findViewById(e.A0));
    this.c = ((ImageView)localView.findViewById(e.F));
    this.d = ((ImageView)localView.findViewById(e.f));
    if (paramAttributeSet != null)
    {
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, i.h0);
      paramContext = paramAttributeSet.getString(i.i0);
      if (!TextUtils.isEmpty(paramContext)) {
        this.a.setText(paramContext);
      }
      paramAttributeSet.recycle();
    }
  }
  
  public CharSequence getValue()
  {
    return this.b.getText();
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    ImageView localImageView = this.c;
    int i;
    if (paramBitmap != null) {
      i = 0;
    } else {
      i = 8;
    }
    localImageView.setVisibility(i);
    this.c.setImageBitmap(paramBitmap);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    super.setOnClickListener(paramOnClickListener);
    ImageView localImageView = this.d;
    int i;
    if (paramOnClickListener == null) {
      i = 8;
    } else {
      i = 0;
    }
    localImageView.setVisibility(i);
  }
  
  public void setRightArrowVisible(boolean paramBoolean)
  {
    ImageView localImageView = this.d;
    int i;
    if (paramBoolean) {
      i = 0;
    } else {
      i = 8;
    }
    localImageView.setVisibility(i);
  }
  
  public void setValue(int paramInt)
  {
    setValue(getContext().getString(paramInt));
  }
  
  public void setValue(String paramString)
  {
    this.b.setText(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.settings.AccountPreferenceView
 * JD-Core Version:    0.7.0.1
 */