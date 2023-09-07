package com.xiaomi.accountsdk.utils;

import java.util.AbstractMap;
import java.util.HashMap;

public class EasyMap<K, V>
  extends HashMap<K, V>
{
  private static final long serialVersionUID = -7846033686833655451L;
  
  public EasyMap() {}
  
  public EasyMap(K paramK, V paramV)
  {
    put(paramK, paramV);
  }
  
  public EasyMap<K, V> easyPut(K paramK, V paramV)
  {
    put(paramK, paramV);
    return this;
  }
  
  public EasyMap<K, V> easyPutOpt(K paramK, V paramV)
  {
    boolean bool = true;
    if ((paramK != null) && (paramV != null))
    {
      if ((paramV instanceof String)) {
        bool = true ^ ((String)paramV).isEmpty();
      }
    }
    else {
      bool = false;
    }
    if (bool) {
      put(paramK, paramV);
    }
    return this;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.EasyMap
 * JD-Core Version:    0.7.0.1
 */