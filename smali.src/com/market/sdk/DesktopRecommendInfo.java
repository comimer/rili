package com.market.sdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public class DesktopRecommendInfo
  implements Parcelable
{
  public static final Parcelable.Creator<DesktopRecommendInfo> CREATOR = new c();
  public static final long DEFAULT_CACHE_TIME = 300000L;
  @SerializedName("appInfoList")
  public List<AppstoreAppInfo> appInfoList = new ArrayList();
  @SerializedName("backgroundImageUrl")
  public String backgroundImageUrl = "";
  @SerializedName("bannerList")
  public List<AdsBannerInfo> bannerList = new ArrayList();
  @SerializedName("cacheTime")
  public long cacheTime;
  @SerializedName("description")
  public String description = "";
  @SerializedName("folderId")
  public long folderId = -1L;
  @SerializedName("sid")
  public String sid = "";
  
  public DesktopRecommendInfo() {}
  
  public DesktopRecommendInfo(Parcel paramParcel)
  {
    this.folderId = paramParcel.readLong();
    paramParcel.readTypedList(this.appInfoList, AppstoreAppInfo.CREATOR);
    paramParcel.readTypedList(this.bannerList, AdsBannerInfo.CREATOR);
    this.backgroundImageUrl = paramParcel.readString();
    this.description = paramParcel.readString();
    this.sid = paramParcel.readString();
    this.cacheTime = paramParcel.readLong();
  }
  
  public static DesktopRecommendInfo restore(String paramString)
  {
    GsonBuilder localGsonBuilder = new GsonBuilder();
    localGsonBuilder.registerTypeAdapter(Uri.class, new b());
    return (DesktopRecommendInfo)localGsonBuilder.create().fromJson(paramString, DesktopRecommendInfo.class);
  }
  
  public String convertToJson()
  {
    GsonBuilder localGsonBuilder = new GsonBuilder();
    localGsonBuilder.registerTypeAdapter(Uri.class, new a());
    return localGsonBuilder.create().toJson(this);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.folderId);
    paramParcel.writeTypedList(this.appInfoList);
    paramParcel.writeTypedList(this.bannerList);
    paramParcel.writeString(this.backgroundImageUrl);
    paramParcel.writeString(this.description);
    paramParcel.writeString(this.sid);
    paramParcel.writeLong(this.cacheTime);
  }
  
  class a
    implements JsonSerializer<Uri>
  {
    a() {}
    
    public JsonElement a(Uri paramUri, Type paramType, JsonSerializationContext paramJsonSerializationContext)
    {
      return new JsonPrimitive(paramUri.toString());
    }
  }
  
  class b
    implements JsonDeserializer<Uri>
  {
    public Uri a(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
      throws JsonParseException
    {
      return Uri.parse(paramJsonElement.getAsJsonPrimitive().getAsString());
    }
  }
  
  class c
    implements Parcelable.Creator<DesktopRecommendInfo>
  {
    public DesktopRecommendInfo a(Parcel paramParcel)
    {
      return new DesktopRecommendInfo(paramParcel);
    }
    
    public DesktopRecommendInfo[] b(int paramInt)
    {
      return new DesktopRecommendInfo[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.DesktopRecommendInfo
 * JD-Core Version:    0.7.0.1
 */