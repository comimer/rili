package x0;

import androidx.work.BackoffPolicy;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkInfo.State;
import androidx.work.b;
import androidx.work.d;
import androidx.work.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import k.a;

public final class p
{
  private static final String s = k.f("WorkSpec");
  public static final a<List<c>, List<WorkInfo>> t = new a();
  public String a;
  public WorkInfo.State b = WorkInfo.State.ENQUEUED;
  public String c;
  public String d;
  public d e;
  public d f;
  public long g;
  public long h;
  public long i;
  public b j;
  public int k;
  public BackoffPolicy l;
  public long m;
  public long n;
  public long o;
  public long p;
  public boolean q;
  public OutOfQuotaPolicy r;
  
  public p(String paramString1, String paramString2)
  {
    d locald = d.c;
    this.e = locald;
    this.f = locald;
    this.j = b.i;
    this.l = BackoffPolicy.EXPONENTIAL;
    this.m = 30000L;
    this.p = -1L;
    this.r = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
    this.a = paramString1;
    this.c = paramString2;
  }
  
  public p(p paramp)
  {
    d locald = d.c;
    this.e = locald;
    this.f = locald;
    this.j = b.i;
    this.l = BackoffPolicy.EXPONENTIAL;
    this.m = 30000L;
    this.p = -1L;
    this.r = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
    this.a = paramp.a;
    this.c = paramp.c;
    this.b = paramp.b;
    this.d = paramp.d;
    this.e = new d(paramp.e);
    this.f = new d(paramp.f);
    this.g = paramp.g;
    this.h = paramp.h;
    this.i = paramp.i;
    this.j = new b(paramp.j);
    this.k = paramp.k;
    this.l = paramp.l;
    this.m = paramp.m;
    this.n = paramp.n;
    this.o = paramp.o;
    this.p = paramp.p;
    this.q = paramp.q;
    this.r = paramp.r;
  }
  
  public long a()
  {
    boolean bool = c();
    int i1 = 0;
    int i2 = 0;
    if (bool)
    {
      if (this.l == BackoffPolicy.LINEAR) {
        i2 = 1;
      }
      if (i2 != 0) {
        l1 = this.m * this.k;
      } else {
        l1 = Math.scalb((float)this.m, this.k - 1);
      }
      return this.n + Math.min(18000000L, l1);
    }
    bool = d();
    long l2 = 0L;
    if (bool)
    {
      l1 = System.currentTimeMillis();
      long l3 = this.n;
      if (l3 == 0L) {
        l1 += this.g;
      } else {
        l1 = l3;
      }
      long l4 = this.i;
      long l5 = this.h;
      i2 = i1;
      if (l4 != l5) {
        i2 = 1;
      }
      if (i2 != 0)
      {
        if (l3 == 0L) {
          l2 = l4 * -1L;
        }
        return l1 + l5 + l2;
      }
      if (l3 != 0L) {
        l2 = l5;
      }
      return l1 + l2;
    }
    l2 = this.n;
    long l1 = l2;
    if (l2 == 0L) {
      l1 = System.currentTimeMillis();
    }
    return l1 + this.g;
  }
  
  public boolean b()
  {
    return b.i.equals(this.j) ^ true;
  }
  
