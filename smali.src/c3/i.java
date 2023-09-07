package c3;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import com.bumptech.glide.f;
import com.bumptech.glide.request.c;
import f3.j;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
public abstract class i<T extends View, Z>
  extends a<Z>
{
  private static boolean f;
  private static int g = f.a;
  protected final T a;
  private final a b;
  private View.OnAttachStateChangeListener c;
  private boolean d;
  private boolean e;
  
  public i(T paramT)
  {
    this.a = ((View)j.d(paramT));
    this.b = new a(paramT);
  }
  
  private Object k()
  {
    return this.a.getTag(g);
  }
  
  private void l()
  {
    View.OnAttachStateChangeListener localOnAttachStateChangeListener = this.c;
    if ((localOnAttachStateChangeListener != null) && (!this.e))
    {
      this.a.addOnAttachStateChangeListener(localOnAttachStateChangeListener);
      this.e = true;
    }
  }
  
  private void m()
  {
    View.OnAttachStateChangeListener localOnAttachStateChangeListener = this.c;
    if ((localOnAttachStateChangeListener != null) && (this.e))
    {
      this.a.removeOnAttachStateChangeListener(localOnAttachStateChangeListener);
      this.e = false;
    }
  }
  
  private void n(Object paramObject)
  {
    f = true;
    this.a.setTag(g, paramObject);
  }
  
  public void c(g paramg)
  {
    this.b.d(paramg);
  }
  
  public void d(c paramc)
  {
    n(paramc);
  }
  
  public void f(g paramg)
  {
    this.b.k(paramg);
  }
  
  public void h(Drawable paramDrawable)
  {
    super.h(paramDrawable);
    l();
  }
  
  public c i()
  {
    Object localObject = k();
    if (localObject != null)
    {
      if ((localObject instanceof c)) {
        localObject = (c)localObject;
      } else {
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
      }
    }
    else {
      localObject = null;
    }
    return localObject;
  }
  
  public void j(Drawable paramDrawable)
  {
    super.j(paramDrawable);
    this.b.b();
    if (!this.d) {
      m();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Target for: ");
    localStringBuilder.append(this.a);
    return localStringBuilder.toString();
  }
  
  static final class a
  {
    static Integer e;
    private final View a;
    private final List<g> b = new ArrayList();
    boolean c;
    private a d;
    
    a(View paramView)
    {
      this.a = paramView;
    }
    
    private static int c(Context paramContext)
    {
      if (e == null)
      {
        Display localDisplay = ((WindowManager)j.d((WindowManager)paramContext.getSystemService("window"))).getDefaultDisplay();
        paramContext = new Point();
        localDisplay.getSize(paramContext);
        e = Integer.valueOf(Math.max(paramContext.x, paramContext.y));
      }
      return e.intValue();
    }
    
    private int e(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = paramInt2 - paramInt3;
      if (i > 0) {
        return i;
      }
      if ((this.c) && (this.a.isLayoutRequested())) {
        return 0;
      }
      paramInt1 -= paramInt3;
      if (paramInt1 > 0) {
        return paramInt1;
      }
      if ((!this.a.isLayoutRequested()) && (paramInt2 == -2))
      {
        if (Log.isLoggable("ViewTarget", 4)) {
          Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        return c(this.a.getContext());
      }
      return 0;
    }
    
    private int f()
    {
      int i = this.a.getPaddingTop();
      int j = this.a.getPaddingBottom();
      ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
      int k;
      if (localLayoutParams != null) {
        k = localLayoutParams.height;
      } else {
        k = 0;
      }
      return e(this.a.getHeight(), k, i + j);
    }
    
    private int g()
    {
      int i = this.a.getPaddingLeft();
      int j = this.a.getPaddingRight();
      ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
      int k;
      if (localLayoutParams != null) {
        k = localLayoutParams.width;
      } else {
        k = 0;
      }
      return e(this.a.getWidth(), k, i + j);
    }
    
    private boolean h(int paramInt)
    {
      boolean bool;
      if ((paramInt <= 0) && (paramInt != -2147483648)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    private boolean i(int paramInt1, int paramInt2)
    {
      boolean bool;
      if ((h(paramInt1)) && (h(paramInt2))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private void j(int paramInt1, int paramInt2)
    {
      Iterator localIterator = new ArrayList(this.b).iterator();
      while (localIterator.hasNext()) {
        ((g)localIterator.next()).e(paramInt1, paramInt2);
      }
    }
    
    void a()
    {
      if (this.b.isEmpty()) {
        return;
      }
      int i = g();
      int j = f();
      if (!i(i, j)) {
        return;
      }
      j(i, j);
      b();
    }
    
    void b()
    {
      ViewTreeObserver localViewTreeObserver = this.a.getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeOnPreDrawListener(this.d);
      }
      this.d = null;
      this.b.clear();
    }
    
    void d(g paramg)
    {
      int i = g();
      int j = f();
      if (i(i, j))
      {
        paramg.e(i, j);
        return;
      }
      if (!this.b.contains(paramg)) {
        this.b.add(paramg);
      }
      if (this.d == null)
      {
        ViewTreeObserver localViewTreeObserver = this.a.getViewTreeObserver();
        paramg = new a(this);
        this.d = paramg;
        localViewTreeObserver.addOnPreDrawListener(paramg);
      }
    }
    
    void k(g paramg)
    {
      this.b.remove(paramg);
    }
    
    private static final class a
      implements ViewTreeObserver.OnPreDrawListener
    {
      private final WeakReference<i.a> a;
      
      a(i.a parama)
      {
        this.a = new WeakReference(parama);
      }
      
      public boolean onPreDraw()
      {
        if (Log.isLoggable("ViewTarget", 2))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("OnGlobalLayoutListener called attachStateListener=");
          ((StringBuilder)localObject).append(this);
          Log.v("ViewTarget", ((StringBuilder)localObject).toString());
        }
        Object localObject = (i.a)this.a.get();
        if (localObject != null) {
          ((i.a)localObject).a();
        }
        return true;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c3.i
 * JD-Core Version:    0.7.0.1
 */