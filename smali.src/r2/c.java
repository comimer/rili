package r2;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import n2.d;

public class c
  implements n2.a<ByteBuffer>
{
  public boolean c(ByteBuffer paramByteBuffer, File paramFile, d paramd)
  {
    boolean bool;
    try
    {
      f3.a.e(paramByteBuffer, paramFile);
      bool = true;
    }
    catch (IOException paramByteBuffer)
    {
      if (Log.isLoggable("ByteBufferEncoder", 3)) {
        Log.d("ByteBufferEncoder", "Failed to write data", paramByteBuffer);
      }
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.c
 * JD-Core Version:    0.7.0.1
 */