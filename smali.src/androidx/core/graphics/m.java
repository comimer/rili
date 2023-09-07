package androidx.core.graphics;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import androidx.core.provider.g.b;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class m
{
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      label10:
      return;
    }
    catch (IOException paramCloseable)
    {
      break label10;
    }
  }
  
  /* Error */
  public static boolean b(File paramFile, android.content.res.Resources paramResources, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: iload_2
    //   2: invokevirtual 25	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   5: astore_3
    //   6: aload_0
    //   7: aload_3
    //   8: invokestatic 29	androidx/core/graphics/m:c	(Ljava/io/File;Ljava/io/InputStream;)Z
    //   11: istore 4
    //   13: aload_3
    //   14: invokestatic 31	androidx/core/graphics/m:a	(Ljava/io/Closeable;)V
    //   17: iload 4
    //   19: ireturn
    //   20: astore_1
    //   21: aload_3
    //   22: astore_0
    //   23: goto +6 -> 29
    //   26: astore_1
    //   27: aconst_null
    //   28: astore_0
    //   29: aload_0
    //   30: invokestatic 31	androidx/core/graphics/m:a	(Ljava/io/Closeable;)V
    //   33: aload_1
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	paramFile	File
    //   0	35	1	paramResources	android.content.res.Resources
    //   0	35	2	paramInt	int
    //   5	17	3	localInputStream	java.io.InputStream
    //   11	7	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   6	13	20	finally
    //   0	6	26	finally
  }
  
  /* Error */
  public static boolean c(File paramFile, java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: invokestatic 37	android/os/StrictMode:allowThreadDiskWrites	()Landroid/os/StrictMode$ThreadPolicy;
    //   3: astore_2
    //   4: aconst_null
    //   5: astore_3
    //   6: aconst_null
    //   7: astore 4
    //   9: aload 4
    //   11: astore 5
    //   13: new 39	java/io/FileOutputStream
    //   16: astore 6
    //   18: aload 4
    //   20: astore 5
    //   22: aload 6
    //   24: aload_0
    //   25: iconst_0
    //   26: invokespecial 43	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   29: sipush 1024
    //   32: newarray byte
    //   34: astore_0
    //   35: aload_1
    //   36: aload_0
    //   37: invokevirtual 49	java/io/InputStream:read	([B)I
    //   40: istore 7
    //   42: iload 7
    //   44: iconst_m1
    //   45: if_icmpeq +15 -> 60
    //   48: aload 6
    //   50: aload_0
    //   51: iconst_0
    //   52: iload 7
    //   54: invokevirtual 53	java/io/FileOutputStream:write	([BII)V
    //   57: goto -22 -> 35
    //   60: aload 6
    //   62: invokestatic 31	androidx/core/graphics/m:a	(Ljava/io/Closeable;)V
    //   65: aload_2
    //   66: invokestatic 57	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   69: iconst_1
    //   70: ireturn
    //   71: astore_0
    //   72: aload 6
    //   74: astore 5
    //   76: goto +81 -> 157
    //   79: astore_1
    //   80: aload 6
    //   82: astore_0
    //   83: goto +10 -> 93
    //   86: astore_0
    //   87: goto +70 -> 157
    //   90: astore_1
    //   91: aload_3
    //   92: astore_0
    //   93: aload_0
    //   94: astore 5
    //   96: new 59	java/lang/StringBuilder
    //   99: astore 6
    //   101: aload_0
    //   102: astore 5
    //   104: aload 6
    //   106: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   109: aload_0
    //   110: astore 5
    //   112: aload 6
    //   114: ldc 63
    //   116: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: pop
    //   120: aload_0
    //   121: astore 5
    //   123: aload 6
    //   125: aload_1
    //   126: invokevirtual 73	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   129: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: pop
    //   133: aload_0
    //   134: astore 5
    //   136: ldc 75
    //   138: aload 6
    //   140: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokestatic 84	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   146: pop
    //   147: aload_0
    //   148: invokestatic 31	androidx/core/graphics/m:a	(Ljava/io/Closeable;)V
    //   151: aload_2
    //   152: invokestatic 57	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   155: iconst_0
    //   156: ireturn
    //   157: aload 5
    //   159: invokestatic 31	androidx/core/graphics/m:a	(Ljava/io/Closeable;)V
    //   162: aload_2
    //   163: invokestatic 57	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   166: aload_0
    //   167: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	paramFile	File
    //   0	168	1	paramInputStream	java.io.InputStream
    //   3	160	2	localThreadPolicy	android.os.StrictMode.ThreadPolicy
    //   5	87	3	localObject1	Object
    //   7	12	4	localObject2	Object
    //   11	147	5	localObject3	Object
    //   16	123	6	localObject4	Object
    //   40	13	7	i	int
    // Exception table:
    //   from	to	target	type
    //   29	35	71	finally
    //   35	42	71	finally
    //   48	57	71	finally
    //   29	35	79	java/io/IOException
    //   35	42	79	java/io/IOException
    //   48	57	79	java/io/IOException
    //   13	18	86	finally
    //   22	29	86	finally
    //   96	101	86	finally
    //   104	109	86	finally
    //   112	120	86	finally
    //   123	133	86	finally
    //   136	147	86	finally
    //   13	18	90	java/io/IOException
    //   22	29	90	java/io/IOException
  }
  
  public static File d(Context paramContext)
  {
    paramContext = paramContext.getCacheDir();
    if (paramContext == null) {
      return null;
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(".font");
    ((StringBuilder)localObject1).append(Process.myPid());
    ((StringBuilder)localObject1).append("-");
    ((StringBuilder)localObject1).append(Process.myTid());
    ((StringBuilder)localObject1).append("-");
    localObject1 = ((StringBuilder)localObject1).toString();
    for (int i = 0; i < 100; i++)
    {
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(i);
      localObject2 = new File(paramContext, ((StringBuilder)localObject2).toString());
      try
      {
        boolean bool = ((File)localObject2).createNewFile();
        if (bool) {
          return localObject2;
        }
      }
      catch (IOException localIOException)
      {
        label115:
        break label115;
      }
    }
    return null;
  }
  
  /* Error */
  public static ByteBuffer e(Context paramContext, CancellationSignal paramCancellationSignal, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 122	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_2
    //   7: ldc 124
    //   9: aload_1
    //   10: invokestatic 127	androidx/core/graphics/m$a:a	(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    //   13: astore_0
    //   14: aload_0
    //   15: ifnonnull +13 -> 28
    //   18: aload_0
    //   19: ifnull +7 -> 26
    //   22: aload_0
    //   23: invokevirtual 130	android/os/ParcelFileDescriptor:close	()V
    //   26: aconst_null
    //   27: areturn
    //   28: new 132	java/io/FileInputStream
    //   31: astore_1
    //   32: aload_1
    //   33: aload_0
    //   34: invokevirtual 136	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   37: invokespecial 139	java/io/FileInputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   40: aload_1
    //   41: invokevirtual 143	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   44: astore_2
    //   45: aload_2
    //   46: invokevirtual 149	java/nio/channels/FileChannel:size	()J
    //   49: lstore_3
    //   50: aload_2
    //   51: getstatic 155	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   54: lconst_0
    //   55: lload_3
    //   56: invokevirtual 159	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   59: astore_2
    //   60: aload_1
    //   61: invokevirtual 160	java/io/FileInputStream:close	()V
    //   64: aload_0
    //   65: invokevirtual 130	android/os/ParcelFileDescriptor:close	()V
    //   68: aload_2
    //   69: areturn
    //   70: astore_2
    //   71: aload_1
    //   72: invokevirtual 160	java/io/FileInputStream:close	()V
    //   75: goto +9 -> 84
    //   78: astore_1
    //   79: aload_2
    //   80: aload_1
    //   81: invokevirtual 164	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   84: aload_2
    //   85: athrow
    //   86: astore_1
    //   87: aload_0
    //   88: invokevirtual 130	android/os/ParcelFileDescriptor:close	()V
    //   91: goto +9 -> 100
    //   94: astore_0
    //   95: aload_1
    //   96: aload_0
    //   97: invokevirtual 164	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   100: aload_1
    //   101: athrow
    //   102: astore_0
    //   103: aconst_null
    //   104: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	paramContext	Context
    //   0	105	1	paramCancellationSignal	CancellationSignal
    //   0	105	2	paramUri	Uri
    //   49	7	3	l	long
    // Exception table:
    //   from	to	target	type
    //   40	60	70	finally
    //   71	75	78	finally
    //   28	40	86	finally
    //   60	64	86	finally
    //   79	84	86	finally
    //   84	86	86	finally
    //   87	91	94	finally
    //   5	14	102	java/io/IOException
    //   22	26	102	java/io/IOException
    //   64	68	102	java/io/IOException
    //   95	100	102	java/io/IOException
    //   100	102	102	java/io/IOException
  }
  
  public static Map<Uri, ByteBuffer> f(Context paramContext, g.b[] paramArrayOfb, CancellationSignal paramCancellationSignal)
  {
    HashMap localHashMap = new HashMap();
    int i = paramArrayOfb.length;
    for (int j = 0; j < i; j++)
    {
      Object localObject = paramArrayOfb[j];
      if (((g.b)localObject).b() == 0)
      {
        localObject = ((g.b)localObject).d();
        if (!localHashMap.containsKey(localObject)) {
          localHashMap.put(localObject, e(paramContext, paramCancellationSignal, (Uri)localObject));
        }
      }
    }
    return Collections.unmodifiableMap(localHashMap);
  }
  
  static class a
  {
    static ParcelFileDescriptor a(ContentResolver paramContentResolver, Uri paramUri, String paramString, CancellationSignal paramCancellationSignal)
      throws FileNotFoundException
    {
      return paramContentResolver.openFileDescriptor(paramUri, paramString, paramCancellationSignal);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.m
 * JD-Core Version:    0.7.0.1
 */