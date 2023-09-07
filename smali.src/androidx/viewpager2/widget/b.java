package androidx.viewpager2.widget;

import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

final class b
  extends ViewPager2.i
{
  private final List<ViewPager2.i> a;
  
  b(int paramInt)
  {
    this.a = new ArrayList(paramInt);
  }
  
  private void c(ConcurrentModificationException paramConcurrentModificationException)
  {
    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", paramConcurrentModificationException);
  }
  
  void a(ViewPager2.i parami)
  {
    this.a.add(parami);
  }
  
  void b(ViewPager2.i parami)
  {
    this.a.remove(parami);
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    try
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        ((ViewPager2.i)localIterator.next()).onPageScrollStateChanged(paramInt);
      }
      return;
    }
    catch (ConcurrentModificationException localConcurrentModificationException)
    {
      c(localConcurrentModificationException);
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    try
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        ((ViewPager2.i)localIterator.next()).onPageScrolled(paramInt1, paramFloat, paramInt2);
      }
      return;
    }
    catch (ConcurrentModificationException localConcurrentModificationException)
    {
      c(localConcurrentModificationException);
    }
  }
  
  public void onPageSelected(int paramInt)
  {
    try
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        ((ViewPager2.i)localIterator.next()).onPageSelected(paramInt);
      }
      return;
    }
    catch (ConcurrentModificationException localConcurrentModificationException)
    {
      c(localConcurrentModificationException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager2.widget.b
 * JD-Core Version:    0.7.0.1
 */