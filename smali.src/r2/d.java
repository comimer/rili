package r2;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import e3.b;
import f3.a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public class d
  implements n<File, ByteBuffer>
{
  public n.a<ByteBuffer> c(File paramFile, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new b(paramFile), new a(paramFile));
  }
  
  public boolean d(File paramFile)
  {
    return true;
  }
  
  private static final class a
    implements com.bumptech.glide.load.data.d<ByteBuffer>
  {
    private final File a;
    
    a(File paramFile)
    {
      this.a = paramFile;
    }
    
    public Class<ByteBuffer> a()
    {
      return ByteBuffer.class;
    }
    
    public void b() {}
    
    public void cancel() {}
    
    public DataSource d()
    {
      return DataSource.LOCAL;
    }
    
    public void e(Priority paramPriority, com.bumptech.glide.load.data.d.a<? super ByteBuffer> parama)
    {
      try
      {
        parama.f(a.a(this.a));
      }
      catch (IOException paramPriority)
      {
        if (Log.isLoggable("ByteBufferFileLoader", 3)) {
          Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", paramPriority);
        }
        parama.c(paramPriority);
      }
    }
  }
  
  public static class b
    implements o<File, ByteBuffer>
  {
    public n<File, ByteBuffer> b(r paramr)
    {
      return new d();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.d
 * JD-Core Version:    0.7.0.1
 */