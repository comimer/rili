package f6;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public class g
{
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
      }
      catch (Exception paramCloseable)
      {
        Log.e(a.a("IOUtil"), "closeSafely e", paramCloseable);
      }
    }
  }
  
  public static byte[] b(InputStream paramInputStream)
    throws IOException
  {
    return c(paramInputStream, 1024);
  }
  
  public static byte[] c(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    int i = paramInt;
    if (paramInt < 1) {
      i = 1;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[i];
    for (;;)
    {
      paramInt = paramInputStream.read(arrayOfByte);
      if (paramInt == -1) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, paramInt);
    }
    localByteArrayOutputStream.close();
    paramInputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.g
 * JD-Core Version:    0.7.0.1
 */