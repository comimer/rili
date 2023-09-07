package com.bumptech.glide.load;

public enum DecodeFormat
{
  public static final DecodeFormat DEFAULT;
  
  static
  {
    DecodeFormat localDecodeFormat1 = new DecodeFormat("PREFER_ARGB_8888", 0);
    PREFER_ARGB_8888 = localDecodeFormat1;
    DecodeFormat localDecodeFormat2 = new DecodeFormat("PREFER_RGB_565", 1);
    PREFER_RGB_565 = localDecodeFormat2;
    $VALUES = new DecodeFormat[] { localDecodeFormat1, localDecodeFormat2 };
    DEFAULT = localDecodeFormat1;
  }
  
  private DecodeFormat() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.DecodeFormat
 * JD-Core Version:    0.7.0.1
 */