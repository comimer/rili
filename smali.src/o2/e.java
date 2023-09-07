package o2;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;

class e
{
  private static final a f = new a();
  private final a a;
  private final d b;
  private final b c;
  private final ContentResolver d;
  private final List<ImageHeaderParser> e;
  
  e(List<ImageHeaderParser> paramList, a parama, d paramd, b paramb, ContentResolver paramContentResolver)
  {
    this.a = parama;
    this.b = paramd;
    this.c = paramb;
    this.d = paramContentResolver;
    this.e = paramList;
  }
  
  e(List<ImageHeaderParser> paramList, d paramd, b paramb, ContentResolver paramContentResolver)
  {
    this(paramList, f, paramd, paramb, paramContentResolver);
  }
  
  /* Error */
  private String b(Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 32	o2/e:b	Lo2/d;
    //   6: aload_1
    //   7: invokeinterface 52 2 0
    //   12: astore_3
    //   13: aload_3
    //   14: ifnull +39 -> 53
    //   17: aload_3
    //   18: astore_2
    //   19: aload_3
    //   20: invokeinterface 58 1 0
    //   25: ifeq +28 -> 53
    //   28: aload_3
    //   29: astore_2
    //   30: aload_3
    //   31: iconst_0
    //   32: invokeinterface 62 2 0
    //   37: astore 4
    //   39: aload_3
    //   40: invokeinterface 65 1 0
    //   45: aload 4
    //   47: areturn
    //   48: astore 4
    //   50: goto +23 -> 73
    //   53: aload_3
    //   54: ifnull +9 -> 63
    //   57: aload_3
    //   58: invokeinterface 65 1 0
    //   63: aconst_null
    //   64: areturn
    //   65: astore_1
    //   66: goto +79 -> 145
    //   69: astore 4
    //   71: aconst_null
    //   72: astore_3
    //   73: aload_3
    //   74: astore_2
    //   75: ldc 67
    //   77: iconst_3
    //   78: invokestatic 73	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   81: ifeq +51 -> 132
    //   84: aload_3
    //   85: astore_2
    //   86: new 75	java/lang/StringBuilder
    //   89: astore 5
    //   91: aload_3
    //   92: astore_2
    //   93: aload 5
    //   95: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   98: aload_3
    //   99: astore_2
    //   100: aload 5
    //   102: ldc 78
    //   104: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: pop
    //   108: aload_3
    //   109: astore_2
    //   110: aload 5
    //   112: aload_1
    //   113: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   116: pop
    //   117: aload_3
    //   118: astore_2
    //   119: ldc 67
    //   121: aload 5
    //   123: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: aload 4
    //   128: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   131: pop
    //   132: aload_3
    //   133: ifnull +9 -> 142
    //   136: aload_3
    //   137: invokeinterface 65 1 0
    //   142: aconst_null
    //   143: areturn
    //   144: astore_1
    //   145: aload_2
    //   146: ifnull +9 -> 155
    //   149: aload_2
    //   150: invokeinterface 65 1 0
    //   155: aload_1
    //   156: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	this	e
    //   0	157	1	paramUri	Uri
    //   1	149	2	localObject	Object
    //   12	125	3	localCursor	android.database.Cursor
    //   37	9	4	str	String
    //   48	1	4	localSecurityException1	java.lang.SecurityException
    //   69	58	4	localSecurityException2	java.lang.SecurityException
    //   89	33	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   19	28	48	java/lang/SecurityException
    //   30	39	48	java/lang/SecurityException
    //   2	13	65	finally
    //   2	13	69	java/lang/SecurityException
    //   19	28	144	finally
    //   30	39	144	finally
    //   75	84	144	finally
    //   86	91	144	finally
    //   93	98	144	finally
    //   100	108	144	finally
    //   110	117	144	finally
    //   119	132	144	finally
  }
  
