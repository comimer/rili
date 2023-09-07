package p2;

import android.content.Context;
import java.io.File;

public final class f
  extends d
{
  public f(Context paramContext)
  {
    this(paramContext, "image_manager_disk_cache", 262144000L);
  }
  
  public f(Context paramContext, final String paramString, long paramLong)
  {
    super(new a(paramContext, paramString), paramLong);
  }
  
  class a
    implements d.a
  {
    a(String paramString) {}
    
    public File a()
    {
      File localFile = f.this.getCacheDir();
      if (localFile == null) {
        return null;
      }
      if (paramString != null) {
        return new File(localFile, paramString);
      }
      return localFile;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p2.f
 * JD-Core Version:    0.7.0.1
 */