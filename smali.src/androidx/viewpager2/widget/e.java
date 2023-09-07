package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.o;
import androidx.recyclerview.widget.RecyclerView.t;
import java.util.Locale;

final class e
  extends RecyclerView.t
{
  private ViewPager2.i a;
  private final ViewPager2 b;
  private final RecyclerView c;
  private final LinearLayoutManager d;
  private int e;
  private int f;
  private a g;
  private int h;
  private int i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  
  e(ViewPager2 paramViewPager2)
  {
    this.b = paramViewPager2;
    paramViewPager2 = paramViewPager2.j;
    this.c = paramViewPager2;
    this.d = ((LinearLayoutManager)paramViewPager2.getLayoutManager());
    this.g = new a();
    l();
  }
  
  private void a(int paramInt1, float paramFloat, int paramInt2)
  {
    ViewPager2.i locali = this.a;
    if (locali != null) {
      locali.onPageScrolled(paramInt1, paramFloat, paramInt2);
    }
  }
  
  private void b(int paramInt)
  {
    ViewPager2.i locali = this.a;
    if (locali != null) {
      locali.onPageSelected(paramInt);
    }
  }
  
  private void c(int paramInt)
  {
    if ((this.e == 3) && (this.f == 0)) {
      return;
    }
    if (this.f == paramInt) {
      return;
    }
    this.f = paramInt;
    ViewPager2.i locali = this.a;
    if (locali != null) {
      locali.onPageScrollStateChanged(paramInt);
    }
  }
  
  private int d()
  {
    return this.d.findFirstVisibleItemPosition();
  }
  
  private boolean i()
  {
    int n = this.e;
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (n != 1) {
      if (n == 4) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  private void l()
  {
    this.e = 0;
    this.f = 0;
    this.g.a();
    this.h = -1;
    this.i = -1;
    this.j = false;
    this.k = false;
    this.m = false;
    this.l = false;
  }
  
  private void n(boolean paramBoolean)
  {
    this.m = paramBoolean;
    if (paramBoolean) {
      n = 4;
    } else {
      n = 1;
    }
    this.e = n;
    int n = this.i;
    if (n != -1)
    {
      this.h = n;
      this.i = -1;
    }
    else if (this.h == -1)
    {
      this.h = d();
    }
    c(1);
  }
  
  private void o()
  {
    a locala = this.g;
    int n = this.d.findFirstVisibleItemPosition();
    locala.a = n;
    if (n == -1)
    {
      locala.a();
      return;
    }
    View localView = this.d.findViewByPosition(n);
    if (localView == null)
    {
      locala.a();
      return;
    }
    int i1 = this.d.getLeftDecorationWidth(localView);
    int i2 = this.d.getRightDecorationWidth(localView);
    int i3 = this.d.getTopDecorationHeight(localView);
    int i4 = this.d.getBottomDecorationHeight(localView);
    Object localObject = localView.getLayoutParams();
    int i5 = i1;
    int i6 = i2;
    n = i3;
    int i7 = i4;
    if ((localObject instanceof ViewGroup.MarginLayoutParams))
    {
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      i5 = i1 + ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
      i6 = i2 + ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
      n = i3 + ((ViewGroup.MarginLayoutParams)localObject).topMargin;
      i7 = i4 + ((ViewGroup.MarginLayoutParams)localObject).bottomMargin;
    }
    i4 = localView.getHeight() + n + i7;
    i3 = localView.getWidth();
    if (this.d.getOrientation() == 0) {
      i7 = 1;
    } else {
      i7 = 0;
    }
    if (i7 != 0)
    {
      i7 = localView.getLeft() - i5 - this.c.getPaddingLeft();
      n = i7;
      if (this.b.d()) {
        n = -i7;
      }
      i5 = i3 + i5 + i6;
      i6 = n;
      n = i5;
    }
    else
    {
      i6 = localView.getTop() - n - this.c.getPaddingTop();
      n = i4;
    }
    i6 = -i6;
    locala.c = i6;
    if (i6 < 0)
    {
      if (new a(this.d).d()) {
        throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
      }
      throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", new Object[] { Integer.valueOf(locala.c) }));
    }
    float f1;
    if (n == 0) {
      f1 = 0.0F;
    } else {
      f1 = i6 / n;
    }
    locala.b = f1;
  }
  
  double e()
  {
    o();
    a locala = this.g;
    return locala.a + locala.b;
  }
  
  int f()
  {
    return this.f;
  }
  
  boolean g()
  {
    return this.m;
  }
  
  boolean h()
  {
    boolean bool;
    if (this.f == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void j()
  {
    this.l = true;
  }
  
  void k(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      n = 2;
    } else {
      n = 3;
    }
    this.e = n;
    int n = 0;
    this.m = false;
    if (this.i != paramInt) {
      n = 1;
    }
    this.i = paramInt;
    c(2);
    if (n != 0) {
      b(paramInt);
    }
  }
  
  void m(ViewPager2.i parami)
  {
    this.a = parami;
  }
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
  {
    int n = this.e;
    int i1 = 1;
    if (((n != 1) || (this.f != 1)) && (paramInt == 1))
    {
      n(false);
      return;
    }
    if ((i()) && (paramInt == 2))
    {
      if (this.k)
      {
        c(2);
        this.j = true;
      }
      return;
    }
    if ((i()) && (paramInt == 0))
    {
      o();
      int i2;
      if (!this.k)
      {
        i2 = this.g.a;
        n = i1;
        if (i2 != -1)
        {
          a(i2, 0.0F, 0);
          n = i1;
        }
      }
      else
      {
        paramRecyclerView = this.g;
        if (paramRecyclerView.c == 0)
        {
          i2 = this.h;
          int i3 = paramRecyclerView.a;
          n = i1;
          if (i2 != i3)
          {
            b(i3);
            n = i1;
          }
        }
        else
        {
          n = 0;
        }
      }
      if (n != 0)
      {
        c(0);
        l();
      }
    }
    if ((this.e == 2) && (paramInt == 0) && (this.l))
    {
      o();
      paramRecyclerView = this.g;
      if (paramRecyclerView.c == 0)
      {
        paramInt = this.i;
        n = paramRecyclerView.a;
        if (paramInt != n)
        {
          paramInt = n;
          if (n == -1) {
            paramInt = 0;
          }
          b(paramInt);
        }
        c(0);
        l();
      }
    }
  }
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    this.k = true;
    o();
    if (this.j)
    {
      this.j = false;
      if (paramInt2 <= 0) {
        if (paramInt2 == 0)
        {
          int n;
          if (paramInt1 < 0) {
            n = 1;
          } else {
            n = 0;
          }
          if (n == this.b.d()) {}
        }
        else
        {
          paramInt1 = 0;
          break label64;
        }
      }
      paramInt1 = 1;
      label64:
      if (paramInt1 != 0)
      {
        paramRecyclerView = this.g;
        if (paramRecyclerView.c != 0)
        {
          paramInt1 = paramRecyclerView.a + 1;
          break label98;
        }
      }
      paramInt1 = this.g.a;
      label98:
      this.i = paramInt1;
      if (this.h != paramInt1) {
        b(paramInt1);
      }
    }
    else if (this.e == 0)
    {
      paramInt2 = this.g.a;
      paramInt1 = paramInt2;
      if (paramInt2 == -1) {
        paramInt1 = 0;
      }
      b(paramInt1);
    }
    paramRecyclerView = this.g;
    paramInt2 = paramRecyclerView.a;
    paramInt1 = paramInt2;
    if (paramInt2 == -1) {
      paramInt1 = 0;
    }
    a(paramInt1, paramRecyclerView.b, paramRecyclerView.c);
    paramRecyclerView = this.g;
    paramInt2 = paramRecyclerView.a;
    paramInt1 = this.i;
    if (((paramInt2 == paramInt1) || (paramInt1 == -1)) && (paramRecyclerView.c == 0) && (this.f != 1))
    {
      c(0);
      l();
    }
  }
  
  private static final class a
  {
    int a;
    float b;
    int c;
    
    void a()
    {
      this.a = -1;
      this.b = 0.0F;
      this.c = 0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager2.widget.e
 * JD-Core Version:    0.7.0.1
 */