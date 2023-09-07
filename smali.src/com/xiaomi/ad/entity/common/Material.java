package com.xiaomi.ad.entity.common;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xiaomi.ad.entity.contract.GsonEntityBase;
import com.xiaomi.ad.entity.util.EntityUtils;
import com.xiaomi.ad.entity.util.GsonUtils;
import d6.a;
import java.util.List;

public class Material
  extends GsonEntityBase
{
  private static final double GSON_CONTENT_VERSION = 1.0D;
  private static final String TAG = "Material";
  private static final int VIEW_LOG_LEVEL_MATERIAL = 0;
  private static final int VIEW_LOG_LEVEL_RESOURCE = 1;
  @Expose
  @SerializedName("ex")
  private String adPassBack;
  @Expose
  private StringHolder extra;
  @Expose
  private long id;
  @Expose
  private List<Resource> resources;
  @Expose
  private int viewLogLevel;
  @Expose
  private List<String> viewMonitorUrls;
  
  public static final Material deserialize(String paramString)
  {
    return (Material)GsonUtils.fromJsonString(Material.class, paramString, "Material");
  }
  
  public String getAdPassBack()
  {
    return this.adPassBack;
  }
  
  public String getExtra()
  {
    Object localObject = this.extra;
    if (localObject != null) {
      localObject = ((StringHolder)localObject).value;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public Resource getResource(int paramInt)
  {
    return (Resource)a.b(this.resources, paramInt);
  }
  
  public int getResourceCount()
  {
    return a.c(this.resources);
  }
  
  public List<Resource> getResources()
  {
    return a.a(this.resources);
  }
  
  protected String getTag()
  {
    return "Material";
  }
  
  public List<String> getViewMonitorUrls()
  {
    return EntityUtils.ignoreEmptyItem(this.viewMonitorUrls);
  }
  
  public boolean isMaterialViewLogLevel()
  {
    boolean bool;
    if (this.viewLogLevel == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isResourceViewLogLevel()
  {
    int i = this.viewLogLevel;
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public void setAdPassBack(String paramString)
  {
    this.adPassBack = paramString;
  }
  
  public void setViewMonitorUrls(List<String> paramList)
  {
    this.viewMonitorUrls = paramList;
  }
  
  public static class Resource
  {
    @Expose
    private List<String> clickMonitorUrls;
    @Expose
    @SerializedName("packageName")
    private String deeplinkPackageName;
    @Expose
    private String deeplinkUrl;
    @Expose
    @SerializedName("desc")
    private String describe;
    @Expose
    private StringHolder extra;
    @Expose
    private long id;
    @Expose
    private String landingPageUrl;
    @Expose
    @SerializedName("urls")
    private List<ResourceData> resourceDatas;
    @Expose
    private String tag;
    @Expose
    private String title;
    @Expose
    private List<String> viewMonitorUrls;
    
    public List<String> getClickMonitorUrls()
    {
      return EntityUtils.ignoreEmptyItem(this.clickMonitorUrls);
    }
    
    public Deeplink getDeeplink()
    {
      return new Deeplink(this.deeplinkPackageName, this.deeplinkUrl, null);
    }
    
    public String getDescribe()
    {
      return this.describe;
    }
    
    public String getExtra()
    {
      Object localObject = this.extra;
      if (localObject != null) {
        localObject = ((StringHolder)localObject).value;
      } else {
        localObject = null;
      }
      return localObject;
    }
    
    public long getId()
    {
      return this.id;
    }
    
    public String getLandingPageUrl()
    {
      return this.landingPageUrl;
    }
    
    public ResourceData getResourceData(int paramInt)
    {
      return (ResourceData)a.b(this.resourceDatas, paramInt);
    }
    
    public int getResourceDataCount()
    {
      return a.c(this.resourceDatas);
    }
    
    public List<ResourceData> getResourceDatas()
    {
      return a.a(this.resourceDatas);
    }
    
    public String getTag()
    {
      return this.tag;
    }
    
    public String getTitle()
    {
      return this.title;
    }
    
    public List<String> getViewMonitorUrls()
    {
      return EntityUtils.ignoreEmptyItem(this.viewMonitorUrls);
    }
    
    public void setClickMonitorUrls(List<String> paramList)
    {
      this.clickMonitorUrls = paramList;
    }
    
    public void setViewMonitorUrls(List<String> paramList)
    {
      this.viewMonitorUrls = paramList;
    }
    
    public static class Deeplink
    {
      private final String deeplinkPackageName;
      private final String deeplinkUrl;
      
      private Deeplink(String paramString1, String paramString2)
      {
        this.deeplinkPackageName = paramString1;
        this.deeplinkUrl = paramString2;
      }
      
      public String getDeeplinkPackageName()
      {
        return this.deeplinkPackageName;
      }
      
      public String getDeeplinkUrl()
      {
        return this.deeplinkUrl;
      }
    }
    
    public static class ResourceData
    {
      @Expose
      private String localPath;
      @Expose
      @SerializedName("digest")
      private String md5;
      @Expose
      private String url;
      
      public String getLocalPath()
      {
        return this.localPath;
      }
      
      public String getMd5()
      {
        return this.md5;
      }
      
      public String getUrl()
      {
        return this.url;
      }
      
      public void setLocalPath(String paramString)
      {
        this.localPath = paramString;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.common.Material
 * JD-Core Version:    0.7.0.1
 */