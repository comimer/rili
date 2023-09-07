package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView.o;
import java.util.Locale;

final class d
  extends ViewPager2.i
{
  private final LinearLayoutManager a;
  private ViewPager2.k b;
  
  d(LinearLayoutManager paramLinearLayoutManager)
  {
    this.a = paramLinearLayoutManager;
  }
  
  ViewPager2.k a()
  {
    return this.b;
  }
  
  void b(ViewPager2.k paramk)
  {
    this.b = paramk;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.b == null) {
      return;
    }
    paramFloat = -paramFloat;
    paramInt2 = 0;
    while (paramInt2 < this.a.getChildCount())
    {
      View localView = this.a.getChildAt(paramInt2);
      if (localView != null)
      {
        float f = this.a.getPosition(localView) - paramInt1;
        this.b.a(localView, f + paramFloat);
        paramInt2++;
      }
      else
      {
        throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(this.a.getChildCount()) }));
      }
    }
  }
  
  public void onPageSelected(int paramInt) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager2.widget.d
 * JD-Core Version:    0.7.0.1
 */