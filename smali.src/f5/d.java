package f5;

import android.content.Context;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.LruCache;
import com.xiaomi.ad.entity.contract.AdInfoEntityBase;
import com.xiaomi.ad.entity.unified.UnifiedAdInfo;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public class d
  extends LruCache<String, UnifiedAdInfo>
{
  private String a;
  
  public d(Context paramContext)
  {
    super(100);
    if (paramContext != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramContext.getFilesDir().getAbsolutePath());
      localStringBuilder.append(File.separator);
      localStringBuilder.append("unified_ad");
      this.a = localStringBuilder.toString();
      return;
    }
    throw new IllegalArgumentException("context is null. could not new a UnifiedadCache.");
  }
  
  /* Error */
  private void b(File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +73 -> 74
    //   4: aload_1
    //   5: invokevirtual 59	java/io/File:exists	()Z
    //   8: ifne +6 -> 14
    //   11: goto +63 -> 74
    //   14: new 61	c6/a
    //   17: dup
    //   18: aload_1
    //   19: invokevirtual 29	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   22: invokespecial 62	c6/a:<init>	(Ljava/lang/String;)V
    //   25: astore_2
    //   26: aload_2
    //   27: invokevirtual 64	c6/a:a	()Z
    //   30: pop
    //   31: aload_1
    //   32: invokevirtual 59	java/io/File:exists	()Z
    //   35: ifeq +8 -> 43
    //   38: aload_1
    //   39: invokevirtual 67	java/io/File:delete	()Z
    //   42: pop
    //   43: aload_2
    //   44: invokevirtual 69	c6/a:b	()V
    //   47: goto +20 -> 67
    //   50: astore_1
    //   51: goto +17 -> 68
    //   54: astore_1
    //   55: ldc 71
    //   57: ldc 73
    //   59: aload_1
    //   60: invokestatic 79	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   63: pop
    //   64: goto -21 -> 43
    //   67: return
    //   68: aload_2
    //   69: invokevirtual 69	c6/a:b	()V
    //   72: aload_1
    //   73: athrow
    //   74: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	d
    //   0	75	1	paramFile	File
    //   25	44	2	locala	c6.a
    // Exception table:
    //   from	to	target	type
    //   26	43	50	finally
    //   55	64	50	finally
    //   26	43	54	java/lang/Exception
  }
  
  private String d(String paramString, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("_");
    localStringBuilder.append(paramLong);
    return localStringBuilder.toString();
  }
  
  private UnifiedAdInfo e(String paramString, long paramLong)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramLong > 0L)) {
      return (UnifiedAdInfo)super.get(d(paramString, paramLong));
    }
    return null;
  }
  
  private LongSparseArray<UnifiedAdInfo> f(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    LongSparseArray localLongSparseArray = new LongSparseArray();
    Object localObject1 = g(paramString);
    if (localObject1 == null) {
      return null;
    }
    localObject1 = ((File)localObject1).listFiles();
    if ((localObject1 != null) && (localObject1.length > 0))
    {
      int i = localObject1.length;
      for (int j = 0; j < i; j++)
      {
        File localFile = localObject1[j];
        Object localObject2 = localFile.getName();
        if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (TextUtils.isDigitsOnly((CharSequence)localObject2)) && (localFile.exists()))
        {
          localObject2 = e(paramString, Long.valueOf((String)localObject2).longValue());
          if (localObject2 != null) {
            localLongSparseArray.put(((AdInfoEntityBase)localObject2).getId(), localObject2);
          }
        }
        else
        {
          b(localFile);
        }
      }
      return localLongSparseArray;
    }
    return null;
  }
  
  private File g(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append(File.separator);
    localStringBuilder.append(paramString);
    paramString = new File(localStringBuilder.toString());
    if (paramString.isFile()) {
      paramString.delete();
    }
    if (!paramString.exists()) {
      paramString.mkdirs();
    }
    return paramString;
  }
  
  private File h(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      paramString1 = g(paramString1);
      if (paramString1 == null) {
        return null;
      }
      return new File(paramString1, paramString2);
    }
    return null;
  }
  
  private void i(String paramString, long paramLong, UnifiedAdInfo paramUnifiedAdInfo)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramLong > 0L))
    {
      paramString = d(paramString, paramLong);
      if ((UnifiedAdInfo)super.put(paramString, paramUnifiedAdInfo) == null) {
        c(false, paramString, null, paramUnifiedAdInfo);
      }
    }
  }
  
  private boolean k(String paramString)
  {
    boolean bool;
    if ((!TextUtils.isEmpty(paramString)) && (paramString.indexOf("_") >= 0) && (paramString.indexOf("_") < paramString.length())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  /* Error */
  private void l(java.io.Reader paramReader, java.io.Writer paramWriter, c6.a parama)
  {
    // Byte code:
    //   0: aload_3
    //   1: ifnull +71 -> 72
    //   4: aload_1
    //   5: ifnull +66 -> 71
    //   8: aload_2
    //   9: ifnonnull +6 -> 15
    //   12: goto +59 -> 71
    //   15: sipush 1024
    //   18: newarray char
    //   20: astore 4
    //   22: aload_3
    //   23: invokevirtual 64	c6/a:a	()Z
    //   26: pop
    //   27: aload_1
    //   28: aload 4
    //   30: invokevirtual 186	java/io/Reader:read	([C)I
    //   33: istore 5
    //   35: iload 5
    //   37: iconst_m1
    //   38: if_icmpeq +15 -> 53
    //   41: aload_2
    //   42: aload 4
    //   44: iconst_0
    //   45: iload 5
    //   47: invokevirtual 192	java/io/Writer:write	([CII)V
    //   50: goto -23 -> 27
    //   53: aload_3
    //   54: invokevirtual 69	c6/a:b	()V
    //   57: return
    //   58: astore_1
    //   59: goto +6 -> 65
    //   62: astore_1
    //   63: aload_1
    //   64: athrow
    //   65: aload_3
    //   66: invokevirtual 69	c6/a:b	()V
    //   69: aload_1
    //   70: athrow
    //   71: return
    //   72: new 45	java/lang/IllegalArgumentException
    //   75: dup
    //   76: ldc 194
    //   78: invokespecial 50	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   81: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	this	d
    //   0	82	1	paramReader	java.io.Reader
    //   0	82	2	paramWriter	java.io.Writer
    //   0	82	3	parama	c6.a
    //   20	23	4	arrayOfChar	char[]
    //   33	13	5	i	int
    // Exception table:
    //   from	to	target	type
    //   15	27	58	finally
    //   27	35	58	finally
    //   41	50	58	finally
    //   63	65	58	finally
    //   15	27	62	java/lang/Exception
    //   27	35	62	java/lang/Exception
    //   41	50	62	java/lang/Exception
  }
  
  /* Error */
  protected UnifiedAdInfo a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 199	f5/d:k	(Ljava/lang/String;)Z
    //   5: istore_2
    //   6: aconst_null
    //   7: astore_3
    //   8: iload_2
    //   9: ifne +5 -> 14
    //   12: aconst_null
    //   13: areturn
    //   14: aload_0
    //   15: aload_1
    //   16: ldc 83
    //   18: invokevirtual 203	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   21: iconst_0
    //   22: aaload
    //   23: aload_1
    //   24: ldc 83
    //   26: invokevirtual 203	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   29: iconst_1
    //   30: aaload
    //   31: invokespecial 205	f5/d:h	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   34: astore 4
    //   36: aload 4
    //   38: ifnull +144 -> 182
    //   41: aload 4
    //   43: invokevirtual 59	java/io/File:exists	()Z
    //   46: ifne +6 -> 52
    //   49: goto +133 -> 182
    //   52: new 207	java/io/FileReader
    //   55: astore_1
    //   56: aload_1
    //   57: aload 4
    //   59: invokespecial 209	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   62: new 211	java/io/StringWriter
    //   65: astore 5
    //   67: aload 5
    //   69: invokespecial 212	java/io/StringWriter:<init>	()V
    //   72: aload_1
    //   73: astore 6
    //   75: aload 5
    //   77: astore_3
    //   78: new 61	c6/a
    //   81: astore 7
    //   83: aload_1
    //   84: astore 6
    //   86: aload 5
    //   88: astore_3
    //   89: aload 7
    //   91: aload 4
    //   93: invokevirtual 29	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   96: invokespecial 62	c6/a:<init>	(Ljava/lang/String;)V
    //   99: aload_1
    //   100: astore 6
    //   102: aload 5
    //   104: astore_3
    //   105: aload_0
    //   106: aload_1
    //   107: aload 5
    //   109: aload 7
    //   111: invokespecial 214	f5/d:l	(Ljava/io/Reader;Ljava/io/Writer;Lc6/a;)V
    //   114: aload_1
    //   115: astore 6
    //   117: aload 5
    //   119: astore_3
    //   120: aload 5
    //   122: invokevirtual 215	java/io/StringWriter:toString	()Ljava/lang/String;
    //   125: invokestatic 218	com/xiaomi/ad/entity/unified/UnifiedAdInfo:deserialize	(Ljava/lang/String;)Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;
    //   128: astore 4
    //   130: aload 5
    //   132: invokevirtual 221	java/io/StringWriter:close	()V
    //   135: aload_1
    //   136: invokevirtual 222	java/io/Reader:close	()V
    //   139: aload 4
    //   141: areturn
    //   142: astore 6
    //   144: aload_1
    //   145: astore 4
    //   147: aload 5
    //   149: astore_1
    //   150: aload 6
    //   152: astore 5
    //   154: goto +45 -> 199
    //   157: astore 4
    //   159: aload_1
    //   160: astore 6
    //   162: aload 4
    //   164: astore_1
    //   165: goto +71 -> 236
    //   168: astore 5
    //   170: aconst_null
    //   171: astore 6
    //   173: aload_1
    //   174: astore 4
    //   176: aload 6
    //   178: astore_1
    //   179: goto +20 -> 199
    //   182: aconst_null
    //   183: areturn
    //   184: astore_1
    //   185: aconst_null
    //   186: astore 6
    //   188: goto +48 -> 236
    //   191: astore 5
    //   193: aconst_null
    //   194: astore 4
    //   196: aload 4
    //   198: astore_1
    //   199: aload 4
    //   201: astore 6
    //   203: aload_1
    //   204: astore_3
    //   205: ldc 71
    //   207: ldc 224
    //   209: aload 5
    //   211: invokestatic 79	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   214: pop
    //   215: aload_1
    //   216: ifnull +7 -> 223
    //   219: aload_1
    //   220: invokevirtual 221	java/io/StringWriter:close	()V
    //   223: aload 4
    //   225: ifnull +8 -> 233
    //   228: aload 4
    //   230: invokevirtual 222	java/io/Reader:close	()V
    //   233: aconst_null
    //   234: areturn
    //   235: astore_1
    //   236: aload_3
    //   237: ifnull +7 -> 244
    //   240: aload_3
    //   241: invokevirtual 221	java/io/StringWriter:close	()V
    //   244: aload 6
    //   246: ifnull +8 -> 254
    //   249: aload 6
    //   251: invokevirtual 222	java/io/Reader:close	()V
    //   254: aload_1
    //   255: athrow
    //   256: astore_1
    //   257: goto -118 -> 139
    //   260: astore_1
    //   261: goto -28 -> 233
    //   264: astore 6
    //   266: goto -12 -> 254
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	269	0	this	d
    //   0	269	1	paramString	String
    //   5	4	2	bool	boolean
    //   7	234	3	localObject1	Object
    //   34	112	4	localObject2	Object
    //   157	6	4	localObject3	Object
    //   174	55	4	str1	String
    //   65	88	5	localObject4	Object
    //   168	1	5	localException1	java.lang.Exception
    //   191	19	5	localException2	java.lang.Exception
    //   73	43	6	str2	String
    //   142	9	6	localException3	java.lang.Exception
    //   160	90	6	str3	String
    //   264	1	6	localIOException	java.io.IOException
    //   81	29	7	locala	c6.a
    // Exception table:
    //   from	to	target	type
    //   78	83	142	java/lang/Exception
    //   89	99	142	java/lang/Exception
    //   105	114	142	java/lang/Exception
    //   120	130	142	java/lang/Exception
    //   62	72	157	finally
    //   62	72	168	java/lang/Exception
    //   14	36	184	finally
    //   41	49	184	finally
    //   52	62	184	finally
    //   14	36	191	java/lang/Exception
    //   41	49	191	java/lang/Exception
    //   52	62	191	java/lang/Exception
    //   78	83	235	finally
    //   89	99	235	finally
    //   105	114	235	finally
    //   120	130	235	finally
    //   205	215	235	finally
    //   130	139	256	java/io/IOException
    //   219	223	260	java/io/IOException
    //   228	233	260	java/io/IOException
    //   240	244	264	java/io/IOException
    //   249	254	264	java/io/IOException
  }
  
  /* Error */
  protected void c(boolean paramBoolean, String paramString, UnifiedAdInfo paramUnifiedAdInfo1, UnifiedAdInfo paramUnifiedAdInfo2)
  {
    // Byte code:
    //   0: iload_1
    //   1: ifeq +38 -> 39
    //   4: new 14	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 17	java/lang/StringBuilder:<init>	()V
    //   11: astore_2
    //   12: aload_2
    //   13: ldc 226
    //   15: invokevirtual 33	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: pop
    //   19: aload_2
    //   20: aload_0
    //   21: invokevirtual 229	android/util/LruCache:maxSize	()I
    //   24: invokevirtual 232	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   27: pop
    //   28: ldc 71
    //   30: aload_2
    //   31: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokestatic 235	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   37: pop
    //   38: return
    //   39: aload 4
    //   41: ifnonnull +9 -> 50
    //   44: aconst_null
    //   45: astore 5
    //   47: goto +10 -> 57
    //   50: aload 4
    //   52: invokevirtual 240	com/xiaomi/ad/entity/contract/GsonEntityBase:serialize	()Ljava/lang/String;
    //   55: astore 5
    //   57: aload_3
    //   58: ifnonnull +9 -> 67
    //   61: aconst_null
    //   62: astore 6
    //   64: goto +9 -> 73
    //   67: aload_3
    //   68: invokevirtual 240	com/xiaomi/ad/entity/contract/GsonEntityBase:serialize	()Ljava/lang/String;
    //   71: astore 6
    //   73: aload 5
    //   75: aload 6
    //   77: invokestatic 244	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   80: ifeq +4 -> 84
    //   83: return
    //   84: aload_0
    //   85: aload_2
    //   86: invokespecial 199	f5/d:k	(Ljava/lang/String;)Z
    //   89: ifeq +28 -> 117
    //   92: aload_2
    //   93: ldc 83
    //   95: invokevirtual 203	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   98: iconst_0
    //   99: aaload
    //   100: astore 6
    //   102: aload_2
    //   103: ldc 83
    //   105: invokevirtual 203	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   108: iconst_1
    //   109: aaload
    //   110: astore_3
    //   111: aload 6
    //   113: astore_2
    //   114: goto +96 -> 210
    //   117: aload_3
    //   118: ifnull +44 -> 162
    //   121: aload_3
    //   122: invokevirtual 247	com/xiaomi/ad/entity/unified/UnifiedAdInfo:getTagId	()Ljava/lang/String;
    //   125: astore_2
    //   126: new 14	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 17	java/lang/StringBuilder:<init>	()V
    //   133: astore 6
    //   135: aload 6
    //   137: aload_3
    //   138: invokevirtual 137	com/xiaomi/ad/entity/contract/AdInfoEntityBase:getId	()J
    //   141: invokevirtual 86	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   144: pop
    //   145: aload 6
    //   147: ldc 249
    //   149: invokevirtual 33	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: pop
    //   153: aload 6
    //   155: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: astore_3
    //   159: goto +51 -> 210
    //   162: aload 4
    //   164: ifnull +42 -> 206
    //   167: aload 4
    //   169: invokevirtual 247	com/xiaomi/ad/entity/unified/UnifiedAdInfo:getTagId	()Ljava/lang/String;
    //   172: astore_2
    //   173: new 14	java/lang/StringBuilder
    //   176: dup
    //   177: invokespecial 17	java/lang/StringBuilder:<init>	()V
    //   180: astore_3
    //   181: aload_3
    //   182: aload 4
    //   184: invokevirtual 137	com/xiaomi/ad/entity/contract/AdInfoEntityBase:getId	()J
    //   187: invokevirtual 86	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   190: pop
    //   191: aload_3
    //   192: ldc 249
    //   194: invokevirtual 33	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: pop
    //   198: aload_3
    //   199: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: astore_3
    //   203: goto +7 -> 210
    //   206: aconst_null
    //   207: astore_3
    //   208: aload_3
    //   209: astore_2
    //   210: aload_0
    //   211: aload_2
    //   212: aload_3
    //   213: invokespecial 205	f5/d:h	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   216: astore 7
    //   218: aload_0
    //   219: aload 7
    //   221: invokespecial 143	f5/d:b	(Ljava/io/File;)V
    //   224: aload 4
    //   226: ifnonnull +4 -> 230
    //   229: return
    //   230: aload 7
    //   232: invokevirtual 252	java/io/File:createNewFile	()Z
    //   235: pop
    //   236: new 254	java/io/FileWriter
    //   239: astore_2
    //   240: aload_2
    //   241: aload 7
    //   243: invokespecial 255	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   246: new 257	java/io/StringReader
    //   249: astore 6
    //   251: aload 6
    //   253: aload 5
    //   255: invokespecial 258	java/io/StringReader:<init>	(Ljava/lang/String;)V
    //   258: aload_2
    //   259: astore_3
    //   260: aload 6
    //   262: astore 4
    //   264: new 61	c6/a
    //   267: astore 5
    //   269: aload_2
    //   270: astore_3
    //   271: aload 6
    //   273: astore 4
    //   275: aload 5
    //   277: aload 7
    //   279: invokevirtual 29	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   282: invokespecial 62	c6/a:<init>	(Ljava/lang/String;)V
    //   285: aload_2
    //   286: astore_3
    //   287: aload 6
    //   289: astore 4
    //   291: aload_0
    //   292: aload 6
    //   294: aload_2
    //   295: aload 5
    //   297: invokespecial 214	f5/d:l	(Ljava/io/Reader;Ljava/io/Writer;Lc6/a;)V
    //   300: aload 6
    //   302: invokevirtual 259	java/io/StringReader:close	()V
    //   305: aload_2
    //   306: invokevirtual 260	java/io/Writer:close	()V
    //   309: goto +72 -> 381
    //   312: astore 7
    //   314: aload 6
    //   316: astore 5
    //   318: goto +29 -> 347
    //   321: astore_3
    //   322: goto +10 -> 332
    //   325: astore_3
    //   326: goto +15 -> 341
    //   329: astore_3
    //   330: aconst_null
    //   331: astore_2
    //   332: aconst_null
    //   333: astore 4
    //   335: goto +54 -> 389
    //   338: astore_3
    //   339: aconst_null
    //   340: astore_2
    //   341: aconst_null
    //   342: astore 5
    //   344: aload_3
    //   345: astore 7
    //   347: aload_2
    //   348: astore_3
    //   349: aload 5
    //   351: astore 4
    //   353: ldc 71
    //   355: ldc_w 262
    //   358: aload 7
    //   360: invokestatic 79	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   363: pop
    //   364: aload 5
    //   366: ifnull +8 -> 374
    //   369: aload 5
    //   371: invokevirtual 259	java/io/StringReader:close	()V
    //   374: aload_2
    //   375: ifnull +6 -> 381
    //   378: goto -73 -> 305
    //   381: return
    //   382: astore 5
    //   384: aload_3
    //   385: astore_2
    //   386: aload 5
    //   388: astore_3
    //   389: aload 4
    //   391: ifnull +8 -> 399
    //   394: aload 4
    //   396: invokevirtual 259	java/io/StringReader:close	()V
    //   399: aload_2
    //   400: ifnull +7 -> 407
    //   403: aload_2
    //   404: invokevirtual 260	java/io/Writer:close	()V
    //   407: aload_3
    //   408: athrow
    //   409: astore_2
    //   410: goto -29 -> 381
    //   413: astore_2
    //   414: goto -7 -> 407
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	417	0	this	d
    //   0	417	1	paramBoolean	boolean
    //   0	417	2	paramString	String
    //   0	417	3	paramUnifiedAdInfo1	UnifiedAdInfo
    //   0	417	4	paramUnifiedAdInfo2	UnifiedAdInfo
    //   45	325	5	localObject1	Object
    //   382	5	5	localObject2	Object
    //   62	253	6	localObject3	Object
    //   216	62	7	localFile	File
    //   312	1	7	localException	java.lang.Exception
    //   345	14	7	localUnifiedAdInfo	UnifiedAdInfo
    // Exception table:
    //   from	to	target	type
    //   264	269	312	java/lang/Exception
    //   275	285	312	java/lang/Exception
    //   291	300	312	java/lang/Exception
    //   246	258	321	finally
    //   246	258	325	java/lang/Exception
    //   230	246	329	finally
    //   230	246	338	java/lang/Exception
    //   264	269	382	finally
    //   275	285	382	finally
    //   291	300	382	finally
    //   353	364	382	finally
    //   300	305	409	java/lang/Exception
    //   305	309	409	java/lang/Exception
    //   369	374	409	java/lang/Exception
    //   394	399	413	java/lang/Exception
    //   403	407	413	java/lang/Exception
  }
  
  public void j(String paramString, List<UnifiedAdInfo> paramList)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    LongSparseArray localLongSparseArray = f(paramString);
    long l;
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        paramList = (UnifiedAdInfo)localIterator.next();
        l = paramList.getId();
        i(paramString, l, paramList);
        if (localLongSparseArray != null) {
          localLongSparseArray.remove(l);
        }
      }
    }
    if ((localLongSparseArray != null) && (localLongSparseArray.size() > 0))
    {
      int i = localLongSparseArray.size();
      for (int j = 0; j < i; j++)
      {
        l = localLongSparseArray.keyAt(j);
        if ((UnifiedAdInfo)remove(d(paramString, l)) == null)
        {
          paramList = new StringBuilder();
          paramList.append(l);
          paramList.append("");
          b(h(paramString, paramList.toString()));
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f5.d
 * JD-Core Version:    0.7.0.1
 */