package com.miui.calendar.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Keep;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
import pc.c;
import u1.b;
import u1.b.a;
import u1.d;

public class DaysOffUtils
{
  private static volatile DaysOffUtils d;
  private SparseArray<DaysOffScheme> a = new SparseArray();
  private int b = 0;
  private Context c;
  
  private DaysOffUtils(Context paramContext)
  {
    long l = System.currentTimeMillis();
    this.c = paramContext;
    int i = f(paramContext);
    if ((i > 17) && (i(i, d(paramContext))))
    {
      this.b = i;
      paramContext = new StringBuilder();
      paramContext.append("DaysOffUtils init finish, use sp data, version=");
      paramContext.append(this.b);
      paramContext.append(", cost ");
      paramContext.append(System.currentTimeMillis() - l);
      paramContext.append(" ms");
      z.a("Cal:D:DaysOffUtils", paramContext.toString());
      return;
    }
    if (i(17, b(paramContext)))
    {
      this.b = 17;
      paramContext = new StringBuilder();
      paramContext.append("DaysOffUtils init finish, use raw data, version=");
      paramContext.append(this.b);
      paramContext.append(", cost ");
      paramContext.append(System.currentTimeMillis() - l);
      paramContext.append(" ms");
      z.a("Cal:D:DaysOffUtils", paramContext.toString());
      return;
    }
    paramContext = new StringBuilder();
    paramContext.append("DaysOffUtils init error, cost ");
    paramContext.append(System.currentTimeMillis() - l);
    paramContext.append(" ms");
    z.c("Cal:D:DaysOffUtils", paramContext.toString());
  }
  
