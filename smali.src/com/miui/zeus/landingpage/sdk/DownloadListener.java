package com.miui.zeus.landingpage.sdk;

public abstract interface DownloadListener
{
  public abstract void onCancelDownload(String paramString);
  
  public abstract void onDownloadFailed(String paramString, int paramInt);
  
  public abstract void onDownloadFinished(String paramString);
  
  public abstract void onDownloadPaused(String paramString);
  
  public abstract void onDownloadProgressUpdated(String paramString, int paramInt);
  
  public abstract void onDownloadStarted(String paramString);
  
  public abstract void onInstallFailed(String paramString, int paramInt);
  
  public abstract void onInstallStart(String paramString);
  
  public abstract void onInstallSuccess(String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.DownloadListener
 * JD-Core Version:    0.7.0.1
 */