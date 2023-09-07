package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.core.os.g;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

final class f
  implements Runnable
{
  static final ThreadLocal<f> e = new ThreadLocal();
  static Comparator<c> f = new a();
  ArrayList<RecyclerView> a = new ArrayList();
  long b;
  long c;
  private ArrayList<c> d = new ArrayList();
  
  private void b()
  {
    int i = this.a.size();
    int j = 0;
    Object localObject;
    int m;
    for (int k = j; j < i; k = m)
    {
      localObject = (RecyclerView)this.a.get(j);
      m = k;
      if (((View)localObject).getWindowVisibility() == 0)
      {
        ((RecyclerView)localObject).mPrefetchRegistry.c((RecyclerView)localObject, false);
        m = k + ((RecyclerView)localObject).mPrefetchRegistry.d;
      }
      j++;
    }
    this.d.ensureCapacity(k);
    j = 0;
    int n;
    for (k = j; j < i; k = n)
    {
      RecyclerView localRecyclerView = (RecyclerView)this.a.get(j);
      if (localRecyclerView.getWindowVisibility() != 0)
      {
        n = k;
      }
      else
      {
        b localb = localRecyclerView.mPrefetchRegistry;
        int i1 = Math.abs(localb.a) + Math.abs(localb.b);
        for (m = 0;; m += 2)
        {
          n = k;
          if (m >= localb.d * 2) {
            break;
          }
          if (k >= this.d.size())
          {
            localObject = new c();
            this.d.add(localObject);
          }
          else
          {
            localObject = (c)this.d.get(k);
          }
          int[] arrayOfInt = localb.c;
          n = arrayOfInt[(m + 1)];
          boolean bool;
          if (n <= i1) {
            bool = true;
          } else {
            bool = false;
          }
          ((c)localObject).a = bool;
          ((c)localObject).b = i1;
          ((c)localObject).c = n;
          ((c)localObject).d = localRecyclerView;
          ((c)localObject).e = arrayOfInt[m];
          k++;
        }
      }
      j++;
    }
    Collections.sort(this.d, f);
  }
  
  private void c(c paramc, long paramLong)
  {
    long l;
    if (paramc.a) {
      l = 9223372036854775807L;
    } else {
      l = paramLong;
    }
    paramc = i(paramc.d, paramc.e, l);
    if ((paramc != null) && (paramc.mNestedRecyclerView != null) && (paramc.isBound()) && (!paramc.isInvalid())) {
      h((RecyclerView)paramc.mNestedRecyclerView.get(), paramLong);
    }
  }
  
  private void d(long paramLong)
  {
    for (int i = 0; i < this.d.size(); i++)
    {
      c localc = (c)this.d.get(i);
      if (localc.d == null) {
        break;
      }
      c(localc, paramLong);
      localc.a();
    }
  }
  
  static boolean e(RecyclerView paramRecyclerView, int paramInt)
  {
    int i = paramRecyclerView.mChildHelper.j();
    for (int j = 0; j < i; j++)
    {
      RecyclerView.c0 localc0 = RecyclerView.getChildViewHolderInt(paramRecyclerView.mChildHelper.i(j));
      if ((localc0.mPosition == paramInt) && (!localc0.isInvalid())) {
        return true;
      }
    }
    return false;
  }
  
  private void h(RecyclerView paramRecyclerView, long paramLong)
  {
    if (paramRecyclerView == null) {
      return;
    }
    if ((paramRecyclerView.mDataSetHasChangedAfterLayout) && (paramRecyclerView.mChildHelper.j() != 0)) {
      paramRecyclerView.removeAndRecycleViews();
    }
    b localb = paramRecyclerView.mPrefetchRegistry;
    localb.c(paramRecyclerView, true);
    if (localb.d != 0) {
      try
      {
        g.a("RV Nested Prefetch");
        paramRecyclerView.mState.f(paramRecyclerView.mAdapter);
        for (int i = 0; i < localb.d * 2; i += 2) {
          i(paramRecyclerView, localb.c[i], paramLong);
        }
      }
      finally
      {
        g.b();
      }
    }
  }
  
  private RecyclerView.c0 i(RecyclerView paramRecyclerView, int paramInt, long paramLong)
  {
    if (e(paramRecyclerView, paramInt)) {
      return null;
    }
    RecyclerView.v localv = paramRecyclerView.mRecycler;
    try
    {
      paramRecyclerView.onEnterLayoutOrScroll();
      RecyclerView.c0 localc0 = localv.I(paramInt, false, paramLong);
      if (localc0 != null) {
        if ((localc0.isBound()) && (!localc0.isInvalid())) {
          localv.B(localc0.itemView);
        } else {
          localv.a(localc0, false);
        }
      }
      return localc0;
    }
    finally
    {
      paramRecyclerView.onExitLayoutOrScroll(false);
    }
  }
  
  public void a(RecyclerView paramRecyclerView)
  {
    this.a.add(paramRecyclerView);
  }
  
  void f(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    if ((paramRecyclerView.isAttachedToWindow()) && (this.b == 0L))
    {
      this.b = paramRecyclerView.getNanoTime();
      paramRecyclerView.post(this);
    }
    paramRecyclerView.mPrefetchRegistry.e(paramInt1, paramInt2);
  }
  
  void g(long paramLong)
  {
    b();
    d(paramLong);
  }
  
  public void j(RecyclerView paramRecyclerView)
  {
    this.a.remove(paramRecyclerView);
  }
  
  public void run()
  {
    try
    {
      g.a("RV Prefetch");
      boolean bool = this.a.isEmpty();
      if (bool) {}
      long l1;
      do
      {
        return;
        int i = this.a.size();
        int j = 0;
        long l2;
        for (l1 = 0L; j < i; l1 = l2)
        {
          RecyclerView localRecyclerView = (RecyclerView)this.a.get(j);
          l2 = l1;
          if (localRecyclerView.getWindowVisibility() == 0) {
            l2 = Math.max(localRecyclerView.getDrawingTime(), l1);
          }
          j++;
        }
      } while (l1 == 0L);
      g(TimeUnit.MILLISECONDS.toNanos(l1) + this.c);
      return;
    }
    finally
    {
      this.b = 0L;
      g.b();
    }
  }
  
  static final class a
    implements Comparator<f.c>
  {
    public int a(f.c paramc1, f.c paramc2)
    {
      RecyclerView localRecyclerView = paramc1.d;
      int i = 1;
      int j = 1;
      if (localRecyclerView == null) {
        k = 1;
      } else {
        k = 0;
      }
      int m;
      if (paramc2.d == null) {
        m = 1;
      } else {
        m = 0;
      }
      if (k != m)
      {
        if (localRecyclerView == null) {
          k = j;
        } else {
          k = -1;
        }
        return k;
      }
      boolean bool = paramc1.a;
      if (bool != paramc2.a)
      {
        k = i;
        if (bool) {
          k = -1;
        }
        return k;
      }
      int k = paramc2.b - paramc1.b;
      if (k != 0) {
        return k;
      }
      k = paramc1.c - paramc2.c;
      if (k != 0) {
        return k;
      }
      return 0;
    }
  }
  
  @SuppressLint({"VisibleForTests"})
  static class b
    implements RecyclerView.o.c
  {
    int a;
    int b;
    int[] c;
    int d;
    
    public void a(int paramInt1, int paramInt2)
    {
      if (paramInt1 >= 0)
      {
        if (paramInt2 >= 0)
        {
          int i = this.d * 2;
          int[] arrayOfInt1 = this.c;
          if (arrayOfInt1 == null)
          {
            arrayOfInt2 = new int[4];
            this.c = arrayOfInt2;
            Arrays.fill(arrayOfInt2, -1);
          }
          else if (i >= arrayOfInt1.length)
          {
            arrayOfInt2 = new int[i * 2];
            this.c = arrayOfInt2;
            System.arraycopy(arrayOfInt1, 0, arrayOfInt2, 0, arrayOfInt1.length);
          }
          int[] arrayOfInt2 = this.c;
          arrayOfInt2[i] = paramInt1;
          arrayOfInt2[(i + 1)] = paramInt2;
          this.d += 1;
          return;
        }
        throw new IllegalArgumentException("Pixel distance must be non-negative");
      }
      throw new IllegalArgumentException("Layout positions must be non-negative");
    }
    
    void b()
    {
      int[] arrayOfInt = this.c;
      if (arrayOfInt != null) {
        Arrays.fill(arrayOfInt, -1);
      }
      this.d = 0;
    }
    
    void c(RecyclerView paramRecyclerView, boolean paramBoolean)
    {
      this.d = 0;
      Object localObject = this.c;
      if (localObject != null) {
        Arrays.fill((int[])localObject, -1);
      }
      localObject = paramRecyclerView.mLayout;
      if ((paramRecyclerView.mAdapter != null) && (localObject != null) && (((RecyclerView.o)localObject).isItemPrefetchEnabled()))
      {
        if (paramBoolean)
        {
          if (!paramRecyclerView.mAdapterHelper.p()) {
            ((RecyclerView.o)localObject).collectInitialPrefetchPositions(paramRecyclerView.mAdapter.getItemCount(), this);
          }
        }
        else if (!paramRecyclerView.hasPendingAdapterUpdates()) {
          ((RecyclerView.o)localObject).collectAdjacentPrefetchPositions(this.a, this.b, paramRecyclerView.mState, this);
        }
        int i = this.d;
        if (i > ((RecyclerView.o)localObject).mPrefetchMaxCountObserved)
        {
          ((RecyclerView.o)localObject).mPrefetchMaxCountObserved = i;
          ((RecyclerView.o)localObject).mPrefetchMaxObservedInInitialPrefetch = paramBoolean;
          paramRecyclerView.mRecycler.K();
        }
      }
    }
    
    boolean d(int paramInt)
    {
      if (this.c != null)
      {
        int i = this.d;
        for (int j = 0; j < i * 2; j += 2) {
          if (this.c[j] == paramInt) {
            return true;
          }
        }
      }
      return false;
    }
    
    void e(int paramInt1, int paramInt2)
    {
      this.a = paramInt1;
      this.b = paramInt2;
    }
  }
  
  static class c
  {
    public boolean a;
    public int b;
    public int c;
    public RecyclerView d;
    public int e;
    
    public void a()
    {
      this.a = false;
      this.b = 0;
      this.c = 0;
      this.d = null;
      this.e = 0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.f
 * JD-Core Version:    0.7.0.1
 */