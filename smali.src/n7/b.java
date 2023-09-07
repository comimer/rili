package n7;

import com.xiaomi.verificationsdk.internal.UnknownValueException;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.Locale;

public class b
{
  /* Error */
  private static String a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: invokestatic 16	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   5: ldc 18
    //   7: invokevirtual 22	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   10: astore_2
    //   11: new 24	java/io/BufferedOutputStream
    //   14: astore_3
    //   15: aload_3
    //   16: aload_2
    //   17: invokevirtual 30	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   20: invokespecial 34	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   23: new 36	java/io/BufferedInputStream
    //   26: astore 4
    //   28: aload 4
    //   30: aload_2
    //   31: invokevirtual 40	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   34: invokespecial 43	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   37: aload_3
    //   38: aload_0
    //   39: invokevirtual 49	java/lang/String:getBytes	()[B
    //   42: invokevirtual 55	java/io/OutputStream:write	([B)V
    //   45: aload_3
    //   46: bipush 10
    //   48: invokevirtual 58	java/io/BufferedOutputStream:write	(I)V
    //   51: aload_3
    //   52: invokevirtual 62	java/io/BufferedOutputStream:flush	()V
    //   55: aload_3
    //   56: invokevirtual 65	java/io/OutputStream:close	()V
    //   59: aload_2
    //   60: invokevirtual 69	java/lang/Process:waitFor	()I
    //   63: pop
    //   64: aload 4
    //   66: invokestatic 73	n7/b:b	(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    //   69: astore_0
    //   70: aload_3
    //   71: invokevirtual 65	java/io/OutputStream:close	()V
    //   74: goto +8 -> 82
    //   77: astore_3
    //   78: aload_3
    //   79: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   82: aload 4
    //   84: invokevirtual 79	java/io/BufferedInputStream:close	()V
    //   87: goto +10 -> 97
    //   90: astore 4
    //   92: aload 4
    //   94: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   97: aload_2
    //   98: invokevirtual 82	java/lang/Process:destroy	()V
    //   101: aload_0
    //   102: areturn
    //   103: astore_0
    //   104: goto +7 -> 111
    //   107: astore_0
    //   108: aconst_null
    //   109: astore 4
    //   111: aload_3
    //   112: astore_1
    //   113: aload_2
    //   114: astore_3
    //   115: aload 4
    //   117: astore_2
    //   118: goto +30 -> 148
    //   121: astore_0
    //   122: aconst_null
    //   123: astore_0
    //   124: goto +75 -> 199
    //   127: astore_0
    //   128: aconst_null
    //   129: astore 4
    //   131: aload_2
    //   132: astore_3
    //   133: aload 4
    //   135: astore_2
    //   136: goto +12 -> 148
    //   139: astore_0
    //   140: goto +55 -> 195
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_3
    //   146: aload_3
    //   147: astore_2
    //   148: aload_1
    //   149: ifnull +17 -> 166
    //   152: aload_1
    //   153: invokevirtual 65	java/io/OutputStream:close	()V
    //   156: goto +10 -> 166
    //   159: astore 4
    //   161: aload 4
    //   163: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   166: aload_2
    //   167: ifnull +15 -> 182
    //   170: aload_2
    //   171: invokevirtual 79	java/io/BufferedInputStream:close	()V
    //   174: goto +8 -> 182
    //   177: astore_2
    //   178: aload_2
    //   179: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   182: aload_3
    //   183: ifnull +7 -> 190
    //   186: aload_3
    //   187: invokevirtual 82	java/lang/Process:destroy	()V
    //   190: aload_0
    //   191: athrow
    //   192: astore_0
    //   193: aconst_null
    //   194: astore_2
    //   195: aconst_null
    //   196: astore_3
    //   197: aconst_null
    //   198: astore_0
    //   199: aload_3
    //   200: ifnull +17 -> 217
    //   203: aload_3
    //   204: invokevirtual 65	java/io/OutputStream:close	()V
    //   207: goto +10 -> 217
    //   210: astore 4
    //   212: aload 4
    //   214: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   217: aload_0
    //   218: ifnull +15 -> 233
    //   221: aload_0
    //   222: invokevirtual 79	java/io/BufferedInputStream:close	()V
    //   225: goto +8 -> 233
    //   228: astore_0
    //   229: aload_0
    //   230: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   233: aload_2
    //   234: ifnull +7 -> 241
    //   237: aload_2
    //   238: invokevirtual 82	java/lang/Process:destroy	()V
    //   241: aconst_null
    //   242: areturn
    //   243: astore_0
    //   244: aload 4
    //   246: astore_0
    //   247: goto -48 -> 199
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	250	0	paramString	String
    //   1	152	1	localObject1	Object
    //   10	161	2	localObject2	Object
    //   177	2	2	localIOException1	java.io.IOException
    //   194	44	2	localObject3	Object
    //   14	57	3	localBufferedOutputStream	java.io.BufferedOutputStream
    //   77	35	3	localIOException2	java.io.IOException
    //   114	90	3	localObject4	Object
    //   26	57	4	localBufferedInputStream	BufferedInputStream
    //   90	3	4	localIOException3	java.io.IOException
    //   109	25	4	localObject5	Object
    //   159	3	4	localIOException4	java.io.IOException
    //   210	35	4	localIOException5	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   70	74	77	java/io/IOException
    //   82	87	90	java/io/IOException
    //   37	70	103	finally
    //   23	37	107	finally
    //   23	37	121	java/lang/Exception
    //   11	23	127	finally
    //   11	23	139	java/lang/Exception
    //   2	11	143	finally
    //   152	156	159	java/io/IOException
    //   170	174	177	java/io/IOException
    //   2	11	192	java/lang/Exception
    //   203	207	210	java/io/IOException
    //   221	225	228	java/io/IOException
    //   37	70	243	java/lang/Exception
  }
  
  private static String b(BufferedInputStream paramBufferedInputStream)
  {
    if (paramBufferedInputStream == null) {
      return "";
    }
    byte[] arrayOfByte = new byte[512];
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      int i;
      do
      {
        i = paramBufferedInputStream.read(arrayOfByte);
        if (i > 0)
        {
          String str = new java/lang/String;
          str.<init>(arrayOfByte, 0, i);
          localStringBuilder.append(str);
        }
      } while (i >= 512);
    }
    catch (Exception paramBufferedInputStream)
    {
      paramBufferedInputStream.printStackTrace();
    }
    return localStringBuilder.toString();
  }
  
  public static String c()
  {
    String str = a("cat /proc/self/cgroup");
    if ((str != null) && (str.length() != 0))
    {
      int i = str.lastIndexOf("uid");
      int j = str.lastIndexOf("/pid");
      if (i < 0) {
        return null;
      }
      int k = j;
      if (j <= 0) {
        k = str.length();
      }
      str = str.substring(i + 4, k);
      try
      {
        str = str.replaceAll("\n", "");
        if (d(str))
        {
          str = String.format("u0_a%d", new Object[] { Integer.valueOf(Integer.valueOf(str).intValue() - 10000) });
          return str;
        }
        return null;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return null;
  }
  
  public static boolean d(String paramString)
  {
    if ((paramString != null) && (paramString.length() != 0))
    {
      for (int i = 0; i < paramString.length(); i++) {
        if (!Character.isDigit(paramString.charAt(i))) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  public static boolean e()
    throws UnknownValueException
  {
    String str = c();
    if (str != null)
    {
      Object localObject1 = a("ps");
      boolean bool1 = false;
      boolean bool2 = bool1;
      if (localObject1 != null) {
        if (((String)localObject1).isEmpty())
        {
          bool2 = bool1;
        }
        else
        {
          localObject1 = ((String)localObject1).split("\n");
          bool2 = bool1;
          if (localObject1 != null) {
            if (localObject1.length <= 0)
            {
              bool2 = bool1;
            }
            else
            {
              int i = 0;
              int k;
              for (int j = i; i < localObject1.length; j = k)
              {
                k = j;
                if (localObject1[i].contains(str))
                {
                  k = localObject1[i].lastIndexOf(" ");
                  Object localObject2 = localObject1[i];
                  int m;
                  if (k <= 0) {
                    m = 0;
                  } else {
                    m = k + 1;
                  }
                  k = j;
                  if (new File(String.format("/data/data/%s", new Object[] { localObject2.substring(m, localObject2.length()), Locale.CHINA })).exists()) {
                    k = j + 1;
                  }
                }
                i++;
              }
              bool2 = bool1;
              if (j > 1) {
                bool2 = true;
              }
            }
          }
        }
      }
      return bool2;
    }
    throw new UnknownValueException("getUidStrFormat is null");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n7.b
 * JD-Core Version:    0.7.0.1
 */