package com.airbnb.lottie;

public enum RenderMode
{
  static
  {
    RenderMode localRenderMode1 = new RenderMode("AUTOMATIC", 0);
    AUTOMATIC = localRenderMode1;
    RenderMode localRenderMode2 = new RenderMode("HARDWARE", 1);
    HARDWARE = localRenderMode2;
    RenderMode localRenderMode3 = new RenderMode("SOFTWARE", 2);
    SOFTWARE = localRenderMode3;
    $VALUES = new RenderMode[] { localRenderMode1, localRenderMode2, localRenderMode3 };
  }
  
  private RenderMode() {}
  
  public boolean useSoftwareRendering(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    int i = a.a[ordinal()];
    boolean bool = false;
    if (i != 1)
    {
      if (i != 2)
      {
        if ((paramBoolean) && (paramInt1 < 28)) {
          return true;
        }
        if (paramInt2 > 4) {
          return true;
        }
        paramBoolean = bool;
        if (paramInt1 <= 25) {
          paramBoolean = true;
        }
        return paramBoolean;
      }
      return true;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.RenderMode
 * JD-Core Version:    0.7.0.1
 */