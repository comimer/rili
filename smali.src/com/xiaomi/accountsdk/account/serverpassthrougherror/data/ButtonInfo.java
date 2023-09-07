package com.xiaomi.accountsdk.account.serverpassthrougherror.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.j;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import v5.a;

public class ButtonInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ButtonInfo> CREATOR = new a();
  private String extraWebUrl;
  private a localClickListener;
  private String nativePage;
  private Map<String, Object> pageParams;
  private String text;
  
  protected ButtonInfo(Parcel paramParcel)
  {
    this.text = paramParcel.readString();
    this.nativePage = paramParcel.readString();
    this.extraWebUrl = paramParcel.readString();
    HashMap localHashMap = new HashMap();
    this.pageParams = localHashMap;
    paramParcel.readMap(localHashMap, a.class.getClassLoader());
  }
  
  public ButtonInfo(String paramString1, String paramString2, String paramString3, Map<String, Object> paramMap, a parama)
  {
    this.text = paramString1;
    this.nativePage = paramString2;
    this.extraWebUrl = paramString3;
    this.pageParams = paramMap;
    this.localClickListener = parama;
  }
  
  public ButtonInfo(Map paramMap)
  {
    if (paramMap == null) {
      return;
    }
    Object localObject = paramMap.get("button_text");
    if ((localObject instanceof String)) {
      this.text = ((String)localObject);
    }
    localObject = paramMap.get("native_page");
    if ((localObject instanceof String)) {
      this.nativePage = ((String)localObject);
    }
    localObject = paramMap.get("extra_web_url");
    if ((localObject instanceof String)) {
      this.extraWebUrl = ((String)localObject);
    }
    paramMap = paramMap.get("page_params");
    if ((paramMap instanceof Map)) {
      this.pageParams = ((Map)paramMap);
    }
    addJumpFlagToParams();
  }
  
  public ButtonInfo(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null) {
      return;
    }
    this.text = paramJSONObject.optString("button_text");
    this.nativePage = paramJSONObject.optString("native_page");
    this.extraWebUrl = paramJSONObject.optString("extra_web_url");
    if (paramJSONObject.has("page_params")) {
      this.pageParams = j.b(paramJSONObject.getJSONObject("page_params"));
    }
    addJumpFlagToParams();
  }
  
  private void addJumpFlagToParams()
  {
    if (this.pageParams == null) {
      this.pageParams = new HashMap();
    }
    this.pageParams.put("spte_is_from_pass_through_error_jump", Boolean.TRUE);
  }
  
  public ButtonInfo copy()
  {
    return new b().f(this.text).b(this.extraWebUrl).d(this.nativePage).e(new HashMap(this.pageParams)).c(this.localClickListener).a();
  }
  
  public void coverEmptyValueByLocalInfo(ButtonInfo paramButtonInfo)
  {
    if (paramButtonInfo == null) {
      return;
    }
    if (TextUtils.isEmpty(this.text)) {
      this.text = paramButtonInfo.text;
    }
    if (TextUtils.isEmpty(this.nativePage)) {
      this.nativePage = paramButtonInfo.nativePage;
    }
    if (TextUtils.isEmpty(this.extraWebUrl)) {
      this.extraWebUrl = paramButtonInfo.extraWebUrl;
    }
    Map localMap1 = this.pageParams;
    if (localMap1 == null)
    {
      this.pageParams = paramButtonInfo.pageParams;
    }
    else
    {
      Map localMap2 = paramButtonInfo.pageParams;
      if (localMap2 != null) {
        localMap1.putAll(localMap2);
      }
    }
    if (this.localClickListener == null) {
      this.localClickListener = paramButtonInfo.localClickListener;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getExtraWebUrl()
  {
    return this.extraWebUrl;
  }
  
  public a getLocalClickListener()
  {
    return this.localClickListener;
  }
  
  public String getNativePage()
  {
    return this.nativePage;
  }
  
  public Map<String, Object> getPageParams()
  {
    return this.pageParams;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ButtonInfo{text='");
    localStringBuilder.append(this.text);
    localStringBuilder.append('\'');
    localStringBuilder.append(", nativePage='");
    localStringBuilder.append(this.nativePage);
    localStringBuilder.append('\'');
    localStringBuilder.append(", extraWebUrl='");
    localStringBuilder.append(this.extraWebUrl);
    localStringBuilder.append('\'');
    localStringBuilder.append(", pageParams=");
    localStringBuilder.append(this.pageParams);
    localStringBuilder.append(", localClickListener=");
    localStringBuilder.append(this.localClickListener);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.text);
    paramParcel.writeString(this.nativePage);
    paramParcel.writeString(this.extraWebUrl);
    paramParcel.writeMap(this.pageParams);
  }
  
  class a
    implements Parcelable.Creator<ButtonInfo>
  {
    public ButtonInfo a(Parcel paramParcel)
    {
      return new ButtonInfo(paramParcel);
    }
    
    public ButtonInfo[] b(int paramInt)
    {
      return new ButtonInfo[paramInt];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private Map<String, Object> d;
    private a e;
    
    public ButtonInfo a()
    {
      return new ButtonInfo(this.a, this.b, this.c, this.d, this.e);
    }
    
    public b b(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b c(a parama)
    {
      this.e = parama;
      return this;
    }
    
    public b d(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b e(Map<String, Object> paramMap)
    {
      this.d = paramMap;
      return this;
    }
    
    public b f(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.serverpassthrougherror.data.ButtonInfo
 * JD-Core Version:    0.7.0.1
 */