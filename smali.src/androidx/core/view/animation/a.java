package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

public final class a
{
  public static Interpolator a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return a.b(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  static class a
  {
    static PathInterpolator a(float paramFloat1, float paramFloat2)
    {
      return new PathInterpolator(paramFloat1, paramFloat2);
    }
    
    static PathInterpolator b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      return new PathInterpolator(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    }
    
    static PathInterpolator c(Path paramPath)
    {
      return new PathInterpolator(paramPath);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.animation.a
 * JD-Core Version:    0.7.0.1
 */