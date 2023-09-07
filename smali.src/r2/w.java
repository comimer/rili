package r2;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.data.a;
import com.bumptech.glide.load.data.i;
import e3.b;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class w<Data>
  implements n<Uri, Data>
{
  private static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "file", "android.resource", "content" })));
  private final c<Data> a;
  
  public w(c<Data> paramc)
  {
    this.a = paramc;
  }
  
  public n.a<Data> c(Uri paramUri, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new b(paramUri), this.a.a(paramUri));
  }
  
  public boolean d(Uri paramUri)
  {
    return b.contains(paramUri.getScheme());
  }
  
  public static final class a
    implements o<Uri, AssetFileDescriptor>, w.c<AssetFileDescriptor>
  {
    private final ContentResolver a;
    
    public a(ContentResolver paramContentResolver)
    {
      this.a = paramContentResolver;
    }
    
    public com.bumptech.glide.load.data.d<AssetFileDescriptor> a(Uri paramUri)
    {
      return new a(this.a, paramUri);
    }
    
    public n<Uri, AssetFileDescriptor> b(r paramr)
    {
      return new w(this);
    }
  }
  
  public static class b
    implements o<Uri, ParcelFileDescriptor>, w.c<ParcelFileDescriptor>
  {
    private final ContentResolver a;
    
    public b(ContentResolver paramContentResolver)
    {
      this.a = paramContentResolver;
    }
    
    public com.bumptech.glide.load.data.d<ParcelFileDescriptor> a(Uri paramUri)
    {
      return new i(this.a, paramUri);
    }
    
    public n<Uri, ParcelFileDescriptor> b(r paramr)
    {
      return new w(this);
    }
  }
  
  public static abstract interface c<Data>
  {
    public abstract com.bumptech.glide.load.data.d<Data> a(Uri paramUri);
  }
  
  public static class d
    implements o<Uri, InputStream>, w.c<InputStream>
  {
    private final ContentResolver a;
    
    public d(ContentResolver paramContentResolver)
    {
      this.a = paramContentResolver;
    }
    
    public com.bumptech.glide.load.data.d<InputStream> a(Uri paramUri)
    {
      return new com.bumptech.glide.load.data.n(this.a, paramUri);
    }
    
    public n<Uri, InputStream> b(r paramr)
    {
      return new w(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.w
 * JD-Core Version:    0.7.0.1
 */