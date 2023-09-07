package y4;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.AsyncTask;
import android.util.Pair;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import com.miui.calendar.weather.WeatherInfo;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class c
{
  private static final Uri a = Uri.parse("content://weather/getWeatherByLocation");
  private static final Uri b = Uri.parse("content://weather/weather");
  private static Pair<Integer, Integer> c = new Pair(Integer.valueOf(1), Integer.valueOf(5));
  
  /* Error */
  public static WeatherInfo a(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   3: invokestatic 62	com/miui/calendar/util/s0:l	(J)I
    //   6: pop
    //   7: aload_0
    //   8: invokevirtual 68	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   11: getstatic 30	y4/c:b	Landroid/net/Uri;
    //   14: aconst_null
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 74	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_2
    //   22: aload_2
    //   23: ifnull +472 -> 495
    //   26: aload_2
    //   27: invokeinterface 80 1 0
    //   32: istore_1
    //   33: iload_1
    //   34: ifle +461 -> 495
    //   37: aload_2
    //   38: iconst_0
    //   39: invokeinterface 84 2 0
    //   44: pop
    //   45: aload_2
    //   46: aload_2
    //   47: ldc 86
    //   49: invokeinterface 90 2 0
    //   54: invokeinterface 94 2 0
    //   59: astore_3
    //   60: aload_2
    //   61: aload_2
    //   62: ldc 96
    //   64: invokeinterface 90 2 0
    //   69: invokeinterface 94 2 0
    //   74: astore 4
    //   76: aload_2
    //   77: aload_2
    //   78: ldc 98
    //   80: invokeinterface 90 2 0
    //   85: invokeinterface 94 2 0
    //   90: astore 5
    //   92: aload_2
    //   93: aload_2
    //   94: ldc 100
    //   96: invokeinterface 90 2 0
    //   101: invokeinterface 94 2 0
    //   106: astore 6
    //   108: aload_2
    //   109: aload_2
    //   110: ldc 102
    //   112: invokeinterface 90 2 0
    //   117: invokeinterface 94 2 0
    //   122: astore 7
    //   124: aload_2
    //   125: aload_2
    //   126: ldc 104
    //   128: invokeinterface 90 2 0
    //   133: invokeinterface 94 2 0
    //   138: astore 8
    //   140: aload_2
    //   141: aload_2
    //   142: ldc 106
    //   144: invokeinterface 90 2 0
    //   149: invokeinterface 94 2 0
    //   154: astore 9
    //   156: aload_2
    //   157: aload_2
    //   158: ldc 108
    //   160: invokeinterface 90 2 0
    //   165: invokeinterface 94 2 0
    //   170: astore 10
    //   172: aload_2
    //   173: aload_2
    //   174: ldc 110
    //   176: invokeinterface 90 2 0
    //   181: invokeinterface 94 2 0
    //   186: astore 11
    //   188: aload_2
    //   189: aload_2
    //   190: ldc 112
    //   192: invokeinterface 90 2 0
    //   197: invokeinterface 116 2 0
    //   202: istore 12
    //   204: aload_2
    //   205: aload_2
    //   206: ldc 118
    //   208: invokeinterface 90 2 0
    //   213: invokeinterface 122 2 0
    //   218: lstore 13
    //   220: aload_2
    //   221: aload_2
    //   222: ldc 124
    //   224: invokeinterface 90 2 0
    //   229: invokeinterface 116 2 0
    //   234: istore 15
    //   236: aload_2
    //   237: aload_2
    //   238: ldc 126
    //   240: invokeinterface 90 2 0
    //   245: invokeinterface 94 2 0
    //   250: astore 16
    //   252: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   255: lstore 17
    //   257: lload 17
    //   259: lload 13
    //   261: lsub
    //   262: ldc2_w 127
    //   265: ldiv
    //   266: l2i
    //   267: istore_1
    //   268: iload_1
    //   269: bipush 30
    //   271: if_icmpgt +13 -> 284
    //   274: iload_1
    //   275: iflt +9 -> 284
    //   278: ldc 130
    //   280: astore_0
    //   281: goto +60 -> 341
    //   284: iload_1
    //   285: bipush 60
    //   287: if_icmpgt +19 -> 306
    //   290: iload_1
    //   291: bipush 30
    //   293: if_icmple +13 -> 306
    //   296: ldc 132
    //   298: astore_0
    //   299: goto +42 -> 341
    //   302: astore_0
    //   303: goto +180 -> 483
    //   306: iload_1
    //   307: sipush 180
    //   310: if_icmpgt +15 -> 325
    //   313: iload_1
    //   314: bipush 60
    //   316: if_icmple +9 -> 325
    //   319: ldc 134
    //   321: astore_0
    //   322: goto +19 -> 341
    //   325: iload_1
    //   326: sipush 180
    //   329: if_icmple +9 -> 338
    //   332: ldc 136
    //   334: astore_0
    //   335: goto +6 -> 341
    //   338: ldc 138
    //   340: astore_0
    //   341: aload_2
    //   342: astore 19
    //   344: ldc 140
    //   346: iconst_2
    //   347: anewarray 142	java/lang/String
    //   350: dup
    //   351: iconst_0
    //   352: ldc 144
    //   354: aastore
    //   355: dup
    //   356: iconst_1
    //   357: aload_0
    //   358: aastore
    //   359: invokestatic 150	com/miui/calendar/util/g0:f	(Ljava/lang/String;[Ljava/lang/String;)V
    //   362: lload 13
    //   364: invokestatic 154	y4/c:j	(J)Z
    //   367: ifeq +95 -> 462
    //   370: new 156	com/miui/calendar/weather/WeatherInfo
    //   373: astore_0
    //   374: aload_0
    //   375: invokespecial 157	com/miui/calendar/weather/WeatherInfo:<init>	()V
    //   378: aload_0
    //   379: aload_3
    //   380: putfield 161	com/miui/calendar/weather/WeatherInfo:cityName	Ljava/lang/String;
    //   383: aload_0
    //   384: aload 4
    //   386: putfield 164	com/miui/calendar/weather/WeatherInfo:weatherFrom	Ljava/lang/String;
    //   389: aload_0
    //   390: aload 5
    //   392: putfield 167	com/miui/calendar/weather/WeatherInfo:weatherTo	Ljava/lang/String;
    //   395: aload_0
    //   396: aload 11
    //   398: putfield 169	com/miui/calendar/weather/WeatherInfo:wind	Ljava/lang/String;
    //   401: aload_0
    //   402: aload 10
    //   404: putfield 171	com/miui/calendar/weather/WeatherInfo:humidity	Ljava/lang/String;
    //   407: aload_0
    //   408: aload 6
    //   410: putfield 173	com/miui/calendar/weather/WeatherInfo:temperature	Ljava/lang/String;
    //   413: aload_0
    //   414: aload 7
    //   416: putfield 176	com/miui/calendar/weather/WeatherInfo:temperatureHigh	Ljava/lang/String;
    //   419: aload_0
    //   420: aload 8
    //   422: putfield 179	com/miui/calendar/weather/WeatherInfo:temperatureLow	Ljava/lang/String;
    //   425: aload_0
    //   426: aload 9
    //   428: putfield 182	com/miui/calendar/weather/WeatherInfo:temperatureRange	Ljava/lang/String;
    //   431: aload_0
    //   432: iload 12
    //   434: putfield 186	com/miui/calendar/weather/WeatherInfo:aqiLevel	I
    //   437: aload_0
    //   438: iload 15
    //   440: putfield 189	com/miui/calendar/weather/WeatherInfo:weatherType	I
    //   443: aload_0
    //   444: aload 16
    //   446: putfield 192	com/miui/calendar/weather/WeatherInfo:weatherTypeDesc	Ljava/lang/String;
    //   449: aload 19
    //   451: invokeinterface 195 1 0
    //   456: aload_0
    //   457: areturn
    //   458: astore_0
    //   459: goto +47 -> 506
    //   462: ldc 197
    //   464: ldc 199
    //   466: invokestatic 205	com/miui/calendar/util/z:m	(Ljava/lang/String;Ljava/lang/String;)V
    //   469: aload 19
    //   471: invokeinterface 195 1 0
    //   476: aconst_null
    //   477: areturn
    //   478: astore_0
    //   479: goto +8 -> 487
    //   482: astore_0
    //   483: goto +4 -> 487
    //   486: astore_0
    //   487: aload_2
    //   488: invokeinterface 195 1 0
    //   493: aload_0
    //   494: athrow
    //   495: ldc 197
    //   497: ldc 207
    //   499: invokestatic 209	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   502: goto +12 -> 514
    //   505: astore_0
    //   506: ldc 197
    //   508: ldc 211
    //   510: aload_0
    //   511: invokestatic 215	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   514: aconst_null
    //   515: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	516	0	paramContext	Context
    //   0	516	1	paramInt	int
    //   21	467	2	localCursor1	Cursor
    //   59	321	3	str1	String
    //   74	311	4	str2	String
    //   90	301	5	str3	String
    //   106	303	6	str4	String
    //   122	293	7	str5	String
    //   138	283	8	str6	String
    //   154	273	9	str7	String
    //   170	233	10	str8	String
    //   186	211	11	str9	String
    //   202	231	12	i	int
    //   218	145	13	l1	long
    //   234	205	15	j	int
    //   250	195	16	str10	String
    //   255	3	17	l2	long
    //   342	128	19	localCursor2	Cursor
    // Exception table:
    //   from	to	target	type
    //   344	449	302	finally
    //   449	456	458	java/lang/Exception
    //   462	469	478	finally
    //   257	268	482	finally
    //   37	257	486	finally
    //   7	22	505	java/lang/Exception
    //   26	33	505	java/lang/Exception
    //   469	476	505	java/lang/Exception
    //   487	495	505	java/lang/Exception
    //   495	502	505	java/lang/Exception
  }
  
  public static void b(Context paramContext, final int paramInt, final b paramb)
  {
    new a(paramInt, paramb).execute(new Void[0]);
  }
  
  public static String c(Context paramContext, int paramInt)
  {
    WeatherInfo localWeatherInfo = a(paramContext, paramInt);
    if (localWeatherInfo != null)
    {
      paramContext = new StringBuilder();
      paramContext.append(localWeatherInfo.cityName);
      paramContext.append("  ");
      paramContext.append(localWeatherInfo.weatherTypeDesc);
      paramContext.append("  ");
      paramContext.append(localWeatherInfo.temperatureRange);
      return paramContext.toString();
    }
    return "";
  }
  
  public static String d(Context paramContext, long paramLong, String paramString1, String paramString2)
  {
    r0 localr0 = new r0();
    localr0.D(paramLong);
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("getWeatherByLocation(): time:");
    ((StringBuilder)localObject1).append(localr0);
    z.a("Cal:D:WeatherUtils", ((StringBuilder)localObject1).toString());
    localObject1 = a.buildUpon().appendPath(String.valueOf(paramLong)).appendPath(paramString1).appendPath(paramString2).build();
    try
    {
      paramContext = paramContext.getContentResolver().query((Uri)localObject1, null, null, null, null);
      if (paramContext != null) {
        try
        {
          paramContext.moveToFirst();
          int i = paramContext.getColumnIndexOrThrow("weather_desc");
          int j = paramContext.getColumnIndexOrThrow("temp_low");
          int k = paramContext.getColumnIndexOrThrow("temp_high");
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(paramContext.getString(i));
          localStringBuilder.append(" ");
          localStringBuilder.append(paramContext.getString(j));
          localStringBuilder.append("℃~");
          localStringBuilder.append(paramContext.getString(k));
          localStringBuilder.append("℃");
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("getWeatherByLocation(): ");
          ((StringBuilder)localObject1).append(localStringBuilder.toString());
          z.a("Cal:D:WeatherUtils", ((StringBuilder)localObject1).toString());
          localObject1 = localStringBuilder.toString();
          return localObject1;
        }
        finally
        {
          paramContext.close();
        }
      }
      z.a("Cal:D:WeatherUtils", "getWeatherByLocation(): cursor is null, return empty string");
      return "";
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:WeatherUtils", "getWeatherByLocation(): get weather by location failed", paramContext);
      paramContext = new StringBuilder();
      paramContext.append("getWeatherByLocation(): get weather failed, time:");
      paramContext.append(localr0);
      paramContext.append(", longitude:");
      paramContext.append(paramString1);
      paramContext.append(", latitude:");
      paramContext.append(paramString2);
      z.m("Cal:D:WeatherUtils", paramContext.toString());
    }
    return "";
  }
  
  public static Intent e(Context paramContext)
  {
    if (i(paramContext)) {
      return f(paramContext);
    }
    return null;
  }
  
  private static Intent f(Context paramContext)
  {
    return paramContext.getPackageManager().getLaunchIntentForPackage("com.miui.weather2");
  }
  
  public static Intent[] g(Context paramContext)
  {
    if (i(paramContext))
    {
      paramContext = new Intent();
      paramContext.setAction("miui.intent.action.weather");
      paramContext.setComponent(new ComponentName("com.miui.weather2", "com.miui.weather2.ActivityDailyForecastDetail"));
      paramContext.putExtra("miref", "com.android.calendar");
      paramContext.addFlags(268435456);
      Intent localIntent = new Intent();
      localIntent.setAction("miui.intent.action.weather");
      localIntent.setComponent(new ComponentName("com.miui.weather2", "com.miui.weather2.ActivityWeatherMain"));
      localIntent.putExtra("miref", "com.android.calendar");
      localIntent.addFlags(268435456);
      return new Intent[] { localIntent, paramContext };
    }
    return null;
  }
  
  private static void h(Context paramContext)
  {
    try
    {
      Object localObject = Class.forName("miui.content.pm.PreloadedAppPolicy");
      Class localClass = Class.forName("android.content.pm.IPackageInstallObserver");
      localObject = ((Class)localObject).getDeclaredMethod("installPreloadedDataApp", new Class[] { Context.class, String.class, Object.class, Integer.TYPE });
      b localb = new y4/c$b;
      localb.<init>(paramContext);
      ((Method)localObject).invoke(null, new Object[] { paramContext, "com.miui.weather2", Proxy.newProxyInstance(c.class.getClassLoader(), new Class[] { localClass }, localb), Integer.valueOf(0) });
      t0.f(paramContext, 2131886754);
    }
    catch (Exception localException)
    {
      z.d("Cal:D:WeatherUtils", "install error", localException);
      t0.f(paramContext, 2131886753);
    }
  }
  
  public static boolean i(Context paramContext)
  {
    try
    {
      paramContext.getPackageManager().getApplicationInfo("com.miui.weather2", 8192);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  private static boolean j(long paramLong)
  {
    boolean bool;
    if (System.currentTimeMillis() - paramLong < 75600000L) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void k(Context paramContext, boolean paramBoolean)
  {
    if (i(paramContext))
    {
      if (DeviceUtils.r(paramContext, "com.miui.weather2") >= 12080301L)
      {
        paramContext.startActivities(g(paramContext));
      }
      else
      {
        Intent localIntent = f(paramContext);
        if (localIntent != null) {
          paramContext.startActivity(localIntent);
        }
      }
    }
    else if (paramBoolean) {
      h(paramContext);
    }
  }
  
  class a
    extends AsyncTask<Void, Void, WeatherInfo>
  {
    a(int paramInt, b paramb) {}
    
    protected WeatherInfo a(Void... paramVarArgs)
    {
      return c.a(c.this, paramInt);
    }
    
    protected void b(WeatherInfo paramWeatherInfo)
    {
      b localb = paramb;
      if (localb != null) {
        if (paramWeatherInfo == null) {
          localb.b();
        } else {
          localb.a(paramWeatherInfo);
        }
      }
    }
  }
  
  public static class b
    implements InvocationHandler
  {
    private Context a;
    
    public b(Context paramContext)
    {
      this.a = paramContext;
    }
    
    public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
      throws Throwable
    {
      if (paramMethod.getName().equals("packageInstalled"))
      {
        z.a("Cal:D:WeatherUtils", "weather app installed.");
        c.k(this.a, false);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y4.c
 * JD-Core Version:    0.7.0.1
 */