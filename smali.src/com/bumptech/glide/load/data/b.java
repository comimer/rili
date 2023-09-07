package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

public abstract class b<T>
  implements d<T>
{
  private final String a;
  private final AssetManager b;
  private T c;
  
  public b(AssetManager paramAssetManager, String paramString)
  {
    this.b = paramAssetManager;
    this.a = paramString;
  }
  
  public void b()
  {
    Object localObject = this.c;
    if (localObject == null) {
      return;
    }
    try
    {
      c(localObject);
      label15:
      return;
    }
    catch (IOException localIOException)
    {
      break label15;
    }
  }
  
  protected abstract void c(T paramT)
    throws IOException;
  
  public void cancel() {}
  
  public DataSource d()
  {
    return DataSource.LOCAL;
  }
  
  public void e(Priority paramPriority, d.a<? super T> parama)
  {
    try
    {
      paramPriority = f(this.b, this.a);
      this.c = paramPriority;
      parama.f(paramPriority);
    }
    catch (IOException paramPriority)
    {
      if (Log.isLoggable("AssetPathFetcher", 3)) {
        Log.d("AssetPathFetcher", "Failed to load data from asset manager", paramPriority);
      }
      parama.c(paramPriority);
    }
  }
  
  protected abstract T f(AssetManager paramAssetManager, String paramString)
    throws IOException;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.b
 * JD-Core Version:    0.7.0.1
 */