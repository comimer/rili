package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class LimitNumberView
  extends DynamicLinearLayout
{
  private Context i;
  private int j;
  
  public LimitNumberView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public LimitNumberView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.i = paramContext;
    this.h = false;
  }
  
  public void setItemLayoutId(int paramInt)
  {
    this.j = paramInt;
  }
  
  public void setLimitNumber(String paramString)
  {
    setAdapter(new a(paramString.split("\\|")));
  }
  
  private class a
    extends i
  {
    private String[] b;
    
    public a(String[] paramArrayOfString)
    {
      this.b = paramArrayOfString;
    }
    
    public int a()
    {
      String[] arrayOfString = this.b;
      if (arrayOfString == null) {
        return 0;
      }
      return arrayOfString.length;
    }
    
    public View b(int paramInt, View paramView)
    {
      a locala;
      if (paramView == null)
      {
        paramView = LayoutInflater.from(LimitNumberView.e(LimitNumberView.this)).inflate(LimitNumberView.d(LimitNumberView.this), null);
        locala = new a(paramView);
        paramView.setTag(locala);
      }
      else
      {
        locala = (a)paramView.getTag();
      }
      if (paramInt == 0) {
        locala.a.setVisibility(8);
      } else {
        locala.a.setVisibility(0);
      }
      locala.b.setText(this.b[paramInt]);
      return paramView;
    }
    
    private class a
    {
      public View a;
      public TextView b;
      
      public a(View paramView)
      {
        this.a = paramView.findViewById(2131362368);
        this.b = ((TextView)paramView.findViewById(2131362910));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.LimitNumberView
 * JD-Core Version:    0.7.0.1
 */