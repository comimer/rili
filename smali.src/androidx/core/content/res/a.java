package androidx.core.content.res;

import androidx.core.graphics.c;

class a
{
  private final float a;
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private final float f;
  private final float g;
  private final float h;
  private final float i;
  
  a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.c = paramFloat3;
    this.d = paramFloat4;
    this.e = paramFloat5;
    this.f = paramFloat6;
    this.g = paramFloat7;
    this.h = paramFloat8;
    this.i = paramFloat9;
  }
  
  private static a b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = 1000.0F;
    float f2 = 0.0F;
    Object localObject1 = null;
    float f3 = 100.0F;
    float f4 = 1000.0F;
    Object localObject2;
    for (;;)
    {
      localObject2 = localObject1;
      if (Math.abs(f2 - f3) <= 0.01F) {
        break;
      }
      float f5 = (f3 - f2) / 2.0F + f2;
      int j = e(f5, paramFloat2, paramFloat1).p();
      float f6 = b.b(j);
      float f7 = Math.abs(paramFloat3 - f6);
      float f8 = f1;
      float f9 = f4;
      localObject2 = localObject1;
      if (f7 < 0.2F)
      {
        a locala = c(j);
        float f10 = locala.a(e(locala.k(), locala.i(), paramFloat1));
        f8 = f1;
        f9 = f4;
        localObject2 = localObject1;
        if (f10 <= 1.0F)
        {
          localObject2 = locala;
          f8 = f7;
          f9 = f10;
        }
      }
      if ((f8 == 0.0F) && (f9 == 0.0F)) {
        break;
      }
      if (f6 < paramFloat3)
      {
        f2 = f5;
        f1 = f8;
        f4 = f9;
        localObject1 = localObject2;
      }
      else
      {
        f3 = f5;
        f1 = f8;
        f4 = f9;
        localObject1 = localObject2;
      }
    }
    return localObject2;
  }
  
  static a c(int paramInt)
  {
    return d(paramInt, m.k);
  }
  
  static a d(int paramInt, m paramm)
  {
    float[] arrayOfFloat = b.f(paramInt);
    Object localObject1 = b.a;
    float f1 = arrayOfFloat[0];
    Object localObject2 = localObject1[0];
    float f2 = localObject2[0];
    float f3 = arrayOfFloat[1];
    float f4 = localObject2[1];
    float f5 = arrayOfFloat[2];
    float f6 = localObject2[2];
    arrayOfFloat = localObject1[1];
    float f7 = arrayOfFloat[0];
    float f8 = arrayOfFloat[1];
    float f9 = arrayOfFloat[2];
    localObject1 = localObject1[2];
    float f10 = localObject1[0];
    float f11 = localObject1[1];
    float f12 = localObject1[2];
    f2 = paramm.i()[0] * (f2 * f1 + f4 * f3 + f6 * f5);
    f8 = paramm.i()[1] * (f7 * f1 + f8 * f3 + f9 * f5);
    f11 = paramm.i()[2] * (f1 * f10 + f3 * f11 + f5 * f12);
    f12 = (float)Math.pow(paramm.c() * Math.abs(f2) / 100.0D, 0.42D);
    f10 = (float)Math.pow(paramm.c() * Math.abs(f8) / 100.0D, 0.42D);
    f3 = (float)Math.pow(paramm.c() * Math.abs(f11) / 100.0D, 0.42D);
    f2 = Math.signum(f2) * 400.0F * f12 / (f12 + 27.129999F);
    f12 = Math.signum(f8) * 400.0F * f10 / (f10 + 27.129999F);
    f3 = Math.signum(f11) * 400.0F * f3 / (f3 + 27.129999F);
    double d1 = f2;
    double d2 = f12;
    double d3 = f3;
    f10 = (float)(d1 * 11.0D + d2 * -12.0D + d3) / 11.0F;
    f11 = (float)(f2 + f12 - d3 * 2.0D) / 9.0F;
    f12 *= 20.0F;
    f8 = (f2 * 20.0F + f12 + 21.0F * f3) / 20.0F;
    f1 = (f2 * 40.0F + f12 + f3) / 20.0F;
    f3 = (float)Math.atan2(f11, f10) * 180.0F / 3.141593F;
    if (f3 < 0.0F) {
      f2 = f3 + 360.0F;
    }
    for (;;)
    {
      break;
      f2 = f3;
      if (f3 >= 360.0F) {
        f2 = f3 - 360.0F;
      }
    }
    f12 = 3.141593F * f2 / 180.0F;
    f5 = (float)Math.pow(f1 * paramm.f() / paramm.a(), paramm.b() * paramm.j()) * 100.0F;
    f4 = 4.0F / paramm.b();
    f9 = (float)Math.sqrt(f5 / 100.0F);
    f1 = paramm.a();
    f7 = paramm.d();
    if (f2 < 20.140000000000001D) {
      f3 = 360.0F + f2;
    } else {
      f3 = f2;
    }
    f3 = (float)(Math.cos(f3 * 3.141592653589793D / 180.0D + 2.0D) + 3.8D) * 0.25F * 3846.1538F * paramm.g() * paramm.h() * (float)Math.sqrt(f10 * f10 + f11 * f11) / (f8 + 0.305F);
    f10 = (float)Math.pow(1.64D - Math.pow(0.29D, paramm.e()), 0.73D) * (float)Math.pow(f3, 0.9D);
    f11 = f10 * (float)Math.sqrt(f5 / 100.0D);
    f3 = f11 * paramm.d();
    f8 = (float)Math.sqrt(f10 * paramm.b() / (paramm.a() + 4.0F));
    f10 = 1.7F * f5 / (0.007F * f5 + 1.0F);
    f6 = (float)Math.log(0.0228F * f3 + 1.0F) * 43.85965F;
    d1 = f12;
    return new a(f2, f11, f5, f7 * (f4 * f9 * (f1 + 4.0F)), f3, f8 * 50.0F, f10, f6 * (float)Math.cos(d1), f6 * (float)Math.sin(d1));
  }
  
  private static a e(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return f(paramFloat1, paramFloat2, paramFloat3, m.k);
  }
  
  private static a f(float paramFloat1, float paramFloat2, float paramFloat3, m paramm)
  {
    float f1 = 4.0F / paramm.b();
    double d1 = paramFloat1 / 100.0D;
    float f2 = (float)Math.sqrt(d1);
    float f3 = paramm.a();
    float f4 = paramm.d();
    float f5 = paramFloat2 * paramm.d();
    float f6 = (float)Math.sqrt(paramFloat2 / (float)Math.sqrt(d1) * paramm.b() / (paramm.a() + 4.0F));
    float f7 = 3.141593F * paramFloat3 / 180.0F;
    float f8 = 1.7F * paramFloat1 / (0.007F * paramFloat1 + 1.0F);
    float f9 = (float)Math.log(f5 * 0.0228D + 1.0D) * 43.85965F;
    d1 = f7;
    return new a(paramFloat3, paramFloat2, paramFloat1, f1 * f2 * (f3 + 4.0F) * f4, f5, f6 * 50.0F, f8, f9 * (float)Math.cos(d1), f9 * (float)Math.sin(d1));
  }
  
  static int m(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return n(paramFloat1, paramFloat2, paramFloat3, m.k);
  }
  
  static int n(float paramFloat1, float paramFloat2, float paramFloat3, m paramm)
  {
    if ((paramFloat2 >= 1.0D) && (Math.round(paramFloat3) > 0.0D) && (Math.round(paramFloat3) < 100.0D))
    {
      float f1;
      if (paramFloat1 < 0.0F) {
        f1 = 0.0F;
      } else {
        f1 = Math.min(360.0F, paramFloat1);
      }
      Object localObject = null;
      int j = 1;
      float f2 = 0.0F;
      paramFloat1 = paramFloat2;
      if (Math.abs(f2 - paramFloat2) >= 0.4F)
      {
        a locala = b(f1, paramFloat1, paramFloat3);
        if (j != 0)
        {
          if (locala != null) {
            return locala.o(paramm);
          }
          j = 0;
        }
        for (;;)
        {
          paramFloat1 = (paramFloat2 - f2) / 2.0F + f2;
          break;
          if (locala == null)
          {
            paramFloat2 = paramFloat1;
          }
          else
          {
            localObject = locala;
            f2 = paramFloat1;
          }
        }
      }
      if (localObject == null) {
        return b.a(paramFloat3);
      }
      return localObject.o(paramm);
    }
    return b.a(paramFloat3);
  }
  
  float a(a parama)
  {
    float f1 = l() - parama.l();
    float f2 = g() - parama.g();
    float f3 = h() - parama.h();
    return (float)(Math.pow(Math.sqrt(f1 * f1 + f2 * f2 + f3 * f3), 0.63D) * 1.41D);
  }
  
  float g()
  {
    return this.h;
  }
  
  float h()
  {
    return this.i;
  }
  
  float i()
  {
    return this.b;
  }
  
  float j()
  {
    return this.a;
  }
  
  float k()
  {
    return this.c;
  }
  
  float l()
  {
    return this.g;
  }
  
  int o(m paramm)
  {
    if ((i() != 0.0D) && (k() != 0.0D)) {
      f1 = i() / (float)Math.sqrt(k() / 100.0D);
    } else {
      f1 = 0.0F;
    }
    float f2 = (float)Math.pow(f1 / Math.pow(1.64D - Math.pow(0.29D, paramm.e()), 0.73D), 1.111111111111111D);
    double d1 = j() * 3.141593F / 180.0F;
    float f3 = (float)(Math.cos(2.0D + d1) + 3.8D);
    float f1 = paramm.a();
    float f4 = (float)Math.pow(k() / 100.0D, 1.0D / paramm.b() / paramm.j());
    float f5 = paramm.g();
    float f6 = paramm.h();
    f1 = f1 * f4 / paramm.f();
    f4 = (float)Math.sin(d1);
    float f7 = (float)Math.cos(d1);
    f5 = (0.305F + f1) * 23.0F * f2 / (f3 * 0.25F * 3846.1538F * f5 * f6 * 23.0F + 11.0F * f2 * f7 + f2 * 108.0F * f4);
    f6 = f7 * f5;
    f4 = f5 * f4;
    f3 = f1 * 460.0F;
    f1 = (451.0F * f6 + f3 + 288.0F * f4) / 1403.0F;
    f5 = (f3 - 891.0F * f6 - 261.0F * f4) / 1403.0F;
    f2 = (f3 - f6 * 220.0F - f4 * 6300.0F) / 1403.0F;
    f6 = (float)Math.max(0.0D, Math.abs(f1) * 27.129999999999999D / (400.0D - Math.abs(f1)));
    f1 = Math.signum(f1);
    f4 = 100.0F / paramm.c();
    f6 = (float)Math.pow(f6, 2.380952380952381D);
    f7 = (float)Math.max(0.0D, Math.abs(f5) * 27.129999999999999D / (400.0D - Math.abs(f5)));
    f5 = Math.signum(f5);
    f3 = 100.0F / paramm.c();
    float f8 = (float)Math.pow(f7, 2.380952380952381D);
    float f9 = (float)Math.max(0.0D, Math.abs(f2) * 27.129999999999999D / (400.0D - Math.abs(f2)));
    f7 = Math.signum(f2);
    f2 = 100.0F / paramm.c();
    f9 = (float)Math.pow(f9, 2.380952380952381D);
    f1 = f1 * f4 * f6 / paramm.i()[0];
    f4 = f5 * f3 * f8 / paramm.i()[1];
    f5 = f7 * f2 * f9 / paramm.i()[2];
    paramm = b.b;
    Object localObject = paramm[0];
    f9 = localObject[0];
    float f10 = localObject[1];
    f7 = localObject[2];
    localObject = paramm[1];
    f8 = localObject[0];
    float f11 = localObject[1];
    f6 = localObject[2];
    paramm = paramm[2];
    f3 = paramm[0];
    f2 = paramm[1];
    float f12 = paramm[2];
    return c.a(f9 * f1 + f10 * f4 + f7 * f5, f8 * f1 + f11 * f4 + f6 * f5, f1 * f3 + f4 * f2 + f5 * f12);
  }
  
  int p()
  {
    return o(m.k);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.a
 * JD-Core Version:    0.7.0.1
 */