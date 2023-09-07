package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import org.json.JSONObject;

public class KeyBinarySettingItem
  extends SettingItem<byte[]>
{
  public static final Parcelable.Creator<KeyBinarySettingItem> CREATOR = new a();
  public static final String TYPE = "binary";
  
  protected Object getJsonValue()
  {
    return valueToString((byte[])getValue());
  }
  
  protected String getType()
  {
    return "binary";
  }
  
  protected void setValueFromJson(JSONObject paramJSONObject)
  {
    setValue(stringToValue(paramJSONObject.optString("value")));
  }
  
  protected byte[] stringToValue(String paramString)
  {
    return Base64.decode(paramString, 2);
  }
  
  protected String valueToString(byte[] paramArrayOfByte)
  {
    return Base64.encodeToString(paramArrayOfByte, 2);
  }
  
  static final class a
    implements Parcelable.Creator<KeyBinarySettingItem>
  {
    public KeyBinarySettingItem a(Parcel paramParcel)
    {
      KeyBinarySettingItem localKeyBinarySettingItem = new KeyBinarySettingItem();
      localKeyBinarySettingItem.fillFromParcel(paramParcel);
      return localKeyBinarySettingItem;
    }
    
    public KeyBinarySettingItem[] b(int paramInt)
    {
      return new KeyBinarySettingItem[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.settingsdk.backup.data.KeyBinarySettingItem
 * JD-Core Version:    0.7.0.1
 */