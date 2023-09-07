package d1;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable.Callback;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.airbnb.lottie.d0;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import k1.d;
import k1.h;

public class b
{
  private static final Object e = new Object();
  private final Context a;
  private final String b;
  private com.airbnb.lottie.b c;
  private final Map<String, d0> d;
  
  public b(Drawable.Callback paramCallback, String paramString, com.airbnb.lottie.b paramb, Map<String, d0> paramMap)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.charAt(paramString.length() - 1) != '/'))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append('/');
      this.b = localStringBuilder.toString();
    }
    else
    {
      this.b = paramString;
    }
    if (!(paramCallback instanceof View))
    {
      d.c("LottieDrawable must be inside of a view for images to work.");
      this.d = new HashMap();
      this.a = null;
      return;
    }
    this.a = ((View)paramCallback).getContext();
    this.d = paramMap;
    d(paramb);
  }
  
  private Bitmap c(String paramString, Bitmap paramBitmap)
  {
    synchronized (e)
    {
      ((d0)this.d.get(paramString)).f(paramBitmap);
      return paramBitmap;
    }
  }
  
  public Bitmap a(String paramString)
  {
    Object localObject1 = (d0)this.d.get(paramString);
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = ((d0)localObject1).a();
    if (localObject2 != null) {
      return localObject2;
    }
    localObject2 = this.c;
    if (localObject2 != null)
    {
      localObject1 = ((com.airbnb.lottie.b)localObject2).a((d0)localObject1);
      if (localObject1 != null) {
        c(paramString, (Bitmap)localObject1);
      }
      return localObject1;
    }
    Object localObject3 = ((d0)localObject1).b();
    localObject2 = new BitmapFactory.Options();
    ((BitmapFactory.Options)localObject2).inScaled = true;
    ((BitmapFactory.Options)localObject2).inDensity = 160;
    if ((((String)localObject3).startsWith("data:")) && (((String)localObject3).indexOf("base64,") > 0)) {
      try
      {
        localObject1 = Base64.decode(((String)localObject3).substring(((String)localObject3).indexOf(',') + 1), 0);
        return c(paramString, BitmapFactory.decodeByteArray((byte[])localObject1, 0, localObject1.length, (BitmapFactory.Options)localObject2));
      }
      catch (IllegalArgumentException paramString)
      {
        d.d("data URL did not have correct base64 format.", paramString);
        return null;
      }
    }
    try
    {
      if (!TextUtils.isEmpty(this.b))
      {
        AssetManager localAssetManager = this.a.getAssets();
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append(this.b);
        localStringBuilder.append((String)localObject3);
        localObject3 = localAssetManager.open(localStringBuilder.toString());
        try
        {
          localObject2 = BitmapFactory.decodeStream((InputStream)localObject3, null, (BitmapFactory.Options)localObject2);
          return c(paramString, h.l((Bitmap)localObject2, ((d0)localObject1).e(), ((d0)localObject1).c()));
        }
        catch (IllegalArgumentException paramString)
        {
          d.d("Unable to decode image.", paramString);
          return null;
        }
      }
      paramString = new java/lang/IllegalStateException;
      paramString.<init>("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
      throw paramString;
    }
    catch (IOException paramString)
    {
      d.d("Unable to open asset.", paramString);
    }
    return null;
  }
  
  public boolean b(Context paramContext)
  {
    boolean bool;
    if (((paramContext == null) && (this.a == null)) || (this.a.equals(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void d(com.airbnb.lottie.b paramb)
  {
    this.c = paramb;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d1.b
 * JD-Core Version:    0.7.0.1
 */