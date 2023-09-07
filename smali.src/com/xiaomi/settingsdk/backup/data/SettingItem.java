package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class SettingItem<T>
  implements Parcelable, Comparable<SettingItem<?>>
{
  private static final String KEY_KEY = "key";
  private static final String KEY_TYPE = "type";
  protected static final String KEY_VALUE = "value";
  protected static final String TAG = "SettingsBackup";
  public String key;
  private T value;
  
  private static SettingItem<?> createByType(String paramString)
  {
    if ("string".equals(paramString))
    {
      paramString = new KeyStringSettingItem();
    }
    else if ("binary".equals(paramString))
    {
      paramString = new KeyBinarySettingItem();
    }
    else if ("json".equals(paramString))
    {
      paramString = new KeyJsonSettingItem();
    }
    else
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("type: ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(" are not handled!");
      Log.w("SettingsBackup", localStringBuilder.toString());
      paramString = null;
    }
    return paramString;
  }
  
  public static SettingItem<?> fromJson(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
    {
      SettingItem localSettingItem = createByType(paramJSONObject.optString("type"));
      if (localSettingItem == null) {
        return null;
      }
      localSettingItem.key = paramJSONObject.optString("key");
      localSettingItem.setValueFromJson(paramJSONObject);
      return localSettingItem;
    }
    throw new IllegalArgumentException("json cannot be null");
  }
  
  public int compareTo(SettingItem<?> paramSettingItem)
  {
    if (paramSettingItem == null) {
      return 1;
    }
    String str = this.key;
    if ((str == null) && (paramSettingItem.key != null)) {
      return -1;
    }
    return str.compareTo(paramSettingItem.key);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected void fillFromParcel(Parcel paramParcel)
  {
    String str = paramParcel.readString();
    paramParcel = paramParcel.readString();
    this.key = str;
    setValue(stringToValue(paramParcel));
  }
  
  protected abstract Object getJsonValue();
  
  protected abstract String getType();
  
  public T getValue()
  {
    return this.value;
  }
  
  public void setValue(T paramT)
  {
    this.value = paramT;
  }
  
  protected abstract void setValueFromJson(JSONObject paramJSONObject);
  
  protected abstract T stringToValue(String paramString);
  
  public JSONObject toJson()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("key", this.key);
      localJSONObject.put("type", getType());
      localJSONObject.put("value", getJsonValue());
    }
    catch (JSONException localJSONException)
    {
      Log.e("SettingsBackup", "JSONException occorred when toJson()", localJSONException);
    }
    return localJSONObject;
  }
  
  protected abstract String valueToString(T paramT);
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    String str = valueToString(getValue());
    paramParcel.writeString(this.key);
    paramParcel.writeString(str);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.settingsdk.backup.data.SettingItem
 * JD-Core Version:    0.7.0.1
 */