  public boolean c()
  {
    boolean bool;
    if ((this.b == WorkInfo.State.ENQUEUED) && (this.k > 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean d()
  {
    boolean bool;
    if (this.h != 0L) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (p.class == paramObject.getClass()))
    {
      p localp = (p)paramObject;
      if (this.g != localp.g) {
        return false;
      }
      if (this.h != localp.h) {
        return false;
      }
      if (this.i != localp.i) {
        return false;
      }
      if (this.k != localp.k) {
        return false;
      }
      if (this.m != localp.m) {
        return false;
      }
      if (this.n != localp.n) {
        return false;
      }
      if (this.o != localp.o) {
        return false;
      }
      if (this.p != localp.p) {
        return false;
      }
      if (this.q != localp.q) {
        return false;
      }
      if (!this.a.equals(localp.a)) {
        return false;
      }
      if (this.b != localp.b) {
        return false;
      }
      if (!this.c.equals(localp.c)) {
        return false;
      }
      paramObject = this.d;
      if (paramObject != null ? !paramObject.equals(localp.d) : localp.d != null) {
        return false;
      }
      if (!this.e.equals(localp.e)) {
        return false;
      }
      if (!this.f.equals(localp.f)) {
        return false;
      }
      if (!this.j.equals(localp.j)) {
        return false;
      }
      if (this.l != localp.l) {
        return false;
      }
      if (this.r != localp.r) {
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i1 = this.a.hashCode();
    int i2 = this.b.hashCode();
    int i3 = this.c.hashCode();
    String str = this.d;
    int i4;
    if (str != null) {
      i4 = str.hashCode();
    } else {
      i4 = 0;
    }
    int i5 = this.e.hashCode();
    int i6 = this.f.hashCode();
    long l1 = this.g;
    int i7 = (int)(l1 ^ l1 >>> 32);
    l1 = this.h;
    int i8 = (int)(l1 ^ l1 >>> 32);
    l1 = this.i;
    int i9 = (int)(l1 ^ l1 >>> 32);
    int i10 = this.j.hashCode();
    int i11 = this.k;
    int i12 = this.l.hashCode();
    l1 = this.m;
    int i13 = (int)(l1 ^ l1 >>> 32);
    l1 = this.n;
    int i14 = (int)(l1 ^ l1 >>> 32);
    l1 = this.o;
    int i15 = (int)(l1 ^ l1 >>> 32);
    l1 = this.p;
    return ((((((((((((((((i1 * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i11) * 31 + i12) * 31 + i13) * 31 + i14) * 31 + i15) * 31 + (int)(l1 ^ l1 >>> 32)) * 31 + this.q) * 31 + this.r.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{WorkSpec: ");
    localStringBuilder.append(this.a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  class a
    implements a<List<p.c>, List<WorkInfo>>
  {
    public List<WorkInfo> a(List<p.c> paramList)
    {
      if (paramList == null) {
        return null;
      }
      ArrayList localArrayList = new ArrayList(paramList.size());
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localArrayList.add(((p.c)paramList.next()).a());
      }
      return localArrayList;
    }
  }
  
  public static class b
  {
    public String a;
    public WorkInfo.State b;
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof b)) {
        return false;
      }
      paramObject = (b)paramObject;
      if (this.b != paramObject.b) {
        return false;
      }
      return this.a.equals(paramObject.a);
    }
    
    public int hashCode()
    {
      return this.a.hashCode() * 31 + this.b.hashCode();
    }
  }
  
  public static class c
  {
    public String a;
    public WorkInfo.State b;
    public d c;
    public int d;
    public List<String> e;
    public List<d> f;
    
    public WorkInfo a()
    {
      Object localObject = this.f;
      if ((localObject != null) && (!((List)localObject).isEmpty())) {
        localObject = (d)this.f.get(0);
      } else {
        localObject = d.c;
      }
      return new WorkInfo(UUID.fromString(this.a), this.b, this.c, this.e, (d)localObject, this.d);
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof c)) {
        return false;
      }
      paramObject = (c)paramObject;
      if (this.d != paramObject.d) {
        return false;
      }
      Object localObject = this.a;
      if (localObject != null ? !((String)localObject).equals(paramObject.a) : paramObject.a != null) {
        return false;
      }
      if (this.b != paramObject.b) {
        return false;
      }
      localObject = this.c;
      if (localObject != null ? !((d)localObject).equals(paramObject.c) : paramObject.c != null) {
        return false;
      }
      localObject = this.e;
      if (localObject != null ? !((List)localObject).equals(paramObject.e) : paramObject.e != null) {
        return false;
      }
      localObject = this.f;
      paramObject = paramObject.f;
      if (localObject != null) {
        bool = ((List)localObject).equals(paramObject);
      } else if (paramObject != null) {
        bool = false;
      }
      return bool;
    }
    
    public int hashCode()
    {
      Object localObject = this.a;
      int i = 0;
      int j;
      if (localObject != null) {
        j = ((String)localObject).hashCode();
      } else {
        j = 0;
      }
      localObject = this.b;
      int k;
      if (localObject != null) {
        k = localObject.hashCode();
      } else {
        k = 0;
      }
      localObject = this.c;
      int m;
      if (localObject != null) {
        m = ((d)localObject).hashCode();
      } else {
        m = 0;
      }
      int n = this.d;
      localObject = this.e;
      int i1;
      if (localObject != null) {
        i1 = ((List)localObject).hashCode();
      } else {
        i1 = 0;
      }
      localObject = this.f;
      if (localObject != null) {
        i = ((List)localObject).hashCode();
      }
      return ((((j * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.p
 * JD-Core Version:    0.7.0.1
 */