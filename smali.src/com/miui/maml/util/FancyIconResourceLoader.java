package com.miui.maml.util;

import com.miui.maml.ResourceLoader;
import java.io.InputStream;
import miui.content.res.ThemeResources;
import miui.content.res.ThemeResourcesSystem;

public class FancyIconResourceLoader
  extends ResourceLoader
{
  private static final String LOG_TAG = "FancyIconResourceLoader";
  private String mRelatviePathBaseIcons;
  
  public FancyIconResourceLoader(String paramString)
  {
    this.mRelatviePathBaseIcons = paramString;
  }
  
  public String getID()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FancyIconResourceLoader");
    localStringBuilder.append(this.mRelatviePathBaseIcons);
    return localStringBuilder.toString();
  }
  
  public InputStream getInputStream(String paramString, long[] paramArrayOfLong)
  {
    ThemeResourcesSystem localThemeResourcesSystem = ThemeResources.getSystem();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mRelatviePathBaseIcons);
    localStringBuilder.append(paramString);
    return localThemeResourcesSystem.getIconStream(localStringBuilder.toString(), paramArrayOfLong);
  }
  
  public boolean resourceExists(String paramString)
  {
    ThemeResourcesSystem localThemeResourcesSystem = ThemeResources.getSystem();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mRelatviePathBaseIcons);
    localStringBuilder.append(paramString);
    return localThemeResourcesSystem.hasIcon(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.FancyIconResourceLoader
 * JD-Core Version:    0.7.0.1
 */