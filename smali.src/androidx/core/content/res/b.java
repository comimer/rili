package androidx.core.content.res;

import android.graphics.Color;
import androidx.core.graphics.c;

final class b
{
  static final float[][] a = { { 0.401288F, 0.650173F, -0.051461F }, { -0.250268F, 1.204414F, 0.045854F }, { -0.002079F, 0.048952F, 0.953127F } };
  static final float[][] b;
  static final float[] c = { 95.046997F, 100.0F, 108.883F };
  static final float[][] d = { { 0.4123389F, 0.3576206F, 0.1805104F }, { 0.2126F, 0.7152F, 0.0722F }, { 0.0193214F, 0.1191638F, 0.950345F } };
  
  static
  {
    float[] arrayOfFloat1 = { 1.862068F, -1.011255F, 0.1491868F };
    float[] arrayOfFloat2 = { -0.0158415F, -0.0341229F, 1.049964F };
    b = new float[][] { arrayOfFloat1, { 0.3875265F, 0.6214474F, -0.00897398F }, arrayOfFloat2 };
  }
  
  static int a(float paramFloat)
  {
    if (paramFloat < 1.0F) {
      return -16777216;
    }
    if (paramFloat > 99.0F) {
      return -1;
    }
    float f1 = (paramFloat + 16.0F) / 116.0F;
    int i;
    if (paramFloat > 8.0F) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramFloat = f1 * f1 * f1;
    } else {
      paramFloat /= 903.29633F;
    }
    float f2 = f1 * f1 * f1;
    if (f2 > 0.008856452F) {
      i = 1;
    } else {
      i = 0;
    }
    float f3;
    if (i != 0) {
      f3 = f2;
    } else {
      f3 = (f1 * 116.0F - 16.0F) / 903.29633F;
    }
    if (i == 0) {
      f2 = (f1 * 116.0F - 16.0F) / 903.29633F;
    }
    float[] arrayOfFloat = c;
    return c.a(f3 * arrayOfFloat[0], paramFloat * arrayOfFloat[1], f2 * arrayOfFloat[2]);
  }
  
  static float b(int paramInt)
  {
    return c(g(paramInt));
  }
  
  static float c(float paramFloat)
  {
    paramFloat /= 100.0F;
    if (paramFloat <= 0.008856452F) {
      return paramFloat * 903.29633F;
    }
    return (float)Math.cbrt(paramFloat) * 116.0F - 16.0F;
  }
  
  static float d(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat1 + (paramFloat2 - paramFloat1) * paramFloat3;
  }
  
  static float e(int paramInt)
  {
    float f = paramInt / 255.0F;
    if (f <= 0.04045F) {}
    for (f /= 12.92F;; f = (float)Math.pow((f + 0.055F) / 1.055F, 2.400000095367432D)) {
      return f * 100.0F;
    }
  }
  
  static float[] f(int paramInt)
  {
    float f1 = e(Color.red(paramInt));
    float f2 = e(Color.green(paramInt));
    float f3 = e(Color.blue(paramInt));
    Object localObject1 = d;
    Object localObject2 = localObject1[0];
    float f4 = localObject2[0];
    float f5 = localObject2[1];
    float f6 = localObject2[2];
    localObject2 = localObject1[1];
    float f7 = localObject2[0];
    float f8 = localObject2[1];
    float f9 = localObject2[2];
    localObject1 = localObject1[2];
    return new float[] { f4 * f1 + f5 * f2 + f6 * f3, f7 * f1 + f8 * f2 + f9 * f3, f1 * localObject1[0] + f2 * localObject1[1] + f3 * localObject1[2] };
  }
  
  static float g(int paramInt)
  {
    float f1 = e(Color.red(paramInt));
    float f2 = e(Color.green(paramInt));
    float f3 = e(Color.blue(paramInt));
    float[] arrayOfFloat = d[1];
    return f1 * arrayOfFloat[0] + f2 * arrayOfFloat[1] + f3 * arrayOfFloat[2];
  }
  
  static float h(float paramFloat)
  {
    if (paramFloat > 8.0F) {}
    for (paramFloat = (float)Math.pow((paramFloat + 16.0D) / 116.0D, 3.0D);; paramFloat /= 903.29633F) {
      return paramFloat * 100.0F;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.b
 * JD-Core Version:    0.7.0.1
 */