package z6;

import android.os.Build;
import android.text.TextUtils;

public class d
{
  private static String a;
  private static String b;
  
  public static boolean a(String paramString)
  {
    String str = a;
    if (str != null) {
      return str.equals(paramString);
    }
    str = b("ro.miui.ui.version.name");
    b = str;
    if (!TextUtils.isEmpty(str))
    {
      a = "MIUI";
    }
    else
    {
      str = b("ro.build.version.emui");
      b = str;
      if (!TextUtils.isEmpty(str))
      {
        a = "EMUI";
      }
      else
      {
        str = b("ro.build.version.opporom");
        b = str;
        if (!TextUtils.isEmpty(str))
        {
          a = "OPPO";
        }
        else
        {
          str = b("ro.vivo.os.version");
          b = str;
          if (!TextUtils.isEmpty(str))
          {
            a = "VIVO";
          }
          else
          {
            str = b("ro.smartisan.version");
            b = str;
            if (!TextUtils.isEmpty(str))
            {
              a = "SMARTISAN";
            }
            else
            {
              str = Build.DISPLAY;
              b = str;
              if (str.toUpperCase().contains("FLYME"))
              {
                a = "FLYME";
              }
              else
              {
                b = "unknown";
                a = Build.MANUFACTURER.toUpperCase();
              }
            }
          }
        }
      }
    }
    return a.equals(paramString);
  }
  
  /* Error */
  public static String b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: invokestatic 75	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   5: astore_2
    //   6: new 77	java/lang/StringBuilder
    //   9: astore_3
    //   10: aload_3
    //   11: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   14: aload_3
    //   15: ldc 83
    //   17: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: pop
    //   21: aload_3
    //   22: aload_0
    //   23: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: pop
    //   27: aload_2
    //   28: aload_3
    //   29: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokevirtual 94	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   35: astore_3
    //   36: new 96	java/io/BufferedReader
    //   39: astore_0
    //   40: new 98	java/io/InputStreamReader
    //   43: astore_2
    //   44: aload_2
    //   45: aload_3
    //   46: invokevirtual 104	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   49: invokespecial 107	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   52: aload_0
    //   53: aload_2
    //   54: sipush 1024
    //   57: invokespecial 110	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   60: aload_0
    //   61: invokevirtual 113	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   64: astore_3
    //   65: aload_0
    //   66: invokevirtual 116	java/io/BufferedReader:close	()V
    //   69: aload_0
    //   70: invokevirtual 116	java/io/BufferedReader:close	()V
    //   73: goto +8 -> 81
    //   76: astore_0
    //   77: aload_0
    //   78: invokevirtual 121	java/lang/Throwable:printStackTrace	()V
    //   81: aload_3
    //   82: areturn
    //   83: astore_3
    //   84: goto +6 -> 90
    //   87: astore_3
    //   88: aload_1
    //   89: astore_0
    //   90: aload_0
    //   91: ifnull +15 -> 106
    //   94: aload_0
    //   95: invokevirtual 116	java/io/BufferedReader:close	()V
    //   98: goto +8 -> 106
    //   101: astore_0
    //   102: aload_0
    //   103: invokevirtual 121	java/lang/Throwable:printStackTrace	()V
    //   106: aload_3
    //   107: athrow
    //   108: astore_0
    //   109: aconst_null
    //   110: astore_0
    //   111: aload_0
    //   112: ifnull +15 -> 127
    //   115: aload_0
    //   116: invokevirtual 116	java/io/BufferedReader:close	()V
    //   119: goto +8 -> 127
    //   122: astore_0
    //   123: aload_0
    //   124: invokevirtual 121	java/lang/Throwable:printStackTrace	()V
    //   127: aconst_null
    //   128: areturn
    //   129: astore_3
    //   130: goto -19 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	paramString	String
    //   1	88	1	localObject1	Object
    //   5	49	2	localObject2	Object
    //   9	73	3	localObject3	Object
    //   83	1	3	localObject4	Object
    //   87	20	3	localObject5	Object
    //   129	1	3	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   69	73	76	java/io/IOException
    //   60	69	83	finally
    //   2	60	87	finally
    //   94	98	101	java/io/IOException
    //   2	60	108	java/io/IOException
    //   115	119	122	java/io/IOException
    //   60	69	129	java/io/IOException
  }
  
  public static boolean c()
  {
    return a("EMUI");
  }
  
  public static boolean d()
  {
    return a("OPPO");
  }
  
  public static boolean e()
  {
    return a("VIVO");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z6.d
 * JD-Core Version:    0.7.0.1
 */