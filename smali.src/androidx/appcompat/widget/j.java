package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import b0.f;

class j
{
  private final TextView a;
  private final f b;
  
  j(TextView paramTextView)
  {
    this.a = paramTextView;
    this.b = new f(paramTextView, false);
  }
  
  InputFilter[] a(InputFilter[] paramArrayOfInputFilter)
  {
    return this.b.a(paramArrayOfInputFilter);
  }
  
  public boolean b()
  {
    return this.b.b();
  }
  
  void c(AttributeSet paramAttributeSet, int paramInt)
  {
    TypedArray localTypedArray = this.a.getContext().obtainStyledAttributes(paramAttributeSet, d.j.g0, paramInt, 0);
    try
    {
      paramInt = d.j.u0;
      boolean bool1 = localTypedArray.hasValue(paramInt);
      boolean bool2 = true;
      if (bool1) {
        bool2 = localTypedArray.getBoolean(paramInt, true);
      }
      localTypedArray.recycle();
      e(bool2);
      return;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  void d(boolean paramBoolean)
  {
    this.b.c(paramBoolean);
  }
  
  void e(boolean paramBoolean)
  {
    this.b.d(paramBoolean);
  }
  
  public TransformationMethod f(TransformationMethod paramTransformationMethod)
  {
    return this.b.e(paramTransformationMethod);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.j
 * JD-Core Version:    0.7.0.1
 */