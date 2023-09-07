package x5;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.xiaomi.accountsdk.utils.b;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class c
{
  private static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      label8:
      return;
    }
    catch (IOException paramInputStream)
    {
      break label8;
    }
  }
  
  private static void b(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.flush();
    }
    catch (IOException localIOException)
    {
      try
      {
        for (;;)
        {
          paramOutputStream.close();
          label12:
          return;
          localIOException = localIOException;
        }
      }
      catch (IOException paramOutputStream)
      {
        break label12;
      }
    }
  }
  
  public static Bitmap c(Context paramContext, String paramString)
  {
    Object localObject1 = null;
    try
    {
      paramContext = paramContext.openFileInput(paramString);
      paramString = new java/io/ByteArrayOutputStream;
      paramString.<init>();
      byte[] arrayOfByte = new byte[1024];
      try
      {
        for (;;)
        {
          int i = paramContext.read(arrayOfByte);
          if (i == -1) {
            break;
          }
          paramString.write(arrayOfByte, 0, i);
        }
        b(paramString);
        a(paramContext);
        paramString = paramString.toByteArray();
        paramContext = localObject1;
        if (paramString != null) {
          paramContext = BitmapFactory.decodeByteArray(paramString, 0, paramString.length);
        }
      }
      finally
      {
        b(paramString);
        a(paramContext);
      }
      return paramContext;
    }
    catch (IOException paramContext)
    {
      b.g("BitmapUtils", "Read data error");
      paramContext = localObject1;
    }
    catch (FileNotFoundException paramContext)
    {
      b.g("BitmapUtils", "File is not found");
      paramContext = localObject1;
    }
  }
  
  /* Error */
  public static java.io.File d(Context paramContext, InputStream paramInputStream, String paramString)
    throws IOException
  {
    // Byte code:
    //   0: new 78	java/io/BufferedInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 80	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   8: astore_3
    //   9: new 82	java/io/BufferedOutputStream
    //   12: dup
    //   13: aload_0
    //   14: aload_2
    //   15: iconst_0
    //   16: invokevirtual 86	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   19: invokespecial 88	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore_1
    //   23: sipush 1024
    //   26: newarray byte
    //   28: astore 4
    //   30: aload_3
    //   31: aload 4
    //   33: invokevirtual 89	java/io/InputStream:read	([B)I
    //   36: istore 5
    //   38: iload 5
    //   40: iconst_m1
    //   41: if_icmpeq +15 -> 56
    //   44: aload_1
    //   45: aload 4
    //   47: iconst_0
    //   48: iload 5
    //   50: invokevirtual 90	java/io/OutputStream:write	([BII)V
    //   53: goto -23 -> 30
    //   56: aload_1
    //   57: invokevirtual 22	java/io/OutputStream:flush	()V
    //   60: aload_1
    //   61: invokevirtual 23	java/io/OutputStream:close	()V
    //   64: aload_0
    //   65: aload_2
    //   66: invokevirtual 94	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   69: areturn
    //   70: astore_0
    //   71: aload_1
    //   72: invokevirtual 22	java/io/OutputStream:flush	()V
    //   75: aload_1
    //   76: invokevirtual 23	java/io/OutputStream:close	()V
    //   79: aload_0
    //   80: athrow
    //   81: astore 4
    //   83: goto -23 -> 60
    //   86: astore_1
    //   87: goto -23 -> 64
    //   90: astore_2
    //   91: goto -16 -> 75
    //   94: astore_1
    //   95: goto -16 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	paramContext	Context
    //   0	98	1	paramInputStream	InputStream
    //   0	98	2	paramString	String
    //   8	23	3	localBufferedInputStream	java.io.BufferedInputStream
    //   28	18	4	arrayOfByte	byte[]
    //   81	1	4	localIOException	IOException
    //   36	13	5	i	int
    // Exception table:
    //   from	to	target	type
    //   30	38	70	finally
    //   44	53	70	finally
    //   56	60	81	java/io/IOException
    //   60	64	86	java/io/IOException
    //   71	75	90	java/io/IOException
    //   75	79	94	java/io/IOException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x5.c
 * JD-Core Version:    0.7.0.1
 */