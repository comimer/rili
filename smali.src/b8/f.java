package b8;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lb8/f;", "Lb8/d;", "", "", "value", "", "k", "isEmpty", "other", "equals", "", "hashCode", "", "toString", "start", "endInclusive", "<init>", "(JJ)V", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class f
  extends d
{
  public static final a e = new a(null);
  private static final f f = new f(1L, 0L);
  
  public f(long paramLong1, long paramLong2)
  {
    super(paramLong1, paramLong2, 1L);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof f)) {
      if ((!isEmpty()) || (!((f)paramObject).isEmpty()))
      {
        long l = c();
        paramObject = (f)paramObject;
        if ((l != paramObject.c()) || (h() != paramObject.h())) {}
      }
      else
      {
        bool = true;
        break label64;
      }
    }
    boolean bool = false;
    label64:
    return bool;
  }
  
  public int hashCode()
  {
    int i;
    if (isEmpty()) {
      i = -1;
    } else {
      i = (int)(31 * (c() ^ c() >>> 32) + (h() ^ h() >>> 32));
    }
    return i;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if (c() > h()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean k(long paramLong)
  {
    boolean bool;
    if ((c() <= paramLong) && (paramLong <= h())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(c());
    localStringBuilder.append("..");
    localStringBuilder.append(h());
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lb8/f$a;", "", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.f
 * JD-Core Version:    0.7.0.1
 */