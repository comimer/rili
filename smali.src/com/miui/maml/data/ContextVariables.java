package com.miui.maml.data;

import android.graphics.Bitmap;
import java.util.HashMap;

public class ContextVariables
{
  private HashMap<String, Object> mMap = new HashMap();
  
  public void clear()
  {
    this.mMap.clear();
  }
  
  public Bitmap getBmp(String paramString)
  {
    paramString = this.mMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    if (!(paramString instanceof Bitmap)) {
      return null;
    }
    return (Bitmap)paramString;
  }
  
  public Double getDouble(String paramString)
  {
    paramString = this.mMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    if (!(paramString instanceof Double)) {
      return null;
    }
    return (Double)paramString;
  }
  
  public Integer getInt(String paramString)
  {
    paramString = this.mMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    if (!(paramString instanceof Integer)) {
      return null;
    }
    return (Integer)paramString;
  }
  
  public Long getLong(String paramString)
  {
    paramString = this.mMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    if (!(paramString instanceof Long)) {
      return null;
    }
    return (Long)paramString;
  }
  
  public String getString(String paramString)
  {
    paramString = this.mMap.get(paramString);
    if (paramString == null) {
      return null;
    }
    if (!(paramString instanceof String)) {
      return String.valueOf(paramString);
    }
    return (String)paramString;
  }
  
  public Object getVar(String paramString)
  {
    return this.mMap.get(paramString);
  }
  
  public void setVar(String paramString, Object paramObject)
  {
    this.mMap.put(paramString, paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.ContextVariables
 * JD-Core Version:    0.7.0.1
 */