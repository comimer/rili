package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import androidx.core.view.a0;

public class ContentFrameLayout
  extends FrameLayout
{
  private TypedValue a;
  private TypedValue b;
  private TypedValue c;
  private TypedValue d;
  private TypedValue e;
  private TypedValue f;
  private final Rect g = new Rect();
  private a h;
  
  public ContentFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.g.set(paramInt1, paramInt2, paramInt3, paramInt4);
    if (a0.P(this)) {
      requestLayout();
    }
  }
  
  public TypedValue getFixedHeightMajor()
  {
    if (this.e == null) {
      this.e = new TypedValue();
    }
    return this.e;
  }
  
  public TypedValue getFixedHeightMinor()
  {
    if (this.f == null) {
      this.f = new TypedValue();
    }
    return this.f;
  }
  
  public TypedValue getFixedWidthMajor()
  {
    if (this.c == null) {
      this.c = new TypedValue();
    }
    return this.c;
  }
  
  public TypedValue getFixedWidthMinor()
  {
    if (this.d == null) {
      this.d = new TypedValue();
    }
    return this.d;
  }
  
  public TypedValue getMinWidthMajor()
  {
    if (this.a == null) {
      this.a = new TypedValue();
    }
    return this.a;
  }
  
  public TypedValue getMinWidthMinor()
  {
    if (this.b == null) {
      this.b = new TypedValue();
    }
    return this.b;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a locala = this.h;
    if (locala != null) {
      locala.a();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a locala = this.h;
    if (locala != null) {
      locala.onDetachedFromWindow();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    int k = 1;
    if (i < j) {
      j = 1;
    } else {
      j = 0;
    }
    int m = View.MeasureSpec.getMode(paramInt1);
    int n = View.MeasureSpec.getMode(paramInt2);
    Object localObject;
    float f1;
    if (m == -2147483648)
    {
      if (j != 0) {
        localObject = this.d;
      } else {
        localObject = this.c;
      }
      if (localObject != null)
      {
        i = ((TypedValue)localObject).type;
        if (i != 0)
        {
          if (i == 5) {}
          for (f1 = ((TypedValue)localObject).getDimension(localDisplayMetrics);; f1 = ((TypedValue)localObject).getFraction(i, i))
          {
            i = (int)f1;
            break label152;
            if (i != 6) {
              break;
            }
            i = localDisplayMetrics.widthPixels;
          }
          i = 0;
          label152:
          if (i > 0)
          {
            localObject = this.g;
            i1 = View.MeasureSpec.makeMeasureSpec(Math.min(i - (((Rect)localObject).left + ((Rect)localObject).right), View.MeasureSpec.getSize(paramInt1)), 1073741824);
            paramInt1 = 1;
            break label205;
          }
        }
      }
    }
    i = 0;
    int i1 = paramInt1;
    paramInt1 = i;
    label205:
    i = paramInt2;
    if (n == -2147483648)
    {
      if (j != 0) {
        localObject = this.e;
      } else {
        localObject = this.f;
      }
      i = paramInt2;
      if (localObject != null)
      {
        n = ((TypedValue)localObject).type;
        i = paramInt2;
        if (n != 0)
        {
          if (n == 5) {}
          for (f1 = ((TypedValue)localObject).getDimension(localDisplayMetrics);; f1 = ((TypedValue)localObject).getFraction(i, i))
          {
            n = (int)f1;
            break label312;
            if (n != 6) {
              break;
            }
            i = localDisplayMetrics.heightPixels;
          }
          n = 0;
          label312:
          i = paramInt2;
          if (n > 0)
          {
            localObject = this.g;
            i = View.MeasureSpec.makeMeasureSpec(Math.min(n - (((Rect)localObject).top + ((Rect)localObject).bottom), View.MeasureSpec.getSize(paramInt2)), 1073741824);
          }
        }
      }
    }
    super.onMeasure(i1, i);
    n = getMeasuredWidth();
    i1 = View.MeasureSpec.makeMeasureSpec(n, 1073741824);
    if ((paramInt1 == 0) && (m == -2147483648))
    {
      if (j != 0) {
        localObject = this.b;
      } else {
        localObject = this.a;
      }
      if (localObject != null)
      {
        paramInt1 = ((TypedValue)localObject).type;
        if (paramInt1 != 0)
        {
          if (paramInt1 == 5) {}
          for (f1 = ((TypedValue)localObject).getDimension(localDisplayMetrics);; f1 = ((TypedValue)localObject).getFraction(paramInt1, paramInt1))
          {
            paramInt1 = (int)f1;
            break label470;
            if (paramInt1 != 6) {
              break;
            }
            paramInt1 = localDisplayMetrics.widthPixels;
          }
          paramInt1 = 0;
          label470:
          paramInt2 = paramInt1;
          if (paramInt1 > 0)
          {
            localObject = this.g;
            paramInt2 = paramInt1 - (((Rect)localObject).left + ((Rect)localObject).right);
          }
          if (n < paramInt2)
          {
            paramInt2 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
            paramInt1 = k;
            break label520;
          }
        }
      }
    }
    paramInt1 = 0;
    paramInt2 = i1;
    label520:
    if (paramInt1 != 0) {
      super.onMeasure(paramInt2, i);
    }
  }
  
  public void setAttachListener(a parama)
  {
    this.h = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void onDetachedFromWindow();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.ContentFrameLayout
 * JD-Core Version:    0.7.0.1
 */