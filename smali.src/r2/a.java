package r2;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.data.h;
import com.bumptech.glide.load.data.m;
import e3.b;
import java.io.InputStream;
import java.util.List;

public class a<Data>
  implements n<Uri, Data>
{
  private static final int c = 22;
  private final AssetManager a;
  private final a<Data> b;
  
  public a(AssetManager paramAssetManager, a<Data> parama)
  {
    this.a = paramAssetManager;
    this.b = parama;
  }
  
  public n.a<Data> c(Uri paramUri, int paramInt1, int paramInt2, n2.d paramd)
  {
    paramd = paramUri.toString().substring(c);
    return new n.a(new b(paramUri), this.b.a(this.a, paramd));
  }
  
  public boolean d(Uri paramUri)
  {
    boolean bool1 = "file".equals(paramUri.getScheme());
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      bool3 = bool2;
      if (!paramUri.getPathSegments().isEmpty())
      {
        bool3 = bool2;
        if ("android_asset".equals(paramUri.getPathSegments().get(0))) {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public static abstract interface a<Data>
  {
    public abstract com.bumptech.glide.load.data.d<Data> a(AssetManager paramAssetManager, String paramString);
  }
  
  public static class b
    implements o<Uri, ParcelFileDescriptor>, a.a<ParcelFileDescriptor>
  {
    private final AssetManager a;
    
    public b(AssetManager paramAssetManager)
    {
      this.a = paramAssetManager;
    }
    
    public com.bumptech.glide.load.data.d<ParcelFileDescriptor> a(AssetManager paramAssetManager, String paramString)
    {
      return new h(paramAssetManager, paramString);
    }
    
    public n<Uri, ParcelFileDescriptor> b(r paramr)
    {
      return new a(this.a, this);
    }
  }
  
  public static class c
    implements o<Uri, InputStream>, a.a<InputStream>
  {
    private final AssetManager a;
    
    public c(AssetManager paramAssetManager)
    {
      this.a = paramAssetManager;
    }
    
    public com.bumptech.glide.load.data.d<InputStream> a(AssetManager paramAssetManager, String paramString)
    {
      return new m(paramAssetManager, paramString);
    }
    
    public n<Uri, InputStream> b(r paramr)
    {
      return new a(this.a, this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.a
 * JD-Core Version:    0.7.0.1
 */