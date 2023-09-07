package v2;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.engine.s;
import java.util.List;
import n2.e;

public class d
  implements e<Uri, Drawable>
{
  private final Context a;
  
  public d(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }
  
  private Context d(Uri paramUri, String paramString)
  {
    if (paramString.equals(this.a.getPackageName())) {
      return this.a;
    }
    try
    {
      Context localContext = this.a.createPackageContext(paramString, 0);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      if (paramString.contains(this.a.getPackageName())) {
        return this.a;
      }
      paramString = new StringBuilder();
      paramString.append("Failed to obtain context or unrecognized Uri format for: ");
      paramString.append(paramUri);
      throw new IllegalArgumentException(paramString.toString(), localNameNotFoundException);
    }
  }
  
  private int e(Uri paramUri)
  {
    List localList = paramUri.getPathSegments();
    try
    {
      int i = Integer.parseInt((String)localList.get(0));
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unrecognized Uri format: ");
      localStringBuilder.append(paramUri);
      throw new IllegalArgumentException(localStringBuilder.toString(), localNumberFormatException);
    }
  }
  
  private int f(Context paramContext, Uri paramUri)
  {
    Object localObject = paramUri.getPathSegments();
    String str1 = paramUri.getAuthority();
    String str2 = (String)((List)localObject).get(0);
    localObject = (String)((List)localObject).get(1);
    int i = paramContext.getResources().getIdentifier((String)localObject, str2, str1);
    int j = i;
    if (i == 0) {
      j = Resources.getSystem().getIdentifier((String)localObject, str2, "android");
    }
    if (j != 0) {
      return j;
    }
    paramContext = new StringBuilder();
    paramContext.append("Failed to find resource id for: ");
    paramContext.append(paramUri);
    throw new IllegalArgumentException(paramContext.toString());
  }
  
  private int g(Context paramContext, Uri paramUri)
  {
    List localList = paramUri.getPathSegments();
    if (localList.size() == 2) {
      return f(paramContext, paramUri);
    }
    if (localList.size() == 1) {
      return e(paramUri);
    }
    paramContext = new StringBuilder();
    paramContext.append("Unrecognized Uri format: ");
    paramContext.append(paramUri);
    throw new IllegalArgumentException(paramContext.toString());
  }
  
  public s<Drawable> c(Uri paramUri, int paramInt1, int paramInt2, n2.d paramd)
  {
    paramd = d(paramUri, paramUri.getAuthority());
    paramInt1 = g(paramd, paramUri);
    return c.f(a.b(this.a, paramd, paramInt1));
  }
  
  public boolean h(Uri paramUri, n2.d paramd)
  {
    return paramUri.getScheme().equals("android.resource");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v2.d
 * JD-Core Version:    0.7.0.1
 */