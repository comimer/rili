package com.miui.maml;

import android.text.TextUtils;

public class SystemCommandListener
  implements ScreenElementRoot.OnExternCommandListener
{
  private static final String CLEAR_RESOURCE = "__clearResource";
  private static final String REQUEST_UPDATE = "__requestUpdate";
  private ScreenElementRoot mRoot;
  
  public SystemCommandListener(ScreenElementRoot paramScreenElementRoot)
  {
    this.mRoot = paramScreenElementRoot;
  }
  
  public void onCommand(String paramString1, Double paramDouble, String paramString2)
  {
    if ("__clearResource".equals(paramString1))
    {
      if (TextUtils.isEmpty(paramString2))
      {
        paramString1 = this.mRoot.getContext().mResourceManager;
        ResourceManager.clear();
      }
      else
      {
        this.mRoot.getContext().mResourceManager.clear(paramString2);
      }
    }
    else if ("__requestUpdate".equals(paramString1)) {
      this.mRoot.requestUpdate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.SystemCommandListener
 * JD-Core Version:    0.7.0.1
 */