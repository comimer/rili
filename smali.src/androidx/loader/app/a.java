package androidx.loader.app;

import androidx.lifecycle.n;
import androidx.lifecycle.n0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class a
{
  public static <T extends n,  extends n0> a b(T paramT)
  {
    return new b(paramT, ((n0)paramT).getViewModelStore());
  }
  
  @Deprecated
  public abstract void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract void c();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.loader.app.a
 * JD-Core Version:    0.7.0.1
 */