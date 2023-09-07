package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class l<T>
  implements d<T>
{
  private final Uri a;
  private final ContentResolver b;
  private T c;
  
  public l(ContentResolver paramContentResolver, Uri paramUri)
  {
    this.b = paramContentResolver;
    this.a = paramUri;
  }
  
  public void b()
  {
    Object localObject = this.c;
    if (localObject != null) {}
    try
    {
      c(localObject);
      label14:
      return;
    }
    catch (IOException localIOException)
    {
      break label14;
    }
  }
  
  protected abstract void c(T paramT)
    throws IOException;
  
  public void cancel() {}
  
  public DataSource d()
  {
    return DataSource.LOCAL;
  }
  
  public final void e(Priority paramPriority, d.a<? super T> parama)
  {
    try
    {
      paramPriority = f(this.a, this.b);
      this.c = paramPriority;
      parama.f(paramPriority);
    }
    catch (FileNotFoundException paramPriority)
    {
      if (Log.isLoggable("LocalUriFetcher", 3)) {
        Log.d("LocalUriFetcher", "Failed to open Uri", paramPriority);
      }
      parama.c(paramPriority);
    }
  }
  
  protected abstract T f(Uri paramUri, ContentResolver paramContentResolver)
    throws FileNotFoundException;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.l
 * JD-Core Version:    0.7.0.1
 */