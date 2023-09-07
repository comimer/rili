package x2;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import com.bumptech.glide.load.engine.s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.List;
import n2.d;
import n2.e;

public class j
  implements e<InputStream, c>
{
  private final List<ImageHeaderParser> a;
  private final e<ByteBuffer, c> b;
  private final b c;
  
  public j(List<ImageHeaderParser> paramList, e<ByteBuffer, c> parame, b paramb)
  {
    this.a = paramList;
    this.b = parame;
    this.c = paramb;
  }
  
  private static byte[] e(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    try
    {
      byte[] arrayOfByte = new byte[16384];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localByteArrayOutputStream.flush();
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException paramInputStream)
    {
      if (Log.isLoggable("StreamGifDecoder", 5)) {
        Log.w("StreamGifDecoder", "Error reading data from stream", paramInputStream);
      }
    }
    return null;
  }
  
  public s<c> c(InputStream paramInputStream, int paramInt1, int paramInt2, d paramd)
    throws IOException
  {
    paramInputStream = e(paramInputStream);
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = ByteBuffer.wrap(paramInputStream);
    return this.b.b(paramInputStream, paramInt1, paramInt2, paramd);
  }
  
  public boolean d(InputStream paramInputStream, d paramd)
    throws IOException
  {
    boolean bool;
    if ((!((Boolean)paramd.c(i.b)).booleanValue()) && (a.e(this.a, paramInputStream, this.c) == ImageHeaderParser.ImageType.GIF)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.j
 * JD-Core Version:    0.7.0.1
 */