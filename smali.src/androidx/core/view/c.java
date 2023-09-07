package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.ContentInfo;
import android.view.ContentInfo.Builder;
import androidx.core.util.h;
import java.util.Objects;

public final class c
{
  private final f a;
  
  c(f paramf)
  {
    this.a = paramf;
  }
  
  static String a(int paramInt)
  {
    if ((paramInt & 0x1) != 0) {
      return "FLAG_CONVERT_TO_PLAIN_TEXT";
    }
    return String.valueOf(paramInt);
  }
  
  static String e(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt != 4)
            {
              if (paramInt != 5) {
                return String.valueOf(paramInt);
              }
              return "SOURCE_PROCESS_TEXT";
            }
            return "SOURCE_AUTOFILL";
          }
          return "SOURCE_DRAG_AND_DROP";
        }
        return "SOURCE_INPUT_METHOD";
      }
      return "SOURCE_CLIPBOARD";
    }
    return "SOURCE_APP";
  }
  
  public static c g(ContentInfo paramContentInfo)
  {
    return new c(new e(paramContentInfo));
  }
  
  public ClipData b()
  {
    return this.a.i();
  }
  
  public int c()
  {
    return this.a.j();
  }
  
  public int d()
  {
    return this.a.h();
  }
  
  public ContentInfo f()
  {
    ContentInfo localContentInfo1 = this.a.k();
    Objects.requireNonNull(localContentInfo1);
    ContentInfo localContentInfo2 = (ContentInfo)localContentInfo1;
    return localContentInfo1;
  }
  
  public String toString()
  {
    return this.a.toString();
  }
  
  public static final class a
  {
    private final c.c a;
    
    public a(ClipData paramClipData, int paramInt)
    {
      if (Build.VERSION.SDK_INT >= 31) {
        this.a = new c.b(paramClipData, paramInt);
      } else {
        this.a = new c.d(paramClipData, paramInt);
      }
    }
    
    public c a()
    {
      return this.a.build();
    }
    
    public a b(Bundle paramBundle)
    {
      this.a.setExtras(paramBundle);
      return this;
    }
    
    public a c(int paramInt)
    {
      this.a.b(paramInt);
      return this;
    }
    
    public a d(Uri paramUri)
    {
      this.a.a(paramUri);
      return this;
    }
  }
  
  private static final class b
    implements c.c
  {
    private final ContentInfo.Builder a;
    
    b(ClipData paramClipData, int paramInt)
    {
      this.a = new ContentInfo.Builder(paramClipData, paramInt);
    }
    
    public void a(Uri paramUri)
    {
      this.a.setLinkUri(paramUri);
    }
    
    public void b(int paramInt)
    {
      this.a.setFlags(paramInt);
    }
    
    public c build()
    {
      return new c(new c.e(this.a.build()));
    }
    
    public void setExtras(Bundle paramBundle)
    {
      this.a.setExtras(paramBundle);
    }
  }
  
  private static abstract interface c
  {
    public abstract void a(Uri paramUri);
    
    public abstract void b(int paramInt);
    
    public abstract c build();
    
    public abstract void setExtras(Bundle paramBundle);
  }
  
  private static final class d
    implements c.c
  {
    ClipData a;
    int b;
    int c;
    Uri d;
    Bundle e;
    
    d(ClipData paramClipData, int paramInt)
    {
      this.a = paramClipData;
      this.b = paramInt;
    }
    
    public void a(Uri paramUri)
    {
      this.d = paramUri;
    }
    
    public void b(int paramInt)
    {
      this.c = paramInt;
    }
    
    public c build()
    {
      return new c(new c.g(this));
    }
    
    public void setExtras(Bundle paramBundle)
    {
      this.e = paramBundle;
    }
  }
  
  private static final class e
    implements c.f
  {
    private final ContentInfo a;
    
    e(ContentInfo paramContentInfo)
    {
      this.a = ((ContentInfo)h.g(paramContentInfo));
    }
    
    public int h()
    {
      return this.a.getSource();
    }
    
    public ClipData i()
    {
      return this.a.getClip();
    }
    
    public int j()
    {
      return this.a.getFlags();
    }
    
    public ContentInfo k()
    {
      return this.a;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ContentInfoCompat{");
      localStringBuilder.append(this.a);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
  
  private static abstract interface f
  {
    public abstract int h();
    
    public abstract ClipData i();
    
    public abstract int j();
    
    public abstract ContentInfo k();
  }
  
  private static final class g
    implements c.f
  {
    private final ClipData a;
    private final int b;
    private final int c;
    private final Uri d;
    private final Bundle e;
    
    g(c.d paramd)
    {
      this.a = ((ClipData)h.g(paramd.a));
      this.b = h.c(paramd.b, 0, 5, "source");
      this.c = h.f(paramd.c, 1);
      this.d = paramd.d;
      this.e = paramd.e;
    }
    
    public int h()
    {
      return this.b;
    }
    
    public ClipData i()
    {
      return this.a;
    }
    
    public int j()
    {
      return this.c;
    }
    
    public ContentInfo k()
    {
      return null;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ContentInfoCompat{clip=");
      localStringBuilder.append(this.a.getDescription());
      localStringBuilder.append(", source=");
      localStringBuilder.append(c.e(this.b));
      localStringBuilder.append(", flags=");
      localStringBuilder.append(c.a(this.c));
      Object localObject = this.d;
      String str = "";
      if (localObject == null)
      {
        localObject = "";
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(", hasLinkUri(");
        ((StringBuilder)localObject).append(this.d.toString().length());
        ((StringBuilder)localObject).append(")");
        localObject = ((StringBuilder)localObject).toString();
      }
      localStringBuilder.append((String)localObject);
      if (this.e == null) {
        localObject = str;
      } else {
        localObject = ", hasExtras";
      }
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.c
 * JD-Core Version:    0.7.0.1
 */