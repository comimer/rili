package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.core.os.g;
import androidx.core.util.h;
import androidx.emoji2.text.flatbuffer.b;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class l
{
  private final b a;
  private final char[] b;
  private final a c;
  private final Typeface d;
  
  private l(Typeface paramTypeface, b paramb)
  {
    this.d = paramTypeface;
    this.a = paramb;
    this.c = new a(1024);
    this.b = new char[paramb.k() * 2];
    a(paramb);
  }
  
  private void a(b paramb)
  {
    int i = paramb.k();
    for (int j = 0; j < i; j++)
    {
      paramb = new f(this, j);
      Character.toChars(paramb.f(), this.b, j * 2);
      h(paramb);
    }
  }
  
  public static l b(Typeface paramTypeface, ByteBuffer paramByteBuffer)
    throws IOException
  {
    try
    {
      g.a("EmojiCompat.MetadataRepo.create");
      paramTypeface = new l(paramTypeface, k.b(paramByteBuffer));
      return paramTypeface;
    }
    finally
    {
      g.b();
    }
  }
  
  public char[] c()
  {
    return this.b;
  }
  
  public b d()
  {
    return this.a;
  }
  
  int e()
  {
    return this.a.l();
  }
  
  a f()
  {
    return this.c;
  }
  
  Typeface g()
  {
    return this.d;
  }
  
  void h(f paramf)
  {
    h.h(paramf, "emoji metadata cannot be null");
    boolean bool;
    if (paramf.c() > 0) {
      bool = true;
    } else {
      bool = false;
    }
    h.b(bool, "invalid metadata codepoint length");
    this.c.c(paramf, 0, paramf.c() - 1);
  }
  
  static class a
  {
    private final SparseArray<a> a;
    private f b;
    
    private a()
    {
      this(1);
    }
    
    a(int paramInt)
    {
      this.a = new SparseArray(paramInt);
    }
    
    a a(int paramInt)
    {
      Object localObject = this.a;
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = (a)((SparseArray)localObject).get(paramInt);
      }
      return localObject;
    }
    
    final f b()
    {
      return this.b;
    }
    
    void c(f paramf, int paramInt1, int paramInt2)
    {
      a locala1 = a(paramf.b(paramInt1));
      a locala2 = locala1;
      if (locala1 == null)
      {
        locala2 = new a();
        this.a.put(paramf.b(paramInt1), locala2);
      }
      if (paramInt2 > paramInt1) {
        locala2.c(paramf, paramInt1 + 1, paramInt2);
      } else {
        locala2.b = paramf;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.l
 * JD-Core Version:    0.7.0.1
 */