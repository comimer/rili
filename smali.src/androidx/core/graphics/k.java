package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.Typeface.CustomFallbackBuilder;
import android.graphics.fonts.Font;
import android.graphics.fonts.Font.Builder;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontFamily.Builder;
import android.graphics.fonts.FontStyle;
import androidx.core.content.res.e.c;
import androidx.core.content.res.e.d;
import androidx.core.provider.g.b;
import java.io.IOException;

public class k
  extends l
{
  private Font f(FontFamily paramFontFamily, int paramInt)
  {
    if ((paramInt & 0x1) != 0) {
      i = 700;
    } else {
      i = 400;
    }
    int j = 1;
    if ((paramInt & 0x2) != 0) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    FontStyle localFontStyle = new FontStyle(i, paramInt);
    Object localObject = paramFontFamily.getFont(0);
    int i = g(localFontStyle, ((Font)localObject).getStyle());
    paramInt = j;
    for (j = i; paramInt < paramFontFamily.getSize(); j = i)
    {
      Font localFont = paramFontFamily.getFont(paramInt);
      int k = g(localFontStyle, localFont.getStyle());
      i = j;
      if (k < j)
      {
        localObject = localFont;
        i = k;
      }
      paramInt++;
    }
    return localObject;
  }
  
  private static int g(FontStyle paramFontStyle1, FontStyle paramFontStyle2)
  {
    int i = Math.abs(paramFontStyle1.getWeight() - paramFontStyle2.getWeight()) / 100;
    int j;
    if (paramFontStyle1.getSlant() == paramFontStyle2.getSlant()) {
      j = 0;
    } else {
      j = 2;
    }
    return i + j;
  }
  
  public Typeface a(Context paramContext, e.c paramc, Resources paramResources, int paramInt)
  {
    localObject1 = null;
    for (;;)
    {
      try
      {
        e.d[] arrayOfd = paramc.a();
        int i = arrayOfd.length;
        paramContext = null;
        j = 0;
        if (j < i) {
          paramc = arrayOfd[j];
        }
      }
      catch (Exception paramContext)
      {
        int j;
        Object localObject2;
        int k;
        paramContext = localObject1;
        continue;
      }
      try
      {
        localObject2 = new android/graphics/fonts/Font$Builder;
        ((Font.Builder)localObject2).<init>(paramResources, paramc.b());
        localObject2 = ((Font.Builder)localObject2).setWeight(paramc.e());
        if (paramc.f()) {
          k = 1;
        } else {
          k = 0;
        }
        localObject2 = ((Font.Builder)localObject2).setSlant(k).setTtcIndex(paramc.c()).setFontVariationSettings(paramc.d()).build();
        if (paramContext == null)
        {
          paramc = new android/graphics/fonts/FontFamily$Builder;
          paramc.<init>((Font)localObject2);
          paramContext = paramc;
        }
        else
        {
          paramContext.addFont((Font)localObject2);
        }
        j++;
      }
      catch (IOException paramc) {}
    }
    if (paramContext == null) {
      return null;
    }
    paramContext = paramContext.build();
    paramc = new android/graphics/Typeface$CustomFallbackBuilder;
    paramc.<init>(paramContext);
    paramContext = paramc.setStyle(f(paramContext, paramInt).getStyle()).build();
    return paramContext;
  }
  
  /* Error */
  public Typeface b(Context paramContext, android.os.CancellationSignal paramCancellationSignal, g.b[] paramArrayOfb, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 133	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 5
    //   6: aload_3
    //   7: arraylength
    //   8: istore 6
    //   10: aconst_null
    //   11: astore_1
    //   12: iconst_0
    //   13: istore 7
    //   15: iload 7
    //   17: iload 6
    //   19: if_icmpge +183 -> 202
    //   22: aload_3
    //   23: iload 7
    //   25: aaload
    //   26: astore 8
    //   28: aload_1
    //   29: astore 9
    //   31: aload 5
    //   33: aload 8
    //   35: invokevirtual 138	androidx/core/provider/g$b:d	()Landroid/net/Uri;
    //   38: ldc 140
    //   40: aload_2
    //   41: invokevirtual 146	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    //   44: astore 10
    //   46: aload 10
    //   48: ifnonnull +25 -> 73
    //   51: aload_1
    //   52: astore 9
    //   54: aload 10
    //   56: ifnull +137 -> 193
    //   59: aload_1
    //   60: astore 9
    //   62: aload 10
    //   64: invokevirtual 151	android/os/ParcelFileDescriptor:close	()V
    //   67: aload_1
    //   68: astore 9
    //   70: goto +123 -> 193
    //   73: new 61	android/graphics/fonts/Font$Builder
    //   76: astore 9
    //   78: aload 9
    //   80: aload 10
    //   82: invokespecial 154	android/graphics/fonts/Font$Builder:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   85: aload 9
    //   87: aload 8
    //   89: invokevirtual 155	androidx/core/provider/g$b:e	()I
    //   92: invokevirtual 76	android/graphics/fonts/Font$Builder:setWeight	(I)Landroid/graphics/fonts/Font$Builder;
    //   95: astore 9
    //   97: aload 8
    //   99: invokevirtual 156	androidx/core/provider/g$b:f	()Z
    //   102: ifeq +9 -> 111
    //   105: iconst_1
    //   106: istore 11
    //   108: goto +6 -> 114
    //   111: iconst_0
    //   112: istore 11
    //   114: aload 9
    //   116: iload 11
    //   118: invokevirtual 82	android/graphics/fonts/Font$Builder:setSlant	(I)Landroid/graphics/fonts/Font$Builder;
    //   121: aload 8
    //   123: invokevirtual 157	androidx/core/provider/g$b:c	()I
    //   126: invokevirtual 88	android/graphics/fonts/Font$Builder:setTtcIndex	(I)Landroid/graphics/fonts/Font$Builder;
    //   129: invokevirtual 100	android/graphics/fonts/Font$Builder:build	()Landroid/graphics/fonts/Font;
    //   132: astore 9
    //   134: aload_1
    //   135: ifnonnull +20 -> 155
    //   138: new 102	android/graphics/fonts/FontFamily$Builder
    //   141: dup
    //   142: aload 9
    //   144: invokespecial 105	android/graphics/fonts/FontFamily$Builder:<init>	(Landroid/graphics/fonts/Font;)V
    //   147: astore 9
    //   149: aload 9
    //   151: astore_1
    //   152: goto -93 -> 59
    //   155: aload_1
    //   156: aload 9
    //   158: invokevirtual 109	android/graphics/fonts/FontFamily$Builder:addFont	(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    //   161: pop
    //   162: goto -103 -> 59
    //   165: astore 8
    //   167: aload 10
    //   169: invokevirtual 151	android/os/ParcelFileDescriptor:close	()V
    //   172: goto +15 -> 187
    //   175: astore 10
    //   177: aload_1
    //   178: astore 9
    //   180: aload 8
    //   182: aload 10
    //   184: invokevirtual 163	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   187: aload_1
    //   188: astore 9
    //   190: aload 8
    //   192: athrow
    //   193: iinc 7 1
    //   196: aload 9
    //   198: astore_1
    //   199: goto -184 -> 15
    //   202: aload_1
    //   203: ifnonnull +5 -> 208
    //   206: aconst_null
    //   207: areturn
    //   208: aload_1
    //   209: invokevirtual 112	android/graphics/fonts/FontFamily$Builder:build	()Landroid/graphics/fonts/FontFamily;
    //   212: astore_2
    //   213: new 114	android/graphics/Typeface$CustomFallbackBuilder
    //   216: astore_1
    //   217: aload_1
    //   218: aload_2
    //   219: invokespecial 117	android/graphics/Typeface$CustomFallbackBuilder:<init>	(Landroid/graphics/fonts/FontFamily;)V
    //   222: aload_1
    //   223: aload_0
    //   224: aload_2
    //   225: iload 4
    //   227: invokespecial 119	androidx/core/graphics/k:f	(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;
    //   230: invokevirtual 28	android/graphics/fonts/Font:getStyle	()Landroid/graphics/fonts/FontStyle;
    //   233: invokevirtual 123	android/graphics/Typeface$CustomFallbackBuilder:setStyle	(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    //   236: invokevirtual 126	android/graphics/Typeface$CustomFallbackBuilder:build	()Landroid/graphics/Typeface;
    //   239: astore_1
    //   240: aload_1
    //   241: areturn
    //   242: astore_1
    //   243: aconst_null
    //   244: areturn
    //   245: astore_1
    //   246: goto -53 -> 193
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	this	k
    //   0	249	1	paramContext	Context
    //   0	249	2	paramCancellationSignal	android.os.CancellationSignal
    //   0	249	3	paramArrayOfb	g.b[]
    //   0	249	4	paramInt	int
    //   4	28	5	localContentResolver	android.content.ContentResolver
    //   8	12	6	i	int
    //   13	181	7	j	int
    //   26	96	8	localb	g.b
    //   165	26	8	localObject1	Object
    //   29	168	9	localObject2	Object
    //   44	124	10	localParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   175	8	10	localThrowable	java.lang.Throwable
    //   106	11	11	k	int
    // Exception table:
    //   from	to	target	type
    //   73	105	165	finally
    //   114	134	165	finally
    //   138	149	165	finally
    //   155	162	165	finally
    //   167	172	175	finally
    //   6	10	242	java/lang/Exception
    //   31	46	242	java/lang/Exception
    //   62	67	242	java/lang/Exception
    //   180	187	242	java/lang/Exception
    //   190	193	242	java/lang/Exception
    //   208	240	242	java/lang/Exception
    //   31	46	245	java/io/IOException
    //   62	67	245	java/io/IOException
    //   180	187	245	java/io/IOException
    //   190	193	245	java/io/IOException
  }
  
  public Typeface c(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2)
  {
    try
    {
      paramContext = new android/graphics/fonts/Font$Builder;
      paramContext.<init>(paramResources, paramInt1);
      paramContext = paramContext.build();
      paramResources = new android/graphics/fonts/FontFamily$Builder;
      paramResources.<init>(paramContext);
      paramResources = paramResources.build();
      paramString = new android/graphics/Typeface$CustomFallbackBuilder;
      paramString.<init>(paramResources);
      paramContext = paramString.setStyle(paramContext.getStyle()).build();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  protected g.b e(g.b[] paramArrayOfb, int paramInt)
  {
    throw new RuntimeException("Do not use this function in API 29 or later.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.k
 * JD-Core Version:    0.7.0.1
 */