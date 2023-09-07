package w;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

public final class e
{
  private final b a;
  
  private e(b paramb)
  {
    this.a = paramb;
  }
  
  public static e f(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return new e(new a(paramObject));
  }
  
  public Uri a()
  {
    return this.a.b();
  }
  
  public ClipDescription b()
  {
    return this.a.a();
  }
  
  public Uri c()
  {
    return this.a.d();
  }
  
  public void d()
  {
    this.a.c();
  }
  
  public Object e()
  {
    return this.a.e();
  }
  
  private static final class a
    implements e.b
  {
    final InputContentInfo a;
    
    a(Object paramObject)
    {
      this.a = ((InputContentInfo)paramObject);
    }
    
    public ClipDescription a()
    {
      return this.a.getDescription();
    }
    
    public Uri b()
    {
      return this.a.getContentUri();
    }
    
    public void c()
    {
      this.a.requestPermission();
    }
    
    public Uri d()
    {
      return this.a.getLinkUri();
    }
    
    public Object e()
    {
      return this.a;
    }
  }
  
  private static abstract interface b
  {
    public abstract ClipDescription a();
    
    public abstract Uri b();
    
    public abstract void c();
    
    public abstract Uri d();
    
    public abstract Object e();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w.e
 * JD-Core Version:    0.7.0.1
 */