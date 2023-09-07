package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

public class Group
  extends b
{
  public Group(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void i(ConstraintLayout paramConstraintLayout)
  {
    h(paramConstraintLayout);
  }
  
  protected void m(AttributeSet paramAttributeSet)
  {
    super.m(paramAttributeSet);
    this.e = false;
  }
  
  public void o(ConstraintLayout paramConstraintLayout)
  {
    paramConstraintLayout = (ConstraintLayout.b)getLayoutParams();
    paramConstraintLayout.v0.k1(0);
    paramConstraintLayout.v0.L0(0);
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    g();
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    g();
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    g();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.Group
 * JD-Core Version:    0.7.0.1
 */