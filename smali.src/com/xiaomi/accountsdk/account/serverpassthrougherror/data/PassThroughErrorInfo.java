package com.xiaomi.accountsdk.account.serverpassthrougherror.data;

import a6.k.f;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class PassThroughErrorInfo
  implements Parcelable
{
  public static final Parcelable.Creator<PassThroughErrorInfo> CREATOR = new a();
  private String msgContent;
  private ButtonInfo negativeButtonInfo;
  private ButtonInfo neutralButtonInfo;
  private ButtonInfo positiveButtonInfo;
  private String title;
  
  public PassThroughErrorInfo(k.f paramf)
  {
    if (paramf == null) {
      return;
    }
    Object localObject = paramf.h("title");
    if ((localObject instanceof String)) {
      this.title = ((String)localObject);
    }
    localObject = paramf.h("tips");
    if ((localObject instanceof String)) {
      this.msgContent = ((String)localObject);
    }
    localObject = paramf.h("negative_button");
    if ((localObject instanceof Map)) {
      this.negativeButtonInfo = new ButtonInfo((Map)localObject);
    }
    localObject = paramf.h("neutral_button");
    if ((localObject instanceof Map)) {
      this.neutralButtonInfo = new ButtonInfo((Map)localObject);
    }
    paramf = paramf.h("positive_button");
    if ((paramf instanceof Map)) {
      this.positiveButtonInfo = new ButtonInfo((Map)paramf);
    }
  }
  
  protected PassThroughErrorInfo(Parcel paramParcel)
  {
    this.title = paramParcel.readString();
    this.msgContent = paramParcel.readString();
    this.negativeButtonInfo = ((ButtonInfo)paramParcel.readParcelable(ButtonInfo.class.getClassLoader()));
    this.neutralButtonInfo = ((ButtonInfo)paramParcel.readParcelable(ButtonInfo.class.getClassLoader()));
    this.positiveButtonInfo = ((ButtonInfo)paramParcel.readParcelable(ButtonInfo.class.getClassLoader()));
  }
  
  private PassThroughErrorInfo(String paramString1, String paramString2, ButtonInfo paramButtonInfo1, ButtonInfo paramButtonInfo2, ButtonInfo paramButtonInfo3)
  {
    this.title = paramString1;
    this.msgContent = paramString2;
    this.negativeButtonInfo = paramButtonInfo1;
    this.neutralButtonInfo = paramButtonInfo2;
    this.positiveButtonInfo = paramButtonInfo3;
  }
  
  public PassThroughErrorInfo(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null) {
      return;
    }
    this.msgContent = paramJSONObject.optString("tips");
    this.title = paramJSONObject.optString("title");
    if (paramJSONObject.has("negative_button")) {
      this.negativeButtonInfo = new ButtonInfo(paramJSONObject.getJSONObject("negative_button"));
    }
    if (paramJSONObject.has("neutral_button")) {
      this.neutralButtonInfo = new ButtonInfo(paramJSONObject.getJSONObject("neutral_button"));
    }
    if (paramJSONObject.has("positive_button")) {
      this.positiveButtonInfo = new ButtonInfo(paramJSONObject.getJSONObject("positive_button"));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ButtonInfo getNegativeButtonInfo()
  {
    return this.negativeButtonInfo;
  }
  
  public ButtonInfo getNeutralButtonInfo()
  {
    return this.neutralButtonInfo;
  }
  
  public ButtonInfo getPositiveButtonInfo()
  {
    return this.positiveButtonInfo;
  }
  
  public String getTips()
  {
    return this.msgContent;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PassThroughErrorInfo{title='");
    localStringBuilder.append(this.title);
    localStringBuilder.append('\'');
    localStringBuilder.append(", msgContent='");
    localStringBuilder.append(this.msgContent);
    localStringBuilder.append('\'');
    localStringBuilder.append(", negativeButtonInfo=");
    localStringBuilder.append(this.negativeButtonInfo);
    localStringBuilder.append(", neutralButtonInfo=");
    localStringBuilder.append(this.neutralButtonInfo);
    localStringBuilder.append(", positiveButtonInfo=");
    localStringBuilder.append(this.positiveButtonInfo);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.msgContent);
    paramParcel.writeParcelable(this.negativeButtonInfo, paramInt);
    paramParcel.writeParcelable(this.neutralButtonInfo, paramInt);
    paramParcel.writeParcelable(this.positiveButtonInfo, paramInt);
  }
  
  class a
    implements Parcelable.Creator<PassThroughErrorInfo>
  {
    public PassThroughErrorInfo a(Parcel paramParcel)
    {
      return new PassThroughErrorInfo(paramParcel);
    }
    
    public PassThroughErrorInfo[] b(int paramInt)
    {
      return new PassThroughErrorInfo[paramInt];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private ButtonInfo c;
    private ButtonInfo d;
    private ButtonInfo e;
    
    public PassThroughErrorInfo a()
    {
      return new PassThroughErrorInfo(this.a, this.b, this.c, this.d, this.e, null);
    }
    
    public b b(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b c(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo
 * JD-Core Version:    0.7.0.1
 */