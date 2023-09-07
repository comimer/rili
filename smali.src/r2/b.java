package r2;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class b<Data>
  implements n<byte[], Data>
{
  private final b<Data> a;
  
  public b(b<Data> paramb)
  {
    this.a = paramb;
  }
  
  public n.a<Data> c(byte[] paramArrayOfByte, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new e3.b(paramArrayOfByte), new c(paramArrayOfByte, this.a));
  }
  
  public boolean d(byte[] paramArrayOfByte)
  {
    return true;
  }
  
  public static class a
    implements o<byte[], ByteBuffer>
  {
    public n<byte[], ByteBuffer> b(r paramr)
    {
      return new b(new a());
    }
    
    class a
      implements b.b<ByteBuffer>
    {
      a() {}
      
      public Class<ByteBuffer> a()
      {
        return ByteBuffer.class;
      }
      
      public ByteBuffer c(byte[] paramArrayOfByte)
      {
        return ByteBuffer.wrap(paramArrayOfByte);
      }
    }
  }
  
  public static abstract interface b<Data>
  {
    public abstract Class<Data> a();
    
    public abstract Data b(byte[] paramArrayOfByte);
  }
  
  private static class c<Data>
    implements com.bumptech.glide.load.data.d<Data>
  {
    private final byte[] a;
    private final b.b<Data> b;
    
    c(byte[] paramArrayOfByte, b.b<Data> paramb)
    {
      this.a = paramArrayOfByte;
      this.b = paramb;
    }
    
    public Class<Data> a()
    {
      return this.b.a();
    }
    
    public void b() {}
    
    public void cancel() {}
    
    public DataSource d()
    {
      return DataSource.LOCAL;
    }
    
    public void e(Priority paramPriority, d.a<? super Data> parama)
    {
      parama.f(this.b.b(this.a));
    }
  }
  
  public static class d
    implements o<byte[], InputStream>
  {
    public n<byte[], InputStream> b(r paramr)
    {
      return new b(new a());
    }
    
    class a
      implements b.b<InputStream>
    {
      a() {}
      
      public Class<InputStream> a()
      {
        return InputStream.class;
      }
      
      public InputStream c(byte[] paramArrayOfByte)
      {
        return new ByteArrayInputStream(paramArrayOfByte);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.b
 * JD-Core Version:    0.7.0.1
 */