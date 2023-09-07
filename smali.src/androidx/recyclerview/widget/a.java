package androidx.recyclerview.widget;

import androidx.core.util.e;
import androidx.core.util.f;
import java.util.ArrayList;
import java.util.List;

class a
  implements j.a
{
  private e<b> a = new f(30);
  final ArrayList<b> b = new ArrayList();
  final ArrayList<b> c = new ArrayList();
  final a d;
  Runnable e;
  final boolean f;
  final j g;
  private int h = 0;
  
  a(a parama)
  {
    this(parama, false);
  }
  
  a(a parama, boolean paramBoolean)
  {
    this.d = parama;
    this.f = paramBoolean;
    this.g = new j(this);
  }
  
  private void c(b paramb)
  {
    v(paramb);
  }
  
  private void d(b paramb)
  {
    v(paramb);
  }
  
  private void f(b paramb)
  {
    int i = paramb.b;
    int j = paramb.d + i;
    int k = -1;
    int m = i;
    int i2;
    for (int n = 0; m < j; n = i2)
    {
      if ((this.d.e(m) == null) && (!h(m)))
      {
        if (k == 1)
        {
          v(b(2, i, n, null));
          k = 1;
        }
        else
        {
          k = 0;
        }
        int i1 = 0;
        i2 = k;
        k = i1;
      }
      else
      {
        if (k == 0)
        {
          k(b(2, i, n, null));
          i2 = 1;
        }
        else
        {
          i2 = 0;
        }
        k = 1;
      }
      if (i2 != 0)
      {
        m -= n;
        j -= n;
        i2 = 1;
      }
      else
      {
        i2 = n + 1;
      }
      m++;
    }
    b localb = paramb;
    if (n != paramb.d)
    {
      a(paramb);
      localb = b(2, i, n, null);
    }
    if (k == 0) {
      k(localb);
    } else {
      v(localb);
    }
  }
  
  private void g(b paramb)
  {
    int i = paramb.b;
    int j = paramb.d;
    int k = 0;
    int m = -1;
    int n = i;
    int i1 = i;
    while (i1 < j + i)
    {
      int i2;
      if ((this.d.e(i1) == null) && (!h(i1)))
      {
        i2 = n;
        i3 = k;
        if (m == 1)
        {
          v(b(4, n, k, paramb.c));
          i2 = i1;
          i3 = 0;
        }
        k = 0;
        n = i2;
        i2 = i3;
      }
      else
      {
        i3 = n;
        i2 = k;
        if (m == 0)
        {
          k(b(4, n, k, paramb.c));
          i3 = i1;
          i2 = 0;
        }
        k = 1;
        n = i3;
      }
      int i3 = i2 + 1;
      i1++;
      m = k;
      k = i3;
    }
    Object localObject = paramb;
    if (k != paramb.d)
    {
      localObject = paramb.c;
      a(paramb);
      localObject = b(4, n, k, localObject);
    }
    if (m == 0) {
      k((b)localObject);
    } else {
      v((b)localObject);
    }
  }
  
  private boolean h(int paramInt)
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++)
    {
      b localb = (b)this.c.get(j);
      int k = localb.a;
      if (k == 8)
      {
        if (n(localb.d, j + 1) == paramInt) {
          return true;
        }
      }
      else if (k == 1)
      {
        int m = localb.b;
        int n = localb.d;
        for (k = m; k < n + m; k++) {
          if (n(k, j + 1) == paramInt) {
            return true;
          }
        }
      }
    }
    return false;
  }
  
  private void k(b paramb)
  {
    int i = paramb.a;
    if ((i != 1) && (i != 8))
    {
      int j = z(paramb.b, i);
      i = paramb.b;
      int k = paramb.a;
      int m;
      if (k != 2)
      {
        if (k == 4)
        {
          m = 1;
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("op should be remove or update.");
          ((StringBuilder)localObject).append(paramb);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      else {
        m = 0;
      }
      int n = 1;
      k = n;
      while (n < paramb.d)
      {
        int i1 = z(paramb.b + m * n, paramb.a);
        int i2 = paramb.a;
        int i3;
        if (i2 != 2)
        {
          if (i2 != 4) {}
          while (i1 != j + 1)
          {
            i3 = 0;
            break;
          }
        }
        for (;;)
        {
          i3 = 1;
          break label178;
          if (i1 != j) {
            break;
          }
        }
        label178:
        if (i3 != 0)
        {
          k++;
        }
        else
        {
          localObject = b(i2, j, k, paramb.c);
          l((b)localObject, i);
          a((b)localObject);
          j = i;
          if (paramb.a == 4) {
            j = i + k;
          }
          k = 1;
          i3 = i1;
          i = j;
          j = i3;
        }
        n++;
      }
      Object localObject = paramb.c;
      a(paramb);
      if (k > 0)
      {
        paramb = b(paramb.a, j, k, localObject);
        l(paramb, i);
        a(paramb);
      }
      return;
    }
    throw new IllegalArgumentException("should not dispatch add or move for pre layout");
  }
  
  private void v(b paramb)
  {
    this.c.add(paramb);
    int i = paramb.a;
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 4)
        {
          if (i == 8)
          {
            this.d.a(paramb.b, paramb.d);
          }
          else
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Unknown update op type for ");
            localStringBuilder.append(paramb);
            throw new IllegalArgumentException(localStringBuilder.toString());
          }
        }
        else {
          this.d.c(paramb.b, paramb.d, paramb.c);
        }
      }
      else {
        this.d.f(paramb.b, paramb.d);
      }
    }
    else {
      this.d.g(paramb.b, paramb.d);
    }
  }
  
  private int z(int paramInt1, int paramInt2)
  {
    int i = this.c.size() - 1;
    b localb;
    for (int j = paramInt1; i >= 0; j = paramInt1)
    {
      localb = (b)this.c.get(i);
      int k = localb.a;
      int m;
      if (k == 8)
      {
        m = localb.b;
        k = localb.d;
        int n;
        if (m < k)
        {
          n = m;
          paramInt1 = k;
        }
        else
        {
          paramInt1 = m;
          n = k;
        }
        if ((j >= n) && (j <= paramInt1))
        {
          if (n == m)
          {
            if (paramInt2 == 1) {
              localb.d = (k + 1);
            } else if (paramInt2 == 2) {
              localb.d = (k - 1);
            }
            paramInt1 = j + 1;
          }
          else
          {
            if (paramInt2 == 1) {
              localb.b = (m + 1);
            } else if (paramInt2 == 2) {
              localb.b = (m - 1);
            }
            paramInt1 = j - 1;
          }
        }
        else
        {
          paramInt1 = j;
          if (j < m) {
            if (paramInt2 == 1)
            {
              localb.b = (m + 1);
              localb.d = (k + 1);
              paramInt1 = j;
            }
            else
            {
              paramInt1 = j;
              if (paramInt2 == 2)
              {
                localb.b = (m - 1);
                localb.d = (k - 1);
                paramInt1 = j;
              }
            }
          }
        }
      }
      else
      {
        m = localb.b;
        if (m <= j)
        {
          if (k == 1)
          {
            paramInt1 = j - localb.d;
          }
          else
          {
            paramInt1 = j;
            if (k == 2) {
              paramInt1 = j + localb.d;
            }
          }
        }
        else if (paramInt2 == 1)
        {
          localb.b = (m + 1);
          paramInt1 = j;
        }
        else
        {
          paramInt1 = j;
          if (paramInt2 == 2)
          {
            localb.b = (m - 1);
            paramInt1 = j;
          }
        }
      }
      i--;
    }
    for (paramInt1 = this.c.size() - 1; paramInt1 >= 0; paramInt1--)
    {
      localb = (b)this.c.get(paramInt1);
      if (localb.a == 8)
      {
        paramInt2 = localb.d;
        if ((paramInt2 == localb.b) || (paramInt2 < 0))
        {
          this.c.remove(paramInt1);
          a(localb);
        }
      }
      else if (localb.d <= 0)
      {
        this.c.remove(paramInt1);
        a(localb);
      }
    }
    return j;
  }
  
  public void a(b paramb)
  {
    if (!this.f)
    {
      paramb.c = null;
      this.a.a(paramb);
    }
  }
  
  public b b(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    b localb = (b)this.a.b();
    if (localb == null)
    {
      paramObject = new b(paramInt1, paramInt2, paramInt3, paramObject);
    }
    else
    {
      localb.a = paramInt1;
      localb.b = paramInt2;
      localb.d = paramInt3;
      localb.c = paramObject;
      paramObject = localb;
    }
    return paramObject;
  }
  
  public int e(int paramInt)
  {
    int i = this.b.size();
    int j = 0;
    for (int k = paramInt; j < i; k = paramInt)
    {
      b localb = (b)this.b.get(j);
      paramInt = localb.a;
      if (paramInt != 1)
      {
        int m;
        if (paramInt != 2)
        {
          if (paramInt != 8)
          {
            paramInt = k;
          }
          else
          {
            paramInt = localb.b;
            if (paramInt == k)
            {
              paramInt = localb.d;
            }
            else
            {
              m = k;
              if (paramInt < k) {
                m = k - 1;
              }
              paramInt = m;
              if (localb.d <= m) {
                paramInt = m + 1;
              }
            }
          }
        }
        else
        {
          m = localb.b;
          paramInt = k;
          if (m <= k)
          {
            paramInt = localb.d;
            if (m + paramInt > k) {
              return -1;
            }
            paramInt = k - paramInt;
          }
        }
      }
      else
      {
        paramInt = k;
        if (localb.b <= k) {
          paramInt = k + localb.d;
        }
      }
      j++;
    }
    return k;
  }
  
  void i()
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++) {
      this.d.d((b)this.c.get(j));
    }
    x(this.c);
    this.h = 0;
  }
  
  void j()
  {
    i();
    int i = this.b.size();
    for (int j = 0; j < i; j++)
    {
      Object localObject = (b)this.b.get(j);
      int k = ((b)localObject).a;
      if (k != 1)
      {
        if (k != 2)
        {
          if (k != 4)
          {
            if (k == 8)
            {
              this.d.d((b)localObject);
              this.d.a(((b)localObject).b, ((b)localObject).d);
            }
          }
          else
          {
            this.d.d((b)localObject);
            this.d.c(((b)localObject).b, ((b)localObject).d, ((b)localObject).c);
          }
        }
        else
        {
          this.d.d((b)localObject);
          this.d.h(((b)localObject).b, ((b)localObject).d);
        }
      }
      else
      {
        this.d.d((b)localObject);
        this.d.g(((b)localObject).b, ((b)localObject).d);
      }
      localObject = this.e;
      if (localObject != null) {
        ((Runnable)localObject).run();
      }
    }
    x(this.b);
    this.h = 0;
  }
  
  void l(b paramb, int paramInt)
  {
    this.d.b(paramb);
    int i = paramb.a;
    if (i != 2)
    {
      if (i == 4) {
        this.d.c(paramInt, paramb.d, paramb.c);
      } else {
        throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
      }
    }
    else {
      this.d.h(paramInt, paramb.d);
    }
  }
  
  int m(int paramInt)
  {
    return n(paramInt, 0);
  }
  
  int n(int paramInt1, int paramInt2)
  {
    int i = this.c.size();
    int j = paramInt2;
    for (paramInt2 = paramInt1; j < i; paramInt2 = paramInt1)
    {
      b localb = (b)this.c.get(j);
      int k = localb.a;
      int m;
      if (k == 8)
      {
        paramInt1 = localb.b;
        if (paramInt1 == paramInt2)
        {
          paramInt1 = localb.d;
        }
        else
        {
          m = paramInt2;
          if (paramInt1 < paramInt2) {
            m = paramInt2 - 1;
          }
          paramInt1 = m;
          if (localb.d <= m) {
            paramInt1 = m + 1;
          }
        }
      }
      else
      {
        m = localb.b;
        paramInt1 = paramInt2;
        if (m <= paramInt2) {
          if (k == 2)
          {
            paramInt1 = localb.d;
            if (paramInt2 < m + paramInt1) {
              return -1;
            }
            paramInt1 = paramInt2 - paramInt1;
          }
          else
          {
            paramInt1 = paramInt2;
            if (k == 1) {
              paramInt1 = paramInt2 + localb.d;
            }
          }
        }
      }
      j++;
    }
    return paramInt2;
  }
  
  boolean o(int paramInt)
  {
    boolean bool;
    if ((paramInt & this.h) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  boolean p()
  {
    boolean bool;
    if (this.b.size() > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  boolean q()
  {
    boolean bool;
    if ((!this.c.isEmpty()) && (!this.b.isEmpty())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  boolean r(int paramInt1, int paramInt2, Object paramObject)
  {
    boolean bool = false;
    if (paramInt2 < 1) {
      return false;
    }
    this.b.add(b(4, paramInt1, paramInt2, paramObject));
    this.h |= 0x4;
    if (this.b.size() == 1) {
      bool = true;
    }
    return bool;
  }
  
  boolean s(int paramInt1, int paramInt2)
  {
    boolean bool = false;
    if (paramInt2 < 1) {
      return false;
    }
    this.b.add(b(1, paramInt1, paramInt2, null));
    this.h |= 0x1;
    if (this.b.size() == 1) {
      bool = true;
    }
    return bool;
  }
  
  boolean t(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt1 == paramInt2) {
      return false;
    }
    if (paramInt3 == 1)
    {
      this.b.add(b(8, paramInt1, paramInt2, null));
      this.h |= 0x8;
      if (this.b.size() == 1) {
        bool = true;
      }
      return bool;
    }
    throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
  }
  
  boolean u(int paramInt1, int paramInt2)
  {
    boolean bool = false;
    if (paramInt2 < 1) {
      return false;
    }
    this.b.add(b(2, paramInt1, paramInt2, null));
    this.h |= 0x2;
    if (this.b.size() == 1) {
      bool = true;
    }
    return bool;
  }
  
  void w()
  {
    this.g.b(this.b);
    int i = this.b.size();
    for (int j = 0; j < i; j++)
    {
      Object localObject = (b)this.b.get(j);
      int k = ((b)localObject).a;
      if (k != 1)
      {
        if (k != 2)
        {
          if (k != 4)
          {
            if (k == 8) {
              d((b)localObject);
            }
          }
          else {
            g((b)localObject);
          }
        }
        else {
          f((b)localObject);
        }
      }
      else {
        c((b)localObject);
      }
      localObject = this.e;
      if (localObject != null) {
        ((Runnable)localObject).run();
      }
    }
    this.b.clear();
  }
  
  void x(List<b> paramList)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++) {
      a((b)paramList.get(j));
    }
    paramList.clear();
  }
  
  void y()
  {
    x(this.b);
    x(this.c);
    this.h = 0;
  }
  
  static abstract interface a
  {
    public abstract void a(int paramInt1, int paramInt2);
    
    public abstract void b(a.b paramb);
    
    public abstract void c(int paramInt1, int paramInt2, Object paramObject);
    
    public abstract void d(a.b paramb);
    
    public abstract RecyclerView.c0 e(int paramInt);
    
    public abstract void f(int paramInt1, int paramInt2);
    
    public abstract void g(int paramInt1, int paramInt2);
    
    public abstract void h(int paramInt1, int paramInt2);
  }
  
  static class b
  {
    int a;
    int b;
    Object c;
    int d;
    
    b(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      this.d = paramInt3;
      this.c = paramObject;
    }
    
    String a()
    {
      int i = this.a;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 4)
          {
            if (i != 8) {
              return "??";
            }
            return "mv";
          }
          return "up";
        }
        return "rm";
      }
      return "add";
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (getClass() == paramObject.getClass()))
      {
        b localb = (b)paramObject;
        int i = this.a;
        if (i != localb.a) {
          return false;
        }
        if ((i == 8) && (Math.abs(this.d - this.b) == 1) && (this.d == localb.b) && (this.b == localb.d)) {
          return true;
        }
        if (this.d != localb.d) {
          return false;
        }
        if (this.b != localb.b) {
          return false;
        }
        paramObject = this.c;
        if (paramObject != null)
        {
          if (!paramObject.equals(localb.c)) {
            return false;
          }
        }
        else if (localb.c != null) {
          return false;
        }
        return true;
      }
      return false;
    }
    
    public int hashCode()
    {
      return (this.a * 31 + this.b) * 31 + this.d;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append("[");
      localStringBuilder.append(a());
      localStringBuilder.append(",s:");
      localStringBuilder.append(this.b);
      localStringBuilder.append("c:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(",p:");
      localStringBuilder.append(this.c);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.a
 * JD-Core Version:    0.7.0.1
 */