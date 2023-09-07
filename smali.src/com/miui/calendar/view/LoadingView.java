package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class LoadingView
  extends FrameLayout
{
  private TextView a;
  private Button b;
  private ProgressBar c;
  private b d;
  
  public LoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public LoadingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c(paramContext);
  }
  
  private void c(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2131558665, this, true);
    this.a = ((TextView)findViewById(2131362532));
    paramContext = (Button)findViewById(2131363020);
    this.b = paramContext;
    paramContext.setOnClickListener(new a());
    this.c = ((ProgressBar)findViewById(2131362988));
    setVisibility(8);
  }
  
  public void b()
  {
    setVisibility(8);
  }
  
  public void d()
  {
    setVisibility(0);
    this.a.setVisibility(0);
    this.b.setVisibility(0);
    this.c.setVisibility(8);
  }
  
  public void e()
  {
    setVisibility(0);
    this.a.setVisibility(8);
    this.b.setVisibility(8);
    this.c.setVisibility(0);
  }
  
  public void setOnRefreshListener(b paramb)
  {
    this.d = paramb;
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      if (LoadingView.a(LoadingView.this) != null) {
        LoadingView.a(LoadingView.this).a();
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.LoadingView
 * JD-Core Version:    0.7.0.1
 */