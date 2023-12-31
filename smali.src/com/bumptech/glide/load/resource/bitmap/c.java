package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import n2.d;
import n2.f;

public class c
  implements f<Bitmap>
{
  public static final n2.c<Integer> b = n2.c.f("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", Integer.valueOf(90));
  public static final n2.c<Bitmap.CompressFormat> c = n2.c.e("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");
  private final b a;
  
  public c(b paramb)
  {
    this.a = paramb;
  }
  
  private Bitmap.CompressFormat d(Bitmap paramBitmap, d paramd)
  {
    paramd = (Bitmap.CompressFormat)paramd.c(c);
    if (paramd != null) {
      return paramd;
    }
    if (paramBitmap.hasAlpha()) {
      return Bitmap.CompressFormat.PNG;
    }
    return Bitmap.CompressFormat.JPEG;
  }
  
  public EncodeStrategy a(d paramd)
  {
    return EncodeStrategy.TRANSFORMED;
  }
  
  /* Error */
  public boolean c(com.bumptech.glide.load.engine.s<Bitmap> params, java.io.File paramFile, d paramd)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 88 1 0
    //   6: checkcast 58	android/graphics/Bitmap
    //   9: astore 4
    //   11: aload_0
    //   12: aload 4
    //   14: aload_3
    //   15: invokespecial 90	com/bumptech/glide/load/resource/bitmap/c:d	(Landroid/graphics/Bitmap;Ln2/d;)Landroid/graphics/Bitmap$CompressFormat;
    //   18: astore 5
    //   20: ldc 92
    //   22: aload 4
    //   24: invokevirtual 96	android/graphics/Bitmap:getWidth	()I
    //   27: invokestatic 24	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   30: aload 4
    //   32: invokevirtual 99	android/graphics/Bitmap:getHeight	()I
    //   35: invokestatic 24	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   38: aload 5
    //   40: invokestatic 104	g3/b:c	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   43: invokestatic 109	f3/f:b	()J
    //   46: lstore 6
    //   48: aload_3
    //   49: getstatic 32	com/bumptech/glide/load/resource/bitmap/c:b	Ln2/c;
    //   52: invokevirtual 54	n2/d:c	(Ln2/c;)Ljava/lang/Object;
    //   55: checkcast 20	java/lang/Integer
    //   58: invokevirtual 112	java/lang/Integer:intValue	()I
    //   61: istore 8
    //   63: iconst_0
    //   64: istore 9
    //   66: iconst_0
    //   67: istore 10
    //   69: aconst_null
    //   70: astore 11
    //   72: aconst_null
    //   73: astore 12
    //   75: aload 12
    //   77: astore 13
    //   79: aload 11
    //   81: astore 14
    //   83: new 114	java/io/FileOutputStream
    //   86: astore_1
    //   87: aload 12
    //   89: astore 13
    //   91: aload 11
    //   93: astore 14
    //   95: aload_1
    //   96: aload_2
    //   97: invokespecial 117	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   100: aload_0
    //   101: getfield 47	com/bumptech/glide/load/resource/bitmap/c:a	Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    //   104: ifnull +21 -> 125
    //   107: new 119	com/bumptech/glide/load/data/c
    //   110: astore_2
    //   111: aload_2
    //   112: aload_1
    //   113: aload_0
    //   114: getfield 47	com/bumptech/glide/load/resource/bitmap/c:a	Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    //   117: invokespecial 122	com/bumptech/glide/load/data/c:<init>	(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    //   120: aload_2
    //   121: astore_1
    //   122: goto +3 -> 125
    //   125: aload_1
    //   126: astore 13
    //   128: aload_1
    //   129: astore 14
    //   131: aload 4
    //   133: aload 5
    //   135: iload 8
    //   137: aload_1
    //   138: invokevirtual 126	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   141: pop
    //   142: aload_1
    //   143: astore 13
    //   145: aload_1
    //   146: astore 14
    //   148: aload_1
    //   149: invokevirtual 131	java/io/OutputStream:close	()V
    //   152: iconst_1
    //   153: istore 9
    //   155: aload_1
    //   156: invokevirtual 131	java/io/OutputStream:close	()V
    //   159: goto +59 -> 218
    //   162: astore_2
    //   163: aload_1
    //   164: astore 13
    //   166: aload_2
    //   167: astore_1
    //   168: goto +167 -> 335
    //   171: astore_2
    //   172: goto +11 -> 183
    //   175: astore_1
    //   176: goto +159 -> 335
    //   179: astore_2
    //   180: aload 14
    //   182: astore_1
    //   183: aload_1
    //   184: astore 13
    //   186: ldc 133
    //   188: iconst_3
    //   189: invokestatic 139	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   192: ifeq +15 -> 207
    //   195: aload_1
    //   196: astore 13
    //   198: ldc 133
    //   200: ldc 141
    //   202: aload_2
    //   203: invokestatic 144	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   206: pop
    //   207: aload_1
    //   208: ifnull +10 -> 218
    //   211: iload 10
    //   213: istore 9
    //   215: goto -60 -> 155
    //   218: ldc 133
    //   220: iconst_2
    //   221: invokestatic 139	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   224: ifeq +105 -> 329
    //   227: new 146	java/lang/StringBuilder
    //   230: astore_1
    //   231: aload_1
    //   232: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   235: aload_1
    //   236: ldc 149
    //   238: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: pop
    //   242: aload_1
    //   243: aload 5
    //   245: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   248: pop
    //   249: aload_1
    //   250: ldc 158
    //   252: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: pop
    //   256: aload_1
    //   257: aload 4
    //   259: invokestatic 164	f3/k:g	(Landroid/graphics/Bitmap;)I
    //   262: invokevirtual 167	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   265: pop
    //   266: aload_1
    //   267: ldc 169
    //   269: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: pop
    //   273: aload_1
    //   274: lload 6
    //   276: invokestatic 172	f3/f:a	(J)D
    //   279: invokevirtual 175	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   282: pop
    //   283: aload_1
    //   284: ldc 177
    //   286: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: pop
    //   290: aload_1
    //   291: aload_3
    //   292: getstatic 40	com/bumptech/glide/load/resource/bitmap/c:c	Ln2/c;
    //   295: invokevirtual 54	n2/d:c	(Ln2/c;)Ljava/lang/Object;
    //   298: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   301: pop
    //   302: aload_1
    //   303: ldc 179
    //   305: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: pop
    //   309: aload_1
    //   310: aload 4
    //   312: invokevirtual 62	android/graphics/Bitmap:hasAlpha	()Z
    //   315: invokevirtual 182	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   318: pop
    //   319: ldc 133
    //   321: aload_1
    //   322: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: invokestatic 190	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   328: pop
    //   329: invokestatic 192	g3/b:d	()V
    //   332: iload 9
    //   334: ireturn
    //   335: aload 13
    //   337: ifnull +8 -> 345
    //   340: aload 13
    //   342: invokevirtual 131	java/io/OutputStream:close	()V
    //   345: aload_1
    //   346: athrow
    //   347: astore_1
    //   348: invokestatic 192	g3/b:d	()V
    //   351: aload_1
    //   352: athrow
    //   353: astore_1
    //   354: goto -136 -> 218
    //   357: astore_2
    //   358: goto -13 -> 345
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	361	0	this	c
    //   0	361	1	params	com.bumptech.glide.load.engine.s<Bitmap>
    //   0	361	2	paramFile	java.io.File
    //   0	361	3	paramd	d
    //   9	302	4	localBitmap	Bitmap
    //   18	226	5	localCompressFormat	Bitmap.CompressFormat
    //   46	229	6	l	long
    //   61	75	8	i	int
    //   64	269	9	bool1	boolean
    //   67	145	10	bool2	boolean
    //   70	22	11	localObject1	Object
    //   73	15	12	localObject2	Object
    //   77	264	13	localObject3	Object
    //   81	100	14	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   100	120	162	finally
    //   100	120	171	java/io/IOException
    //   83	87	175	finally
    //   95	100	175	finally
    //   131	142	175	finally
    //   148	152	175	finally
    //   186	195	175	finally
    //   198	207	175	finally
    //   83	87	179	java/io/IOException
    //   95	100	179	java/io/IOException
    //   131	142	179	java/io/IOException
    //   148	152	179	java/io/IOException
    //   43	63	347	finally
    //   155	159	347	finally
    //   218	329	347	finally
    //   340	345	347	finally
    //   345	347	347	finally
    //   155	159	353	java/io/IOException
    //   340	345	357	java/io/IOException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.c
 * JD-Core Version:    0.7.0.1
 */