package p2;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import l2.a.e;
import n2.b;

public class e
  implements a
{
  private final j a;
  private final File b;
  private final long c;
  private final c d = new c();
  private l2.a e;
  
  @Deprecated
  protected e(File paramFile, long paramLong)
  {
    this.b = paramFile;
    this.c = paramLong;
    this.a = new j();
  }
  
  public static a c(File paramFile, long paramLong)
  {
    return new e(paramFile, paramLong);
  }
  
  private l2.a d()
    throws IOException
  {
    try
    {
      if (this.e == null) {
        this.e = l2.a.i0(this.b, 1, 1, this.c);
      }
      l2.a locala = this.e;
      return locala;
    }
    finally {}
  }
  
  public File a(b paramb)
  {
    Object localObject = this.a.b(paramb);
    if (Log.isLoggable("DiskLruCacheWrapper", 2))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Get: Obtained: ");
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(" for for Key: ");
      localStringBuilder.append(paramb);
      Log.v("DiskLruCacheWrapper", localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = null;
    try
    {
      localObject = d().d0((String)localObject);
      paramb = localStringBuilder;
      if (localObject != null) {
        paramb = ((a.e)localObject).a(0);
      }
    }
    catch (IOException localIOException)
    {
      paramb = localStringBuilder;
      if (Log.isLoggable("DiskLruCacheWrapper", 5))
      {
        Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", localIOException);
        paramb = localStringBuilder;
      }
    }
    return paramb;
  }
  
  /* Error */
  public void b(b paramb, a.b paramb1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 36	p2/e:a	Lp2/j;
    //   4: aload_1
    //   5: invokevirtual 57	p2/j:b	(Ln2/b;)Ljava/lang/String;
    //   8: astore_3
    //   9: aload_0
    //   10: getfield 27	p2/e:d	Lp2/c;
    //   13: aload_3
    //   14: invokevirtual 108	p2/c:a	(Ljava/lang/String;)V
    //   17: ldc 59
    //   19: iconst_2
    //   20: invokestatic 65	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   23: ifeq +54 -> 77
    //   26: new 67	java/lang/StringBuilder
    //   29: astore 4
    //   31: aload 4
    //   33: invokespecial 68	java/lang/StringBuilder:<init>	()V
    //   36: aload 4
    //   38: ldc 110
    //   40: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: pop
    //   44: aload 4
    //   46: aload_3
    //   47: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: pop
    //   51: aload 4
    //   53: ldc 76
    //   55: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: pop
    //   59: aload 4
    //   61: aload_1
    //   62: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   65: pop
    //   66: ldc 59
    //   68: aload 4
    //   70: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 87	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   76: pop
    //   77: aload_0
    //   78: invokespecial 89	p2/e:d	()Ll2/a;
    //   81: astore 4
    //   83: aload 4
    //   85: aload_3
    //   86: invokevirtual 93	l2/a:d0	(Ljava/lang/String;)Ll2/a$e;
    //   89: astore_1
    //   90: aload_1
    //   91: ifnull +12 -> 103
    //   94: aload_0
    //   95: getfield 27	p2/e:d	Lp2/c;
    //   98: aload_3
    //   99: invokevirtual 112	p2/c:b	(Ljava/lang/String;)V
    //   102: return
    //   103: aload 4
    //   105: aload_3
    //   106: invokevirtual 116	l2/a:Z	(Ljava/lang/String;)Ll2/a$c;
    //   109: astore_1
    //   110: aload_1
    //   111: ifnull +35 -> 146
    //   114: aload_2
    //   115: aload_1
    //   116: iconst_0
    //   117: invokevirtual 121	l2/a$c:f	(I)Ljava/io/File;
    //   120: invokeinterface 126 2 0
    //   125: ifeq +7 -> 132
    //   128: aload_1
    //   129: invokevirtual 128	l2/a$c:e	()V
    //   132: aload_1
    //   133: invokevirtual 130	l2/a$c:b	()V
    //   136: goto +64 -> 200
    //   139: astore_2
    //   140: aload_1
    //   141: invokevirtual 130	l2/a$c:b	()V
    //   144: aload_2
    //   145: athrow
    //   146: new 132	java/lang/IllegalStateException
    //   149: astore_2
    //   150: new 67	java/lang/StringBuilder
    //   153: astore_1
    //   154: aload_1
    //   155: invokespecial 68	java/lang/StringBuilder:<init>	()V
    //   158: aload_1
    //   159: ldc 134
    //   161: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: pop
    //   165: aload_1
    //   166: aload_3
    //   167: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: aload_2
    //   172: aload_1
    //   173: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokespecial 136	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   179: aload_2
    //   180: athrow
    //   181: astore_1
    //   182: ldc 59
    //   184: iconst_5
    //   185: invokestatic 65	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   188: ifeq +12 -> 200
    //   191: ldc 59
    //   193: ldc 138
    //   195: aload_1
    //   196: invokestatic 104	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   199: pop
    //   200: aload_0
    //   201: getfield 27	p2/e:d	Lp2/c;
    //   204: aload_3
    //   205: invokevirtual 112	p2/c:b	(Ljava/lang/String;)V
    //   208: return
    //   209: astore_1
    //   210: aload_0
    //   211: getfield 27	p2/e:d	Lp2/c;
    //   214: aload_3
    //   215: invokevirtual 112	p2/c:b	(Ljava/lang/String;)V
    //   218: aload_1
    //   219: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	220	0	this	e
    //   0	220	1	paramb	b
    //   0	220	2	paramb1	a.b
    //   8	207	3	str	String
    //   29	75	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   114	132	139	finally
    //   77	90	181	java/io/IOException
    //   103	110	181	java/io/IOException
    //   132	136	181	java/io/IOException
    //   140	146	181	java/io/IOException
    //   146	181	181	java/io/IOException
    //   17	77	209	finally
    //   77	90	209	finally
    //   103	110	209	finally
    //   132	136	209	finally
    //   140	146	209	finally
    //   146	181	209	finally
    //   182	200	209	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p2.e
 * JD-Core Version:    0.7.0.1
 */