package r2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import java.io.File;
import java.io.FileNotFoundException;

public final class k
  implements n<Uri, File>
{
  private final Context a;
  
  public k(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public n.a<File> c(Uri paramUri, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new e3.b(paramUri), new b(this.a, paramUri));
  }
  
  public boolean d(Uri paramUri)
  {
    return o2.b.b(paramUri);
  }
  
  public static final class a
    implements o<Uri, File>
  {
    private final Context a;
    
    public a(Context paramContext)
    {
      this.a = paramContext;
    }
    
    public n<Uri, File> b(r paramr)
    {
      return new k(this.a);
    }
  }
  
  private static class b
    implements com.bumptech.glide.load.data.d<File>
  {
    private static final String[] c = { "_data" };
    private final Context a;
    private final Uri b;
    
    b(Context paramContext, Uri paramUri)
    {
      this.a = paramContext;
      this.b = paramUri;
    }
    
    public Class<File> a()
    {
      return File.class;
    }
    
    public void b() {}
    
    public void cancel() {}
    
    public DataSource d()
    {
      return DataSource.LOCAL;
    }
    
    public void e(Priority paramPriority, d.a<? super File> parama)
    {
      Cursor localCursor = this.a.getContentResolver().query(this.b, c, null, null, null);
      paramPriority = null;
      Object localObject = null;
      if (localCursor != null) {
        paramPriority = localObject;
      }
      try
      {
        if (localCursor.moveToFirst()) {
          paramPriority = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
        }
        localCursor.close();
      }
      finally
      {
        localCursor.close();
      }
      paramPriority = new StringBuilder();
      paramPriority.append("Failed to find file path for: ");
      paramPriority.append(this.b);
      parama.c(new FileNotFoundException(paramPriority.toString()));
      return;
      parama.f(new File(paramPriority));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.k
 * JD-Core Version:    0.7.0.1
 */