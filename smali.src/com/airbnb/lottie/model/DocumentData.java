package com.airbnb.lottie.model;

public class DocumentData
{
  public String a;
  public String b;
  public float c;
  public Justification d;
  public int e;
  public float f;
  public float g;
  public int h;
  public int i;
  public float j;
  public boolean k;
  
  public DocumentData() {}
  
  public DocumentData(String paramString1, String paramString2, float paramFloat1, Justification paramJustification, int paramInt1, float paramFloat2, float paramFloat3, int paramInt2, int paramInt3, float paramFloat4, boolean paramBoolean)
  {
    a(paramString1, paramString2, paramFloat1, paramJustification, paramInt1, paramFloat2, paramFloat3, paramInt2, paramInt3, paramFloat4, paramBoolean);
  }
  
  public void a(String paramString1, String paramString2, float paramFloat1, Justification paramJustification, int paramInt1, float paramFloat2, float paramFloat3, int paramInt2, int paramInt3, float paramFloat4, boolean paramBoolean)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramFloat1;
    this.d = paramJustification;
    this.e = paramInt1;
    this.f = paramFloat2;
    this.g = paramFloat3;
    this.h = paramInt2;
    this.i = paramInt3;
    this.j = paramFloat4;
    this.k = paramBoolean;
  }
  
  public int hashCode()
  {
    int m = (int)((this.a.hashCode() * 31 + this.b.hashCode()) * 31 + this.c);
    int n = this.d.ordinal();
    int i1 = this.e;
    long l = Float.floatToRawIntBits(this.f);
    return (((m * 31 + n) * 31 + i1) * 31 + (int)(l ^ l >>> 32)) * 31 + this.h;
  }
  
  public static enum Justification
  {
    static
    {
      Justification localJustification1 = new Justification("LEFT_ALIGN", 0);
      LEFT_ALIGN = localJustification1;
      Justification localJustification2 = new Justification("RIGHT_ALIGN", 1);
      RIGHT_ALIGN = localJustification2;
      Justification localJustification3 = new Justification("CENTER", 2);
      CENTER = localJustification3;
      $VALUES = new Justification[] { localJustification1, localJustification2, localJustification3 };
    }
    
    private Justification() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.DocumentData
 * JD-Core Version:    0.7.0.1
 */