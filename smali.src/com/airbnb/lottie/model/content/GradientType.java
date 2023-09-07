package com.airbnb.lottie.model.content;

public enum GradientType
{
  static
  {
    GradientType localGradientType1 = new GradientType("LINEAR", 0);
    LINEAR = localGradientType1;
    GradientType localGradientType2 = new GradientType("RADIAL", 1);
    RADIAL = localGradientType2;
    $VALUES = new GradientType[] { localGradientType1, localGradientType2 };
  }
  
  private GradientType() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.content.GradientType
 * JD-Core Version:    0.7.0.1
 */