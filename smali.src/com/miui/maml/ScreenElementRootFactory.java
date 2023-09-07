package com.miui.maml;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.miui.maml.util.ZipResourceLoader;
import java.io.File;

public class ScreenElementRootFactory
{
  public static ScreenElementRoot create(Parameter paramParameter)
  {
    Context localContext = paramParameter.mContext;
    localContext.getClass();
    ResourceLoader localResourceLoader = paramParameter.mResourceLoader;
    String str = paramParameter.mPath;
    paramParameter = localResourceLoader;
    if (localResourceLoader == null)
    {
      paramParameter = localResourceLoader;
      if (str != null)
      {
        paramParameter = localResourceLoader;
        if (new File(str).exists()) {
          paramParameter = new ZipResourceLoader(str).setLocal(localContext.getResources().getConfiguration().locale);
        }
      }
    }
    if (paramParameter == null) {
      return null;
    }
    return new ScreenElementRoot(new ScreenContext(localContext, new LifecycleResourceManager(paramParameter, 3600000L, 360000L)));
  }
  
  public static class Parameter
  {
    private Context mContext;
    private String mPath;
    private ResourceLoader mResourceLoader;
    
    public Parameter(Context paramContext, ResourceLoader paramResourceLoader)
    {
      if (paramContext != null) {
        this.mContext = paramContext.getApplicationContext();
      }
      this.mResourceLoader = paramResourceLoader;
    }
    
    public Parameter(Context paramContext, String paramString)
    {
      if (paramContext != null) {
        this.mContext = paramContext.getApplicationContext();
      }
      this.mPath = paramString;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.ScreenElementRootFactory
 * JD-Core Version:    0.7.0.1
 */