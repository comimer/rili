package androidx.core.view;

import android.view.View;
import android.view.ViewParent;

public class q
{
  private ViewParent a;
  private ViewParent b;
  private final View c;
  private boolean d;
  private int[] e;
  
  public q(View paramView)
  {
    this.c = paramView;
  }
  
  private boolean h(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int paramInt5, int[] paramArrayOfInt2)
  {
    if (m())
    {
      ViewParent localViewParent = i(paramInt5);
      if (localViewParent == null) {
        return false;
      }
      if ((paramInt1 == 0) && (paramInt2 == 0) && (paramInt3 == 0) && (paramInt4 == 0))
      {
        if (paramArrayOfInt1 != null)
        {
          paramArrayOfInt1[0] = 0;
          paramArrayOfInt1[1] = 0;
        }
      }
      else
      {
        int i;
        int j;
        if (paramArrayOfInt1 != null)
        {
          this.c.getLocationInWindow(paramArrayOfInt1);
          i = paramArrayOfInt1[0];
          j = paramArrayOfInt1[1];
        }
        else
        {
          i = 0;
          j = i;
        }
        if (paramArrayOfInt2 == null)
        {
          paramArrayOfInt2 = j();
          paramArrayOfInt2[0] = 0;
          paramArrayOfInt2[1] = 0;
        }
        y0.d(localViewParent, this.c, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramArrayOfInt2);
        if (paramArrayOfInt1 != null)
        {
          this.c.getLocationInWindow(paramArrayOfInt1);
          paramArrayOfInt1[0] -= i;
          paramArrayOfInt1[1] -= j;
        }
        return true;
      }
    }
    return false;
  }
  
  private ViewParent i(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1) {
        return null;
      }
      return this.b;
    }
    return this.a;
  }
  
  private int[] j()
  {
    if (this.e == null) {
      this.e = new int[2];
    }
    return this.e;
  }
  
  private void o(int paramInt, ViewParent paramViewParent)
  {
    if (paramInt != 0)
    {
      if (paramInt == 1) {
        this.b = paramViewParent;
      }
    }
    else {
      this.a = paramViewParent;
    }
  }
  
  public boolean a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (m())
    {
      ViewParent localViewParent = i(0);
      if (localViewParent != null) {
        return y0.a(localViewParent, this.c, paramFloat1, paramFloat2, paramBoolean);
      }
    }
    return false;
  }
  
  public boolean b(float paramFloat1, float paramFloat2)
  {
    if (m())
    {
      ViewParent localViewParent = i(0);
      if (localViewParent != null) {
        return y0.b(localViewParent, this.c, paramFloat1, paramFloat2);
      }
    }
    return false;
  }
  
  public boolean c(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return d(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, 0);
  }
  
  public boolean d(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
  {
    boolean bool1 = m();
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      ViewParent localViewParent = i(paramInt3);
      if (localViewParent == null) {
        return false;
      }
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        bool3 = bool2;
        if (paramArrayOfInt2 != null)
        {
          paramArrayOfInt2[0] = 0;
          paramArrayOfInt2[1] = 0;
          bool3 = bool2;
        }
      }
      else
      {
        int i;
        int j;
        if (paramArrayOfInt2 != null)
        {
          this.c.getLocationInWindow(paramArrayOfInt2);
          i = paramArrayOfInt2[0];
          j = paramArrayOfInt2[1];
        }
        else
        {
          i = 0;
          j = i;
        }
        int[] arrayOfInt = paramArrayOfInt1;
        if (paramArrayOfInt1 == null) {
          arrayOfInt = j();
        }
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        y0.c(localViewParent, this.c, paramInt1, paramInt2, arrayOfInt, paramInt3);
        if (paramArrayOfInt2 != null)
        {
          this.c.getLocationInWindow(paramArrayOfInt2);
          paramArrayOfInt2[0] -= i;
          paramArrayOfInt2[1] -= j;
        }
        if (arrayOfInt[0] == 0)
        {
          bool3 = bool2;
          if (arrayOfInt[1] == 0) {}
        }
        else
        {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public void e(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int paramInt5, int[] paramArrayOfInt2)
  {
    h(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt1, paramInt5, paramArrayOfInt2);
  }
  
  public boolean f(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return h(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, 0, null);
  }
  
  public boolean g(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, int paramInt5)
  {
    return h(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramInt5, null);
  }
  
  public boolean k()
  {
    return l(0);
  }
  
  public boolean l(int paramInt)
  {
    boolean bool;
    if (i(paramInt) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean m()
  {
    return this.d;
  }
  
  public void n(boolean paramBoolean)
  {
    if (this.d) {
      a0.I0(this.c);
    }
    this.d = paramBoolean;
  }
  
  public boolean p(int paramInt)
  {
    return q(paramInt, 0);
  }
  
  public boolean q(int paramInt1, int paramInt2)
  {
    if (l(paramInt2)) {
      return true;
    }
    if (m())
    {
      ViewParent localViewParent = this.c.getParent();
      View localView = this.c;
      while (localViewParent != null)
      {
        if (y0.f(localViewParent, localView, this.c, paramInt1, paramInt2))
        {
          o(paramInt2, localViewParent);
          y0.e(localViewParent, localView, this.c, paramInt1, paramInt2);
          return true;
        }
        if ((localViewParent instanceof View)) {
          localView = (View)localViewParent;
        }
        localViewParent = localViewParent.getParent();
      }
    }
    return false;
  }
  
  public void r()
  {
    s(0);
  }
  
  public void s(int paramInt)
  {
    ViewParent localViewParent = i(paramInt);
    if (localViewParent != null)
    {
      y0.g(localViewParent, this.c, paramInt);
      o(paramInt, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.q
 * JD-Core Version:    0.7.0.1
 */