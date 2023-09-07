package androidx.preference.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import androidx.preference.s;

@SuppressLint({"AppCompatCustomView"})
public class PreferenceImageView
  extends ImageView
{
  private int a = 2147483647;
  private int b = 2147483647;
  
  public PreferenceImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PreferenceImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.k1, paramInt, 0);
    setMaxWidth(paramContext.getDimensionPixelSize(s.m1, 2147483647));
    setMaxHeight(paramContext.getDimensionPixelSize(s.l1, 2147483647));
    paramContext.recycle();
  }
  
  public int getMaxHeight()
  {
    return this.b;
  }
  
  public int getMaxWidth()
  {
    return this.a;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j;
    int k;
    int m;
    if (i != -2147483648)
    {
      j = paramInt1;
      if (i != 0) {}
    }
    else
    {
      k = View.MeasureSpec.getSize(paramInt1);
      m = getMaxWidth();
      j = paramInt1;
      if (m != 2147483647) {
        if (m >= k)
        {
          j = paramInt1;
          if (i != 0) {}
        }
        else
        {
          j = View.MeasureSpec.makeMeasureSpec(m, -2147483648);
        }
      }
    }
    i = View.MeasureSpec.getMode(paramInt2);
    if (i != -2147483648)
    {
      paramInt1 = paramInt2;
      if (i != 0) {}
    }
    else
    {
      k = View.MeasureSpec.getSize(paramInt2);
      m = getMaxHeight();
      paramInt1 = paramInt2;
      if (m != 2147483647) {
        if (m >= k)
        {
          paramInt1 = paramInt2;
          if (i != 0) {}
        }
        else
        {
          paramInt1 = View.MeasureSpec.makeMeasureSpec(m, -2147483648);
        }
      }
    }
    super.onMeasure(j, paramInt1);
  }
  
  public void setMaxHeight(int paramInt)
  {
    this.b = paramInt;
    super.setMaxHeight(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    this.a = paramInt;
    super.setMaxWidth(paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.internal.PreferenceImageView
 * JD-Core Version:    0.7.0.1
 */