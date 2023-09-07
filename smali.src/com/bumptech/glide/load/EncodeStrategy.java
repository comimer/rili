package com.bumptech.glide.load;

public enum EncodeStrategy
{
  static
  {
    EncodeStrategy localEncodeStrategy1 = new EncodeStrategy("SOURCE", 0);
    SOURCE = localEncodeStrategy1;
    EncodeStrategy localEncodeStrategy2 = new EncodeStrategy("TRANSFORMED", 1);
    TRANSFORMED = localEncodeStrategy2;
    EncodeStrategy localEncodeStrategy3 = new EncodeStrategy("NONE", 2);
    NONE = localEncodeStrategy3;
    $VALUES = new EncodeStrategy[] { localEncodeStrategy1, localEncodeStrategy2, localEncodeStrategy3 };
  }
  
  private EncodeStrategy() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.EncodeStrategy
 * JD-Core Version:    0.7.0.1
 */