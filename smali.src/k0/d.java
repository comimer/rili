package k0;

import android.annotation.SuppressLint;
import java.io.IOException;
import java.nio.channels.Channel;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.spi.AbstractInterruptibleChannel;

public class d
{
  @SuppressLint({"LambdaLast"})
  public static void a(ReadableByteChannel paramReadableByteChannel, FileChannel paramFileChannel)
    throws IOException
  {
    try
    {
      paramFileChannel.transferFrom(paramReadableByteChannel, 0L, 9223372036854775807L);
      paramFileChannel.force(false);
      return;
    }
    finally
    {
      paramReadableByteChannel.close();
      paramFileChannel.close();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k0.d
 * JD-Core Version:    0.7.0.1
 */