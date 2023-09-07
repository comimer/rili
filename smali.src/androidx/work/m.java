package androidx.work;

import android.annotation.SuppressLint;
import com.google.common.util.concurrent.ListenableFuture;

public abstract interface m
{
  @SuppressLint({"SyntheticAccessor"})
  public static final m.b.c a = new m.b.c(null);
  @SuppressLint({"SyntheticAccessor"})
  public static final m.b.b b = new m.b.b(null);
  
  public abstract ListenableFuture<m.b.c> getResult();
  
  public static abstract class b
  {
    public static final class a
      extends m.b
    {
      private final Throwable a;
      
      public a(Throwable paramThrowable)
      {
        this.a = paramThrowable;
      }
      
      public Throwable a()
      {
        return this.a;
      }
      
      public String toString()
      {
        return String.format("FAILURE (%s)", new Object[] { this.a.getMessage() });
      }
    }
    
    public static final class b
      extends m.b
    {
      public String toString()
      {
        return "IN_PROGRESS";
      }
    }
    
    public static final class c
      extends m.b
    {
      public String toString()
      {
        return "SUCCESS";
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.m
 * JD-Core Version:    0.7.0.1
 */