package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;

public class DynamicLinearLayout
  extends LinearLayout
  implements i.a
{
  private i a;
  private b b;
  private View.OnTouchListener c;
  private List<View> d = new ArrayList();
  private boolean e = false;
  private int f;
  private int g;
  protected boolean h = true;
  
  public DynamicLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DynamicLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void c(final View paramView, final int paramInt)
  {
    if (this.b != null)
    {
      paramView.setOnClickListener(new a(paramView, paramInt));
    }
    else
    {
      paramView.setOnClickListener(null);
      paramView.setClickable(false);
    }
    View.OnTouchListener localOnTouchListener = this.c;
    if (localOnTouchListener != null) {
      paramView.setOnTouchListener(localOnTouchListener);
    }
  }
  
  public void a()
  {
    int i = 0;
    this.e = false;
    System.currentTimeMillis();
    int j = i;
    if (this.a.a() < getChildCount()) {
      removeViews(this.a.a(), getChildCount() - this.a.a());
    }
    for (j = i; j < this.a.a(); j++)
    {
      View localView;
      if (j < this.d.size())
      {
        localView = this.a.b(j, (View)this.d.get(j));
      }
      else
      {
        localView = this.a.b(j, null);
        this.d.add(localView);
      }
      c(localView, j);
      if (localView.getParent() == null) {
        addView(localView);
      }
    }
    System.currentTimeMillis();
  }
  
  public i getAdapter()
  {
    return this.a;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.f = getMeasuredWidth();
    this.g = getMeasuredHeight();
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.h) && (this.e))
    {
      setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(this.f, 1073741824), View.MeasureSpec.makeMeasureSpec(this.g, 1073741824));
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getSize(paramInt2) != 0) {
      this.e = true;
    }
  }
  
  public void setAdapter(i parami)
  {
    this.a = parami;
    if (parami != null)
    {
      parami.d(this);
      this.a.c();
    }
  }
  
  public void setOnItemClickListener(b paramb)
  {
    this.b = paramb;
    for (int i = 0; i < getChildCount(); i++) {
      c(getChildAt(i), i);
    }
  }
  
  public void setOnItemTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.c = paramOnTouchListener;
  }
  
  class a
    implements View.OnClickListener
  {
    a(View paramView, int paramInt) {}
    
    public void onClick(View paramView)
    {
      if (DynamicLinearLayout.b(DynamicLinearLayout.this) != null) {
        if ((DynamicLinearLayout.b(DynamicLinearLayout.this) instanceof j)) {
          ((j)DynamicLinearLayout.b(DynamicLinearLayout.this)).b(paramView, paramInt);
        } else {
          DynamicLinearLayout.b(DynamicLinearLayout.this).a(paramInt);
        }
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.DynamicLinearLayout
 * JD-Core Version:    0.7.0.1
 */