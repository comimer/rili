package com.miui.systemAdSolution.landingPageV2.task.action;

import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
import com.xiaomi.ad.entity.contract.GsonEntityBase;
import com.xiaomi.ad.entity.util.GsonUtils;
import d6.d;
import e5.b;
import e5.b.a;

public class DownloadAction
  extends Action<b>
{
  public static final int DOWNLOAD_SOURCE_DEFAULT = 3;
  public static final int DOWNLOAD_SOURCE_MIMARKET = 1;
  public static final int DOWNLOAD_SOURCE_NATIVE = 2;
  private static final String TAG = "DownloadAction";
  private a mDownloadInfo;
  private int mDownloadSource;
  private boolean mIsDownloadAutoStart;
  private boolean mIsDownloadByMiniCard;
  private b mMiniCardConfig;
  private String mPackageName;
  
  protected DownloadAction(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel != null) {
      try
      {
        String str = paramParcel.readString();
        this.mPackageName = str;
        if (TextUtils.isEmpty(str)) {
          this.mPackageName = getRealOrFakePackageName();
        }
        this.mDownloadSource = paramParcel.readInt();
        this.mIsDownloadByMiniCard = parseIntToBoolean(paramParcel.readInt());
        this.mIsDownloadAutoStart = parseIntToBoolean(paramParcel.readInt());
        this.mMiniCardConfig = parseMiniCardConfig(paramParcel.readString());
        this.mDownloadInfo = parseDownloadInfo(paramParcel.readString());
      }
      catch (Exception paramParcel)
      {
        d.d("DownloadAction", "DownloadAction parse parcel e : ", paramParcel);
      }
    }
  }
  
  public DownloadAction(Action<b>.a paramAction, b paramb, boolean paramBoolean1, String paramString, int paramInt, boolean paramBoolean2, boolean paramBoolean3, b paramb1, a parama)
  {
    super(paramAction, paramb, paramBoolean1);
    if ((paramb1 == null) || (parama == null)) {
      d.c("DownloadAction", "config info can't be null");
    }
    this.mPackageName = paramString;
    this.mDownloadSource = paramInt;
    this.mIsDownloadByMiniCard = paramBoolean2;
    this.mIsDownloadAutoStart = paramBoolean3;
    this.mMiniCardConfig = paramb1;
    this.mDownloadInfo = parama;
  }
  
  private static String getRealOrFakePackageName()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FAKE_PACKAGE:");
    localStringBuilder.append(String.valueOf(System.currentTimeMillis()).hashCode());
    String str = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("generate fake packageName[");
    localStringBuilder.append(str);
    localStringBuilder.append("]");
    d.g("DownloadAction", localStringBuilder.toString());
    return str;
  }
  
  private final a parseDownloadInfo(String paramString)
  {
    try
    {
      paramString = (a)GsonUtils.fromJsonString(a.class, paramString, "DownloadAction");
      return paramString;
    }
    catch (Exception paramString)
    {
      d.d("DownloadAction", "parse DownloadInfo e : ", paramString);
    }
    return null;
  }
  
  private final b parseMiniCardConfig(String paramString)
  {
    try
    {
      paramString = (b)GsonUtils.fromJsonString(b.class, paramString, "DownloadAction");
      return paramString;
    }
    catch (Exception paramString)
    {
      d.d("DownloadAction", "parse MiniCardConfig e : ", paramString);
    }
    return null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected int getActionType()
  {
    return 3;
  }
  
  public a getDownloadInfo()
  {
    return this.mDownloadInfo;
  }
  
  public int getDownloadSource()
  {
    return this.mDownloadSource;
  }
  
  public b getMiniCardConfig()
  {
    return this.mMiniCardConfig;
  }
  
  public String getPackageName()
  {
    return this.mPackageName;
  }
  
  public boolean isDownloadAutoStart()
  {
    return this.mIsDownloadAutoStart;
  }
  
  public boolean isIsDownloadByMiniCard()
  {
    return this.mIsDownloadByMiniCard;
  }
  
  protected b readBinder(IBinder paramIBinder)
  {
    return b.a.n0(paramIBinder);
  }
  
  public void setPackageName(String paramString)
  {
    this.mPackageName = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.mPackageName);
    paramParcel.writeInt(this.mDownloadSource);
    paramParcel.writeInt(parseBooleanToInt(this.mIsDownloadByMiniCard));
    paramParcel.writeInt(parseBooleanToInt(this.mIsDownloadAutoStart));
    paramParcel.writeString(this.mMiniCardConfig.serialize());
    paramParcel.writeString(this.mDownloadInfo.serialize());
  }
  
  public class a
    extends GsonEntityBase
  {
    protected String getTag()
    {
      return "DownloadInfo";
    }
  }
  
  public class b
    extends GsonEntityBase
  {
    protected String getTag()
    {
      return "MiniCardConfig";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.landingPageV2.task.action.DownloadAction
 * JD-Core Version:    0.7.0.1
 */