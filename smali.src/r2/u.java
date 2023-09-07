package r2;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.File;
import java.io.InputStream;
import n2.d;

public class u<Data>
  implements n<String, Data>
{
  private final n<Uri, Data> a;
  
  public u(n<Uri, Data> paramn)
  {
    this.a = paramn;
  }
  
  private static Uri e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    if (paramString.charAt(0) == '/')
    {
      paramString = f(paramString);
    }
    else
    {
      Uri localUri = Uri.parse(paramString);
      if (localUri.getScheme() == null) {
        paramString = f(paramString);
      } else {
        paramString = localUri;
      }
    }
    return paramString;
  }
  
  private static Uri f(String paramString)
  {
    return Uri.fromFile(new File(paramString));
  }
  
  public n.a<Data> c(String paramString, int paramInt1, int paramInt2, d paramd)
  {
    paramString = e(paramString);
    if ((paramString != null) && (this.a.b(paramString))) {
      return this.a.a(paramString, paramInt1, paramInt2, paramd);
    }
    return null;
  }
  
  public boolean d(String paramString)
  {
    return true;
  }
  
  public static final class a
    implements o<String, AssetFileDescriptor>
  {
    public n<String, AssetFileDescriptor> b(r paramr)
    {
      return new u(paramr.d(Uri.class, AssetFileDescriptor.class));
    }
  }
  
  public static class b
    implements o<String, ParcelFileDescriptor>
  {
    public n<String, ParcelFileDescriptor> b(r paramr)
    {
      return new u(paramr.d(Uri.class, ParcelFileDescriptor.class));
    }
  }
  
  public static class c
    implements o<String, InputStream>
  {
    public n<String, InputStream> b(r paramr)
    {
      return new u(paramr.d(Uri.class, InputStream.class));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.u
 * JD-Core Version:    0.7.0.1
 */