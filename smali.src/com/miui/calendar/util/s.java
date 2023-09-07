package com.miui.calendar.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioAttributes.Builder;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.AsyncTask;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public class s
{
  private static HashMap<String, Bitmap> a = new HashMap();
  
  public static void a()
  {
    HashMap localHashMap = a;
    if (localHashMap != null) {
      localHashMap.clear();
    }
  }
  
  public static boolean b(String paramString)
  {
    return new File(paramString).exists();
  }
  
  public static String c(Context paramContext, String paramString)
  {
    return d(new File(paramContext.getFilesDir(), paramString));
  }
  
  /* Error */
  public static String d(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: aconst_null
    //   5: astore_3
    //   6: aload_3
    //   7: astore 4
    //   9: new 54	java/lang/StringBuilder
    //   12: astore 5
    //   14: aload_3
    //   15: astore 4
    //   17: aload 5
    //   19: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   22: aload_3
    //   23: astore 4
    //   25: aload 5
    //   27: ldc 57
    //   29: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: pop
    //   33: aload_3
    //   34: astore 4
    //   36: aload 5
    //   38: aload_0
    //   39: invokevirtual 65	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   42: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: pop
    //   46: aload_3
    //   47: astore 4
    //   49: ldc 67
    //   51: aload 5
    //   53: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokestatic 75	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   59: aload_3
    //   60: astore 4
    //   62: new 77	java/io/FileInputStream
    //   65: astore 5
    //   67: aload_3
    //   68: astore 4
    //   70: aload 5
    //   72: aload_0
    //   73: invokevirtual 65	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   76: invokespecial 78	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   79: aload 5
    //   81: invokevirtual 82	java/io/FileInputStream:available	()I
    //   84: newarray byte
    //   86: astore 4
    //   88: aload 5
    //   90: aload 4
    //   92: invokevirtual 86	java/io/FileInputStream:read	([B)I
    //   95: pop
    //   96: new 88	java/lang/String
    //   99: astore_0
    //   100: aload_0
    //   101: aload 4
    //   103: invokespecial 91	java/lang/String:<init>	([B)V
    //   106: aload 5
    //   108: invokevirtual 94	java/io/FileInputStream:close	()V
    //   111: goto +108 -> 219
    //   114: astore 4
    //   116: ldc 67
    //   118: ldc 96
    //   120: aload 4
    //   122: invokestatic 99	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   125: goto +94 -> 219
    //   128: astore_0
    //   129: aload 5
    //   131: astore 4
    //   133: goto +122 -> 255
    //   136: astore 4
    //   138: aload 5
    //   140: astore_0
    //   141: aload 4
    //   143: astore 5
    //   145: goto +18 -> 163
    //   148: astore_0
    //   149: aload 5
    //   151: astore_0
    //   152: goto +34 -> 186
    //   155: astore_0
    //   156: goto +99 -> 255
    //   159: astore 5
    //   161: aload_1
    //   162: astore_0
    //   163: aload_0
    //   164: astore 4
    //   166: ldc 67
    //   168: ldc 96
    //   170: aload 5
    //   172: invokestatic 99	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   175: aload_0
    //   176: ifnull +40 -> 216
    //   179: aload_0
    //   180: invokevirtual 94	java/io/FileInputStream:close	()V
    //   183: goto +33 -> 216
    //   186: aload_0
    //   187: astore 4
    //   189: ldc 67
    //   191: ldc 101
    //   193: invokestatic 104	com/miui/calendar/util/z:m	(Ljava/lang/String;Ljava/lang/String;)V
    //   196: aload_0
    //   197: ifnull +19 -> 216
    //   200: aload_0
    //   201: invokevirtual 94	java/io/FileInputStream:close	()V
    //   204: goto +12 -> 216
    //   207: astore_0
    //   208: ldc 67
    //   210: ldc 96
    //   212: aload_0
    //   213: invokestatic 99	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   216: ldc 106
    //   218: astore_0
    //   219: new 54	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   226: astore 4
    //   228: aload 4
    //   230: ldc 108
    //   232: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: pop
    //   236: aload 4
    //   238: aload_0
    //   239: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: pop
    //   243: ldc 67
    //   245: aload 4
    //   247: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: invokestatic 110	com/miui/calendar/util/z:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   253: aload_0
    //   254: areturn
    //   255: aload 4
    //   257: ifnull +22 -> 279
    //   260: aload 4
    //   262: invokevirtual 94	java/io/FileInputStream:close	()V
    //   265: goto +14 -> 279
    //   268: astore 4
    //   270: ldc 67
    //   272: ldc 96
    //   274: aload 4
    //   276: invokestatic 99	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   279: aload_0
    //   280: athrow
    //   281: astore_0
    //   282: aload_2
    //   283: astore_0
    //   284: goto -98 -> 186
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	287	0	paramFile	File
    //   1	161	1	localObject1	Object
    //   3	280	2	localObject2	Object
    //   5	63	3	localObject3	Object
    //   7	95	4	localObject4	Object
    //   114	7	4	localIOException1	java.io.IOException
    //   131	1	4	localObject5	Object
    //   136	6	4	localIOException2	java.io.IOException
    //   164	97	4	localObject6	Object
    //   268	7	4	localIOException3	java.io.IOException
    //   12	138	5	localObject7	Object
    //   159	12	5	localIOException4	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   106	111	114	java/io/IOException
    //   79	106	128	finally
    //   79	106	136	java/io/IOException
    //   79	106	148	java/io/FileNotFoundException
    //   9	14	155	finally
    //   17	22	155	finally
    //   25	33	155	finally
    //   36	46	155	finally
    //   49	59	155	finally
    //   62	67	155	finally
    //   70	79	155	finally
    //   166	175	155	finally
    //   189	196	155	finally
    //   9	14	159	java/io/IOException
    //   17	22	159	java/io/IOException
    //   25	33	159	java/io/IOException
    //   36	46	159	java/io/IOException
    //   49	59	159	java/io/IOException
    //   62	67	159	java/io/IOException
    //   70	79	159	java/io/IOException
    //   179	183	207	java/io/IOException
    //   200	204	207	java/io/IOException
    //   260	265	268	java/io/IOException
    //   9	14	281	java/io/FileNotFoundException
    //   17	22	281	java/io/FileNotFoundException
    //   25	33	281	java/io/FileNotFoundException
    //   36	46	281	java/io/FileNotFoundException
    //   49	59	281	java/io/FileNotFoundException
    //   62	67	281	java/io/FileNotFoundException
    //   70	79	281	java/io/FileNotFoundException
  }
  
  public static void e(Context paramContext)
  {
    new a(new WeakReference(paramContext)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
  }
  
  public static boolean f(Context paramContext, String paramString1, String paramString2)
  {
    z.a("Cal:D:FileUtils", "saveStringToFile()");
    try
    {
      paramContext = paramContext.openFileOutput(paramString1, 0);
      paramContext.write(paramString2.getBytes());
      paramContext.close();
      return true;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:FileUtils", "saveStringToFile()", paramContext);
      return false;
    }
    catch (FileNotFoundException paramContext)
    {
      z.c("Cal:D:FileUtils", "saveStringToFile(): FileNotFoundException");
    }
    return false;
  }
  
  class a
    extends AsyncTask
  {
    a() {}
    
    protected Void a(Object[] paramArrayOfObject)
    {
      Object localObject = (Context)s.this.get();
      if (localObject == null) {
        return null;
      }
      if (!d0.a(((Context)localObject).getApplicationContext()))
      {
        z.a("Cal:D:FileUtils", "playRingtoneAsync(): getDeleteSoundEffect is false");
        return null;
      }
      try
      {
        paramArrayOfObject = new java/io/File;
        paramArrayOfObject.<init>("/system/media/audio/ui/Delete.ogg");
        if (paramArrayOfObject.exists())
        {
          localObject = RingtoneManager.getRingtone(((Context)localObject).getApplicationContext(), Uri.fromFile(paramArrayOfObject));
          if (localObject != null)
          {
            paramArrayOfObject = new android/media/AudioAttributes$Builder;
            paramArrayOfObject.<init>();
            ((Ringtone)localObject).setAudioAttributes(paramArrayOfObject.setLegacyStreamType(1).build());
            ((Ringtone)localObject).play();
          }
        }
        else
        {
          z.m("Cal:D:FileUtils", "playRingtoneAsync(): FileNotFoundException");
        }
      }
      catch (Exception paramArrayOfObject)
      {
        z.d("Cal:D:FileUtils", "playRingtoneAsync()", paramArrayOfObject);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.s
 * JD-Core Version:    0.7.0.1
 */