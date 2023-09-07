package androidx.core.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.EdgeEffect;

public final class e
{
  public static EdgeEffect a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT >= 31) {
      return b.a(paramContext, paramAttributeSet);
    }
    return new EdgeEffect(paramContext);
  }
  
  public static float b(EdgeEffect paramEdgeEffect)
  {
    if (Build.VERSION.SDK_INT >= 31) {
      return b.b(paramEdgeEffect);
    }
    return 0.0F;
  }
  
  public static void c(EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
  {
    a.a(paramEdgeEffect, paramFloat1, paramFloat2);
  }
  
  public static float d(EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 31) {
      return b.c(paramEdgeEffect, paramFloat1, paramFloat2);
    }
    c(paramEdgeEffect, paramFloat1, paramFloat2);
    return paramFloat1;
  }
  
  static class a
  {
    static void a(EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
    {
      paramEdgeEffect.onPull(paramFloat1, paramFloat2);
    }
  }
  
  private static class b
  {
    public static EdgeEffect a(Context paramContext, AttributeSet paramAttributeSet)
    {
      try
      {
        paramAttributeSet = new EdgeEffect(paramContext, paramAttributeSet);
        return paramAttributeSet;
      }
      finally {}
      return new EdgeEffect(paramContext);
    }
    
    public static float b(EdgeEffect paramEdgeEffect)
    {
      try
      {
        float f = f.a(paramEdgeEffect);
        return f;
      }
      finally {}
      return 0.0F;
    }
    
    public static float c(EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
    {
      try
      {
        float f = g.a(paramEdgeEffect, paramFloat1, paramFloat2);
        return f;
      }
      finally
      {
        paramEdgeEffect.onPull(paramFloat1, paramFloat2);
      }
      return 0.0F;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.e
 * JD-Core Version:    0.7.0.1
 */