  private boolean c(File paramFile)
  {
    boolean bool;
    if ((this.a.a(paramFile)) && (0L < this.a.c(paramFile))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  /* Error */
  int a(Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aconst_null
    //   5: astore 4
    //   7: aload_0
    //   8: getfield 36	o2/e:d	Landroid/content/ContentResolver;
    //   11: aload_1
    //   12: invokevirtual 109	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   15: astore 5
    //   17: aload 5
    //   19: astore 4
    //   21: aload 5
    //   23: astore_2
    //   24: aload 5
    //   26: astore_3
    //   27: aload_0
    //   28: getfield 38	o2/e:e	Ljava/util/List;
    //   31: aload 5
    //   33: aload_0
    //   34: getfield 34	o2/e:c	Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    //   37: invokestatic 114	com/bumptech/glide/load/a:b	(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)I
    //   40: istore 6
    //   42: aload 5
    //   44: ifnull +8 -> 52
    //   47: aload 5
    //   49: invokevirtual 117	java/io/InputStream:close	()V
    //   52: iload 6
    //   54: ireturn
    //   55: astore_1
    //   56: goto +88 -> 144
    //   59: astore 4
    //   61: aload_2
    //   62: astore_3
    //   63: aload 4
    //   65: astore_2
    //   66: goto +4 -> 70
    //   69: astore_2
    //   70: aload_3
    //   71: astore 4
    //   73: ldc 67
    //   75: iconst_3
    //   76: invokestatic 73	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   79: ifeq +55 -> 134
    //   82: aload_3
    //   83: astore 4
    //   85: new 75	java/lang/StringBuilder
    //   88: astore 5
    //   90: aload_3
    //   91: astore 4
    //   93: aload 5
    //   95: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   98: aload_3
    //   99: astore 4
    //   101: aload 5
    //   103: ldc 119
    //   105: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload_3
    //   110: astore 4
    //   112: aload 5
    //   114: aload_1
    //   115: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   118: pop
    //   119: aload_3
    //   120: astore 4
    //   122: ldc 67
    //   124: aload 5
    //   126: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: aload_2
    //   130: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   133: pop
    //   134: aload_3
    //   135: ifnull +7 -> 142
    //   138: aload_3
    //   139: invokevirtual 117	java/io/InputStream:close	()V
    //   142: iconst_m1
    //   143: ireturn
    //   144: aload 4
    //   146: ifnull +8 -> 154
    //   149: aload 4
    //   151: invokevirtual 117	java/io/InputStream:close	()V
    //   154: aload_1
    //   155: athrow
    //   156: astore_1
    //   157: goto -105 -> 52
    //   160: astore_1
    //   161: goto -19 -> 142
    //   164: astore 4
    //   166: goto -12 -> 154
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	e
    //   0	169	1	paramUri	Uri
    //   1	65	2	localObject1	Object
    //   69	61	2	localIOException1	java.io.IOException
    //   3	136	3	localObject2	Object
    //   5	15	4	localObject3	Object
    //   59	5	4	localNullPointerException	NullPointerException
    //   71	79	4	localObject4	Object
    //   164	1	4	localIOException2	java.io.IOException
    //   15	110	5	localObject5	Object
    //   40	13	6	i	int
    // Exception table:
    //   from	to	target	type
    //   7	17	55	finally
    //   27	42	55	finally
    //   73	82	55	finally
    //   85	90	55	finally
    //   93	98	55	finally
    //   101	109	55	finally
    //   112	119	55	finally
    //   122	134	55	finally
    //   7	17	59	java/lang/NullPointerException
    //   27	42	59	java/lang/NullPointerException
    //   7	17	69	java/io/IOException
    //   27	42	69	java/io/IOException
    //   47	52	156	java/io/IOException
    //   138	142	160	java/io/IOException
    //   149	154	164	java/io/IOException
  }
  
  public InputStream d(Uri paramUri)
    throws FileNotFoundException
  {
    Object localObject = b(paramUri);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return null;
    }
    localObject = this.a.b((String)localObject);
    if (!c((File)localObject)) {
      return null;
    }
    localObject = Uri.fromFile((File)localObject);
    try
    {
      InputStream localInputStream = this.d.openInputStream((Uri)localObject);
      return localInputStream;
    }
    catch (NullPointerException localNullPointerException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("NPE opening uri: ");
      localStringBuilder.append(paramUri);
      localStringBuilder.append(" -> ");
      localStringBuilder.append(localObject);
      throw ((FileNotFoundException)new FileNotFoundException(localStringBuilder.toString()).initCause(localNullPointerException));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o2.e
 * JD-Core Version:    0.7.0.1
 */