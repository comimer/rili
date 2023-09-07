package u2;

import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.data.e.a;
import java.nio.ByteBuffer;

public class a
  implements e<ByteBuffer>
{
  private final ByteBuffer a;
  
  public a(ByteBuffer paramByteBuffer)
  {
    this.a = paramByteBuffer;
  }
  
  public void b() {}
  
  public ByteBuffer c()
  {
    this.a.position(0);
    return this.a;
  }
  
  public static class a
    implements e.a<ByteBuffer>
  {
    public Class<ByteBuffer> a()
    {
      return ByteBuffer.class;
    }
    
    public e<ByteBuffer> c(ByteBuffer paramByteBuffer)
    {
      return new a(paramByteBuffer);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u2.a
 * JD-Core Version:    0.7.0.1
 */