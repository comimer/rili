package x1;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.f;
import androidx.databinding.h;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.u;
import miuix.androidbasewidget.widget.StateEditText;
import y.c;

public class b
  extends a
{
  private static final SparseIntArray l;
  private final ConstraintLayout g;
  private h h = new a();
  private h i = new b();
  private h j = new c();
  private long k = -1L;
  
  static
  {
    SparseIntArray localSparseIntArray = new SparseIntArray();
    l = localSparseIntArray;
    localSparseIntArray.put(2131362604, 4);
    localSparseIntArray.put(2131362607, 5);
  }
  
  public b(f paramf, View paramView)
  {
    this(paramf, paramView, ViewDataBinding.mapBindings(paramf, paramView, 6, null, l));
  }
  
  private b(f paramf, View paramView, Object[] paramArrayOfObject)
  {
    super(paramf, paramView, 3, (TextView)paramArrayOfObject[4], (TextView)paramArrayOfObject[5], (StateEditText)paramArrayOfObject[2], (StateEditText)paramArrayOfObject[3], (StateEditText)paramArrayOfObject[1]);
    paramf = (ConstraintLayout)paramArrayOfObject[0];
    this.g = paramf;
    paramf.setTag(null);
    this.c.setTag(null);
    this.d.setTag(null);
    this.e.setTag(null);
    setRootTag(paramView);
    invalidateAll();
  }
  
  private boolean d(u<String> paramu, int paramInt)
  {
    if (paramInt == 0) {
      try
      {
        this.k |= 0x4;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean e(u<String> paramu, int paramInt)
  {
    if (paramInt == 0) {
      try
      {
        this.k |= 1L;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  private boolean f(u<String> paramu, int paramInt)
  {
    if (paramInt == 0) {
      try
      {
        this.k |= 0x2;
        return true;
      }
      finally {}
    }
    return false;
  }
  
  public void c(n4.a parama)
  {
    this.f = parama;
    try
    {
      this.k |= 0x8;
      notifyPropertyChanged(1);
      super.requestRebind();
      return;
    }
    finally {}
  }
  
  protected void executeBindings()
  {
    try
    {
      long l1 = this.k;
      this.k = 0L;
      Object localObject1 = this.f;
      Object localObject2;
      label84:
      Object localObject4;
      if ((0x1F & l1) != 0L)
      {
        if ((l1 & 0x19) != 0L)
        {
          if (localObject1 != null) {
            localObject2 = ((n4.a)localObject1).g();
          } else {
            localObject2 = null;
          }
          updateLiveDataRegistration(0, (LiveData)localObject2);
          if (localObject2 != null)
          {
            localObject2 = (String)((LiveData)localObject2).e();
            break label84;
          }
        }
        localObject2 = null;
        if ((l1 & 0x1A) != 0L)
        {
          if (localObject1 != null) {
            localObject4 = ((n4.a)localObject1).i();
          } else {
            localObject4 = null;
          }
          updateLiveDataRegistration(1, (LiveData)localObject4);
          if (localObject4 != null)
          {
            localObject4 = (String)((LiveData)localObject4).e();
            break label139;
          }
        }
        localObject4 = null;
        label139:
        if ((l1 & 0x1C) != 0L)
        {
          if (localObject1 != null) {
            localObject1 = ((n4.a)localObject1).f();
          } else {
            localObject1 = null;
          }
          updateLiveDataRegistration(2, (LiveData)localObject1);
          if (localObject1 != null)
          {
            localObject1 = (String)((LiveData)localObject1).e();
            break label199;
          }
        }
        localObject1 = null;
      }
      else
      {
        localObject1 = null;
        localObject2 = localObject1;
        localObject4 = localObject2;
      }
      label199:
      if ((0x19 & l1) != 0L) {
        c.c(this.c, (CharSequence)localObject2);
      }
      if ((0x10 & l1) != 0L)
      {
        c.d(this.c, null, null, null, this.h);
        c.d(this.d, null, null, null, this.i);
        c.d(this.e, null, null, null, this.j);
      }
      if ((l1 & 0x1C) != 0L) {
        c.c(this.d, (CharSequence)localObject1);
      }
      if ((l1 & 0x1A) != 0L) {
        c.c(this.e, (CharSequence)localObject4);
      }
      return;
    }
    finally {}
  }
  
  public boolean hasPendingBindings()
  {
    try
    {
      return this.k != 0L;
    }
    finally {}
  }
  
  public void invalidateAll()
  {
    try
    {
      this.k = 16L;
      requestRebind();
      return;
    }
    finally {}
  }
  
  protected boolean onFieldChange(int paramInt1, Object paramObject, int paramInt2)
  {
    if (paramInt1 != 0)
    {
      if (paramInt1 != 1)
      {
        if (paramInt1 != 2) {
          return false;
        }
        return d((u)paramObject, paramInt2);
      }
      return f((u)paramObject, paramInt2);
    }
    return e((u)paramObject, paramInt2);
  }
  
  public boolean setVariable(int paramInt, Object paramObject)
  {
    boolean bool = true;
    if (1 == paramInt) {
      c((n4.a)paramObject);
    } else {
      bool = false;
    }
    return bool;
  }
  
  class a
    implements h
  {
    a() {}
    
    public void onChange()
    {
      String str = c.a(b.this.c);
      Object localObject = b.this.f;
      int i = 1;
      int j;
      if (localObject != null) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        localObject = ((n4.a)localObject).g();
        if (localObject != null) {
          j = i;
        } else {
          j = 0;
        }
        if (j != 0) {
          ((u)localObject).n(str);
        }
      }
    }
  }
  
  class b
    implements h
  {
    b() {}
    
    public void onChange()
    {
      String str = c.a(b.this.d);
      Object localObject = b.this.f;
      int i = 1;
      int j;
      if (localObject != null) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        localObject = ((n4.a)localObject).f();
        if (localObject != null) {
          j = i;
        } else {
          j = 0;
        }
        if (j != 0) {
          ((u)localObject).n(str);
        }
      }
    }
  }
  
  class c
    implements h
  {
    c() {}
    
    public void onChange()
    {
      String str = c.a(b.this.e);
      Object localObject = b.this.f;
      int i = 1;
      int j;
      if (localObject != null) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        localObject = ((n4.a)localObject).i();
        if (localObject != null) {
          j = i;
        } else {
          j = 0;
        }
        if (j != 0) {
          ((u)localObject).n(str);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x1.b
 * JD-Core Version:    0.7.0.1
 */