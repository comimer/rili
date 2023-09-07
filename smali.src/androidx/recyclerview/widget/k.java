package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;

public abstract class k
{
  protected final RecyclerView.o a;
  private int b = -2147483648;
  final Rect c = new Rect();
  
  private k(RecyclerView.o paramo)
  {
    this.a = paramo;
  }
  
  public static k a(RecyclerView.o paramo)
  {
    return new a(paramo);
  }
  
  public static k b(RecyclerView.o paramo, int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt == 1) {
        return c(paramo);
      }
      throw new IllegalArgumentException("invalid orientation");
    }
    return a(paramo);
  }
  
  public static k c(RecyclerView.o paramo)
  {
    return new b(paramo);
  }
  
  public abstract int d(View paramView);
  
  public abstract int e(View paramView);
  
  public abstract int f(View paramView);
  
  public abstract int g(View paramView);
  
  public abstract int h();
  
  public abstract int i();
  
  public abstract int j();
  
  public abstract int k();
  
  public abstract int l();
  
  public abstract int m();
  
  public abstract int n();
  
  public int o()
  {
    int i;
    if (-2147483648 == this.b) {
      i = 0;
    } else {
      i = n() - this.b;
    }
    return i;
  }
  
  public abstract int p(View paramView);
  
  public abstract int q(View paramView);
  
  public abstract void r(int paramInt);
  
  public void s()
  {
    this.b = n();
  }
  
  static final class a
    extends k
  {
    a(RecyclerView.o paramo)
    {
      super(null);
    }
    
    public int d(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedRight(paramView) + localp.rightMargin;
    }
    
    public int e(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedMeasuredWidth(paramView) + localp.leftMargin + localp.rightMargin;
    }
    
    public int f(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedMeasuredHeight(paramView) + localp.topMargin + localp.bottomMargin;
    }
    
    public int g(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedLeft(paramView) - localp.leftMargin;
    }
    
    public int h()
    {
      return this.a.getWidth();
    }
    
    public int i()
    {
      return this.a.getWidth() - this.a.getPaddingRight();
    }
    
    public int j()
    {
      return this.a.getPaddingRight();
    }
    
    public int k()
    {
      return this.a.getWidthMode();
    }
    
    public int l()
    {
      return this.a.getHeightMode();
    }
    
    public int m()
    {
      return this.a.getPaddingLeft();
    }
    
    public int n()
    {
      return this.a.getWidth() - this.a.getPaddingLeft() - this.a.getPaddingRight();
    }
    
    public int p(View paramView)
    {
      this.a.getTransformedBoundingBox(paramView, true, this.c);
      return this.c.right;
    }
    
    public int q(View paramView)
    {
      this.a.getTransformedBoundingBox(paramView, true, this.c);
      return this.c.left;
    }
    
    public void r(int paramInt)
    {
      this.a.offsetChildrenHorizontal(paramInt);
    }
  }
  
  static final class b
    extends k
  {
    b(RecyclerView.o paramo)
    {
      super(null);
    }
    
    public int d(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedBottom(paramView) + localp.bottomMargin;
    }
    
    public int e(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedMeasuredHeight(paramView) + localp.topMargin + localp.bottomMargin;
    }
    
    public int f(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedMeasuredWidth(paramView) + localp.leftMargin + localp.rightMargin;
    }
    
    public int g(View paramView)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      return this.a.getDecoratedTop(paramView) - localp.topMargin;
    }
    
    public int h()
    {
      return this.a.getHeight();
    }
    
    public int i()
    {
      return this.a.getHeight() - this.a.getPaddingBottom();
    }
    
    public int j()
    {
      return this.a.getPaddingBottom();
    }
    
    public int k()
    {
      return this.a.getHeightMode();
    }
    
    public int l()
    {
      return this.a.getWidthMode();
    }
    
    public int m()
    {
      return this.a.getPaddingTop();
    }
    
    public int n()
    {
      return this.a.getHeight() - this.a.getPaddingTop() - this.a.getPaddingBottom();
    }
    
    public int p(View paramView)
    {
      this.a.getTransformedBoundingBox(paramView, true, this.c);
      return this.c.bottom;
    }
    
    public int q(View paramView)
    {
      this.a.getTransformedBoundingBox(paramView, true, this.c);
      return this.c.top;
    }
    
    public void r(int paramInt)
    {
      this.a.offsetChildrenVertical(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.k
 * JD-Core Version:    0.7.0.1
 */