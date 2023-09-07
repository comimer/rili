package n7;

import android.os.Build;
import com.xiaomi.accountsdk.utils.b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;

public class a
{
  private static String a = "n7.a";
  
  /* Error */
  public static boolean a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 19	n7/a:a	Ljava/lang/String;
    //   6: ldc 21
    //   8: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   11: ldc 29
    //   13: ldc 31
    //   15: invokestatic 35	n7/a:i	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   18: invokevirtual 40	java/lang/Boolean:booleanValue	()Z
    //   21: ifeq +14 -> 35
    //   24: getstatic 19	n7/a:a	Ljava/lang/String;
    //   27: ldc 42
    //   29: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   32: goto +11 -> 43
    //   35: getstatic 19	n7/a:a	Ljava/lang/String;
    //   38: ldc 44
    //   40: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: getstatic 19	n7/a:a	Ljava/lang/String;
    //   46: ldc 46
    //   48: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: ldc 29
    //   53: invokestatic 50	n7/a:h	(Ljava/lang/String;)Ljava/lang/String;
    //   56: astore_0
    //   57: getstatic 19	n7/a:a	Ljava/lang/String;
    //   60: astore_1
    //   61: new 52	java/lang/StringBuilder
    //   64: astore_2
    //   65: aload_2
    //   66: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   69: aload_2
    //   70: ldc 55
    //   72: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: aload_2
    //   77: aload_0
    //   78: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: aload_1
    //   83: aload_2
    //   84: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   90: ldc 31
    //   92: aload_0
    //   93: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   96: istore_3
    //   97: iload_3
    //   98: ifeq +8 -> 106
    //   101: ldc 2
    //   103: monitorexit
    //   104: iconst_1
    //   105: ireturn
    //   106: ldc 2
    //   108: monitorexit
    //   109: iconst_0
    //   110: ireturn
    //   111: astore_2
    //   112: goto +45 -> 157
    //   115: astore_2
    //   116: getstatic 19	n7/a:a	Ljava/lang/String;
    //   119: astore_1
    //   120: new 52	java/lang/StringBuilder
    //   123: astore_0
    //   124: aload_0
    //   125: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   128: aload_0
    //   129: ldc 71
    //   131: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: pop
    //   135: aload_0
    //   136: aload_2
    //   137: invokevirtual 76	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   140: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: pop
    //   144: aload_1
    //   145: aload_0
    //   146: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   152: ldc 2
    //   154: monitorexit
    //   155: iconst_0
    //   156: ireturn
    //   157: ldc 2
    //   159: monitorexit
    //   160: aload_2
    //   161: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   56	90	0	localObject1	Object
    //   60	85	1	str	String
    //   64	20	2	localStringBuilder	StringBuilder
    //   111	1	2	localObject2	Object
    //   115	46	2	localException	Exception
    //   96	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	32	111	finally
    //   35	43	111	finally
    //   43	97	111	finally
    //   116	152	111	finally
    //   3	32	115	java/lang/Exception
    //   35	43	115	java/lang/Exception
    //   43	97	115	java/lang/Exception
  }
  
  public static boolean b()
  {
    String str1 = Build.TAGS;
    if ((str1 != null) && (str1.contains("test-keys")))
    {
      String str2 = a;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("buildTags=");
      localStringBuilder.append(str1);
      b.g(str2, localStringBuilder.toString());
      return true;
    }
    return false;
  }
  
  public static boolean c()
  {
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "/system/bin/";
    arrayOfString[1] = "/system/xbin/";
    arrayOfString[2] = "/system/sbin/";
    arrayOfString[3] = "/sbin/";
    arrayOfString[4] = "/vendor/bin/";
    int i = 0;
    for (;;)
    {
      if (i < 5) {
        try
        {
          Object localObject = new java/io/File;
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(arrayOfString[i]);
          localStringBuilder.append("su");
          ((File)localObject).<init>(localStringBuilder.toString());
          if (((File)localObject).exists())
          {
            localObject = a;
            localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append("find su in : ");
            localStringBuilder.append(arrayOfString[i]);
            b.g((String)localObject, localStringBuilder.toString());
            return true;
          }
          i++;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
    return false;
  }
  
  public static boolean d()
  {
    ArrayList localArrayList = f(new String[] { "/system/xbin/which", "su" });
    if (localArrayList != null)
    {
      String str = a;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("execResult=");
      localStringBuilder.append(localArrayList.toString());
      b.g(str, localStringBuilder.toString());
      return true;
    }
    b.g(a, "execResult=null");
    return false;
  }
  
  public static boolean e()
  {
    try
    {
      File localFile = new java/io/File;
      localFile.<init>("/system/app/Superuser.apk");
      if (localFile.exists())
      {
        b.g(a, "/system/app/Superuser.apk exist");
        return true;
      }
    }
    catch (Exception localException)
    {
      label27:
      break label27;
    }
    return false;
  }
  
  /* Error */
  public static ArrayList<String> f(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 135	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 136	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: getstatic 19	n7/a:a	Ljava/lang/String;
    //   11: ldc 138
    //   13: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   16: invokestatic 144	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   19: aload_0
    //   20: invokevirtual 148	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   23: astore_0
    //   24: new 150	java/io/BufferedWriter
    //   27: dup
    //   28: new 152	java/io/OutputStreamWriter
    //   31: dup
    //   32: aload_0
    //   33: invokevirtual 158	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   36: invokespecial 161	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   39: invokespecial 164	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   42: pop
    //   43: new 166	java/io/BufferedReader
    //   46: dup
    //   47: new 168	java/io/InputStreamReader
    //   50: dup
    //   51: aload_0
    //   52: invokevirtual 172	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   55: invokespecial 175	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   58: invokespecial 178	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   61: astore_2
    //   62: aload_2
    //   63: invokevirtual 181	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   66: astore_3
    //   67: aload_3
    //   68: ifnull +55 -> 123
    //   71: getstatic 19	n7/a:a	Ljava/lang/String;
    //   74: astore_0
    //   75: new 52	java/lang/StringBuilder
    //   78: astore 4
    //   80: aload 4
    //   82: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   85: aload 4
    //   87: ldc 183
    //   89: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: pop
    //   93: aload 4
    //   95: aload_3
    //   96: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: pop
    //   100: aload_0
    //   101: aload 4
    //   103: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   109: aload_1
    //   110: aload_3
    //   111: invokevirtual 186	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   114: pop
    //   115: goto -53 -> 62
    //   118: astore_0
    //   119: aload_0
    //   120: invokevirtual 116	java/lang/Throwable:printStackTrace	()V
    //   123: getstatic 19	n7/a:a	Ljava/lang/String;
    //   126: astore_3
    //   127: new 52	java/lang/StringBuilder
    //   130: dup
    //   131: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   134: astore_0
    //   135: aload_0
    //   136: ldc 188
    //   138: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: pop
    //   142: aload_0
    //   143: aload_1
    //   144: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: aload_3
    //   149: aload_0
    //   150: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 27	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: aload_1
    //   157: areturn
    //   158: astore_0
    //   159: aconst_null
    //   160: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	paramArrayOfString	String[]
    //   7	150	1	localArrayList	ArrayList
    //   61	2	2	localBufferedReader	java.io.BufferedReader
    //   66	83	3	str	String
    //   78	24	4	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   62	67	118	java/lang/Exception
    //   71	115	118	java/lang/Exception
    //   8	24	158	java/lang/Exception
  }
  
  public static boolean g()
  {
    if (b()) {
      return true;
    }
    if (e()) {
      return true;
    }
    if (c()) {
      return true;
    }
    if (d()) {
      return true;
    }
    return a();
  }
  
  public static String h(String paramString)
  {
    Object localObject = new File(paramString);
    try
    {
      paramString = new java/io/FileInputStream;
      paramString.<init>((File)localObject);
      byte[] arrayOfByte = new byte[1024];
      localObject = new java/io/ByteArrayOutputStream;
      ((ByteArrayOutputStream)localObject).<init>();
      for (;;)
      {
        int i = paramString.read(arrayOfByte);
        if (i <= 0) {
          break;
        }
        ((ByteArrayOutputStream)localObject).write(arrayOfByte, 0, i);
      }
      paramString = new java/lang/String;
      paramString.<init>(((ByteArrayOutputStream)localObject).toByteArray());
      b.g(a, paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static Boolean i(String paramString1, String paramString2)
  {
    try
    {
      FileOutputStream localFileOutputStream = new java/io/FileOutputStream;
      localFileOutputStream.<init>(paramString1);
      localFileOutputStream.write(paramString2.getBytes());
      localFileOutputStream.close();
      paramString1 = Boolean.TRUE;
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return Boolean.FALSE;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n7.a
 * JD-Core Version:    0.7.0.1
 */