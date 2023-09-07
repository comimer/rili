package com.miui.privacypolicy;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;

public class a
{
  protected static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null) {
      try
      {
        paramInputStream.close();
      }
      catch (IOException paramInputStream)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("closeQuietly InputStream error ");
        localStringBuilder.append(paramInputStream);
        Log.e("Privacy_FileUtils", localStringBuilder.toString());
      }
    }
  }
  
  protected static void b(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null)
    {
      try
      {
        paramOutputStream.flush();
      }
      catch (IOException localIOException)
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append("closeQuietly OutputStream error ");
        localStringBuilder2.append(localIOException);
        Log.e("Privacy_FileUtils", localStringBuilder2.toString());
      }
      try
      {
        paramOutputStream.close();
      }
      catch (IOException paramOutputStream)
      {
        StringBuilder localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append("closeQuietly OutputStream error ");
        localStringBuilder1.append(paramOutputStream);
        Log.e("Privacy_FileUtils", localStringBuilder1.toString());
      }
    }
  }
  
  protected static void c(Writer paramWriter)
  {
    if (paramWriter != null) {
      try
      {
        paramWriter.close();
      }
      catch (IOException localIOException)
      {
        paramWriter = new StringBuilder();
        paramWriter.append("closeQuietly Writer error ");
        paramWriter.append(localIOException);
        Log.e("Privacy_FileUtils", paramWriter.toString());
      }
    }
  }
  
  protected static boolean d(Context paramContext, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getFilesDir().getPath());
    paramContext = File.separator;
    localStringBuilder.append(paramContext);
    localStringBuilder.append("privacypolicy");
    localStringBuilder.append(paramContext);
    localStringBuilder.append(paramString2);
    localStringBuilder.append(paramContext);
    localStringBuilder.append(paramString1);
    paramContext = new File(localStringBuilder.toString());
    if (paramContext.exists()) {
      return paramContext.delete();
    }
    return false;
  }
  
  /* Error */
  protected static String e(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 16	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 19	java/lang/StringBuilder:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: aload_0
    //   10: invokevirtual 66	android/content/Context:getFilesDir	()Ljava/io/File;
    //   13: invokevirtual 71	java/io/File:getPath	()Ljava/lang/String;
    //   16: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: pop
    //   20: getstatic 75	java/io/File:separator	Ljava/lang/String;
    //   23: astore_0
    //   24: aload_3
    //   25: aload_0
    //   26: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: pop
    //   30: aload_3
    //   31: ldc 77
    //   33: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: pop
    //   37: aload_3
    //   38: aload_0
    //   39: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: pop
    //   43: aload_3
    //   44: aload_2
    //   45: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: pop
    //   49: aload_3
    //   50: aload_0
    //   51: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: pop
    //   55: aload_3
    //   56: aload_1
    //   57: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: pop
    //   61: aload_3
    //   62: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: astore_2
    //   66: new 68	java/io/File
    //   69: dup
    //   70: aload_2
    //   71: invokespecial 80	java/io/File:<init>	(Ljava/lang/String;)V
    //   74: invokevirtual 84	java/io/File:exists	()Z
    //   77: ifne +6 -> 83
    //   80: ldc 92
    //   82: areturn
    //   83: aconst_null
    //   84: astore_1
    //   85: aconst_null
    //   86: astore_3
    //   87: new 94	java/io/FileInputStream
    //   90: astore_0
    //   91: aload_0
    //   92: aload_2
    //   93: invokespecial 95	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   96: aload_0
    //   97: astore_1
    //   98: aload_0
    //   99: invokestatic 99	com/miui/privacypolicy/a:f	(Ljava/io/FileInputStream;)Ljava/lang/String;
    //   102: astore_2
    //   103: aload_2
    //   104: astore_1
    //   105: aload_0
    //   106: invokestatic 101	com/miui/privacypolicy/a:a	(Ljava/io/InputStream;)V
    //   109: goto +30 -> 139
    //   112: astore_2
    //   113: goto +10 -> 123
    //   116: astore_0
    //   117: goto +25 -> 142
    //   120: astore_2
    //   121: aconst_null
    //   122: astore_0
    //   123: aload_0
    //   124: astore_1
    //   125: ldc 30
    //   127: ldc 103
    //   129: aload_2
    //   130: invokestatic 106	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   133: pop
    //   134: aload_3
    //   135: astore_1
    //   136: goto -31 -> 105
    //   139: aload_1
    //   140: areturn
    //   141: astore_0
    //   142: aload_1
    //   143: invokestatic 101	com/miui/privacypolicy/a:a	(Ljava/io/InputStream;)V
    //   146: aload_0
    //   147: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	paramContext	Context
    //   0	148	1	paramString1	String
    //   0	148	2	paramString2	String
    //   7	128	3	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   98	103	112	java/lang/Exception
    //   87	96	116	finally
    //   87	96	120	java/lang/Exception
    //   98	103	141	finally
    //   125	134	141	finally
  }
  
  /* Error */
  private static String f(java.io.FileInputStream paramFileInputStream)
  {
    // Byte code:
    //   0: new 108	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 109	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: sipush 1024
    //   11: newarray byte
    //   13: astore_2
    //   14: aload_0
    //   15: aload_2
    //   16: iconst_0
    //   17: sipush 1024
    //   20: invokevirtual 113	java/io/FileInputStream:read	([BII)I
    //   23: istore_3
    //   24: iload_3
    //   25: ifle +13 -> 38
    //   28: aload_1
    //   29: aload_2
    //   30: iconst_0
    //   31: iload_3
    //   32: invokevirtual 117	java/io/ByteArrayOutputStream:write	([BII)V
    //   35: goto -21 -> 14
    //   38: aload_1
    //   39: invokevirtual 118	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   42: astore_0
    //   43: aload_1
    //   44: invokestatic 120	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   47: aload_0
    //   48: areturn
    //   49: astore_0
    //   50: goto +19 -> 69
    //   53: astore_0
    //   54: ldc 30
    //   56: ldc 122
    //   58: aload_0
    //   59: invokestatic 106	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   62: pop
    //   63: aload_1
    //   64: invokestatic 120	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   67: aconst_null
    //   68: areturn
    //   69: aload_1
    //   70: invokestatic 120	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   73: aload_0
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	paramFileInputStream	java.io.FileInputStream
    //   7	63	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   13	17	2	arrayOfByte	byte[]
    //   23	9	3	i	int
    // Exception table:
    //   from	to	target	type
    //   14	24	49	finally
    //   28	35	49	finally
    //   38	43	49	finally
    //   54	63	49	finally
    //   14	24	53	java/lang/Exception
    //   28	35	53	java/lang/Exception
    //   38	43	53	java/lang/Exception
  }
  
  /* Error */
  protected static void g(String paramString1, Context paramContext, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 16	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 19	java/lang/StringBuilder:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: aload_1
    //   12: invokevirtual 66	android/content/Context:getFilesDir	()Ljava/io/File;
    //   15: invokevirtual 71	java/io/File:getPath	()Ljava/lang/String;
    //   18: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: pop
    //   22: getstatic 75	java/io/File:separator	Ljava/lang/String;
    //   25: astore_1
    //   26: aload 4
    //   28: aload_1
    //   29: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: pop
    //   33: aload 4
    //   35: ldc 77
    //   37: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: pop
    //   41: aload 4
    //   43: aload_1
    //   44: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: aload 4
    //   50: aload_3
    //   51: invokevirtual 25	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: pop
    //   55: new 68	java/io/File
    //   58: dup
    //   59: aload 4
    //   61: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokespecial 80	java/io/File:<init>	(Ljava/lang/String;)V
    //   67: astore 5
    //   69: aload 5
    //   71: invokevirtual 84	java/io/File:exists	()Z
    //   74: ifne +9 -> 83
    //   77: aload 5
    //   79: invokevirtual 127	java/io/File:mkdirs	()Z
    //   82: pop
    //   83: aconst_null
    //   84: astore 6
    //   86: aconst_null
    //   87: astore_3
    //   88: aconst_null
    //   89: astore 7
    //   91: new 129	java/io/FileOutputStream
    //   94: astore_1
    //   95: new 68	java/io/File
    //   98: astore 4
    //   100: aload 4
    //   102: aload 5
    //   104: aload_2
    //   105: invokespecial 132	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   108: aload_1
    //   109: aload 4
    //   111: invokespecial 135	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   114: aload 6
    //   116: astore_2
    //   117: aload_1
    //   118: astore_3
    //   119: new 137	java/io/BufferedWriter
    //   122: astore 4
    //   124: aload 6
    //   126: astore_2
    //   127: aload_1
    //   128: astore_3
    //   129: new 139	java/io/OutputStreamWriter
    //   132: astore 5
    //   134: aload 6
    //   136: astore_2
    //   137: aload_1
    //   138: astore_3
    //   139: aload 5
    //   141: aload_1
    //   142: invokespecial 141	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   145: aload 6
    //   147: astore_2
    //   148: aload_1
    //   149: astore_3
    //   150: aload 4
    //   152: aload 5
    //   154: invokespecial 143	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   157: aload 4
    //   159: aload_0
    //   160: invokevirtual 145	java/io/Writer:write	(Ljava/lang/String;)V
    //   163: aload 4
    //   165: invokestatic 147	com/miui/privacypolicy/a:c	(Ljava/io/Writer;)V
    //   168: goto +56 -> 224
    //   171: astore_0
    //   172: aload 4
    //   174: astore_2
    //   175: goto +57 -> 232
    //   178: astore_0
    //   179: goto +26 -> 205
    //   182: astore_0
    //   183: aload 7
    //   185: astore 4
    //   187: goto +18 -> 205
    //   190: astore_0
    //   191: aconst_null
    //   192: astore_1
    //   193: aload_3
    //   194: astore_2
    //   195: goto +37 -> 232
    //   198: astore_0
    //   199: aconst_null
    //   200: astore_1
    //   201: aload 7
    //   203: astore 4
    //   205: aload 4
    //   207: astore_2
    //   208: aload_1
    //   209: astore_3
    //   210: ldc 30
    //   212: ldc 149
    //   214: aload_0
    //   215: invokestatic 106	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   218: pop
    //   219: aload 4
    //   221: invokestatic 147	com/miui/privacypolicy/a:c	(Ljava/io/Writer;)V
    //   224: aload_1
    //   225: invokestatic 120	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   228: return
    //   229: astore_0
    //   230: aload_3
    //   231: astore_1
    //   232: aload_2
    //   233: invokestatic 147	com/miui/privacypolicy/a:c	(Ljava/io/Writer;)V
    //   236: aload_1
    //   237: invokestatic 120	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   240: aload_0
    //   241: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	242	0	paramString1	String
    //   0	242	1	paramContext	Context
    //   0	242	2	paramString2	String
    //   0	242	3	paramString3	String
    //   7	213	4	localObject1	Object
    //   67	86	5	localObject2	Object
    //   84	62	6	localObject3	Object
    //   89	113	7	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   157	163	171	finally
    //   157	163	178	java/lang/Exception
    //   119	124	182	java/lang/Exception
    //   129	134	182	java/lang/Exception
    //   139	145	182	java/lang/Exception
    //   150	157	182	java/lang/Exception
    //   91	114	190	finally
    //   91	114	198	java/lang/Exception
    //   119	124	229	finally
    //   129	134	229	finally
    //   139	145	229	finally
    //   150	157	229	finally
    //   210	219	229	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.privacypolicy.a
 * JD-Core Version:    0.7.0.1
 */