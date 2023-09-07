package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public class KeyStringSettingItem
  extends SettingItem<String>
{
  public static final Parcelable.Creator<KeyStringSettingItem> CREATOR = new a();
  public static final String TYPE = "string";
  
  protected Object getJsonValue()
  {
    return getValue();
  }
  
  protected String getType()
  {
    return "string";
  }
  
  protected void setValueFromJson(JSONObject paramJSONObject)
  {
    setValue(paramJSONObject.optString("value"));
  }
  
  protected String stringToValue(String paramString)
  {
    return paramString;
  }
  
  protected String valueToString(String paramString)
  {
    return paramString;
  }
  
  static final class a
    implements Parcelable.Creator<KeyStringSettingItem>
  {
    public KeyStringSettingItem a(Parcel paramParcel)
    {
      KeyStringSettingItem localKeyStringSettingItem = new KeyStringSettingItem();
      localKeyStringSettingItem.fillFromParcel(paramParcel);
      return localKeyStringSettingItem;
    }
    
    public KeyStringSettingItem[] b(int paramInt)
    {
      return new KeyStringSettingItem[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.settingsdk.backup.data.KeyStringSettingItem
 * JD-Core Version:    0.7.0.1
 */