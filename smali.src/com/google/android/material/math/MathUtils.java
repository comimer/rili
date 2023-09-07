package com.google.android.material.math;

public final class MathUtils
{
  public static final float DEFAULT_EPSILON = 1.0E-004F;
  
  public static float dist(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return (float)Math.hypot(paramFloat3 - paramFloat1, paramFloat4 - paramFloat2);
  }
  
  public static float distanceToFurthestCorner(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    return max(dist(paramFloat1, paramFloat2, paramFloat3, paramFloat4), dist(paramFloat1, paramFloat2, paramFloat5, paramFloat4), dist(paramFloat1, paramFloat2, paramFloat5, paramFloat6), dist(paramFloat1, paramFloat2, paramFloat3, paramFloat6));
  }
  
  public static float floorMod(float paramFloat, int paramInt)
  {
    float f = paramInt;
    int i = (int)(paramFloat / f);
    int j = i;
    if (Math.signum(paramFloat) * f < 0.0F)
    {
      j = i;
      if (i * paramInt != paramFloat) {
        j = i - 1;
      }
    }
    return paramFloat - j * paramInt;
  }
  
  public static int floorMod(int paramInt1, int paramInt2)
  {
    int i = paramInt1 / paramInt2;
    int j = i;
    if ((paramInt1 ^ paramInt2) < 0)
    {
      j = i;
      if (i * paramInt2 != paramInt1) {
        j = i - 1;
      }
    }
    return paramInt1 - j * paramInt2;
  }
  
  public static boolean geq(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool;
    if (paramFloat1 + paramFloat3 >= paramFloat2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static float lerp(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (1.0F - paramFloat3) * paramFloat1 + paramFloat3 * paramFloat2;
  }
  
  private static float max(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if ((paramFloat1 <= paramFloat2) || (paramFloat1 <= paramFloat3) || (paramFloat1 <= paramFloat4)) {
      if ((paramFloat2 > paramFloat3) && (paramFloat2 > paramFloat4)) {
        paramFloat1 = paramFloat2;
      } else if (paramFloat3 > paramFloat4) {
        paramFloat1 = paramFloat3;
      } else {
        paramFloat1 = paramFloat4;
      }
    }
    return paramFloat1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.math.MathUtils
 * JD-Core Version:    0.7.0.1
 */