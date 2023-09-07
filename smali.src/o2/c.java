package o2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video.Thumbnails;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import com.bumptech.glide.load.data.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class c
  implements com.bumptech.glide.load.data.d<InputStream>
{
  private final Uri a;
  private final e b;
  private InputStream c;
  
  c(Uri paramUri, e parame)
  {
    this.a = paramUri;
    this.b = parame;
  }
  
  private static c c(Context paramContext, Uri paramUri, d paramd)
  {
    com.bumptech.glide.load.engine.bitmap_recycle.b localb = com.bumptech.glide.b.c(paramContext).e();
    return new c(paramUri, new e(com.bumptech.glide.b.c(paramContext).j().g(), paramd, localb, paramContext.getContentResolver()));
  }
  
  public static c f(Context paramContext, Uri paramUri)
  {
    return c(paramContext, paramUri, new a(paramContext.getContentResolver()));
  }
  
  public static c g(Context paramContext, Uri paramUri)
  {
    return c(paramContext, paramUri, new b(paramContext.getContentResolver()));
  }
  
  private InputStream h()
    throws FileNotFoundException
  {
    InputStream localInputStream = this.b.d(this.a);
    int i;
    if (localInputStream != null) {
      i = this.b.a(this.a);
    } else {
      i = -1;
    }
    Object localObject = localInputStream;
    if (i != -1) {
      localObject = new g(localInputStream, i);
    }
    return localObject;
  }
  
  public Class<InputStream> a()
  {
    return InputStream.class;
  }
  
  public void b()
  {
    InputStream localInputStream = this.c;
    if (localInputStream != null) {}
    try
    {
      localInputStream.close();
      label13:
      return;
    }
    catch (IOException localIOException)
    {
      break label13;
    }
  }
  
  public void cancel() {}
  
  public DataSource d()
  {
    return DataSource.LOCAL;
  }
  
  public void e(Priority paramPriority, d.a<? super InputStream> parama)
  {
    try
    {
      paramPriority = h();
      this.c = paramPriority;
      parama.f(paramPriority);
    }
    catch (FileNotFoundException paramPriority)
    {
      if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
        Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", paramPriority);
      }
      parama.c(paramPriority);
    }
  }
  
  static class a
    implements d
  {
    private static final String[] b = { "_data" };
    private final ContentResolver a;
    
    a(ContentResolver paramContentResolver)
    {
      this.a = paramContentResolver;
    }
    
    public Cursor a(Uri paramUri)
    {
      paramUri = paramUri.getLastPathSegment();
      return this.a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND image_id = ?", new String[] { paramUri }, null);
    }
  }
  
  static class b
    implements d
  {
    private static final String[] b = { "_data" };
    private final ContentResolver a;
    
    b(ContentResolver paramContentResolver)
    {
      this.a = paramContentResolver;
    }
    
    public Cursor a(Uri paramUri)
    {
      paramUri = paramUri.getLastPathSegment();
      return this.a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND video_id = ?", new String[] { paramUri }, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o2.c
 * JD-Core Version:    0.7.0.1
 */