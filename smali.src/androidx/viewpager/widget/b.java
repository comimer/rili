package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.database.Observable;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class b
{
  private final DataSetObservable a = new DataSetObservable();
  private DataSetObserver b;
  
  public abstract void a(ViewGroup paramViewGroup, int paramInt, Object paramObject);
  
  @Deprecated
  public void b(View paramView) {}
  
  public void c(ViewGroup paramViewGroup)
  {
    b(paramViewGroup);
  }
  
  public abstract int d();
  
  public int e(Object paramObject)
  {
    return -1;
  }
  
  public CharSequence f(int paramInt)
  {
    return null;
  }
  
  public float g(int paramInt)
  {
    return 1.0F;
  }
  
  public abstract Object h(ViewGroup paramViewGroup, int paramInt);
  
  public abstract boolean i(View paramView, Object paramObject);
  
  public void j()
  {
    try
    {
      DataSetObserver localDataSetObserver = this.b;
      if (localDataSetObserver != null) {
        localDataSetObserver.onChanged();
      }
      this.a.notifyChanged();
      return;
    }
    finally {}
  }
  
  public void k(DataSetObserver paramDataSetObserver)
  {
    this.a.registerObserver(paramDataSetObserver);
  }
  
  public void l(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public Parcelable m()
  {
    return null;
  }
  
  @Deprecated
  public void n(View paramView, int paramInt, Object paramObject) {}
  
  public void o(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    n(paramViewGroup, paramInt, paramObject);
  }
  
  void p(DataSetObserver paramDataSetObserver)
  {
    try
    {
      this.b = paramDataSetObserver;
      return;
    }
    finally {}
  }
  
  @Deprecated
  public void q(View paramView) {}
  
  public void r(ViewGroup paramViewGroup)
  {
    q(paramViewGroup);
  }
  
  public void s(DataSetObserver paramDataSetObserver)
  {
    this.a.unregisterObserver(paramDataSetObserver);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager.widget.b
 * JD-Core Version:    0.7.0.1
 */