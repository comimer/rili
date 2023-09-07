package com.xiaomi.ad.entity.unified;

import com.google.gson.annotations.Expose;
import com.xiaomi.ad.entity.common.Material;
import com.xiaomi.ad.entity.common.Material.Resource;
import com.xiaomi.ad.entity.common.StringHolder;
import com.xiaomi.ad.entity.contract.AdInfoEntityBase;
import com.xiaomi.ad.entity.util.GsonUtils;
import d6.a;
import java.util.Iterator;
import java.util.List;

public class UnifiedAdInfo
  extends AdInfoEntityBase
{
  private static final double GSON_CONTENT_VERSION = 1.0D;
  private static final String TAG = "UnifiedAdInfo";
  @Expose
  private String digest;
  @Expose
  private long endTimeInMillis;
  @Expose
  private StringHolder extra;
  @Expose
  private List<Material> materials;
  @Expose
  private boolean preload;
  @Expose
  private long startTimeInMillis;
  @Expose
  private String tagId;
  
  public static final UnifiedAdInfo deserialize(String paramString)
  {
    return (UnifiedAdInfo)GsonUtils.fromJsonString(UnifiedAdInfo.class, paramString, "UnifiedAdInfo");
  }
  
  public String getDigest()
  {
    return this.digest;
  }
  
  public long getEndTimeInMillis()
  {
    return this.endTimeInMillis;
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
  
  public Material getMaterialById(long paramLong)
  {
    Object localObject = this.materials;
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      Iterator localIterator = this.materials.iterator();
      while (localIterator.hasNext())
      {
        localObject = (Material)localIterator.next();
        if ((localObject != null) && (((Material)localObject).getId() == paramLong)) {
          return localObject;
        }
      }
    }
    return null;
  }
  
  public List<Material> getMaterials()
  {
    return a.a(this.materials);
  }
  
  public Material.Resource getResourceById(long paramLong1, long paramLong2)
  {
    if (getMaterialById(paramLong1) == null) {
      return null;
    }
    return getResourceById(paramLong1, paramLong2);
  }
  
  public Material.Resource getResourceById(Material paramMaterial, long paramLong)
  {
    if (paramMaterial == null) {
      return null;
    }
    paramMaterial = paramMaterial.getResources();
    if ((paramMaterial != null) && (!paramMaterial.isEmpty()))
    {
      Iterator localIterator = paramMaterial.iterator();
      while (localIterator.hasNext())
      {
        paramMaterial = (Material.Resource)localIterator.next();
        if (paramMaterial.getId() == paramLong) {
          return paramMaterial;
        }
      }
    }
    return null;
  }
  
  public long getStartTimeInMillis()
  {
    return this.startTimeInMillis;
  }
  
  protected String getTag()
  {
    return "UnifiedAdInfo";
  }
  
  public String getTagId()
  {
    return this.tagId;
  }
  
  public boolean isInvalid()
  {
    long l1 = getStartTimeInMillis();
    long l2 = getEndTimeInMillis();
    if (l1 > l2) {
      return true;
    }
    long l3 = System.currentTimeMillis();
    int i;
    if ((this.preload) && (l3 < l1)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return false;
    }
    return (l1 > l3) || (l3 > l2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.unified.UnifiedAdInfo
 * JD-Core Version:    0.7.0.1
 */