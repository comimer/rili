package y6;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.xiaomi.accountsdk.utils.CloudCoder;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class a
{
  private static void a(File paramFile)
  {
    if (!paramFile.isDirectory()) {
      return;
    }
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile != null) && (arrayOfFile.length > 20))
    {
      ArrayList localArrayList = new ArrayList();
      int i = arrayOfFile.length;
      int j = 0;
      for (int k = 0; k < i; k++)
      {
        paramFile = arrayOfFile[k];
        localArrayList.add(new Pair(paramFile, Long.valueOf(paramFile.lastModified())));
      }
      Collections.sort(localArrayList, new a());
      for (k = j; k < localArrayList.size() - 10; k++) {
        ((File)((Pair)localArrayList.get(k)).first).delete();
      }
    }
  }
  
  public static File b(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    paramContext = new File(paramContext.getExternalCacheDir(), "img");
    if (!paramContext.exists()) {
      paramContext.mkdirs();
    }
    return new File(paramContext, CloudCoder.e(paramString));
  }
  
  /* Error */
  public static boolean c(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 76	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: aload_0
    //   10: aload_1
    //   11: invokestatic 109	y6/a:b	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    //   14: astore_0
    //   15: aload_0
    //   16: ifnonnull +5 -> 21
    //   19: iconst_0
    //   20: ireturn
    //   21: aload_0
    //   22: invokevirtual 112	java/io/File:getParentFile	()Ljava/io/File;
    //   25: invokestatic 114	y6/a:a	(Ljava/io/File;)V
    //   28: aload_0
    //   29: invokevirtual 117	java/io/File:isFile	()Z
    //   32: ifeq +49 -> 81
    //   35: aload_0
    //   36: invokevirtual 90	java/io/File:exists	()Z
    //   39: ifeq +42 -> 81
    //   42: new 119	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   49: astore_1
    //   50: aload_1
    //   51: ldc 122
    //   53: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: aload_1
    //   58: aload_0
    //   59: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   62: pop
    //   63: aload_1
    //   64: ldc 131
    //   66: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: ldc 133
    //   72: aload_1
    //   73: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokestatic 143	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   79: iconst_0
    //   80: ireturn
    //   81: aload_1
    //   82: aconst_null
    //   83: aconst_null
    //   84: invokestatic 149	a6/k:i	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)La6/k$g;
    //   87: astore_1
    //   88: aload_1
    //   89: invokevirtual 154	a6/k$g:i	()Ljava/io/InputStream;
    //   92: invokestatic 160	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   95: astore_2
    //   96: aload_2
    //   97: ifnonnull +9 -> 106
    //   100: aload_1
    //   101: invokevirtual 163	a6/k$g:h	()V
    //   104: iconst_0
    //   105: ireturn
    //   106: aload_2
    //   107: invokevirtual 168	android/graphics/Bitmap:getWidth	()I
    //   110: aload_2
    //   111: invokevirtual 171	android/graphics/Bitmap:getHeight	()I
    //   114: getstatic 177	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   117: invokestatic 181	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   120: astore_3
    //   121: new 183	android/graphics/Canvas
    //   124: astore 4
    //   126: aload 4
    //   128: aload_3
    //   129: invokespecial 186	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   132: new 188	android/graphics/Paint
    //   135: astore 5
    //   137: aload 5
    //   139: invokespecial 189	android/graphics/Paint:<init>	()V
    //   142: new 191	android/graphics/Rect
    //   145: astore 6
    //   147: aload 6
    //   149: iconst_0
    //   150: iconst_0
    //   151: aload_2
    //   152: invokevirtual 168	android/graphics/Bitmap:getWidth	()I
    //   155: aload_2
    //   156: invokevirtual 171	android/graphics/Bitmap:getHeight	()I
    //   159: invokespecial 194	android/graphics/Rect:<init>	(IIII)V
    //   162: aload 5
    //   164: iconst_1
    //   165: invokevirtual 198	android/graphics/Paint:setAntiAlias	(Z)V
    //   168: aload 4
    //   170: iconst_0
    //   171: iconst_0
    //   172: iconst_0
    //   173: iconst_0
    //   174: invokevirtual 201	android/graphics/Canvas:drawARGB	(IIII)V
    //   177: aload 5
    //   179: ldc 202
    //   181: invokevirtual 206	android/graphics/Paint:setColor	(I)V
    //   184: aload 4
    //   186: aload_2
    //   187: invokevirtual 168	android/graphics/Bitmap:getWidth	()I
    //   190: iconst_2
    //   191: idiv
    //   192: i2f
    //   193: aload_2
    //   194: invokevirtual 171	android/graphics/Bitmap:getHeight	()I
    //   197: iconst_2
    //   198: idiv
    //   199: i2f
    //   200: aload_2
    //   201: invokevirtual 168	android/graphics/Bitmap:getWidth	()I
    //   204: iconst_2
    //   205: idiv
    //   206: i2f
    //   207: aload 5
    //   209: invokevirtual 210	android/graphics/Canvas:drawCircle	(FFFLandroid/graphics/Paint;)V
    //   212: new 212	android/graphics/PorterDuffXfermode
    //   215: astore 7
    //   217: aload 7
    //   219: getstatic 218	android/graphics/PorterDuff$Mode:SRC_IN	Landroid/graphics/PorterDuff$Mode;
    //   222: invokespecial 221	android/graphics/PorterDuffXfermode:<init>	(Landroid/graphics/PorterDuff$Mode;)V
    //   225: aload 5
    //   227: aload 7
    //   229: invokevirtual 225	android/graphics/Paint:setXfermode	(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    //   232: pop
    //   233: aload 4
    //   235: aload_2
    //   236: aload 6
    //   238: aload 6
    //   240: aload 5
    //   242: invokevirtual 229	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   245: new 231	java/io/FileOutputStream
    //   248: astore 7
    //   250: aload 7
    //   252: aload_0
    //   253: invokespecial 233	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   256: aload_3
    //   257: getstatic 239	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   260: bipush 100
    //   262: aload 7
    //   264: invokevirtual 243	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   267: pop
    //   268: aload_2
    //   269: invokevirtual 246	android/graphics/Bitmap:recycle	()V
    //   272: aload_3
    //   273: invokevirtual 246	android/graphics/Bitmap:recycle	()V
    //   276: aload 7
    //   278: invokevirtual 249	java/io/FileOutputStream:close	()V
    //   281: aload_1
    //   282: invokevirtual 163	a6/k$g:h	()V
    //   285: iconst_1
    //   286: ireturn
    //   287: astore_0
    //   288: goto +18 -> 306
    //   291: astore_0
    //   292: ldc 133
    //   294: ldc 251
    //   296: aload_0
    //   297: invokestatic 254	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   300: aload_1
    //   301: invokevirtual 163	a6/k$g:h	()V
    //   304: iconst_0
    //   305: ireturn
    //   306: aload_1
    //   307: invokevirtual 163	a6/k$g:h	()V
    //   310: aload_0
    //   311: athrow
    //   312: astore_0
    //   313: ldc 133
    //   315: ldc_w 256
    //   318: aload_0
    //   319: invokestatic 254	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   322: iconst_0
    //   323: ireturn
    //   324: astore_0
    //   325: ldc 133
    //   327: ldc_w 258
    //   330: aload_0
    //   331: invokestatic 254	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   334: iconst_0
    //   335: ireturn
    //   336: astore_0
    //   337: ldc 133
    //   339: ldc_w 260
    //   342: aload_0
    //   343: invokestatic 254	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   346: iconst_0
    //   347: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	348	0	paramContext	Context
    //   0	348	1	paramString	String
    //   95	174	2	localBitmap1	android.graphics.Bitmap
    //   120	153	3	localBitmap2	android.graphics.Bitmap
    //   124	110	4	localCanvas	android.graphics.Canvas
    //   135	106	5	localPaint	android.graphics.Paint
    //   145	94	6	localRect	android.graphics.Rect
    //   215	62	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   88	96	287	finally
    //   106	281	287	finally
    //   292	300	287	finally
    //   88	96	291	java/io/IOException
    //   106	281	291	java/io/IOException
    //   81	88	312	com/xiaomi/accountsdk/request/AuthenticationFailureException
    //   81	88	324	com/xiaomi/accountsdk/request/AccessDeniedException
    //   81	88	336	java/io/IOException
  }
  
  class a
    implements Comparator<Pair<File, Long>>
  {
    public int a(Pair<File, Long> paramPair1, Pair<File, Long> paramPair2)
    {
      if (((Long)paramPair1.second).longValue() < ((Long)paramPair2.second).longValue()) {
        return -1;
      }
      if (paramPair1.second == paramPair2.second) {
        return 0;
      }
      return 1;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y6.a
 * JD-Core Version:    0.7.0.1
 */