  /* Error */
  private static String b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 101	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   4: ldc 102
    //   6: invokevirtual 108	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   9: astore_1
    //   10: aload_1
    //   11: invokevirtual 114	java/io/InputStream:available	()I
    //   14: newarray byte
    //   16: astore_2
    //   17: aload_1
    //   18: aload_2
    //   19: invokevirtual 118	java/io/InputStream:read	([B)I
    //   22: pop
    //   23: new 120	java/lang/String
    //   26: astore_0
    //   27: aload_0
    //   28: aload_2
    //   29: invokespecial 123	java/lang/String:<init>	([B)V
    //   32: aload_1
    //   33: invokevirtual 126	java/io/InputStream:close	()V
    //   36: goto +47 -> 83
    //   39: astore_1
    //   40: ldc 75
    //   42: ldc 128
    //   44: aload_1
    //   45: invokestatic 131	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   48: goto +35 -> 83
    //   51: astore_0
    //   52: goto +33 -> 85
    //   55: astore_0
    //   56: ldc 75
    //   58: ldc 128
    //   60: aload_0
    //   61: invokestatic 131	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   64: aload_1
    //   65: invokevirtual 126	java/io/InputStream:close	()V
    //   68: goto +12 -> 80
    //   71: astore_0
    //   72: ldc 75
    //   74: ldc 128
    //   76: aload_0
    //   77: invokestatic 131	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   80: ldc 133
    //   82: astore_0
    //   83: aload_0
    //   84: areturn
    //   85: aload_1
    //   86: invokevirtual 126	java/io/InputStream:close	()V
    //   89: goto +12 -> 101
    //   92: astore_1
    //   93: ldc 75
    //   95: ldc 128
    //   97: aload_1
    //   98: invokestatic 131	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   101: aload_0
    //   102: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	paramContext	Context
    //   9	24	1	localInputStream	java.io.InputStream
    //   39	47	1	localIOException1	java.io.IOException
    //   92	6	1	localIOException2	java.io.IOException
    //   16	13	2	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   32	36	39	java/io/IOException
    //   10	32	51	finally
    //   56	64	51	finally
    //   10	32	55	java/io/IOException
    //   64	68	71	java/io/IOException
    //   85	89	92	java/io/IOException
  }
  
  private static String d(Context paramContext)
  {
    return b2.a.c(paramContext, "daysoff_info", "");
  }
  
  public static int f(Context paramContext)
  {
    return b2.a.a(paramContext, "daysoff_info_version", 0);
  }
  
  public static DaysOffUtils g(Context paramContext)
  {
    if (d == null) {
      try
      {
        DaysOffUtils localDaysOffUtils = new com/miui/calendar/util/DaysOffUtils;
        localDaysOffUtils.<init>(paramContext.getApplicationContext());
        d = localDaysOffUtils;
      }
      finally {}
    }
    return d;
  }
  
  private boolean i(int paramInt, String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      try
      {
        paramString = (FullDaysOffScheme)x.a(paramString, FullDaysOffScheme.class);
        if ((paramString != null) && (paramInt == paramString.versioncode))
        {
          paramString = paramString.holiday;
          if ((paramString != null) && (paramString.length > 0))
          {
            int i = paramString.length;
            for (paramInt = 0; paramInt < i; paramInt++)
            {
              Object localObject = paramString[paramInt];
              this.a.put(localObject.year, localObject);
            }
            return true;
          }
        }
      }
      catch (Exception paramString)
      {
        z.d("Cal:D:DaysOffUtils", "parseDaysOff()", paramString);
      }
    }
    return false;
  }
  
  private static void j(Context paramContext, String paramString)
  {
    b2.a.k(paramContext, "daysoff_info", paramString);
  }
  
  private static void k(Context paramContext, int paramInt)
  {
    b2.a.i(paramContext, "daysoff_info_version", paramInt);
  }
  
  public SparseArray<DaysOffScheme> a()
  {
    return this.a;
  }
  
  public void c(Context paramContext, String paramString, a parama)
  {
    z.a("Cal:D:DaysOffUtils", "getDaysOffFromRemote()");
    String str = d.a(paramContext);
    Map localMap = l0.a(paramContext, null);
    u1.a locala = d.e(l0.b);
    paramContext = new b(paramContext, parama, paramString);
    locala.d(str, localMap).q(new b(paramContext));
  }
  
  public int e(int paramInt1, int paramInt2)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      DaysOffScheme localDaysOffScheme = (DaysOffScheme)((SparseArray)localObject).get(paramInt1);
      if (localDaysOffScheme != null)
      {
        localObject = localDaysOffScheme.freeday;
        if (localObject != null)
        {
          int i = localObject.length;
          for (paramInt1 = 0; paramInt1 < i; paramInt1++) {
            if (localObject[paramInt1] == paramInt2) {
              return 1;
            }
          }
          localObject = localDaysOffScheme.workday;
          i = localObject.length;
          for (paramInt1 = 0; paramInt1 < i; paramInt1++) {
            if (localObject[paramInt1] == paramInt2) {
              return 2;
            }
          }
        }
      }
    }
    return 0;
  }
  
  public int h()
  {
    return this.b;
  }
  
  boolean l(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
    {
      z.c("Cal:D:DaysOffUtils", "updateLocalDaysOff() empty data");
      return false;
    }
    try
    {
      Object localObject1 = paramJSONObject.toString();
      paramJSONObject = (FullDaysOffScheme)x.a((String)localObject1, FullDaysOffScheme.class);
      if (paramJSONObject != null)
      {
        int i = paramJSONObject.versioncode;
        int j = this.b;
        if (i <= j)
        {
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("updateLocalDaysOff() remote version is equals or lower than now:");
          ((StringBuilder)localObject1).append(paramJSONObject.versioncode);
          ((StringBuilder)localObject1).append(",");
          ((StringBuilder)localObject1).append(this.b);
          z.a("Cal:D:DaysOffUtils", ((StringBuilder)localObject1).toString());
          return false;
        }
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("updateLocalDaysOff() remote version is higher than now:");
        ((StringBuilder)localObject2).append(paramJSONObject.versioncode);
        ((StringBuilder)localObject2).append(",");
        ((StringBuilder)localObject2).append(this.b);
        z.a("Cal:D:DaysOffUtils", ((StringBuilder)localObject2).toString());
        localObject2 = paramJSONObject.holiday;
        if ((localObject2 != null) && (localObject2.length != 0))
        {
          j(this.c, (String)localObject1);
          k(this.c, paramJSONObject.versioncode);
          localObject1 = c.c();
          paramJSONObject = new com/miui/calendar/util/g$g0;
          paramJSONObject.<init>();
          ((c)localObject1).k(paramJSONObject);
          d = null;
          z.a("Cal:D:DaysOffUtils", "updateLocalDaysOff() success");
          return true;
        }
        z.c("Cal:D:DaysOffUtils", "updateLocalDaysOff() empty holiday data");
        return false;
      }
    }
    catch (Exception paramJSONObject)
    {
      z.d("Cal:D:DaysOffUtils", "updateLocalDaysOff()", paramJSONObject);
    }
    return false;
  }
  
  @Keep
  public static class DaysOffScheme
  {
    public int[] freeday;
    public int[] workday;
    public int year;
  }
  
  @Keep
  static class FullDaysOffScheme
  {
    DaysOffUtils.DaysOffScheme[] holiday;
    int versioncode;
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
  
  private static class b
    implements b.a
  {
    private WeakReference<Context> a;
    private WeakReference<DaysOffUtils.a> b;
    private String c;
    
    b(Context paramContext, DaysOffUtils.a parama, String paramString)
    {
      this.a = new WeakReference(paramContext);
      this.b = new WeakReference(parama);
      this.c = paramString;
    }
    
    public void a(JSONObject paramJSONObject)
    {
      Context localContext = (Context)this.a.get();
      if (localContext == null) {
        return;
      }
      boolean bool = DaysOffUtils.g(localContext).l(paramJSONObject);
      int i = 1;
      if (bool) {
        g0.f("days_off_update_success", new String[] { "from", this.c });
      }
      if (this.b.get() != null)
      {
        paramJSONObject = (DaysOffUtils.a)this.b.get();
        if (!bool) {
          i = 2;
        }
        paramJSONObject.a(i);
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:DaysOffUtils", "ResponseListener:", paramException);
      if (this.b.get() != null) {
        ((DaysOffUtils.a)this.b.get()).a(-1);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.DaysOffUtils
 * JD-Core Version:    0.7.0.1
 */