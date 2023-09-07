package com.bumptech.glide.load;

public enum PreferredColorSpace
{
  static
  {
    PreferredColorSpace localPreferredColorSpace1 = new PreferredColorSpace("SRGB", 0);
    SRGB = localPreferredColorSpace1;
    PreferredColorSpace localPreferredColorSpace2 = new PreferredColorSpace("DISPLAY_P3", 1);
    DISPLAY_P3 = localPreferredColorSpace2;
    $VALUES = new PreferredColorSpace[] { localPreferredColorSpace1, localPreferredColorSpace2 };
  }
  
  private PreferredColorSpace() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.PreferredColorSpace
 * JD-Core Version:    0.7.0.1
 */