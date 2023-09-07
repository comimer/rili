package com.xiaomi.passport.ui.settings;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import b7.r;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.v;
import com.xiaomi.passport.uicontroller.a;
import com.xiaomi.passport.uicontroller.a.b;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import n5.c;
import n5.d;
import n5.g;

public class CaptchaView
  extends FrameLayout
{
  private ImageView a;
  private boolean b;
  private String c = "https://account.xiaomi.com/pass/getCode?icodeType=login&0.07169544044424958";
  private String d;
  private String e;
  private a<Pair<Bitmap, String>> f;
  private a<Boolean> g;
  
  public CaptchaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    p(paramContext);
  }
  
  public CaptchaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p(paramContext);
  }
  
  /* Error */
  private Pair<File, String> k(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: aconst_null
    //   2: aconst_null
    //   3: invokestatic 94	a6/l:e	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)La6/k$g;
    //   6: astore_2
    //   7: goto +38 -> 45
    //   10: astore_2
    //   11: ldc 96
    //   13: ldc 98
    //   15: aload_2
    //   16: invokestatic 103	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   19: goto +24 -> 43
    //   22: astore_2
    //   23: ldc 96
    //   25: ldc 98
    //   27: aload_2
    //   28: invokestatic 103	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   31: goto +12 -> 43
    //   34: astore_2
    //   35: ldc 96
    //   37: ldc 98
    //   39: aload_2
    //   40: invokestatic 103	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   43: aconst_null
    //   44: astore_2
    //   45: aload_2
    //   46: ifnonnull +5 -> 51
    //   49: aconst_null
    //   50: areturn
    //   51: aload_1
    //   52: aload_2
    //   53: invokevirtual 108	a6/k$g:i	()Ljava/io/InputStream;
    //   56: ldc 110
    //   58: invokestatic 115	x5/c:d	(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    //   61: aload_2
    //   62: ldc 117
    //   64: invokevirtual 122	a6/k$d:b	(Ljava/lang/String;)Ljava/lang/String;
    //   67: invokestatic 128	android/util/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   70: astore_1
    //   71: aload_2
    //   72: invokevirtual 130	a6/k$g:h	()V
    //   75: aload_1
    //   76: areturn
    //   77: astore_1
    //   78: goto +18 -> 96
    //   81: astore_1
    //   82: ldc 96
    //   84: ldc 98
    //   86: aload_1
    //   87: invokestatic 103	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   90: aload_2
    //   91: invokevirtual 130	a6/k$g:h	()V
    //   94: aconst_null
    //   95: areturn
    //   96: aload_2
    //   97: invokevirtual 130	a6/k$g:h	()V
    //   100: aload_1
    //   101: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	this	CaptchaView
    //   0	102	1	paramContext	Context
    //   0	102	2	paramString	String
    // Exception table:
    //   from	to	target	type
    //   0	7	10	com/xiaomi/accountsdk/request/AuthenticationFailureException
    //   0	7	22	com/xiaomi/accountsdk/request/AccessDeniedException
    //   0	7	34	java/io/IOException
    //   51	71	77	finally
    //   82	90	77	finally
    //   51	71	81	java/io/IOException
  }
  
  private void l()
  {
    a locala = this.f;
    if (locala != null)
    {
      locala.cancel(true);
      this.f = null;
    }
    locala = this.g;
    if (locala != null)
    {
      locala.cancel(true);
      this.g = null;
    }
  }
  
  private void m(final String paramString)
  {
    Object localObject = this.g;
    if ((localObject != null) && (!((FutureTask)localObject).isDone()))
    {
      b.g("CaptchaView", "pre speaker task is doing");
      return;
    }
    localObject = new MediaPlayer();
    ((MediaPlayer)localObject).setOnCompletionListener(new e());
    f localf = new f((MediaPlayer)localObject);
    this.g = new a(new g(paramString, (MediaPlayer)localObject), localf);
    r.a().execute(this.g);
  }
  
  private void n(final String paramString)
  {
    Object localObject = this.f;
    if ((localObject != null) && (!((FutureTask)localObject).isDone()))
    {
      b.g("CaptchaView", "pre image task passport_input_speaker_capcha_hintis doing");
      return;
    }
    final Context localContext = getContext().getApplicationContext();
    final int i = getResources().getDimensionPixelSize(c.b);
    final int j = getResources().getDimensionPixelSize(c.a);
    localObject = new c();
    this.f = new a(new d(localContext, paramString, i, j), (a.b)localObject);
    r.a().execute(this.f);
  }
  
  private static Bitmap o(String paramString, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString);
    paramString = Bitmap.createScaledBitmap(localBitmap, paramInt1, paramInt2, true);
    if (localBitmap != paramString) {
      localBitmap.recycle();
    }
    return paramString;
  }
  
  private void p(Context paramContext)
  {
    Object localObject = new ImageView(paramContext);
    this.a = ((ImageView)localObject);
    addView((View)localObject, -1, -1);
    this.b = v.a(paramContext);
    paramContext = this.a;
    localObject = getResources();
    int i;
    if (this.b) {
      i = g.K0;
    } else {
      i = g.J0;
    }
    paramContext.setContentDescription(((Resources)localObject).getString(i));
    this.a.setOnClickListener(new a());
  }
  
  private void r()
  {
    post(new b());
  }
  
  public String getHint()
  {
    Context localContext = getContext();
    int i;
    if (this.b) {
      i = g.k0;
    } else {
      i = g.j0;
    }
    return localContext.getString(i);
  }
  
  public String getIck()
  {
    return this.e;
  }
  
  protected void onDetachedFromWindow()
  {
    l();
    super.onDetachedFromWindow();
  }
  
  public void q(String paramString1, String paramString2)
  {
    this.d = paramString2;
    this.c = paramString1;
    r();
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      CaptchaView.a(CaptchaView.this);
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      CaptchaView localCaptchaView;
      if (CaptchaView.b(CaptchaView.this))
      {
        localCaptchaView = CaptchaView.this;
        CaptchaView.d(localCaptchaView, CaptchaView.c(localCaptchaView));
      }
      else
      {
        localCaptchaView = CaptchaView.this;
        CaptchaView.f(localCaptchaView, CaptchaView.e(localCaptchaView));
      }
    }
  }
  
  class c
    extends a.b<Pair<Bitmap, String>>
  {
    c() {}
    
    public void a(a<Pair<Bitmap, String>> parama)
    {
      try
      {
        parama = (Pair)parama.get();
        if (parama == null) {
          return;
        }
        CaptchaView.g(CaptchaView.this, (String)parama.second);
        ImageView localImageView = CaptchaView.h(CaptchaView.this);
        BitmapDrawable localBitmapDrawable = new android/graphics/drawable/BitmapDrawable;
        localBitmapDrawable.<init>((Bitmap)parama.first);
        localImageView.setBackground(localBitmapDrawable);
      }
      catch (ExecutionException parama)
      {
        b.h("CaptchaView", "downloadCaptchaImage", parama);
      }
      catch (InterruptedException parama)
      {
        b.h("CaptchaView", "downloadCaptchaImage", parama);
      }
    }
  }
  
  class d
    implements Callable<Pair<Bitmap, String>>
  {
    d(Context paramContext, String paramString, int paramInt1, int paramInt2) {}
    
    public Pair<Bitmap, String> a()
      throws Exception
    {
      Pair localPair = CaptchaView.i(CaptchaView.this, localContext, paramString);
      if (localPair == null)
      {
        b.g("CaptchaView", "image captcha result is null");
        return null;
      }
      return Pair.create(CaptchaView.j(((File)localPair.first).getPath(), i, j), (String)localPair.second);
    }
  }
  
  class e
    implements MediaPlayer.OnCompletionListener
  {
    e() {}
    
    public void onCompletion(MediaPlayer paramMediaPlayer)
    {
      paramMediaPlayer.release();
      if (CaptchaView.b(CaptchaView.this)) {
        CaptchaView.h(CaptchaView.this).setBackgroundResource(d.j);
      }
    }
  }
  
  class f
    extends a.b<Boolean>
  {
    f(MediaPlayer paramMediaPlayer) {}
    
    /* Error */
    public void a(a<Boolean> parama)
    {
      // Byte code:
      //   0: iconst_0
      //   1: istore_2
      //   2: iconst_0
      //   3: istore_3
      //   4: iconst_0
      //   5: istore 4
      //   7: aload_1
      //   8: invokevirtual 35	java/util/concurrent/FutureTask:get	()Ljava/lang/Object;
      //   11: checkcast 37	java/lang/Boolean
      //   14: invokevirtual 41	java/lang/Boolean:booleanValue	()Z
      //   17: istore 5
      //   19: iload 5
      //   21: ifeq +46 -> 67
      //   24: iload 5
      //   26: istore 4
      //   28: iload 5
      //   30: istore_2
      //   31: iload 5
      //   33: istore_3
      //   34: aload_0
      //   35: getfield 18	com/xiaomi/passport/ui/settings/CaptchaView$f:b	Lcom/xiaomi/passport/ui/settings/CaptchaView;
      //   38: invokestatic 45	com/xiaomi/passport/ui/settings/CaptchaView:h	(Lcom/xiaomi/passport/ui/settings/CaptchaView;)Landroid/widget/ImageView;
      //   41: getstatic 51	n5/d:i	I
      //   44: invokevirtual 57	android/view/View:setBackgroundResource	(I)V
      //   47: iload 5
      //   49: istore 4
      //   51: iload 5
      //   53: istore_2
      //   54: iload 5
      //   56: istore_3
      //   57: aload_0
      //   58: getfield 20	com/xiaomi/passport/ui/settings/CaptchaView$f:a	Landroid/media/MediaPlayer;
      //   61: invokevirtual 62	android/media/MediaPlayer:start	()V
      //   64: goto +27 -> 91
      //   67: iload 5
      //   69: istore 4
      //   71: iload 5
      //   73: istore_2
      //   74: iload 5
      //   76: istore_3
      //   77: aload_0
      //   78: getfield 18	com/xiaomi/passport/ui/settings/CaptchaView$f:b	Lcom/xiaomi/passport/ui/settings/CaptchaView;
      //   81: invokevirtual 66	android/view/View:getContext	()Landroid/content/Context;
      //   84: getstatic 71	n5/g:k0	I
      //   87: iconst_1
      //   88: invokestatic 76	z6/a:b	(Landroid/content/Context;II)V
      //   91: iload 5
      //   93: ifne +52 -> 145
      //   96: goto +42 -> 138
      //   99: astore_1
      //   100: goto +46 -> 146
      //   103: astore_1
      //   104: iload_2
      //   105: istore 4
      //   107: ldc 78
      //   109: ldc 80
      //   111: aload_1
      //   112: invokestatic 85	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   115: iload_2
      //   116: ifne +29 -> 145
      //   119: goto +19 -> 138
      //   122: astore_1
      //   123: iload_3
      //   124: istore 4
      //   126: ldc 78
      //   128: ldc 80
      //   130: aload_1
      //   131: invokestatic 85	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   134: iload_3
      //   135: ifne +10 -> 145
      //   138: aload_0
      //   139: getfield 20	com/xiaomi/passport/ui/settings/CaptchaView$f:a	Landroid/media/MediaPlayer;
      //   142: invokevirtual 88	android/media/MediaPlayer:release	()V
      //   145: return
      //   146: iload 4
      //   148: ifne +10 -> 158
      //   151: aload_0
      //   152: getfield 20	com/xiaomi/passport/ui/settings/CaptchaView$f:a	Landroid/media/MediaPlayer;
      //   155: invokevirtual 88	android/media/MediaPlayer:release	()V
      //   158: aload_1
      //   159: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	160	0	this	f
      //   0	160	1	parama	a<Boolean>
      //   1	115	2	i	int
      //   3	132	3	j	int
      //   5	142	4	k	int
      //   17	75	5	bool	boolean
      // Exception table:
      //   from	to	target	type
      //   7	19	99	finally
      //   34	47	99	finally
      //   57	64	99	finally
      //   77	91	99	finally
      //   107	115	99	finally
      //   126	134	99	finally
      //   7	19	103	java/util/concurrent/ExecutionException
      //   34	47	103	java/util/concurrent/ExecutionException
      //   57	64	103	java/util/concurrent/ExecutionException
      //   77	91	103	java/util/concurrent/ExecutionException
      //   7	19	122	java/lang/InterruptedException
      //   34	47	122	java/lang/InterruptedException
      //   57	64	122	java/lang/InterruptedException
      //   77	91	122	java/lang/InterruptedException
    }
  }
  
  class g
    implements Callable<Boolean>
  {
    g(String paramString, MediaPlayer paramMediaPlayer) {}
    
    public Boolean a()
      throws Exception
    {
      Context localContext = CaptchaView.this.getContext().getApplicationContext();
      Pair localPair = CaptchaView.i(CaptchaView.this, localContext, paramString);
      if (localPair == null)
      {
        b.g("CaptchaView", "speaker captcha null");
        return Boolean.FALSE;
      }
      this.b.setDataSource(localContext, Uri.fromFile((File)localPair.first));
      this.b.prepare();
      CaptchaView.g(CaptchaView.this, (String)localPair.second);
      return Boolean.TRUE;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.settings.CaptchaView
 * JD-Core Version:    0.7.0.1
 */