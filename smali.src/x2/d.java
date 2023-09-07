package x2;

import android.util.Log;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.s;
import f3.a;
import java.io.File;
import java.io.IOException;
import n2.f;

public class d
  implements f<c>
{
  public EncodeStrategy a(n2.d paramd)
  {
    return EncodeStrategy.SOURCE;
  }
  
  public boolean c(s<c> params, File paramFile, n2.d paramd)
  {
    params = (c)params.get();
    boolean bool;
    try
    {
      a.e(params.c(), paramFile);
      bool = true;
    }
    catch (IOException params)
    {
      if (Log.isLoggable("GifEncoder", 5)) {
        Log.w("GifEncoder", "Failed to encode GIF drawable data", params);
      }
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.d
 * JD-Core Version:    0.7.0.1
 */