package d1;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable.Callback;
import android.view.View;
import e1.h;
import java.util.HashMap;
import java.util.Map;
import k1.d;

public class a
{
  private final h<String> a = new h();
  private final Map<h<String>, Typeface> b = new HashMap();
  private final Map<String, Typeface> c = new HashMap();
  private final AssetManager d;
  private String e = ".ttf";
  
  public a(Drawable.Callback paramCallback, com.airbnb.lottie.a parama)
  {
    if (!(paramCallback instanceof View))
    {
      d.c("LottieDrawable must be inside of a view for images to work.");
      this.d = null;
      return;
    }
    this.d = ((View)paramCallback).getContext().getAssets();
  }
  
  private Typeface a(String paramString)
  {
    Object localObject = (Typeface)this.c.get(paramString);
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("fonts/");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(this.e);
    localObject = ((StringBuilder)localObject).toString();
    localObject = Typeface.createFromAsset(this.d, (String)localObject);
    this.c.put(paramString, localObject);
    return localObject;
  }
  
  private Typeface d(Typeface paramTypeface, String paramString)
  {
    boolean bool1 = paramString.contains("Italic");
    boolean bool2 = paramString.contains("Bold");
    int i;
    if ((bool1) && (bool2)) {
      i = 3;
    } else if (bool1) {
      i = 2;
    } else if (bool2) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramTypeface.getStyle() == i) {
      return paramTypeface;
    }
    return Typeface.create(paramTypeface, i);
  }
  
  public Typeface b(String paramString1, String paramString2)
  {
    this.a.b(paramString1, paramString2);
    Typeface localTypeface = (Typeface)this.b.get(this.a);
    if (localTypeface != null) {
      return localTypeface;
    }
    paramString1 = d(a(paramString1), paramString2);
    this.b.put(this.a, paramString1);
    return paramString1;
  }
  
  public void c(com.airbnb.lottie.a parama) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d1.a
 * JD-Core Version:    0.7.0.1
 */