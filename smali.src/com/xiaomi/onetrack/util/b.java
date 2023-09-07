package com.xiaomi.onetrack.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.os.Process;
import android.system.Os;
import android.text.TextUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class b
{
  static final String a = "2.0.3";
  static final String b = "OneTrack 2.0.3";
  static final String c = "CrashUtil";
  public static final String d = "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***";
  public static final String e = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---";
  public static final String f = "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++";
  static final String g = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
  public static final String h = "java";
  static final String i = "tombstone";
  static final String j = ".java.xcrash";
  private static final String k = "%21s %8s\n";
  private static final String l = "%21s %8s %21s %8s\n";
  private static final String[] m = { "/data/local/su", "/data/local/bin/su", "/data/local/xbin/su", "/system/xbin/su", "/system/bin/su", "/system/bin/.ext/su", "/system/bin/failsafe/su", "/system/sd/xbin/su", "/system/usr/we-need-root/su", "/sbin/su", "/su/bin/su" };
  
  public static long a(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
    try
    {
      long l1 = localSimpleDateFormat.parse(paramString).getTime();
      return l1;
    }
    catch (ParseException paramString)
    {
      paramString.printStackTrace();
    }
    return 0L;
  }
  
  public static String a(int paramInt1, int paramInt2, int paramInt3)
  {
    int n = Process.myPid();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("logcat:\n");
    if (paramInt1 > 0) {
      a(n, localStringBuilder, "main", paramInt1, 'D');
    }
    if (paramInt2 > 0) {
      a(n, localStringBuilder, "system", paramInt2, 'W');
    }
    if (paramInt3 > 0) {
      a(n, localStringBuilder, "events", paramInt2, 'I');
    }
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
  
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
    }
    catch (Exception paramContext)
    {
      paramContext = null;
    }
    Object localObject = paramContext;
    if (TextUtils.isEmpty(paramContext)) {
      localObject = "unknown";
    }
    return localObject;
  }
  
  /* Error */
  public static String a(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: new 171	java/io/BufferedReader
    //   3: astore_0
    //   4: new 173	java/io/FileReader
    //   7: astore_2
    //   8: new 115	java/lang/StringBuilder
    //   11: astore_3
    //   12: aload_3
    //   13: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   16: aload_3
    //   17: ldc 175
    //   19: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: pop
    //   23: aload_3
    //   24: iload_1
    //   25: invokevirtual 178	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   28: pop
    //   29: aload_3
    //   30: ldc 180
    //   32: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: pop
    //   36: aload_2
    //   37: aload_3
    //   38: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokespecial 183	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   44: aload_0
    //   45: aload_2
    //   46: invokespecial 186	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   49: aload_0
    //   50: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   53: astore_3
    //   54: aload_0
    //   55: astore_2
    //   56: aload_3
    //   57: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   60: ifne +27 -> 87
    //   63: aload_3
    //   64: invokevirtual 192	java/lang/String:trim	()Ljava/lang/String;
    //   67: astore_3
    //   68: aload_3
    //   69: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   72: istore 4
    //   74: aload_0
    //   75: astore_2
    //   76: iload 4
    //   78: ifne +9 -> 87
    //   81: aload_0
    //   82: invokevirtual 195	java/io/BufferedReader:close	()V
    //   85: aload_3
    //   86: areturn
    //   87: aload_2
    //   88: invokevirtual 195	java/io/BufferedReader:close	()V
    //   91: goto +36 -> 127
    //   94: astore_3
    //   95: aload_0
    //   96: astore_2
    //   97: aload_3
    //   98: astore_0
    //   99: goto +6 -> 105
    //   102: astore_0
    //   103: aconst_null
    //   104: astore_2
    //   105: aload_2
    //   106: ifnull +7 -> 113
    //   109: aload_2
    //   110: invokevirtual 195	java/io/BufferedReader:close	()V
    //   113: aload_0
    //   114: athrow
    //   115: astore_0
    //   116: aconst_null
    //   117: astore_0
    //   118: aload_0
    //   119: ifnull +8 -> 127
    //   122: aload_0
    //   123: astore_2
    //   124: goto -37 -> 87
    //   127: aconst_null
    //   128: areturn
    //   129: astore_2
    //   130: goto -12 -> 118
    //   133: astore_0
    //   134: goto -49 -> 85
    //   137: astore_0
    //   138: goto -11 -> 127
    //   141: astore_2
    //   142: goto -29 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	paramContext	Context
    //   0	145	1	paramInt	int
    //   7	117	2	localObject1	Object
    //   129	1	2	localException1	Exception
    //   141	1	2	localException2	Exception
    //   11	75	3	localObject2	Object
    //   94	4	3	localObject3	Object
    //   72	5	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   49	54	94	finally
    //   56	74	94	finally
    //   0	49	102	finally
    //   0	49	115	java/lang/Exception
    //   49	54	129	java/lang/Exception
    //   56	74	129	java/lang/Exception
    //   81	85	133	java/lang/Exception
    //   87	91	137	java/lang/Exception
    //   109	113	141	java/lang/Exception
  }
  
  /* Error */
  private static String a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: new 115	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   7: astore_2
    //   8: aconst_null
    //   9: astore_3
    //   10: aconst_null
    //   11: astore 4
    //   13: aload 4
    //   15: astore 5
    //   17: new 171	java/io/BufferedReader
    //   20: astore 6
    //   22: aload 4
    //   24: astore 5
    //   26: new 173	java/io/FileReader
    //   29: astore 7
    //   31: aload 4
    //   33: astore 5
    //   35: aload 7
    //   37: aload_0
    //   38: invokespecial 183	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   41: aload 4
    //   43: astore 5
    //   45: aload 6
    //   47: aload 7
    //   49: invokespecial 186	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   52: iconst_0
    //   53: istore 8
    //   55: aload 6
    //   57: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   60: astore 5
    //   62: aload 5
    //   64: ifnull +66 -> 130
    //   67: aload 5
    //   69: invokevirtual 192	java/lang/String:trim	()Ljava/lang/String;
    //   72: astore 5
    //   74: aload 5
    //   76: invokevirtual 199	java/lang/String:length	()I
    //   79: ifle -24 -> 55
    //   82: iload 8
    //   84: iconst_1
    //   85: iadd
    //   86: istore 9
    //   88: iload_1
    //   89: ifeq +13 -> 102
    //   92: iload 9
    //   94: istore 8
    //   96: iload 9
    //   98: iload_1
    //   99: if_icmpgt -44 -> 55
    //   102: aload_2
    //   103: ldc 201
    //   105: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload_2
    //   110: aload 5
    //   112: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: aload_2
    //   117: ldc 133
    //   119: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: pop
    //   123: iload 9
    //   125: istore 8
    //   127: goto -72 -> 55
    //   130: iload_1
    //   131: ifle +37 -> 168
    //   134: iload 8
    //   136: iload_1
    //   137: if_icmple +31 -> 168
    //   140: aload_2
    //   141: ldc 203
    //   143: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: pop
    //   147: aload_2
    //   148: ldc 205
    //   150: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: pop
    //   154: aload_2
    //   155: iload 8
    //   157: invokevirtual 178	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   160: pop
    //   161: aload_2
    //   162: ldc 207
    //   164: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: aload 6
    //   170: invokevirtual 195	java/io/BufferedReader:close	()V
    //   173: goto +98 -> 271
    //   176: astore_0
    //   177: aload 6
    //   179: astore 5
    //   181: goto +95 -> 276
    //   184: astore 4
    //   186: goto +12 -> 198
    //   189: astore_0
    //   190: goto +86 -> 276
    //   193: astore 4
    //   195: aload_3
    //   196: astore 6
    //   198: aload 6
    //   200: astore 5
    //   202: new 115	java/lang/StringBuilder
    //   205: astore_3
    //   206: aload 6
    //   208: astore 5
    //   210: aload_3
    //   211: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   214: aload 6
    //   216: astore 5
    //   218: aload_3
    //   219: ldc 209
    //   221: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: pop
    //   225: aload 6
    //   227: astore 5
    //   229: aload_3
    //   230: aload_0
    //   231: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: pop
    //   235: aload 6
    //   237: astore 5
    //   239: aload_3
    //   240: ldc 211
    //   242: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: pop
    //   246: aload 6
    //   248: astore 5
    //   250: ldc 14
    //   252: aload_3
    //   253: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   256: aload 4
    //   258: invokestatic 216	com/xiaomi/onetrack/util/p:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   261: aload 6
    //   263: ifnull +8 -> 271
    //   266: aload 6
    //   268: invokevirtual 195	java/io/BufferedReader:close	()V
    //   271: aload_2
    //   272: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: areturn
    //   276: aload 5
    //   278: ifnull +8 -> 286
    //   281: aload 5
    //   283: invokevirtual 195	java/io/BufferedReader:close	()V
    //   286: aload_0
    //   287: athrow
    //   288: astore_0
    //   289: goto -18 -> 271
    //   292: astore 5
    //   294: goto -8 -> 286
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	297	0	paramString	String
    //   0	297	1	paramInt	int
    //   7	265	2	localStringBuilder1	StringBuilder
    //   9	244	3	localStringBuilder2	StringBuilder
    //   11	31	4	localObject1	Object
    //   184	1	4	localException1	Exception
    //   193	64	4	localException2	Exception
    //   15	267	5	localObject2	Object
    //   292	1	5	localException3	Exception
    //   20	247	6	localObject3	Object
    //   29	19	7	localFileReader	java.io.FileReader
    //   53	103	8	n	int
    //   86	38	9	i1	int
    // Exception table:
    //   from	to	target	type
    //   55	62	176	finally
    //   67	82	176	finally
    //   102	123	176	finally
    //   140	168	176	finally
    //   55	62	184	java/lang/Exception
    //   67	82	184	java/lang/Exception
    //   102	123	184	java/lang/Exception
    //   140	168	184	java/lang/Exception
    //   17	22	189	finally
    //   26	31	189	finally
    //   35	41	189	finally
    //   45	52	189	finally
    //   202	206	189	finally
    //   210	214	189	finally
    //   218	225	189	finally
    //   229	235	189	finally
    //   239	246	189	finally
    //   250	261	189	finally
    //   17	22	193	java/lang/Exception
    //   26	31	193	java/lang/Exception
    //   35	41	193	java/lang/Exception
    //   45	52	193	java/lang/Exception
    //   168	173	288	java/lang/Exception
    //   266	271	288	java/lang/Exception
    //   281	286	292	java/lang/Exception
  }
  
  public static String a(Date paramDate1, Date paramDate2, String paramString1, String paramString2, String paramString3)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nTombstone maker: 'OneTrack 2.0.3'\nCrash type: '");
    localStringBuilder.append(paramString1);
    localStringBuilder.append("'\nStart time: '");
    localStringBuilder.append(localSimpleDateFormat.format(paramDate1));
    localStringBuilder.append("'\nCrash time: '");
    localStringBuilder.append(localSimpleDateFormat.format(paramDate2));
    localStringBuilder.append("'\nApp ID: '");
    localStringBuilder.append(paramString2);
    localStringBuilder.append("'\nApp version: '");
    localStringBuilder.append(paramString3);
    localStringBuilder.append("'\nRooted: '");
    if (a()) {
      paramDate1 = "Yes";
    } else {
      paramDate1 = "No";
    }
    localStringBuilder.append(paramDate1);
    localStringBuilder.append("'\nAPI level: '");
    localStringBuilder.append(Build.VERSION.SDK_INT);
    localStringBuilder.append("'\nOS version: '");
    localStringBuilder.append(Build.VERSION.RELEASE);
    localStringBuilder.append("'\nABI list: '");
    localStringBuilder.append(b());
    localStringBuilder.append("'\nManufacturer: '");
    localStringBuilder.append(Build.MANUFACTURER);
    localStringBuilder.append("'\nBrand: '");
    localStringBuilder.append(Build.BRAND);
    localStringBuilder.append("'\nModel: '");
    localStringBuilder.append(Build.MODEL);
    localStringBuilder.append("'\nBuild fingerprint: '");
    localStringBuilder.append(Build.FINGERPRINT);
    localStringBuilder.append("'\n");
    return localStringBuilder.toString();
  }
  
  /* Error */
  private static void a(int paramInt1, StringBuilder paramStringBuilder, String paramString, int paramInt2, char paramChar)
  {
    // Byte code:
    //   0: iload_0
    //   1: invokestatic 288	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   4: astore 5
    //   6: new 115	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   13: astore 6
    //   15: aload 6
    //   17: ldc_w 290
    //   20: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: pop
    //   24: aload 6
    //   26: aload 5
    //   28: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: aload 6
    //   34: ldc_w 290
    //   37: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: pop
    //   41: new 292	java/util/ArrayList
    //   44: dup
    //   45: invokespecial 293	java/util/ArrayList:<init>	()V
    //   48: astore 6
    //   50: aload 6
    //   52: ldc_w 295
    //   55: invokeinterface 301 2 0
    //   60: pop
    //   61: aload 6
    //   63: ldc_w 303
    //   66: invokeinterface 301 2 0
    //   71: pop
    //   72: aload 6
    //   74: aload_2
    //   75: invokeinterface 301 2 0
    //   80: pop
    //   81: aload 6
    //   83: ldc_w 305
    //   86: invokeinterface 301 2 0
    //   91: pop
    //   92: aload 6
    //   94: ldc_w 307
    //   97: invokeinterface 301 2 0
    //   102: pop
    //   103: aload 6
    //   105: ldc_w 309
    //   108: invokeinterface 301 2 0
    //   113: pop
    //   114: aload 6
    //   116: ldc_w 311
    //   119: invokeinterface 301 2 0
    //   124: pop
    //   125: aload 6
    //   127: iload_3
    //   128: invokestatic 288	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   131: invokeinterface 301 2 0
    //   136: pop
    //   137: aload 6
    //   139: ldc_w 313
    //   142: invokeinterface 301 2 0
    //   147: pop
    //   148: aload 6
    //   150: aload 5
    //   152: invokeinterface 301 2 0
    //   157: pop
    //   158: new 115	java/lang/StringBuilder
    //   161: dup
    //   162: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   165: astore 5
    //   167: aload 5
    //   169: ldc_w 315
    //   172: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: pop
    //   176: aload 5
    //   178: iload 4
    //   180: invokevirtual 318	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   183: pop
    //   184: aload 6
    //   186: aload 5
    //   188: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokeinterface 301 2 0
    //   196: pop
    //   197: aload 6
    //   199: invokeinterface 322 1 0
    //   204: astore 5
    //   206: aload_1
    //   207: ldc_w 324
    //   210: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: pop
    //   214: aload_1
    //   215: aload_2
    //   216: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: pop
    //   220: aload_1
    //   221: ldc_w 326
    //   224: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: pop
    //   228: aload_1
    //   229: ldc_w 290
    //   232: aload 5
    //   234: invokestatic 330	android/text/TextUtils:join	(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    //   237: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: pop
    //   241: aload_1
    //   242: ldc 207
    //   244: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: pop
    //   248: new 332	java/lang/ProcessBuilder
    //   251: astore_2
    //   252: aload_2
    //   253: iconst_0
    //   254: anewarray 47	java/lang/String
    //   257: invokespecial 335	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   260: aload_2
    //   261: aload 6
    //   263: invokevirtual 339	java/lang/ProcessBuilder:command	(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    //   266: invokevirtual 343	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   269: astore 6
    //   271: new 171	java/io/BufferedReader
    //   274: astore_2
    //   275: new 345	java/io/InputStreamReader
    //   278: astore 5
    //   280: aload 5
    //   282: aload 6
    //   284: invokevirtual 351	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   287: invokespecial 354	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   290: aload_2
    //   291: aload 5
    //   293: invokespecial 186	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   296: aload_2
    //   297: astore 6
    //   299: aload_2
    //   300: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   303: astore 5
    //   305: aload_2
    //   306: astore 6
    //   308: aload 5
    //   310: ifnull +26 -> 336
    //   313: aload_2
    //   314: astore 6
    //   316: aload_1
    //   317: aload 5
    //   319: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: pop
    //   323: aload_2
    //   324: astore 6
    //   326: aload_1
    //   327: ldc 133
    //   329: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: pop
    //   333: goto -37 -> 296
    //   336: aload 6
    //   338: invokevirtual 195	java/io/BufferedReader:close	()V
    //   341: goto +44 -> 385
    //   344: astore 5
    //   346: aload_2
    //   347: astore_1
    //   348: goto +14 -> 362
    //   351: astore_1
    //   352: aconst_null
    //   353: astore 6
    //   355: goto +32 -> 387
    //   358: astore 5
    //   360: aconst_null
    //   361: astore_1
    //   362: aload_1
    //   363: astore 6
    //   365: ldc 14
    //   367: ldc_w 356
    //   370: aload 5
    //   372: invokestatic 358	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   375: aload_1
    //   376: ifnull +9 -> 385
    //   379: aload_1
    //   380: astore 6
    //   382: goto -46 -> 336
    //   385: return
    //   386: astore_1
    //   387: aload 6
    //   389: ifnull +8 -> 397
    //   392: aload 6
    //   394: invokevirtual 195	java/io/BufferedReader:close	()V
    //   397: aload_1
    //   398: athrow
    //   399: astore_1
    //   400: goto -15 -> 385
    //   403: astore_2
    //   404: goto -7 -> 397
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	407	0	paramInt1	int
    //   0	407	1	paramStringBuilder	StringBuilder
    //   0	407	2	paramString	String
    //   0	407	3	paramInt2	int
    //   0	407	4	paramChar	char
    //   4	314	5	localObject1	Object
    //   344	1	5	localException1	Exception
    //   358	13	5	localException2	Exception
    //   13	380	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   299	305	344	java/lang/Exception
    //   316	323	344	java/lang/Exception
    //   326	333	344	java/lang/Exception
    //   248	296	351	finally
    //   248	296	358	java/lang/Exception
    //   299	305	386	finally
    //   316	323	386	finally
    //   326	333	386	finally
    //   365	375	386	finally
    //   336	341	399	java/io/IOException
    //   392	397	403	java/io/IOException
  }
  
  static boolean a()
  {
    try
    {
      for (String str : m)
      {
        File localFile = new java/io/File;
        localFile.<init>(str);
        boolean bool = localFile.exists();
        if (bool) {
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      label49:
      break label49;
    }
    return false;
  }
  
  static String b()
  {
    return TextUtils.join(",", Build.SUPPORTED_ABIS);
  }
  
  private static String b(String paramString)
  {
    return a(paramString, 0);
  }
  
  static String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" Process Summary (From: android.os.Debug.MemoryInfo)\n");
    Locale localLocale = Locale.US;
    localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "", "Pss(KB)" }));
    localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "", "------" }));
    try
    {
      Debug.MemoryInfo localMemoryInfo = new android/os/Debug$MemoryInfo;
      localMemoryInfo.<init>();
      Debug.getMemoryInfo(localMemoryInfo);
      localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "Java Heap:", localMemoryInfo.getMemoryStat("summary.java-heap") }));
      localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "Native Heap:", localMemoryInfo.getMemoryStat("summary.native-heap") }));
      localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "Code:", localMemoryInfo.getMemoryStat("summary.code") }));
      localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "Stack:", localMemoryInfo.getMemoryStat("summary.stack") }));
      localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "Graphics:", localMemoryInfo.getMemoryStat("summary.graphics") }));
      localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "Private Other:", localMemoryInfo.getMemoryStat("summary.private-other") }));
      localStringBuilder.append(String.format(localLocale, "%21s %8s\n", new Object[] { "System:", localMemoryInfo.getMemoryStat("summary.system") }));
      localStringBuilder.append(String.format(localLocale, "%21s %8s %21s %8s\n", new Object[] { "TOTAL:", localMemoryInfo.getMemoryStat("summary.total-pss"), "TOTAL SWAP:", localMemoryInfo.getMemoryStat("summary.total-swap") }));
    }
    catch (Exception localException)
    {
      p.b("CrashUtil", "CrashUtil getProcessMemoryInfo failed", localException);
    }
    return localStringBuilder.toString();
  }
  
  public static String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("memory info:\n System Summary (From: /proc/meminfo)\n");
    localStringBuilder.append(b("/proc/meminfo"));
    localStringBuilder.append("-\n Process Status (From: /proc/PID/status)\n");
    localStringBuilder.append(b("/proc/self/status"));
    localStringBuilder.append("-\n Process Limits (From: /proc/PID/limits)\n");
    localStringBuilder.append(b("/proc/self/limits"));
    localStringBuilder.append("-\n");
    localStringBuilder.append(c());
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
  
  public static String e()
  {
    if (Build.VERSION.SDK_INT >= 29) {
      return "network info:\nNot supported on Android Q (API level 29) and later.\n\n";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("network info:\n TCP over IPv4 (From: /proc/PID/net/tcp)\n");
    localStringBuilder.append(a("/proc/self/net/tcp", 1024));
    localStringBuilder.append("-\n TCP over IPv6 (From: /proc/PID/net/tcp6)\n");
    localStringBuilder.append(a("/proc/self/net/tcp6", 1024));
    localStringBuilder.append("-\n UDP over IPv4 (From: /proc/PID/net/udp)\n");
    localStringBuilder.append(a("/proc/self/net/udp", 1024));
    localStringBuilder.append("-\n UDP over IPv6 (From: /proc/PID/net/udp6)\n");
    localStringBuilder.append(a("/proc/self/net/udp6", 1024));
    localStringBuilder.append("-\n ICMP in IPv4 (From: /proc/PID/net/icmp)\n");
    localStringBuilder.append(a("/proc/self/net/icmp", 256));
    localStringBuilder.append("-\n ICMP in IPv6 (From: /proc/PID/net/icmp6)\n");
    localStringBuilder.append(a("/proc/self/net/icmp6", 256));
    localStringBuilder.append("-\n UNIX domain (From: /proc/PID/net/unix)\n");
    localStringBuilder.append(a("/proc/self/net/unix", 256));
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
  
  public static String f()
  {
    StringBuilder localStringBuilder = new StringBuilder("open files:\n");
    for (;;)
    {
      try
      {
        localObject1 = new java/io/File;
        ((File)localObject1).<init>("/proc/self/fd");
        localObject2 = new com/xiaomi/onetrack/util/c;
        ((c)localObject2).<init>();
        arrayOfFile = ((File)localObject1).listFiles((FilenameFilter)localObject2);
        if (arrayOfFile != null)
        {
          int n = arrayOfFile.length;
          i1 = 0;
          i2 = 0;
          if (i1 < n)
          {
            localFile = arrayOfFile[i1];
            localObject1 = null;
          }
        }
      }
      catch (Exception localException1)
      {
        Object localObject1;
        Object localObject2;
        File[] arrayOfFile;
        int i1;
        int i2;
        File localFile;
        continue;
      }
      try
      {
        localObject2 = Os.readlink(localFile.getAbsolutePath());
        localObject1 = localObject2;
      }
      catch (Exception localException2)
      {
        continue;
      }
      localStringBuilder.append("    fd ");
      localStringBuilder.append(localFile.getName());
      localStringBuilder.append(": ");
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject1 = "???";
      } else {
        localObject1 = ((String)localObject1).trim();
      }
      localStringBuilder.append((String)localObject1);
      localStringBuilder.append('\n');
      i2++;
      if (i2 > 1024) {
        continue;
      }
      i1++;
    }
    if (arrayOfFile.length > 1024) {
      localStringBuilder.append("    ......\n");
    }
    localStringBuilder.append("    (number of FDs: ");
    localStringBuilder.append(arrayOfFile.length);
    localStringBuilder.append(")\n");
    localStringBuilder.append('\n');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.b
 * JD-Core Version:    0.7.0.1
 */