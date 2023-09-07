package k1;

public class b
{
  private static float a(float paramFloat)
  {
    if (paramFloat <= 0.04045F) {
      paramFloat /= 12.92F;
    } else {
      paramFloat = (float)Math.pow((paramFloat + 0.055F) / 1.055F, 2.400000095367432D);
    }
    return paramFloat;
  }
  
  private static float b(float paramFloat)
  {
    if (paramFloat <= 0.0031308F) {
      paramFloat *= 12.92F;
    } else {
      paramFloat = (float)(Math.pow(paramFloat, 0.416666656732559D) * 1.054999947547913D - 0.05499999970197678D);
    }
    return paramFloat;
  }
  
  public static int c(float paramFloat, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return paramInt1;
    }
    float f1 = (paramInt1 >> 24 & 0xFF) / 255.0F;
    float f2 = (paramInt1 >> 16 & 0xFF) / 255.0F;
    float f3 = (paramInt1 >> 8 & 0xFF) / 255.0F;
    float f4 = (paramInt1 & 0xFF) / 255.0F;
    float f5 = (paramInt2 >> 24 & 0xFF) / 255.0F;
    float f6 = (paramInt2 >> 16 & 0xFF) / 255.0F;
    float f7 = (paramInt2 >> 8 & 0xFF) / 255.0F;
    float f8 = (paramInt2 & 0xFF) / 255.0F;
    f2 = a(f2);
    f3 = a(f3);
    f4 = a(f4);
    f6 = a(f6);
    f7 = a(f7);
    f8 = a(f8);
    f2 = b(f2 + (f6 - f2) * paramFloat);
    f3 = b(f3 + (f7 - f3) * paramFloat);
    f4 = b(f4 + paramFloat * (f8 - f4));
    paramInt1 = Math.round((f1 + (f5 - f1) * paramFloat) * 255.0F);
    return Math.round(f2 * 255.0F) << 16 | paramInt1 << 24 | Math.round(f3 * 255.0F) << 8 | Math.round(f4 * 255.0F);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.b
 * JD-Core Version:    0.7.0.1
 */