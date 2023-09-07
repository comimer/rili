package androidx.core.content.res;

final class m
{
  static final m k = k(b.c, (float)(b.h(50.0F) * 63.661977236758133D / 100.0D), 50.0F, 2.0F, false);
  private final float a;
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private final float f;
  private final float[] g;
  private final float h;
  private final float i;
  private final float j;
  
  private m(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float[] paramArrayOfFloat, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    this.f = paramFloat1;
    this.a = paramFloat2;
    this.b = paramFloat3;
    this.c = paramFloat4;
    this.d = paramFloat5;
    this.e = paramFloat6;
    this.g = paramArrayOfFloat;
    this.h = paramFloat7;
    this.i = paramFloat8;
    this.j = paramFloat9;
  }
  
  static m k(float[] paramArrayOfFloat, float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean)
  {
    Object localObject1 = b.a;
    float f1 = paramArrayOfFloat[0];
    Object localObject2 = localObject1[0];
    float f2 = localObject2[0];
    float f3 = paramArrayOfFloat[1];
    float f4 = localObject2[1];
    float f5 = paramArrayOfFloat[2];
    f2 = f2 * f1 + f4 * f3 + localObject2[2] * f5;
    localObject2 = localObject1[1];
    f4 = localObject2[0] * f1 + localObject2[1] * f3 + localObject2[2] * f5;
    localObject1 = localObject1[2];
    f5 = f1 * localObject1[0] + f3 * localObject1[1] + f5 * localObject1[2];
    f1 = paramFloat3 / 10.0F + 0.8F;
    if (f1 >= 0.9D) {
      f3 = b.d(0.59F, 0.69F, (f1 - 0.9F) * 10.0F);
    } else {
      f3 = b.d(0.525F, 0.59F, (f1 - 0.8F) * 10.0F);
    }
    if (paramBoolean) {
      paramFloat3 = 1.0F;
    } else {
      paramFloat3 = (1.0F - (float)Math.exp((-paramFloat1 - 42.0F) / 92.0F) * 0.2777778F) * f1;
    }
    double d1 = paramFloat3;
    if (d1 > 1.0D) {
      paramFloat3 = 1.0F;
    } else if (d1 < 0.0D) {
      paramFloat3 = 0.0F;
    }
    localObject1 = new float[3];
    localObject1[0] = (100.0F / f2 * paramFloat3 + 1.0F - paramFloat3);
    localObject1[1] = (100.0F / f4 * paramFloat3 + 1.0F - paramFloat3);
    localObject1[2] = (100.0F / f5 * paramFloat3 + 1.0F - paramFloat3);
    paramFloat3 = 1.0F / (5.0F * paramFloat1 + 1.0F);
    float f6 = paramFloat3 * paramFloat3 * paramFloat3 * paramFloat3;
    paramFloat3 = 1.0F - f6;
    paramFloat1 = f6 * paramFloat1 + 0.1F * paramFloat3 * paramFloat3 * (float)Math.cbrt(paramFloat1 * 5.0D);
    paramFloat3 = b.h(paramFloat2) / paramArrayOfFloat[1];
    d1 = paramFloat3;
    f6 = (float)Math.sqrt(d1);
    paramFloat2 = 0.725F / (float)Math.pow(d1, 0.2D);
    paramArrayOfFloat = new float[3];
    paramArrayOfFloat[0] = ((float)Math.pow(localObject1[0] * paramFloat1 * f2 / 100.0D, 0.42D));
    paramArrayOfFloat[1] = ((float)Math.pow(localObject1[1] * paramFloat1 * f4 / 100.0D, 0.42D));
    f2 = (float)Math.pow(localObject1[2] * paramFloat1 * f5 / 100.0D, 0.42D);
    paramArrayOfFloat[2] = f2;
    f4 = paramArrayOfFloat[0];
    f5 = f4 * 400.0F / (f4 + 27.129999F);
    f4 = paramArrayOfFloat[1];
    return new m(paramFloat3, (f5 * 2.0F + f4 * 400.0F / (f4 + 27.129999F) + 400.0F * f2 / (f2 + 27.129999F) * 0.05F) * paramFloat2, paramFloat2, paramFloat2, f3, f1, (float[])localObject1, paramFloat1, (float)Math.pow(paramFloat1, 0.25D), f6 + 1.48F);
  }
  
  float a()
  {
    return this.a;
  }
  
  float b()
  {
    return this.d;
  }
  
  float c()
  {
    return this.h;
  }
  
  float d()
  {
    return this.i;
  }
  
  float e()
  {
    return this.f;
  }
  
  float f()
  {
    return this.b;
  }
  
  float g()
  {
    return this.e;
  }
  
  float h()
  {
    return this.c;
  }
  
  float[] i()
  {
    return this.g;
  }
  
  float j()
  {
    return this.j;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.m
 * JD-Core Version:    0.7.0.1
 */