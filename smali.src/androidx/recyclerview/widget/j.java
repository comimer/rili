package androidx.recyclerview.widget;

import java.util.List;

class j
{
  final a a;
  
  j(a parama)
  {
    this.a = parama;
  }
  
  private int a(List<a.b> paramList)
  {
    int i = paramList.size() - 1;
    int k;
    for (int j = 0; i >= 0; j = k)
    {
      if (((a.b)paramList.get(i)).a == 8)
      {
        k = j;
        if (j != 0) {
          return i;
        }
      }
      else
      {
        k = 1;
      }
      i--;
    }
    return -1;
  }
  
  private void c(List<a.b> paramList, int paramInt1, a.b paramb1, int paramInt2, a.b paramb2)
  {
    int i = paramb1.d;
    int j = paramb2.b;
    if (i < j) {
      k = -1;
    } else {
      k = 0;
    }
    int m = paramb1.b;
    int n = k;
    if (m < j) {
      n = k + 1;
    }
    if (j <= m) {
      paramb1.b = (m + paramb2.d);
    }
    int k = paramb2.b;
    if (k <= i) {
      paramb1.d = (i + paramb2.d);
    }
    paramb2.b = (k + n);
    paramList.set(paramInt1, paramb2);
    paramList.set(paramInt2, paramb1);
  }
  
  private void d(List<a.b> paramList, int paramInt1, int paramInt2)
  {
    a.b localb1 = (a.b)paramList.get(paramInt1);
    a.b localb2 = (a.b)paramList.get(paramInt2);
    int i = localb2.a;
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 4) {
          f(paramList, paramInt1, localb1, paramInt2, localb2);
        }
      }
      else {
        e(paramList, paramInt1, localb1, paramInt2, localb2);
      }
    }
    else {
      c(paramList, paramInt1, localb1, paramInt2, localb2);
    }
  }
  
  void b(List<a.b> paramList)
  {
    for (;;)
    {
      int i = a(paramList);
      if (i == -1) {
        break;
      }
      d(paramList, i, i + 1);
    }
  }
  
  void e(List<a.b> paramList, int paramInt1, a.b paramb1, int paramInt2, a.b paramb2)
  {
    int i = paramb1.b;
    int j = paramb1.d;
    int k = 0;
    if (i < j)
    {
      if ((paramb2.b == i) && (paramb2.d == j - i))
      {
        i = 0;
        k = 1;
      }
      else
      {
        i = 0;
      }
    }
    else if ((paramb2.b == j + 1) && (paramb2.d == i - j))
    {
      i = 1;
      k = i;
    }
    else
    {
      i = 1;
    }
    int m = paramb2.b;
    int n;
    if (j < m)
    {
      paramb2.b = (m - 1);
    }
    else
    {
      n = paramb2.d;
      if (j < m + n)
      {
        paramb2.d = (n - 1);
        paramb1.a = 2;
        paramb1.d = 1;
        if (paramb2.d == 0)
        {
          paramList.remove(paramInt2);
          this.a.a(paramb2);
        }
        return;
      }
    }
    j = paramb1.b;
    m = paramb2.b;
    a.b localb = null;
    if (j <= m)
    {
      paramb2.b = (m + 1);
    }
    else
    {
      n = paramb2.d;
      if (j < m + n)
      {
        localb = this.a.b(2, j + 1, m + n - j, null);
        paramb2.d = (paramb1.b - paramb2.b);
      }
    }
    if (k != 0)
    {
      paramList.set(paramInt1, paramb2);
      paramList.remove(paramInt2);
      this.a.a(paramb1);
      return;
    }
    if (i != 0)
    {
      if (localb != null)
      {
        i = paramb1.b;
        if (i > localb.b) {
          paramb1.b = (i - localb.d);
        }
        i = paramb1.d;
        if (i > localb.b) {
          paramb1.d = (i - localb.d);
        }
      }
      i = paramb1.b;
      if (i > paramb2.b) {
        paramb1.b = (i - paramb2.d);
      }
      i = paramb1.d;
      if (i > paramb2.b) {
        paramb1.d = (i - paramb2.d);
      }
    }
    else
    {
      if (localb != null)
      {
        i = paramb1.b;
        if (i >= localb.b) {
          paramb1.b = (i - localb.d);
        }
        i = paramb1.d;
        if (i >= localb.b) {
          paramb1.d = (i - localb.d);
        }
      }
      i = paramb1.b;
      if (i >= paramb2.b) {
        paramb1.b = (i - paramb2.d);
      }
      i = paramb1.d;
      if (i >= paramb2.b) {
        paramb1.d = (i - paramb2.d);
      }
    }
    paramList.set(paramInt1, paramb2);
    if (paramb1.b != paramb1.d) {
      paramList.set(paramInt2, paramb1);
    } else {
      paramList.remove(paramInt2);
    }
    if (localb != null) {
      paramList.add(paramInt1, localb);
    }
  }
  
  void f(List<a.b> paramList, int paramInt1, a.b paramb1, int paramInt2, a.b paramb2)
  {
    int i = paramb1.d;
    int j = paramb2.b;
    a.b localb1 = null;
    if (i < j)
    {
      paramb2.b = (j - 1);
    }
    else
    {
      k = paramb2.d;
      if (i < j + k)
      {
        paramb2.d = (k - 1);
        localb2 = this.a.b(4, paramb1.b, 1, paramb2.c);
        break label89;
      }
    }
    a.b localb2 = null;
    label89:
    int k = paramb1.b;
    i = paramb2.b;
    if (k <= i)
    {
      paramb2.b = (i + 1);
    }
    else
    {
      j = paramb2.d;
      if (k < i + j)
      {
        j = i + j - k;
        localb1 = this.a.b(4, k + 1, j, paramb2.c);
        paramb2.d -= j;
      }
    }
    paramList.set(paramInt2, paramb1);
    if (paramb2.d > 0)
    {
      paramList.set(paramInt1, paramb2);
    }
    else
    {
      paramList.remove(paramInt1);
      this.a.a(paramb2);
    }
    if (localb2 != null) {
      paramList.add(paramInt1, localb2);
    }
    if (localb1 != null) {
      paramList.add(paramInt1, localb1);
    }
  }
  
  static abstract interface a
  {
    public abstract void a(a.b paramb);
    
    public abstract a.b b(int paramInt1, int paramInt2, int paramInt3, Object paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.j
 * JD-Core Version:    0.7.0.1
 */