package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.os.Build.VERSION;

public class a
{
  public static ColorFilter a(int paramInt, BlendModeCompat paramBlendModeCompat)
  {
    int i = Build.VERSION.SDK_INT;
    Object localObject = null;
    PorterDuff.Mode localMode = null;
    if (i >= 29)
    {
      localObject = b.b.a(paramBlendModeCompat);
      paramBlendModeCompat = localMode;
      if (localObject != null) {
        paramBlendModeCompat = a.a(paramInt, localObject);
      }
      return paramBlendModeCompat;
    }
    localMode = b.a(paramBlendModeCompat);
    paramBlendModeCompat = localObject;
    if (localMode != null) {
      paramBlendModeCompat = new PorterDuffColorFilter(paramInt, localMode);
    }
    return paramBlendModeCompat;
  }
  
  static class a
  {
    static ColorFilter a(int paramInt, Object paramObject)
    {
      return new BlendModeColorFilter(paramInt, (BlendMode)paramObject);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.a
 * JD-Core Version:    0.7.0.1
 */