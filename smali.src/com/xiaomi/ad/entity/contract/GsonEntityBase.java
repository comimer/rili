package com.xiaomi.ad.entity.contract;

import com.xiaomi.ad.entity.util.GsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class GsonEntityBase
  implements IGsonEntity
{
  protected abstract String getTag();
  
  public final String serialize()
  {
    return GsonUtils.toJsonString(this, getTag());
  }
  
  public final JSONObject toJson()
  {
    try
    {
      localObject = new JSONObject(serialize());
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("should NEVER happen, ");
      ((StringBuilder)localObject).append(getTag());
      ((StringBuilder)localObject).append(": ");
      ((StringBuilder)localObject).append(serialize());
      throw new RuntimeException(((StringBuilder)localObject).toString(), localJSONException);
    }
  }
  
  public final String toString()
  {
    return serialize();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.contract.GsonEntityBase
 * JD-Core Version:    0.7.0.1
 */