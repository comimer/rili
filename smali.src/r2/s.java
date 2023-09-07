package r2;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;
import n2.d;

public class s<Data>
  implements n<Integer, Data>
{
  private final n<Uri, Data> a;
  private final Resources b;
  
  public s(Resources paramResources, n<Uri, Data> paramn)
  {
    this.b = paramResources;
    this.a = paramn;
  }
  
  private Uri d(Integer paramInteger)
  {
    try
    {
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("android.resource://");
      ((StringBuilder)localObject).append(this.b.getResourcePackageName(paramInteger.intValue()));
      ((StringBuilder)localObject).append('/');
      ((StringBuilder)localObject).append(this.b.getResourceTypeName(paramInteger.intValue()));
      ((StringBuilder)localObject).append('/');
      ((StringBuilder)localObject).append(this.b.getResourceEntryName(paramInteger.intValue()));
      localObject = Uri.parse(((StringBuilder)localObject).toString());
      return localObject;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      Object localObject;
      if (Log.isLoggable("ResourceLoader", 5))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Received invalid resource id: ");
        ((StringBuilder)localObject).append(paramInteger);
        Log.w("ResourceLoader", ((StringBuilder)localObject).toString(), localNotFoundException);
      }
    }
    return null;
  }
  
  public n.a<Data> c(Integer paramInteger, int paramInt1, int paramInt2, d paramd)
  {
    paramInteger = d(paramInteger);
    if (paramInteger == null) {
      paramInteger = null;
    } else {
      paramInteger = this.a.a(paramInteger, paramInt1, paramInt2, paramd);
    }
    return paramInteger;
  }
  
  public boolean e(Integer paramInteger)
  {
    return true;
  }
  
  public static final class a
    implements o<Integer, AssetFileDescriptor>
  {
    private final Resources a;
    
    public a(Resources paramResources)
    {
      this.a = paramResources;
    }
    
    public n<Integer, AssetFileDescriptor> b(r paramr)
    {
      return new s(this.a, paramr.d(Uri.class, AssetFileDescriptor.class));
    }
  }
  
  public static class b
    implements o<Integer, ParcelFileDescriptor>
  {
    private final Resources a;
    
    public b(Resources paramResources)
    {
      this.a = paramResources;
    }
    
    public n<Integer, ParcelFileDescriptor> b(r paramr)
    {
      return new s(this.a, paramr.d(Uri.class, ParcelFileDescriptor.class));
    }
  }
  
  public static class c
    implements o<Integer, InputStream>
  {
    private final Resources a;
    
    public c(Resources paramResources)
    {
      this.a = paramResources;
    }
    
    public n<Integer, InputStream> b(r paramr)
    {
      return new s(this.a, paramr.d(Uri.class, InputStream.class));
    }
  }
  
  public static class d
    implements o<Integer, Uri>
  {
    private final Resources a;
    
    public d(Resources paramResources)
    {
      this.a = paramResources;
    }
    
    public n<Integer, Uri> b(r paramr)
    {
      return new s(this.a, v.c());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.s
 * JD-Core Version:    0.7.0.1
 */