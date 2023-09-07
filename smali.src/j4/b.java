package j4;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore.Images.Media;
import com.android.calendar.application.CalendarApplication;

public class b
{
  private static final String[] h = { "screenshot", "screen_shot", "screen-shot", "screen shot", "screencapture", "screen_capture", "screen-capture", "screen capture", "screencap", "screen_cap", "screen-cap", "screen cap", "snap", "截屏" };
  private static final String[] i = { "_data", "datetaken", "date_added" };
  private ContentObserver a = new c(null, MediaStore.Images.Media.INTERNAL_CONTENT_URI);
  private ContentObserver b = new c(null, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
  private ContentResolver c = CalendarApplication.e().getContentResolver();
  private Handler d = new Handler(Looper.getMainLooper());
  private a e;
  private String f;
  private Runnable g = new a();
  
  private boolean d(String paramString)
  {
    if ((paramString != null) && (paramString.length() >= 2))
    {
      String str = paramString.toLowerCase();
      paramString = h;
      int j = paramString.length;
      for (int k = 0; k < j; k++) {
        if (str.contains(paramString[k])) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static b e()
  {
    return b.a;
  }
  
  /* Error */
  private void f(Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_3
    //   5: astore 4
    //   7: getstatic 156	android/os/Build$VERSION:SDK_INT	I
    //   10: bipush 29
    //   12: if_icmple +63 -> 75
    //   15: aload_3
    //   16: astore 4
    //   18: new 158	android/os/Bundle
    //   21: astore 5
    //   23: aload_3
    //   24: astore 4
    //   26: aload 5
    //   28: invokespecial 159	android/os/Bundle:<init>	()V
    //   31: aload_3
    //   32: astore 4
    //   34: aload 5
    //   36: ldc 161
    //   38: ldc 163
    //   40: invokevirtual 169	android/os/BaseBundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_3
    //   44: astore 4
    //   46: aload 5
    //   48: ldc 171
    //   50: iconst_1
    //   51: invokevirtual 175	android/os/BaseBundle:putInt	(Ljava/lang/String;I)V
    //   54: aload_3
    //   55: astore 4
    //   57: aload_0
    //   58: getfield 119	j4/b:c	Landroid/content/ContentResolver;
    //   61: aload_1
    //   62: getstatic 68	j4/b:i	[Ljava/lang/String;
    //   65: aload 5
    //   67: aconst_null
    //   68: invokevirtual 181	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   71: astore_1
    //   72: goto +22 -> 94
    //   75: aload_3
    //   76: astore 4
    //   78: aload_0
    //   79: getfield 119	j4/b:c	Landroid/content/ContentResolver;
    //   82: aload_1
    //   83: getstatic 68	j4/b:i	[Ljava/lang/String;
    //   86: aconst_null
    //   87: aconst_null
    //   88: ldc 183
    //   90: invokevirtual 186	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   93: astore_1
    //   94: aload_1
    //   95: ifnonnull +23 -> 118
    //   98: aload_1
    //   99: ifnull +18 -> 117
    //   102: aload_1
    //   103: invokeinterface 192 1 0
    //   108: ifne +9 -> 117
    //   111: aload_1
    //   112: invokeinterface 195 1 0
    //   117: return
    //   118: aload_1
    //   119: invokeinterface 198 1 0
    //   124: istore 6
    //   126: iload 6
    //   128: ifne +19 -> 147
    //   131: aload_1
    //   132: invokeinterface 192 1 0
    //   137: ifne +9 -> 146
    //   140: aload_1
    //   141: invokeinterface 195 1 0
    //   146: return
    //   147: aload_1
    //   148: ldc 62
    //   150: invokeinterface 202 2 0
    //   155: istore 7
    //   157: aload_1
    //   158: ldc 64
    //   160: invokeinterface 202 2 0
    //   165: istore 8
    //   167: aload_1
    //   168: ldc 66
    //   170: invokeinterface 202 2 0
    //   175: istore 9
    //   177: aload_1
    //   178: iload 7
    //   180: invokeinterface 206 2 0
    //   185: astore 4
    //   187: aload_1
    //   188: iload 8
    //   190: invokeinterface 210 2 0
    //   195: lstore 10
    //   197: aload_1
    //   198: iload 9
    //   200: invokeinterface 210 2 0
    //   205: lstore 12
    //   207: aload 4
    //   209: invokevirtual 136	java/lang/String:length	()I
    //   212: ifle +153 -> 365
    //   215: aload_0
    //   216: getfield 127	j4/b:f	Ljava/lang/String;
    //   219: aload 4
    //   221: invokestatic 216	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   224: ifeq +45 -> 269
    //   227: invokestatic 222	java/lang/System:currentTimeMillis	()J
    //   230: lload 10
    //   232: lsub
    //   233: ldc2_w 223
    //   236: lcmp
    //   237: ifge +128 -> 365
    //   240: aload_0
    //   241: getfield 85	j4/b:d	Landroid/os/Handler;
    //   244: aload_0
    //   245: getfield 90	j4/b:g	Ljava/lang/Runnable;
    //   248: invokevirtual 228	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   251: aload_0
    //   252: getfield 85	j4/b:d	Landroid/os/Handler;
    //   255: aload_0
    //   256: getfield 90	j4/b:g	Ljava/lang/Runnable;
    //   259: ldc2_w 229
    //   262: invokevirtual 234	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   265: pop
    //   266: goto +99 -> 365
    //   269: lload 10
    //   271: lconst_0
    //   272: lcmp
    //   273: ifeq +62 -> 335
    //   276: lload 10
    //   278: lload 12
    //   280: ldc2_w 235
    //   283: lmul
    //   284: lcmp
    //   285: ifne +6 -> 291
    //   288: goto +47 -> 335
    //   291: aload_0
    //   292: aload 4
    //   294: invokespecial 238	j4/b:d	(Ljava/lang/String;)Z
    //   297: ifeq +68 -> 365
    //   300: aload_0
    //   301: getfield 85	j4/b:d	Landroid/os/Handler;
    //   304: aload_0
    //   305: getfield 90	j4/b:g	Ljava/lang/Runnable;
    //   308: invokevirtual 228	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   311: aload_0
    //   312: aload 4
    //   314: putfield 127	j4/b:f	Ljava/lang/String;
    //   317: aload_0
    //   318: getfield 85	j4/b:d	Landroid/os/Handler;
    //   321: aload_0
    //   322: getfield 90	j4/b:g	Ljava/lang/Runnable;
    //   325: ldc2_w 229
    //   328: invokevirtual 234	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   331: pop
    //   332: goto +33 -> 365
    //   335: aload_0
    //   336: getfield 85	j4/b:d	Landroid/os/Handler;
    //   339: aload_0
    //   340: getfield 90	j4/b:g	Ljava/lang/Runnable;
    //   343: invokevirtual 228	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   346: aload_0
    //   347: getfield 124	j4/b:e	Lj4/a;
    //   350: astore 4
    //   352: aload 4
    //   354: ifnull +11 -> 365
    //   357: aload 4
    //   359: aconst_null
    //   360: invokeinterface 243 2 0
    //   365: aload_1
    //   366: invokeinterface 192 1 0
    //   371: ifne +64 -> 435
    //   374: aload_1
    //   375: invokeinterface 195 1 0
    //   380: goto +55 -> 435
    //   383: astore_3
    //   384: aload_1
    //   385: astore 4
    //   387: aload_3
    //   388: astore_1
    //   389: goto +47 -> 436
    //   392: astore_3
    //   393: goto +10 -> 403
    //   396: astore_1
    //   397: goto +39 -> 436
    //   400: astore_3
    //   401: aload_2
    //   402: astore_1
    //   403: aload_1
    //   404: astore 4
    //   406: ldc 245
    //   408: aload_3
    //   409: invokevirtual 248	java/lang/Object:toString	()Ljava/lang/String;
    //   412: invokestatic 253	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   415: pop
    //   416: aload_1
    //   417: ifnull +18 -> 435
    //   420: aload_1
    //   421: invokeinterface 192 1 0
    //   426: ifne +9 -> 435
    //   429: aload_1
    //   430: invokeinterface 195 1 0
    //   435: return
    //   436: aload 4
    //   438: ifnull +20 -> 458
    //   441: aload 4
    //   443: invokeinterface 192 1 0
    //   448: ifne +10 -> 458
    //   451: aload 4
    //   453: invokeinterface 195 1 0
    //   458: aload_1
    //   459: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	460	0	this	b
    //   0	460	1	paramUri	Uri
    //   1	401	2	localObject1	Object
    //   3	73	3	localObject2	Object
    //   383	5	3	localObject3	Object
    //   392	1	3	localException1	java.lang.Exception
    //   400	9	3	localException2	java.lang.Exception
    //   5	447	4	localObject4	Object
    //   21	45	5	localBundle	android.os.Bundle
    //   124	3	6	bool	boolean
    //   155	24	7	j	int
    //   165	24	8	k	int
    //   175	24	9	m	int
    //   195	82	10	l1	long
    //   205	74	12	l2	long
    // Exception table:
    //   from	to	target	type
    //   118	126	383	finally
    //   147	266	383	finally
    //   291	332	383	finally
    //   335	352	383	finally
    //   357	365	383	finally
    //   118	126	392	java/lang/Exception
    //   147	266	392	java/lang/Exception
    //   291	332	392	java/lang/Exception
    //   335	352	392	java/lang/Exception
    //   357	365	392	java/lang/Exception
    //   7	15	396	finally
    //   18	23	396	finally
    //   26	31	396	finally
    //   34	43	396	finally
    //   46	54	396	finally
    //   57	72	396	finally
    //   78	94	396	finally
    //   406	416	396	finally
    //   7	15	400	java/lang/Exception
    //   18	23	400	java/lang/Exception
    //   26	31	400	java/lang/Exception
    //   34	43	400	java/lang/Exception
    //   46	54	400	java/lang/Exception
    //   57	72	400	java/lang/Exception
    //   78	94	400	java/lang/Exception
  }
  
  public void g(a parama)
  {
    if (this.e == parama) {
      try
      {
        if (this.e == parama) {
          this.e = null;
        }
      }
      finally {}
    }
  }
  
  public void h(a parama)
  {
    this.e = parama;
  }
  
  public void i()
  {
    ContentResolver localContentResolver = this.c;
    Uri localUri = MediaStore.Images.Media.INTERNAL_CONTENT_URI;
    int j = Build.VERSION.SDK_INT;
    boolean bool1 = true;
    boolean bool2;
    if (j >= 29) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localContentResolver.registerContentObserver(localUri, bool2, this.a);
    localContentResolver = this.c;
    localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    if (j >= 29) {
      bool2 = bool1;
    } else {
      bool2 = false;
    }
    localContentResolver.registerContentObserver(localUri, bool2, this.b);
  }
  
  public void j()
  {
    this.c.unregisterContentObserver(this.a);
    this.c.unregisterContentObserver(this.b);
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      if (b.a(b.this) != null)
      {
        String str = b.b(b.this);
        if ((str != null) && (str.length() > 0)) {
          b.a(b.this).a(str);
        }
      }
    }
  }
  
  private static class b
  {
    static b a = new b(null);
  }
  
  private class c
    extends ContentObserver
  {
    private Uri a;
    
    public c(Handler paramHandler, Uri paramUri)
    {
      super();
      this.a = paramUri;
    }
    
    public void onChange(boolean paramBoolean)
    {
      super.onChange(paramBoolean);
      if (b.a(b.this) != null) {
        b.c(b.this, this.a);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j4.b
 * JD-Core Version:    0.7.0.1
 */