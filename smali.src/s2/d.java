package s2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import r2.n;
import r2.n.a;
import r2.o;
import r2.r;

public final class d<DataT>
  implements n<Uri, DataT>
{
  private final Context a;
  private final n<File, DataT> b;
  private final n<Uri, DataT> c;
  private final Class<DataT> d;
  
  d(Context paramContext, n<File, DataT> paramn, n<Uri, DataT> paramn1, Class<DataT> paramClass)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramn;
    this.c = paramn1;
    this.d = paramClass;
  }
  
  public n.a<DataT> c(Uri paramUri, int paramInt1, int paramInt2, n2.d paramd)
  {
    return new n.a(new e3.b(paramUri), new d(this.a, this.b, this.c, paramUri, paramInt1, paramInt2, paramd, this.d));
  }
  
  public boolean d(Uri paramUri)
  {
    boolean bool;
    if ((Build.VERSION.SDK_INT >= 29) && (o2.b.b(paramUri))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static abstract class a<DataT>
    implements o<Uri, DataT>
  {
    private final Context a;
    private final Class<DataT> b;
    
    a(Context paramContext, Class<DataT> paramClass)
    {
      this.a = paramContext;
      this.b = paramClass;
    }
    
    public final n<Uri, DataT> b(r paramr)
    {
      return new d(this.a, paramr.d(File.class, this.b), paramr.d(Uri.class, this.b), this.b);
    }
  }
  
  public static final class b
    extends d.a<ParcelFileDescriptor>
  {
    public b(Context paramContext)
    {
      super(ParcelFileDescriptor.class);
    }
  }
  
  public static final class c
    extends d.a<InputStream>
  {
    public c(Context paramContext)
    {
      super(InputStream.class);
    }
  }
  
  private static final class d<DataT>
    implements com.bumptech.glide.load.data.d<DataT>
  {
    private static final String[] k = { "_data" };
    private final Context a;
    private final n<File, DataT> b;
    private final n<Uri, DataT> c;
    private final Uri d;
    private final int e;
    private final int f;
    private final n2.d g;
    private final Class<DataT> h;
    private volatile boolean i;
    private volatile com.bumptech.glide.load.data.d<DataT> j;
    
    d(Context paramContext, n<File, DataT> paramn, n<Uri, DataT> paramn1, Uri paramUri, int paramInt1, int paramInt2, n2.d paramd, Class<DataT> paramClass)
    {
      this.a = paramContext.getApplicationContext();
      this.b = paramn;
      this.c = paramn1;
      this.d = paramUri;
      this.e = paramInt1;
      this.f = paramInt2;
      this.g = paramd;
      this.h = paramClass;
    }
    
    private n.a<DataT> c()
      throws FileNotFoundException
    {
      if (e.a()) {
        return this.b.a(h(this.d), this.e, this.f, this.g);
      }
      Uri localUri;
      if (g()) {
        localUri = f.a(this.d);
      } else {
        localUri = this.d;
      }
      return this.c.a(localUri, this.e, this.f, this.g);
    }
    
    private com.bumptech.glide.load.data.d<DataT> f()
      throws FileNotFoundException
    {
      Object localObject = c();
      if (localObject != null) {
        localObject = ((n.a)localObject).c;
      } else {
        localObject = null;
      }
      return localObject;
    }
    
    private boolean g()
    {
      boolean bool;
      if (this.a.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private File h(Uri paramUri)
      throws FileNotFoundException
    {
      Object localObject1 = null;
      try
      {
        Cursor localCursor = this.a.getContentResolver().query(paramUri, k, null, null, null);
        if (localCursor != null)
        {
          localObject1 = localCursor;
          if (localCursor.moveToFirst())
          {
            localObject1 = localCursor;
            localObject2 = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
            localObject1 = localCursor;
            if (!TextUtils.isEmpty((CharSequence)localObject2))
            {
              localObject1 = localCursor;
              paramUri = new File((String)localObject2);
              localCursor.close();
              return paramUri;
            }
            localObject1 = localCursor;
            localObject2 = new java/io/FileNotFoundException;
            localObject1 = localCursor;
            localObject3 = new java/lang/StringBuilder;
            localObject1 = localCursor;
            ((StringBuilder)localObject3).<init>();
            localObject1 = localCursor;
            ((StringBuilder)localObject3).append("File path was empty in media store for: ");
            localObject1 = localCursor;
            ((StringBuilder)localObject3).append(paramUri);
            localObject1 = localCursor;
            ((FileNotFoundException)localObject2).<init>(((StringBuilder)localObject3).toString());
            localObject1 = localCursor;
            throw ((Throwable)localObject2);
          }
        }
        localObject1 = localCursor;
        Object localObject3 = new java/io/FileNotFoundException;
        localObject1 = localCursor;
        Object localObject2 = new java/lang/StringBuilder;
        localObject1 = localCursor;
        ((StringBuilder)localObject2).<init>();
        localObject1 = localCursor;
        ((StringBuilder)localObject2).append("Failed to media store entry for: ");
        localObject1 = localCursor;
        ((StringBuilder)localObject2).append(paramUri);
        localObject1 = localCursor;
        ((FileNotFoundException)localObject3).<init>(((StringBuilder)localObject2).toString());
        localObject1 = localCursor;
        throw ((Throwable)localObject3);
      }
      finally
      {
        if (localObject1 != null) {
          localObject1.close();
        }
      }
    }
    
    public Class<DataT> a()
    {
      return this.h;
    }
    
    public void b()
    {
      com.bumptech.glide.load.data.d locald = this.j;
      if (locald != null) {
        locald.b();
      }
    }
    
    public void cancel()
    {
      this.i = true;
      com.bumptech.glide.load.data.d locald = this.j;
      if (locald != null) {
        locald.cancel();
      }
    }
    
    public DataSource d()
    {
      return DataSource.LOCAL;
    }
    
    public void e(Priority paramPriority, com.bumptech.glide.load.data.d.a<? super DataT> parama)
    {
      try
      {
        Object localObject = f();
        if (localObject == null)
        {
          paramPriority = new java/lang/IllegalArgumentException;
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("Failed to build fetcher for: ");
          ((StringBuilder)localObject).append(this.d);
          paramPriority.<init>(((StringBuilder)localObject).toString());
          parama.c(paramPriority);
          return;
        }
        this.j = ((com.bumptech.glide.load.data.d)localObject);
        if (this.i) {
          cancel();
        } else {
          ((com.bumptech.glide.load.data.d)localObject).e(paramPriority, parama);
        }
      }
      catch (FileNotFoundException paramPriority)
      {
        parama.c(paramPriority);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s2.d
 * JD-Core Version:    0.7.0.1
 */