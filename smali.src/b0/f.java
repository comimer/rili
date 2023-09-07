package b0;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

public final class f
{
  private final b a;
  
  public f(TextView paramTextView, boolean paramBoolean)
  {
    androidx.core.util.h.h(paramTextView, "textView cannot be null");
    if (!paramBoolean) {
      this.a = new c(paramTextView);
    } else {
      this.a = new a(paramTextView);
    }
  }
  
  public InputFilter[] a(InputFilter[] paramArrayOfInputFilter)
  {
    return this.a.a(paramArrayOfInputFilter);
  }
  
  public boolean b()
  {
    return this.a.b();
  }
  
  public void c(boolean paramBoolean)
  {
    this.a.c(paramBoolean);
  }
  
  public void d(boolean paramBoolean)
  {
    this.a.d(paramBoolean);
  }
  
  public TransformationMethod e(TransformationMethod paramTransformationMethod)
  {
    return this.a.e(paramTransformationMethod);
  }
  
  private static class a
    extends f.b
  {
    private final TextView a;
    private final d b;
    private boolean c;
    
    a(TextView paramTextView)
    {
      this.a = paramTextView;
      this.c = true;
      this.b = new d(paramTextView);
    }
    
    private InputFilter[] f(InputFilter[] paramArrayOfInputFilter)
    {
      int i = paramArrayOfInputFilter.length;
      for (int j = 0; j < i; j++) {
        if (paramArrayOfInputFilter[j] == this.b) {
          return paramArrayOfInputFilter;
        }
      }
      InputFilter[] arrayOfInputFilter = new InputFilter[paramArrayOfInputFilter.length + 1];
      System.arraycopy(paramArrayOfInputFilter, 0, arrayOfInputFilter, 0, i);
      arrayOfInputFilter[i] = this.b;
      return arrayOfInputFilter;
    }
    
    private SparseArray<InputFilter> g(InputFilter[] paramArrayOfInputFilter)
    {
      SparseArray localSparseArray = new SparseArray(1);
      for (int i = 0; i < paramArrayOfInputFilter.length; i++)
      {
        InputFilter localInputFilter = paramArrayOfInputFilter[i];
        if ((localInputFilter instanceof d)) {
          localSparseArray.put(i, localInputFilter);
        }
      }
      return localSparseArray;
    }
    
    private InputFilter[] h(InputFilter[] paramArrayOfInputFilter)
    {
      SparseArray localSparseArray = g(paramArrayOfInputFilter);
      if (localSparseArray.size() == 0) {
        return paramArrayOfInputFilter;
      }
      int i = paramArrayOfInputFilter.length;
      InputFilter[] arrayOfInputFilter = new InputFilter[paramArrayOfInputFilter.length - localSparseArray.size()];
      int j = 0;
      int m;
      for (int k = 0; j < i; k = m)
      {
        m = k;
        if (localSparseArray.indexOfKey(j) < 0)
        {
          arrayOfInputFilter[k] = paramArrayOfInputFilter[j];
          m = k + 1;
        }
        j++;
      }
      return arrayOfInputFilter;
    }
    
    private TransformationMethod j(TransformationMethod paramTransformationMethod)
    {
      TransformationMethod localTransformationMethod = paramTransformationMethod;
      if ((paramTransformationMethod instanceof h)) {
        localTransformationMethod = ((h)paramTransformationMethod).a();
      }
      return localTransformationMethod;
    }
    
    private void k()
    {
      InputFilter[] arrayOfInputFilter = this.a.getFilters();
      this.a.setFilters(a(arrayOfInputFilter));
    }
    
    private TransformationMethod m(TransformationMethod paramTransformationMethod)
    {
      if ((paramTransformationMethod instanceof h)) {
        return paramTransformationMethod;
      }
      if ((paramTransformationMethod instanceof PasswordTransformationMethod)) {
        return paramTransformationMethod;
      }
      return new h(paramTransformationMethod);
    }
    
    InputFilter[] a(InputFilter[] paramArrayOfInputFilter)
    {
      if (!this.c) {
        return h(paramArrayOfInputFilter);
      }
      return f(paramArrayOfInputFilter);
    }
    
    public boolean b()
    {
      return this.c;
    }
    
    void c(boolean paramBoolean)
    {
      if (paramBoolean) {
        l();
      }
    }
    
    void d(boolean paramBoolean)
    {
      this.c = paramBoolean;
      l();
      k();
    }
    
    TransformationMethod e(TransformationMethod paramTransformationMethod)
    {
      if (this.c) {
        return m(paramTransformationMethod);
      }
      return j(paramTransformationMethod);
    }
    
    void i(boolean paramBoolean)
    {
      this.c = paramBoolean;
    }
    
    void l()
    {
      TransformationMethod localTransformationMethod = e(this.a.getTransformationMethod());
      this.a.setTransformationMethod(localTransformationMethod);
    }
  }
  
  static class b
  {
    InputFilter[] a(InputFilter[] paramArrayOfInputFilter)
    {
      throw null;
    }
    
    public boolean b()
    {
      throw null;
    }
    
    void c(boolean paramBoolean)
    {
      throw null;
    }
    
    void d(boolean paramBoolean)
    {
      throw null;
    }
    
    TransformationMethod e(TransformationMethod paramTransformationMethod)
    {
      throw null;
    }
  }
  
  private static class c
    extends f.b
  {
    private final f.a a;
    
    c(TextView paramTextView)
    {
      this.a = new f.a(paramTextView);
    }
    
    private boolean f()
    {
      return androidx.emoji2.text.d.h() ^ true;
    }
    
    InputFilter[] a(InputFilter[] paramArrayOfInputFilter)
    {
      if (f()) {
        return paramArrayOfInputFilter;
      }
      return this.a.a(paramArrayOfInputFilter);
    }
    
    public boolean b()
    {
      return this.a.b();
    }
    
    void c(boolean paramBoolean)
    {
      if (f()) {
        return;
      }
      this.a.c(paramBoolean);
    }
    
    void d(boolean paramBoolean)
    {
      if (f()) {
        this.a.i(paramBoolean);
      } else {
        this.a.d(paramBoolean);
      }
    }
    
    TransformationMethod e(TransformationMethod paramTransformationMethod)
    {
      if (f()) {
        return paramTransformationMethod;
      }
      return this.a.e(paramTransformationMethod);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b0.f
 * JD-Core Version:    0.7.0.1
 */