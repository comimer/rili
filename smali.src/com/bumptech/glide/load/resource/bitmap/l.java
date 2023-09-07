package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.ColorSpace;
import android.graphics.ColorSpace.Named;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import com.bumptech.glide.load.engine.s;
import f3.f;
import f3.j;
import f3.k;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import n2.c;

public final class l
{
  public static final c<DecodeFormat> f = c.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
  public static final c<PreferredColorSpace> g = c.f("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", PreferredColorSpace.SRGB);
  @Deprecated
  public static final c<DownsampleStrategy> h = DownsampleStrategy.h;
  public static final c<Boolean> i;
  public static final c<Boolean> j;
  private static final Set<String> k = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "image/vnd.wap.wbmp", "image/x-ico" })));
  private static final b l = new a();
  private static final Set<ImageHeaderParser.ImageType> m = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
  private static final Queue<BitmapFactory.Options> n = k.e(0);
  private final com.bumptech.glide.load.engine.bitmap_recycle.d a;
  private final DisplayMetrics b;
  private final b c;
  private final List<ImageHeaderParser> d;
  private final q e = q.b();
  
  static
  {
    Boolean localBoolean = Boolean.FALSE;
    i = c.f("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", localBoolean);
    j = c.f("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", localBoolean);
  }
  
  public l(List<ImageHeaderParser> paramList, DisplayMetrics paramDisplayMetrics, com.bumptech.glide.load.engine.bitmap_recycle.d paramd, b paramb)
  {
    this.d = paramList;
    this.b = ((DisplayMetrics)j.d(paramDisplayMetrics));
    this.a = ((com.bumptech.glide.load.engine.bitmap_recycle.d)j.d(paramd));
    this.c = ((b)j.d(paramb));
  }
  
  private static int a(double paramDouble)
  {
    int i1 = l(paramDouble);
    int i2 = x(i1 * paramDouble);
    return x(paramDouble / (i2 / i1) * i2);
  }
  
  private void b(r paramr, DecodeFormat paramDecodeFormat, boolean paramBoolean1, boolean paramBoolean2, BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    if (this.e.i(paramInt1, paramInt2, paramOptions, paramBoolean1, paramBoolean2)) {
      return;
    }
    if (paramDecodeFormat != DecodeFormat.PREFER_ARGB_8888)
    {
      paramBoolean2 = false;
      try
      {
        paramBoolean1 = paramr.d().hasAlpha();
      }
      catch (IOException localIOException)
      {
        paramBoolean1 = paramBoolean2;
        if (Log.isLoggable("Downsampler", 3))
        {
          paramr = new StringBuilder();
          paramr.append("Cannot determine whether the image has alpha or not from header, format ");
          paramr.append(paramDecodeFormat);
          Log.d("Downsampler", paramr.toString(), localIOException);
          paramBoolean1 = paramBoolean2;
        }
      }
      if (paramBoolean1) {
        paramr = Bitmap.Config.ARGB_8888;
      } else {
        paramr = Bitmap.Config.RGB_565;
      }
      paramOptions.inPreferredConfig = paramr;
      if (paramr == Bitmap.Config.RGB_565) {
        paramOptions.inDither = true;
      }
      return;
    }
    paramOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
  }
  
  private static void c(ImageHeaderParser.ImageType paramImageType, r paramr, b paramb, com.bumptech.glide.load.engine.bitmap_recycle.d paramd, DownsampleStrategy paramDownsampleStrategy, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, BitmapFactory.Options paramOptions)
    throws IOException
  {
    if ((paramInt2 > 0) && (paramInt3 > 0))
    {
      int i1;
      int i2;
      if (r(paramInt1))
      {
        i1 = paramInt2;
        i2 = paramInt3;
      }
      else
      {
        i2 = paramInt2;
        i1 = paramInt3;
      }
      float f1 = paramDownsampleStrategy.b(i2, i1, paramInt4, paramInt5);
      if (f1 > 0.0F)
      {
        DownsampleStrategy.SampleSizeRounding localSampleSizeRounding1 = paramDownsampleStrategy.a(i2, i1, paramInt4, paramInt5);
        if (localSampleSizeRounding1 != null)
        {
          float f2 = i2;
          int i3 = x(f1 * f2);
          float f3 = i1;
          int i4 = x(f1 * f3);
          i3 = i2 / i3;
          i4 = i1 / i4;
          DownsampleStrategy.SampleSizeRounding localSampleSizeRounding2 = DownsampleStrategy.SampleSizeRounding.MEMORY;
          if (localSampleSizeRounding1 == localSampleSizeRounding2) {
            i4 = Math.max(i3, i4);
          } else {
            i4 = Math.min(i3, i4);
          }
          i3 = Math.max(1, Integer.highestOneBit(i4));
          i4 = i3;
          if (localSampleSizeRounding1 == localSampleSizeRounding2)
          {
            i4 = i3;
            if (i3 < 1.0F / f1) {
              i4 = i3 << 1;
            }
          }
          paramOptions.inSampleSize = i4;
          float f4;
          if (paramImageType == ImageHeaderParser.ImageType.JPEG)
          {
            f4 = Math.min(i4, 8);
            int i5 = (int)Math.ceil(f2 / f4);
            i3 = (int)Math.ceil(f3 / f4);
            int i6 = i4 / 8;
            i1 = i3;
            i2 = i5;
            if (i6 > 0)
            {
              i2 = i5 / i6;
              i1 = i3 / i6;
            }
          }
          else if ((paramImageType != ImageHeaderParser.ImageType.PNG) && (paramImageType != ImageHeaderParser.ImageType.PNG_A))
          {
            if ((paramImageType != ImageHeaderParser.ImageType.WEBP) && (paramImageType != ImageHeaderParser.ImageType.WEBP_A))
            {
              if ((i2 % i4 == 0) && (i1 % i4 == 0))
              {
                i2 /= i4;
                i1 /= i4;
              }
              else
              {
                paramImageType = m(paramr, paramOptions, paramb, paramd);
                i2 = paramImageType[0];
                i1 = paramImageType[1];
              }
            }
            else
            {
              f4 = i4;
              i2 = Math.round(f2 / f4);
              i1 = Math.round(f3 / f4);
            }
          }
          else
          {
            f4 = i4;
            i2 = (int)Math.floor(f2 / f4);
            i1 = (int)Math.floor(f3 / f4);
          }
          double d1 = paramDownsampleStrategy.b(i2, i1, paramInt4, paramInt5);
          paramOptions.inTargetDensity = a(d1);
          paramOptions.inDensity = l(d1);
          if (s(paramOptions))
          {
            paramOptions.inScaled = true;
          }
          else
          {
            paramOptions.inTargetDensity = 0;
            paramOptions.inDensity = 0;
          }
          if (Log.isLoggable("Downsampler", 2))
          {
            paramImageType = new StringBuilder();
            paramImageType.append("Calculate scaling, source: [");
            paramImageType.append(paramInt2);
            paramImageType.append("x");
            paramImageType.append(paramInt3);
            paramImageType.append("], degreesToRotate: ");
            paramImageType.append(paramInt1);
            paramImageType.append(", target: [");
            paramImageType.append(paramInt4);
            paramImageType.append("x");
            paramImageType.append(paramInt5);
            paramImageType.append("], power of two scaled: [");
            paramImageType.append(i2);
            paramImageType.append("x");
            paramImageType.append(i1);
            paramImageType.append("], exact scale factor: ");
            paramImageType.append(f1);
            paramImageType.append(", power of 2 sample size: ");
            paramImageType.append(i4);
            paramImageType.append(", adjusted scale factor: ");
            paramImageType.append(d1);
            paramImageType.append(", target density: ");
            paramImageType.append(paramOptions.inTargetDensity);
            paramImageType.append(", density: ");
            paramImageType.append(paramOptions.inDensity);
            Log.v("Downsampler", paramImageType.toString());
          }
          return;
        }
        throw new IllegalArgumentException("Cannot round with null rounding");
      }
      paramImageType = new StringBuilder();
      paramImageType.append("Cannot scale with factor: ");
      paramImageType.append(f1);
      paramImageType.append(" from: ");
      paramImageType.append(paramDownsampleStrategy);
      paramImageType.append(", source: [");
      paramImageType.append(paramInt2);
      paramImageType.append("x");
      paramImageType.append(paramInt3);
      paramImageType.append("], target: [");
      paramImageType.append(paramInt4);
      paramImageType.append("x");
      paramImageType.append(paramInt5);
      paramImageType.append("]");
      throw new IllegalArgumentException(paramImageType.toString());
    }
    if (Log.isLoggable("Downsampler", 3))
    {
      paramr = new StringBuilder();
      paramr.append("Unable to determine dimensions for: ");
      paramr.append(paramImageType);
      paramr.append(" with target [");
      paramr.append(paramInt4);
      paramr.append("x");
      paramr.append(paramInt5);
      paramr.append("]");
      Log.d("Downsampler", paramr.toString());
    }
  }
  
  private s<Bitmap> e(r paramr, int paramInt1, int paramInt2, n2.d paramd, b paramb)
    throws IOException
  {
    byte[] arrayOfByte = (byte[])this.c.d(65536, [B.class);
    BitmapFactory.Options localOptions = k();
    localOptions.inTempStorage = arrayOfByte;
    DecodeFormat localDecodeFormat = (DecodeFormat)paramd.c(f);
    PreferredColorSpace localPreferredColorSpace = (PreferredColorSpace)paramd.c(g);
    DownsampleStrategy localDownsampleStrategy = (DownsampleStrategy)paramd.c(DownsampleStrategy.h);
    boolean bool1 = ((Boolean)paramd.c(i)).booleanValue();
    c localc = j;
    boolean bool2;
    if ((paramd.c(localc) != null) && (((Boolean)paramd.c(localc)).booleanValue())) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    try
    {
      paramr = e.f(h(paramr, localOptions, localDownsampleStrategy, localDecodeFormat, localPreferredColorSpace, bool2, paramInt1, paramInt2, bool1, paramb), this.a);
      return paramr;
    }
    finally
    {
      v(localOptions);
      this.c.put(arrayOfByte);
    }
  }
  
  private Bitmap h(r paramr, BitmapFactory.Options paramOptions, DownsampleStrategy paramDownsampleStrategy, DecodeFormat paramDecodeFormat, PreferredColorSpace paramPreferredColorSpace, boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2, b paramb)
    throws IOException
  {
    long l1 = f.b();
    Object localObject = m(paramr, paramOptions, paramb, this.a);
    int i1 = 0;
    int i2 = localObject[0];
    int i3 = localObject[1];
    localObject = paramOptions.outMimeType;
    if ((i2 != -1) && (i3 != -1)) {
      break label60;
    }
    paramBoolean1 = false;
    label60:
    int i4 = paramr.a();
    int i5 = y.j(i4);
    boolean bool = y.m(i4);
    int i6;
    if (paramInt1 == -2147483648)
    {
      if (r(i5)) {
        i6 = i3;
      } else {
        i6 = i2;
      }
    }
    else {
      i6 = paramInt1;
    }
    int i7 = paramInt2;
    if (i7 == -2147483648) {
      if (r(i5)) {
        i7 = i2;
      } else {
        i7 = i3;
      }
    }
    ImageHeaderParser.ImageType localImageType = paramr.d();
    c(localImageType, paramr, paramb, this.a, paramDownsampleStrategy, i5, i2, i3, i6, i7, paramOptions);
    b(paramr, paramDecodeFormat, paramBoolean1, bool, paramOptions, i6, i7);
    int i8 = Build.VERSION.SDK_INT;
    i5 = paramOptions.inSampleSize;
    if (z(localImageType))
    {
      if ((i2 < 0) || (i3 < 0) || (!paramBoolean2))
      {
        float f1;
        if (s(paramOptions)) {
          f1 = paramOptions.inTargetDensity / paramOptions.inDensity;
        } else {
          f1 = 1.0F;
        }
        int i9 = paramOptions.inSampleSize;
        float f2 = i2;
        float f3 = i9;
        i7 = (int)Math.ceil(f2 / f3);
        i6 = (int)Math.ceil(i3 / f3);
        i5 = Math.round(i7 * f1);
        int i10 = Math.round(i6 * f1);
        paramDownsampleStrategy = "Downsampler";
        i6 = i5;
        i7 = i10;
        if (Log.isLoggable(paramDownsampleStrategy, 2))
        {
          paramDecodeFormat = new StringBuilder();
          paramDecodeFormat.append("Calculated target [");
          paramDecodeFormat.append(i5);
          paramDecodeFormat.append("x");
          paramDecodeFormat.append(i10);
          paramDecodeFormat.append("] for source [");
          paramDecodeFormat.append(i2);
          paramDecodeFormat.append("x");
          paramDecodeFormat.append(i3);
          paramDecodeFormat.append("], sampleSize: ");
          paramDecodeFormat.append(i9);
          paramDecodeFormat.append(", targetDensity: ");
          paramDecodeFormat.append(paramOptions.inTargetDensity);
          paramDecodeFormat.append(", density: ");
          paramDecodeFormat.append(paramOptions.inDensity);
          paramDecodeFormat.append(", density multiplier: ");
          paramDecodeFormat.append(f1);
          Log.v(paramDownsampleStrategy, paramDecodeFormat.toString());
          i7 = i10;
          i6 = i5;
        }
      }
      if ((i6 > 0) && (i7 > 0)) {
        y(paramOptions, this.a, i6, i7);
      }
    }
    if (i8 >= 28)
    {
      i6 = i1;
      if (paramPreferredColorSpace == PreferredColorSpace.DISPLAY_P3)
      {
        paramDownsampleStrategy = paramOptions.outColorSpace;
        i6 = i1;
        if (paramDownsampleStrategy != null)
        {
          i6 = i1;
          if (paramDownsampleStrategy.isWideGamut()) {
            i6 = 1;
          }
        }
      }
      if (i6 != 0) {
        paramDownsampleStrategy = ColorSpace.Named.DISPLAY_P3;
      } else {
        paramDownsampleStrategy = ColorSpace.Named.SRGB;
      }
      paramOptions.inPreferredColorSpace = ColorSpace.get(paramDownsampleStrategy);
    }
    else
    {
      paramOptions.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
    }
    paramDownsampleStrategy = i(paramr, paramOptions, paramb, this.a);
    paramb.a(this.a, paramDownsampleStrategy);
    if (Log.isLoggable("Downsampler", 2)) {
      t(i2, i3, (String)localObject, paramOptions, paramDownsampleStrategy, paramInt1, paramInt2, l1);
    }
    paramr = null;
    if (paramDownsampleStrategy != null)
    {
      paramDownsampleStrategy.setDensity(this.b.densityDpi);
      paramOptions = y.n(this.a, paramDownsampleStrategy, i4);
      paramr = paramOptions;
      if (!paramDownsampleStrategy.equals(paramOptions))
      {
        this.a.c(paramDownsampleStrategy);
        paramr = paramOptions;
      }
    }
    return paramr;
  }
  
  /* Error */
  private static Bitmap i(r paramr, BitmapFactory.Options paramOptions, b paramb, com.bumptech.glide.load.engine.bitmap_recycle.d paramd)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 511	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   4: ifne +15 -> 19
    //   7: aload_2
    //   8: invokeinterface 513 1 0
    //   13: aload_0
    //   14: invokeinterface 515 1 0
    //   19: aload_1
    //   20: getfield 518	android/graphics/BitmapFactory$Options:outWidth	I
    //   23: istore 4
    //   25: aload_1
    //   26: getfield 521	android/graphics/BitmapFactory$Options:outHeight	I
    //   29: istore 5
    //   31: aload_1
    //   32: getfield 416	android/graphics/BitmapFactory$Options:outMimeType	Ljava/lang/String;
    //   35: astore 6
    //   37: invokestatic 524	com/bumptech/glide/load/resource/bitmap/y:i	()Ljava/util/concurrent/locks/Lock;
    //   40: invokeinterface 529 1 0
    //   45: aload_0
    //   46: aload_1
    //   47: invokeinterface 532 2 0
    //   52: astore 7
    //   54: invokestatic 524	com/bumptech/glide/load/resource/bitmap/y:i	()Ljava/util/concurrent/locks/Lock;
    //   57: invokeinterface 535 1 0
    //   62: aload 7
    //   64: areturn
    //   65: astore_0
    //   66: goto +88 -> 154
    //   69: astore 7
    //   71: aload 7
    //   73: iload 4
    //   75: iload 5
    //   77: aload 6
    //   79: aload_1
    //   80: invokestatic 539	com/bumptech/glide/load/resource/bitmap/l:u	(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    //   83: astore 6
    //   85: ldc 200
    //   87: iconst_3
    //   88: invokestatic 206	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   91: ifeq +14 -> 105
    //   94: ldc 200
    //   96: ldc_w 541
    //   99: aload 6
    //   101: invokestatic 225	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   104: pop
    //   105: aload_1
    //   106: getfield 545	android/graphics/BitmapFactory$Options:inBitmap	Landroid/graphics/Bitmap;
    //   109: astore 7
    //   111: aload 7
    //   113: ifnull +38 -> 151
    //   116: aload_3
    //   117: aload 7
    //   119: invokeinterface 508 2 0
    //   124: aload_1
    //   125: aconst_null
    //   126: putfield 545	android/graphics/BitmapFactory$Options:inBitmap	Landroid/graphics/Bitmap;
    //   129: aload_0
    //   130: aload_1
    //   131: aload_2
    //   132: aload_3
    //   133: invokestatic 482	com/bumptech/glide/load/resource/bitmap/l:i	(Lcom/bumptech/glide/load/resource/bitmap/r;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/l$b;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Landroid/graphics/Bitmap;
    //   136: astore_0
    //   137: invokestatic 524	com/bumptech/glide/load/resource/bitmap/y:i	()Ljava/util/concurrent/locks/Lock;
    //   140: invokeinterface 535 1 0
    //   145: aload_0
    //   146: areturn
    //   147: astore_0
    //   148: aload 6
    //   150: athrow
    //   151: aload 6
    //   153: athrow
    //   154: invokestatic 524	com/bumptech/glide/load/resource/bitmap/y:i	()Ljava/util/concurrent/locks/Lock;
    //   157: invokeinterface 535 1 0
    //   162: aload_0
    //   163: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	paramr	r
    //   0	164	1	paramOptions	BitmapFactory.Options
    //   0	164	2	paramb	b
    //   0	164	3	paramd	com.bumptech.glide.load.engine.bitmap_recycle.d
    //   23	51	4	i1	int
    //   29	47	5	i2	int
    //   35	117	6	localObject	Object
    //   52	11	7	localBitmap1	Bitmap
    //   69	3	7	localIllegalArgumentException	IllegalArgumentException
    //   109	9	7	localBitmap2	Bitmap
    // Exception table:
    //   from	to	target	type
    //   45	54	65	finally
    //   71	105	65	finally
    //   105	111	65	finally
    //   116	137	65	finally
    //   148	151	65	finally
    //   151	154	65	finally
    //   45	54	69	java/lang/IllegalArgumentException
    //   116	137	147	java/io/IOException
  }
  
  @TargetApi(19)
  private static String j(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" (");
    localStringBuilder.append(paramBitmap.getAllocationByteCount());
    localStringBuilder.append(")");
    String str = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append(paramBitmap.getWidth());
    localStringBuilder.append("x");
    localStringBuilder.append(paramBitmap.getHeight());
    localStringBuilder.append("] ");
    localStringBuilder.append(paramBitmap.getConfig());
    localStringBuilder.append(str);
    return localStringBuilder.toString();
  }
  
  /* Error */
  private static BitmapFactory.Options k()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 143	com/bumptech/glide/load/resource/bitmap/l:n	Ljava/util/Queue;
    //   6: astore_0
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: invokeinterface 577 1 0
    //   15: checkcast 236	android/graphics/BitmapFactory$Options
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: astore_0
    //   23: aload_1
    //   24: ifnonnull +15 -> 39
    //   27: new 236	android/graphics/BitmapFactory$Options
    //   30: astore_0
    //   31: aload_0
    //   32: invokespecial 578	android/graphics/BitmapFactory$Options:<init>	()V
    //   35: aload_0
    //   36: invokestatic 581	com/bumptech/glide/load/resource/bitmap/l:w	(Landroid/graphics/BitmapFactory$Options;)V
    //   39: ldc 2
    //   41: monitorexit
    //   42: aload_0
    //   43: areturn
    //   44: astore_1
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    //   49: astore_0
    //   50: ldc 2
    //   52: monitorexit
    //   53: aload_0
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   49	5	0	localObject2	Object
    //   18	6	1	localOptions	BitmapFactory.Options
    //   44	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	21	44	finally
    //   45	47	44	finally
    //   3	9	49	finally
    //   27	39	49	finally
    //   47	49	49	finally
  }
  
  private static int l(double paramDouble)
  {
    if (paramDouble > 1.0D) {
      paramDouble = 1.0D / paramDouble;
    }
    return (int)Math.round(paramDouble * 2147483647.0D);
  }
  
  private static int[] m(r paramr, BitmapFactory.Options paramOptions, b paramb, com.bumptech.glide.load.engine.bitmap_recycle.d paramd)
    throws IOException
  {
    paramOptions.inJustDecodeBounds = true;
    i(paramr, paramOptions, paramb, paramd);
    paramOptions.inJustDecodeBounds = false;
    return new int[] { paramOptions.outWidth, paramOptions.outHeight };
  }
  
  private static String n(BitmapFactory.Options paramOptions)
  {
    return j(paramOptions.inBitmap);
  }
  
  private static boolean r(int paramInt)
  {
    boolean bool;
    if ((paramInt != 90) && (paramInt != 270)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private static boolean s(BitmapFactory.Options paramOptions)
  {
    int i1 = paramOptions.inTargetDensity;
    if (i1 > 0)
    {
      int i2 = paramOptions.inDensity;
      if ((i2 > 0) && (i1 != i2)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  private static void t(int paramInt1, int paramInt2, String paramString, BitmapFactory.Options paramOptions, Bitmap paramBitmap, int paramInt3, int paramInt4, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Decoded ");
    localStringBuilder.append(j(paramBitmap));
    localStringBuilder.append(" from [");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append("x");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append("] ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(" with inBitmap ");
    localStringBuilder.append(n(paramOptions));
    localStringBuilder.append(" for [");
    localStringBuilder.append(paramInt3);
    localStringBuilder.append("x");
    localStringBuilder.append(paramInt4);
    localStringBuilder.append("], sample size: ");
    localStringBuilder.append(paramOptions.inSampleSize);
    localStringBuilder.append(", density: ");
    localStringBuilder.append(paramOptions.inDensity);
    localStringBuilder.append(", target density: ");
    localStringBuilder.append(paramOptions.inTargetDensity);
    localStringBuilder.append(", thread: ");
    localStringBuilder.append(Thread.currentThread().getName());
    localStringBuilder.append(", duration: ");
    localStringBuilder.append(f.a(paramLong));
    Log.v("Downsampler", localStringBuilder.toString());
  }
  
  private static IOException u(IllegalArgumentException paramIllegalArgumentException, int paramInt1, int paramInt2, String paramString, BitmapFactory.Options paramOptions)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Exception decoding bitmap, outWidth: ");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(", outHeight: ");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(", outMimeType: ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(", inBitmap: ");
    localStringBuilder.append(n(paramOptions));
    return new IOException(localStringBuilder.toString(), paramIllegalArgumentException);
  }
  
  private static void v(BitmapFactory.Options paramOptions)
  {
    w(paramOptions);
    synchronized (n)
    {
      ???.offer(paramOptions);
      return;
    }
  }
  
  private static void w(BitmapFactory.Options paramOptions)
  {
    paramOptions.inTempStorage = null;
    paramOptions.inDither = false;
    paramOptions.inScaled = false;
    paramOptions.inSampleSize = 1;
    paramOptions.inPreferredConfig = null;
    paramOptions.inJustDecodeBounds = false;
    paramOptions.inDensity = 0;
    paramOptions.inTargetDensity = 0;
    paramOptions.inPreferredColorSpace = null;
    paramOptions.outColorSpace = null;
    paramOptions.outConfig = null;
    paramOptions.outWidth = 0;
    paramOptions.outHeight = 0;
    paramOptions.outMimeType = null;
    paramOptions.inBitmap = null;
    paramOptions.inMutable = true;
  }
  
  private static int x(double paramDouble)
  {
    return (int)(paramDouble + 0.5D);
  }
  
  @TargetApi(26)
  private static void y(BitmapFactory.Options paramOptions, com.bumptech.glide.load.engine.bitmap_recycle.d paramd, int paramInt1, int paramInt2)
  {
    Object localObject = paramOptions.inPreferredConfig;
    if (localObject == Bitmap.Config.HARDWARE) {
      return;
    }
    Bitmap.Config localConfig = paramOptions.outConfig;
    if (localConfig != null) {
      localObject = localConfig;
    }
    paramOptions.inBitmap = paramd.e(paramInt1, paramInt2, (Bitmap.Config)localObject);
  }
  
  private boolean z(ImageHeaderParser.ImageType paramImageType)
  {
    return true;
  }
  
  public s<Bitmap> d(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2, n2.d paramd)
    throws IOException
  {
    return e(new r.b(paramParcelFileDescriptor, this.d, this.c), paramInt1, paramInt2, paramd, l);
  }
  
  public s<Bitmap> f(InputStream paramInputStream, int paramInt1, int paramInt2, n2.d paramd)
    throws IOException
  {
    return g(paramInputStream, paramInt1, paramInt2, paramd, l);
  }
  
  public s<Bitmap> g(InputStream paramInputStream, int paramInt1, int paramInt2, n2.d paramd, b paramb)
    throws IOException
  {
    return e(new r.a(paramInputStream, this.d, this.c), paramInt1, paramInt2, paramd, paramb);
  }
  
  public boolean o(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    return ParcelFileDescriptorRewinder.c();
  }
  
  public boolean p(InputStream paramInputStream)
  {
    return true;
  }
  
  public boolean q(ByteBuffer paramByteBuffer)
  {
    return true;
  }
  
  class a
    implements l.b
  {
    public void a(com.bumptech.glide.load.engine.bitmap_recycle.d paramd, Bitmap paramBitmap) {}
    
    public void b() {}
  }
  
  public static abstract interface b
  {
    public abstract void a(com.bumptech.glide.load.engine.bitmap_recycle.d paramd, Bitmap paramBitmap)
      throws IOException;
    
    public abstract void b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.l
 * JD-Core Version:    0.7.0.1
 */