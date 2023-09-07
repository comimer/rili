package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public class KeyJsonSettingItem
  extends SettingItem<JSONObject>
{
  public static final Parcelable.Creator<KeyJsonSettingItem> CREATOR = new a();
  public static final String TYPE = "json";
  
  protected Object getJsonValue()
  {
    return getValue();
  }
  
  protected String getType()
  {
    return "json";
  }
  
  protected void setValueFromJson(JSONObject paramJSONObject)
  {
    setValue(paramJSONObject.optJSONObject("value"));
  }
  
  protected JSONObject stringToValue(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      return paramString;
    }
    catch (JSONException paramString)
    {
      Log.e("SettingsBackup", "JSONException occorred when stringToValue()", paramString);
    }
    return null;
  }
  
  protected String valueToString(JSONObject paramJSONObject)
  {
    return paramJSONObject.toString();
  }
  
  static final class a
    implements Parcelable.Creator<KeyJsonSettingItem>
  {
    public KeyJsonSettingItem a(Parcel paramParcel)
    {
      KeyJsonSettingItem localKeyJsonSettingItem = new KeyJsonSettingItem();
      localKeyJsonSettingItem.fillFromParcel(paramParcel);
      return localKeyJsonSettingItem;
    }
    
    public KeyJsonSettingItem[] b(int paramInt)
    {
      return new KeyJsonSettingItem[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.settingsdk.backup.data.KeyJsonSettingItem
 * JD-Core Version:    0.7.0.1
 */