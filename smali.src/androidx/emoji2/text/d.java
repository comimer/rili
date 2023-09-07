package androidx.emoji2.text;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import n.b;

public class d
{
  private static final Object n = new Object();
  private static final Object o = new Object();
  private static volatile d p;
  private final ReadWriteLock a = new ReentrantReadWriteLock();
  private final Set<e> b;
  private volatile int c = 3;
  private final Handler d;
  private final b e;
  final g f;
  final boolean g;
  final boolean h;
  final int[] i;
  private final boolean j;
  private final int k;
  private final int l;
  private final d m;
  
  private d(c paramc)
  {
    this.g = paramc.b;
    this.h = paramc.c;
    this.i = paramc.d;
    this.j = paramc.f;
    this.k = paramc.g;
    this.f = paramc.a;
    this.l = paramc.h;
    this.m = paramc.i;
    this.d = new Handler(Looper.getMainLooper());
    b localb = new b();
    this.b = localb;
    Set localSet = paramc.e;
    if ((localSet != null) && (!localSet.isEmpty())) {
      localb.addAll(paramc.e);
    }
    this.e = new a(this);
    l();
  }
  
  public static d b()
  {
    synchronized (n)
    {
      d locald = p;
      boolean bool;
      if (locald != null) {
        bool = true;
      } else {
        bool = false;
      }
      androidx.core.util.h.i(bool, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
      return locald;
    }
  }
  
  public static boolean e(InputConnection paramInputConnection, Editable paramEditable, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return g.c(paramInputConnection, paramEditable, paramInt1, paramInt2, paramBoolean);
  }
  
  public static boolean f(Editable paramEditable, int paramInt, KeyEvent paramKeyEvent)
  {
    return g.d(paramEditable, paramInt, paramKeyEvent);
  }
  
  public static d g(c paramc)
  {
    d locald1 = p;
    d locald2 = locald1;
    if (locald1 == null) {
      synchronized (n)
      {
        locald1 = p;
        locald2 = locald1;
        if (locald1 == null)
        {
          locald2 = new androidx/emoji2/text/d;
          locald2.<init>(paramc);
          p = locald2;
        }
      }
    }
    return locald2;
  }
  
  public static boolean h()
  {
    boolean bool;
    if (p != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean j()
  {
    int i1 = d();
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    return bool;
  }
  
  private void l()
  {
    this.a.writeLock().lock();
    try
    {
      if (this.l == 0) {
        this.c = 0;
      }
      this.a.writeLock().unlock();
      if (d() == 0) {
        this.e.a();
      }
      return;
    }
    finally
    {
      this.a.writeLock().unlock();
    }
  }
  
  public int c()
  {
    return this.k;
  }
  
  public int d()
  {
    this.a.readLock().lock();
    try
    {
      int i1 = this.c;
      return i1;
    }
    finally
    {
      this.a.readLock().unlock();
    }
  }
  
  public boolean i()
  {
    return this.j;
  }
  
  public void k()
  {
    int i1 = this.l;
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    androidx.core.util.h.i(bool, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
    if (j()) {
      return;
    }
    this.a.writeLock().lock();
    try
    {
      i1 = this.c;
      if (i1 == 0) {
        return;
      }
      this.c = 0;
      this.a.writeLock().unlock();
      this.e.a();
      return;
    }
    finally
    {
      this.a.writeLock().unlock();
    }
  }
  
  void m(Throwable paramThrowable)
  {
    ArrayList localArrayList = new ArrayList();
    this.a.writeLock().lock();
    try
    {
      this.c = 2;
      localArrayList.addAll(this.b);
      this.b.clear();
      this.a.writeLock().unlock();
      this.d.post(new f(localArrayList, this.c, paramThrowable));
      return;
    }
    finally
    {
      this.a.writeLock().unlock();
    }
  }
  
  void n()
  {
    ArrayList localArrayList = new ArrayList();
    this.a.writeLock().lock();
    try
    {
      this.c = 1;
      localArrayList.addAll(this.b);
      this.b.clear();
      this.a.writeLock().unlock();
      this.d.post(new f(localArrayList, this.c));
      return;
    }
    finally
    {
      this.a.writeLock().unlock();
    }
  }
  
  public CharSequence o(CharSequence paramCharSequence)
  {
    int i1;
    if (paramCharSequence == null) {
      i1 = 0;
    } else {
      i1 = paramCharSequence.length();
    }
    return p(paramCharSequence, 0, i1);
  }
  
  public CharSequence p(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    return q(paramCharSequence, paramInt1, paramInt2, 2147483647);
  }
  
  public CharSequence q(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    return r(paramCharSequence, paramInt1, paramInt2, paramInt3, 0);
  }
  
  public CharSequence r(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    androidx.core.util.h.i(j(), "Not initialized yet");
    androidx.core.util.h.e(paramInt1, "start cannot be negative");
    androidx.core.util.h.e(paramInt2, "end cannot be negative");
    androidx.core.util.h.e(paramInt3, "maxEmojiCount cannot be negative");
    boolean bool1 = false;
    boolean bool2;
    if (paramInt1 <= paramInt2) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    androidx.core.util.h.b(bool2, "start should be <= than end");
    if (paramCharSequence == null) {
      return null;
    }
    if (paramInt1 <= paramCharSequence.length()) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    androidx.core.util.h.b(bool2, "start should be < than charSequence length");
    if (paramInt2 <= paramCharSequence.length()) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    androidx.core.util.h.b(bool2, "end should be < than charSequence length");
    CharSequence localCharSequence = paramCharSequence;
    if (paramCharSequence.length() != 0) {
      if (paramInt1 == paramInt2)
      {
        localCharSequence = paramCharSequence;
      }
      else
      {
        if (paramInt4 != 1)
        {
          bool2 = bool1;
          if (paramInt4 != 2) {
            bool2 = this.g;
          }
        }
        else
        {
          bool2 = true;
        }
        localCharSequence = this.e.b(paramCharSequence, paramInt1, paramInt2, paramInt3, bool2);
      }
    }
    return localCharSequence;
  }
  
  public void s(e parame)
  {
    androidx.core.util.h.h(parame, "initCallback cannot be null");
    this.a.writeLock().lock();
    try
    {
      if ((this.c != 1) && (this.c != 2))
      {
        this.b.add(parame);
      }
      else
      {
        Handler localHandler = this.d;
        f localf = new androidx/emoji2/text/d$f;
        localf.<init>(parame, this.c);
        localHandler.post(localf);
      }
      return;
    }
    finally
    {
      this.a.writeLock().unlock();
    }
  }
  
  public void t(e parame)
  {
    androidx.core.util.h.h(parame, "initCallback cannot be null");
    this.a.writeLock().lock();
    try
    {
      this.b.remove(parame);
      return;
    }
    finally
    {
      this.a.writeLock().unlock();
    }
  }
  
  public void u(EditorInfo paramEditorInfo)
  {
    if ((j()) && (paramEditorInfo != null))
    {
      if (paramEditorInfo.extras == null) {
        paramEditorInfo.extras = new Bundle();
      }
      this.e.c(paramEditorInfo);
    }
  }
  
  private static final class a
    extends d.b
  {
    private volatile g b;
    private volatile l c;
    
    a(d paramd)
    {
      super();
    }
    
    /* Error */
    void a()
    {
      // Byte code:
      //   0: new 9	androidx/emoji2/text/d$a$a
      //   3: astore_1
      //   4: aload_1
      //   5: aload_0
      //   6: invokespecial 22	androidx/emoji2/text/d$a$a:<init>	(Landroidx/emoji2/text/d$a;)V
      //   9: aload_0
      //   10: getfield 25	androidx/emoji2/text/d$b:a	Landroidx/emoji2/text/d;
      //   13: getfield 29	androidx/emoji2/text/d:f	Landroidx/emoji2/text/d$g;
      //   16: aload_1
      //   17: invokeinterface 34 2 0
      //   22: goto +12 -> 34
      //   25: astore_1
      //   26: aload_0
      //   27: getfield 25	androidx/emoji2/text/d$b:a	Landroidx/emoji2/text/d;
      //   30: aload_1
      //   31: invokevirtual 38	androidx/emoji2/text/d:m	(Ljava/lang/Throwable;)V
      //   34: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	35	0	this	a
      //   3	14	1	locala	a
      //   25	6	1	localThrowable	Throwable
      // Exception table:
      //   from	to	target	type
      //   0	22	25	finally
    }
    
    CharSequence b(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      return this.b.h(paramCharSequence, paramInt1, paramInt2, paramInt3, paramBoolean);
    }
    
    void c(EditorInfo paramEditorInfo)
    {
      paramEditorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", this.c.e());
      paramEditorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", this.a.g);
    }
    
    void d(l paraml)
    {
      if (paraml == null)
      {
        this.a.m(new IllegalArgumentException("metadataRepo cannot be null"));
        return;
      }
      this.c = paraml;
      l locall = this.c;
      paraml = new d.i();
      d.d locald = d.a(this.a);
      d locald1 = this.a;
      this.b = new g(locall, paraml, locald, locald1.h, locald1.i);
      this.a.n();
    }
    
    class a
      extends d.h
    {
      a() {}
      
      public void a(Throwable paramThrowable)
      {
        d.a.this.a.m(paramThrowable);
      }
      
      public void b(l paraml)
      {
        d.a.this.d(paraml);
      }
    }
  }
  
  private static class b
  {
    final d a;
    
    b(d paramd)
    {
      this.a = paramd;
    }
    
    void a()
    {
      throw null;
    }
    
    CharSequence b(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      throw null;
    }
    
    void c(EditorInfo paramEditorInfo)
    {
      throw null;
    }
  }
  
  public static abstract class c
  {
    final d.g a;
    boolean b;
    boolean c;
    int[] d;
    Set<d.e> e;
    boolean f;
    int g = -16711936;
    int h = 0;
    d.d i = new g.b();
    
    protected c(d.g paramg)
    {
      androidx.core.util.h.h(paramg, "metadataLoader cannot be null.");
      this.a = paramg;
    }
    
    protected final d.g a()
    {
      return this.a;
    }
    
    public c b(int paramInt)
    {
      this.h = paramInt;
      return this;
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3);
  }
  
  public static abstract class e
  {
    public void a(Throwable paramThrowable) {}
    
    public void b() {}
  }
  
  private static class f
    implements Runnable
  {
    private final List<d.e> a;
    private final Throwable b;
    private final int c;
    
    f(d.e parame, int paramInt)
    {
      this(Arrays.asList(new d.e[] { (d.e)androidx.core.util.h.h(parame, "initCallback cannot be null") }), paramInt, null);
    }
    
    f(Collection<d.e> paramCollection, int paramInt)
    {
      this(paramCollection, paramInt, null);
    }
    
    f(Collection<d.e> paramCollection, int paramInt, Throwable paramThrowable)
    {
      androidx.core.util.h.h(paramCollection, "initCallbacks cannot be null");
      this.a = new ArrayList(paramCollection);
      this.c = paramInt;
      this.b = paramThrowable;
    }
    
    public void run()
    {
      int i = this.a.size();
      int j = this.c;
      int k = 0;
      int m = 0;
      if (j != 1) {
        for (k = m; k < i; k++) {
          ((d.e)this.a.get(k)).a(this.b);
        }
      }
      while (k < i)
      {
        ((d.e)this.a.get(k)).b();
        k++;
      }
    }
  }
  
  public static abstract interface g
  {
    public abstract void a(d.h paramh);
  }
  
  public static abstract class h
  {
    public abstract void a(Throwable paramThrowable);
    
    public abstract void b(l paraml);
  }
  
  static class i
  {
    h a(f paramf)
    {
      return new n(paramf);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.d
 * JD-Core Version:    0.7.0.1
 */