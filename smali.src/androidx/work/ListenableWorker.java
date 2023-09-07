package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.impl.utils.futures.b;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import java.util.concurrent.Executor;
import z0.a;

public abstract class ListenableWorker
{
  private Context a;
  private WorkerParameters b;
  private volatile boolean c;
  private boolean d;
  private boolean e;
  
  @SuppressLint({"BanKeepAnnotation"})
  @Keep
  public ListenableWorker(Context paramContext, WorkerParameters paramWorkerParameters)
  {
    if (paramContext != null)
    {
      if (paramWorkerParameters != null)
      {
        this.a = paramContext;
        this.b = paramWorkerParameters;
        return;
      }
      throw new IllegalArgumentException("WorkerParameters is null");
    }
    throw new IllegalArgumentException("Application Context is null");
  }
  
  public final Context a()
  {
    return this.a;
  }
  
  public Executor c()
  {
    return this.b.a();
  }
  
  public ListenableFuture<e> d()
  {
    b localb = b.s();
    localb.p(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
    return localb;
  }
  
  public final UUID e()
  {
    return this.b.c();
  }
  
  public final d g()
  {
    return this.b.d();
  }
  
  public a h()
  {
    return this.b.e();
  }
  
  public t i()
  {
    return this.b.f();
  }
  
  public boolean j()
  {
    return this.e;
  }
  
  public final boolean k()
  {
    return this.c;
  }
  
  public final boolean l()
  {
    return this.d;
  }
  
  public void m() {}
  
  public void n(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public final void o()
  {
    this.d = true;
  }
  
  public abstract ListenableFuture<a> p();
  
  public final void q()
  {
    this.c = true;
    m();
  }
  
  public static abstract class a
  {
    public static a a()
    {
      return new a();
    }
    
    public static a b()
    {
      return new b();
    }
    
    public static a c()
    {
      return new c();
    }
    
    public static a d(d paramd)
    {
      return new c(paramd);
    }
    
    public static final class a
      extends ListenableWorker.a
    {
      private final d a;
      
      public a()
      {
        this(d.c);
      }
      
      public a(d paramd)
      {
        this.a = paramd;
      }
      
      public d e()
      {
        return this.a;
      }
      
      public boolean equals(Object paramObject)
      {
        if (this == paramObject) {
          return true;
        }
        if ((paramObject != null) && (a.class == paramObject.getClass()))
        {
          paramObject = (a)paramObject;
          return this.a.equals(paramObject.a);
        }
        return false;
      }
      
      public int hashCode()
      {
        return a.class.getName().hashCode() * 31 + this.a.hashCode();
      }
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Failure {mOutputData=");
        localStringBuilder.append(this.a);
        localStringBuilder.append('}');
        return localStringBuilder.toString();
      }
    }
    
    public static final class b
      extends ListenableWorker.a
    {
      public boolean equals(Object paramObject)
      {
        boolean bool = true;
        if (this == paramObject) {
          return true;
        }
        if ((paramObject == null) || (b.class != paramObject.getClass())) {
          bool = false;
        }
        return bool;
      }
      
      public int hashCode()
      {
        return b.class.getName().hashCode();
      }
      
      public String toString()
      {
        return "Retry";
      }
    }
    
    public static final class c
      extends ListenableWorker.a
    {
      private final d a;
      
      public c()
      {
        this(d.c);
      }
      
      public c(d paramd)
      {
        this.a = paramd;
      }
      
      public d e()
      {
        return this.a;
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
        return c.class.getName().hashCode() * 31 + this.a.hashCode();
      }
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Success {mOutputData=");
        localStringBuilder.append(this.a);
        localStringBuilder.append('}');
        return localStringBuilder.toString();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.ListenableWorker
 * JD-Core Version:    0.7.0.1
 */