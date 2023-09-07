package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.calendar.util.x0;

public class OldExpandableTextView
  extends LinearLayout
  implements View.OnClickListener
{
  public TextView a;
  ImageButton b;
  private boolean c = false;
  private boolean d = true;
  private int e = 8;
  private Drawable f;
  private Drawable g;
  
  public OldExpandableTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
    b();
  }
  
  private void a()
  {
    Object localObject = (TextView)findViewById(2131362441);
    this.a = ((TextView)localObject);
    ((View)localObject).setOnClickListener(this);
    localObject = (ImageButton)findViewById(2131362439);
    this.b = ((ImageButton)localObject);
    ((View)localObject).setOnClickListener(this);
  }
  
  void b()
  {
    this.e = getResources().getInteger(2131427357);
    this.f = getResources().getDrawable(2131231301);
    this.g = getResources().getDrawable(2131231266);
  }
  
  public void c(String paramString, int paramInt)
  {
    this.c = true;
    if (this.a == null) {
      a();
    }
    paramString = paramString.trim();
    if (paramInt > 0) {
      x0.H0(this.a, paramString, paramInt);
    } else {
      this.a.setText(paramString);
    }
    if (paramString.length() == 0) {
      paramInt = 8;
    } else {
      paramInt = 0;
    }
    setVisibility(paramInt);
  }
  
  public CharSequence getText()
  {
    TextView localTextView = this.a;
    if (localTextView == null) {
      return "";
    }
    return localTextView.getText();
  }
  
  public void onClick(View paramView)
  {
    if (this.b.getVisibility() != 0) {
      return;
    }
    boolean bool = this.d ^ true;
    this.d = bool;
    ImageButton localImageButton = this.b;
    if (bool) {
      paramView = this.f;
    } else {
      paramView = this.g;
    }
    localImageButton.setImageDrawable(paramView);
    paramView = this.a;
    int i;
    if (this.d) {
      i = this.e;
    } else {
      i = 2147483647;
    }
    paramView.setMaxLines(i);
    if (this.d)
    {
      paramView = this.a;
      paramView.setText(paramView.getText());
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.c) && (getVisibility() != 8))
    {
      this.c = false;
      this.b.setVisibility(8);
      this.a.setMaxLines(2147483647);
      super.onMeasure(paramInt1, paramInt2);
      int i = this.a.getLineCount();
      int j = this.e;
      if (i <= j) {
        return;
      }
      if (this.d) {
        this.a.setMaxLines(j);
      }
      this.b.setVisibility(0);
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setText(String paramString)
  {
    c(paramString, -1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.OldExpandableTextView
 * JD-Core Version:    0.7.0.1
 */