package androidx.work;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;

public final class c
{
  private final Set<a> a = new HashSet();
  
  public void a(Uri paramUri, boolean paramBoolean)
  {
    paramUri = new a(paramUri, paramBoolean);
    this.a.add(paramUri);
  }
  
  public Set<a> b()
  {
    return this.a;
  }
  
  public int c()
  {
    return this.a.size();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (c.class == paramObject.getClass()))
    {
      paramObject = (c)paramObject;
      return this.a.equals(paramObject.a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.a.hashCode();
  }
  
  public static final class a
  {
    private final Uri a;
    private final boolean b;
    
    a(Uri paramUri, boolean paramBoolean)
    {
      this.a = paramUri;
      this.b = paramBoolean;
    }
    
    public Uri a()
    {
      return this.a;
    }
    
    public boolean b()
    {
      return this.b;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (a.class == paramObject.getClass()))
      {
        paramObject = (a)paramObject;
        if ((this.b != paramObject.b) || (!this.a.equals(paramObject.a))) {
          bool = false;
        }
        return bool;
      }
      return false;
    }
    
    public int hashCode()
    {
      return this.a.hashCode() * 31 + this.b;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.c
 * JD-Core Version:    0.7.0.1
 */