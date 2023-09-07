package androidx.loader.app;

import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.i0;
import androidx.lifecycle.k0;
import androidx.lifecycle.k0.b;
import androidx.lifecycle.m0;
import androidx.lifecycle.n;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import n.h;

class b
  extends a
{
  static boolean c = false;
  private final n a;
  private final b b;
  
  b(n paramn, m0 paramm0)
  {
    this.a = paramn;
    this.b = b.b(paramm0);
  }
  
  @Deprecated
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    this.b.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public void c()
  {
    this.b.c();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    androidx.core.util.b.a(this.a, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  public static class a<D>
    extends u<D>
  {
    private final int l;
    private final Bundle m;
    private n n;
    
    protected void j()
    {
      if (b.c)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("  Starting: ");
        localStringBuilder.append(this);
        Log.v("LoaderManager", localStringBuilder.toString());
      }
      throw null;
    }
    
    protected void k()
    {
      if (b.c)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("  Stopping: ");
        localStringBuilder.append(this);
        Log.v("LoaderManager", localStringBuilder.toString());
      }
      throw null;
    }
    
    public void m(v<? super D> paramv)
    {
      super.m(paramv);
      this.n = null;
    }
    
    public void n(D paramD)
    {
      super.n(paramD);
    }
    
    h0.a<D> o(boolean paramBoolean)
    {
      if (b.c)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("  Destroying: ");
        localStringBuilder.append(this);
        Log.v("LoaderManager", localStringBuilder.toString());
      }
      throw null;
    }
    
    public void p(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(this.l);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(this.m);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(null);
      paramFileDescriptor = new StringBuilder();
      paramFileDescriptor.append(paramString);
      paramFileDescriptor.append("  ");
      throw null;
    }
    
    void q() {}
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(64);
      localStringBuilder.append("LoaderInfo{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" #");
      localStringBuilder.append(this.l);
      localStringBuilder.append(" : ");
      androidx.core.util.b.a(null, localStringBuilder);
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
    }
  }
  
  static class b
    extends i0
  {
    private static final k0.b c = new a();
    private h<b.a> a = new h();
    private boolean b = false;
    
    static b b(m0 paramm0)
    {
      return (b)new k0(paramm0, c).a(b.class);
    }
    
    public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
    {
      if (this.a.n() > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Loaders:");
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append("    ");
        localObject = ((StringBuilder)localObject).toString();
        for (int i = 0; i < this.a.n(); i++)
        {
          b.a locala = (b.a)this.a.o(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(this.a.k(i));
          paramPrintWriter.print(": ");
          paramPrintWriter.println(locala.toString());
          locala.p((String)localObject, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        }
      }
    }
    
    void c()
    {
      int i = this.a.n();
      for (int j = 0; j < i; j++) {
        ((b.a)this.a.o(j)).q();
      }
    }
    
    protected void onCleared()
    {
      super.onCleared();
      int i = this.a.n();
      for (int j = 0; j < i; j++) {
        ((b.a)this.a.o(j)).o(true);
      }
      this.a.b();
    }
    
    static final class a
      implements k0.b
    {
      public <T extends i0> T a(Class<T> paramClass)
      {
        return new b.b();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.loader.app.b
 * JD-Core Version:    0.7.0.1
 */