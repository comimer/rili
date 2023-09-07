package com.xiaomi.passport.ui.license;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class LoginAgreementAndPrivacy
  implements Parcelable
{
  public static final Parcelable.Creator<LoginAgreementAndPrivacy> CREATOR = new a();
  public final String clickLineHexColor;
  public final boolean isShowClinkLineUnderLine;
  public final String normalTextHexColor;
  public final ArrayList<PrivacyReportInfo> privacyReportInfoList;
  public final String tripartiteAppAgreementUrl;
  public final String tripartiteAppCustomLicense;
  public final String tripartiteAppPrivacyUrl;
  public final Type type;
  
  protected LoginAgreementAndPrivacy(Parcel paramParcel)
  {
    this.type = Type.getTypeByValue(paramParcel.readInt());
    this.tripartiteAppAgreementUrl = paramParcel.readString();
    this.tripartiteAppPrivacyUrl = paramParcel.readString();
    this.tripartiteAppCustomLicense = paramParcel.readString();
    boolean bool;
    if (paramParcel.readByte() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.isShowClinkLineUnderLine = bool;
    this.clickLineHexColor = paramParcel.readString();
    this.normalTextHexColor = paramParcel.readString();
    this.privacyReportInfoList = paramParcel.readArrayList(getClass().getClassLoader());
  }
  
  private LoginAgreementAndPrivacy(Type paramType, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, String paramString5, ArrayList<PrivacyReportInfo> paramArrayList)
  {
    this.type = paramType;
    this.tripartiteAppAgreementUrl = paramString1;
    this.tripartiteAppPrivacyUrl = paramString2;
    this.tripartiteAppCustomLicense = paramString3;
    this.isShowClinkLineUnderLine = paramBoolean;
    this.clickLineHexColor = paramString4;
    this.normalTextHexColor = paramString5;
    this.privacyReportInfoList = paramArrayList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LoginAgreementAndPrivacy{type=");
    localStringBuilder.append(this.type);
    localStringBuilder.append(", tripartiteAppAgreementUrl='");
    localStringBuilder.append(this.tripartiteAppAgreementUrl);
    localStringBuilder.append('\'');
    localStringBuilder.append(", tripartiteAppPrivacyUrl='");
    localStringBuilder.append(this.tripartiteAppPrivacyUrl);
    localStringBuilder.append('\'');
    localStringBuilder.append(", tripartiteAppCustomLicense='");
    localStringBuilder.append(this.tripartiteAppCustomLicense);
    localStringBuilder.append('\'');
    localStringBuilder.append(", isShowClinkLineUnderLine=");
    localStringBuilder.append(this.isShowClinkLineUnderLine);
    localStringBuilder.append(", clickLineHexColor='");
    localStringBuilder.append(this.clickLineHexColor);
    localStringBuilder.append('\'');
    localStringBuilder.append(", normalTextHexColor='");
    localStringBuilder.append(this.normalTextHexColor);
    localStringBuilder.append('\'');
    localStringBuilder.append(", privacyReportInfoList='");
    localStringBuilder.append(this.privacyReportInfoList);
    localStringBuilder.append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.type.getValue());
    paramParcel.writeString(this.tripartiteAppAgreementUrl);
    paramParcel.writeString(this.tripartiteAppPrivacyUrl);
    paramParcel.writeString(this.tripartiteAppCustomLicense);
    paramParcel.writeByte((byte)this.isShowClinkLineUnderLine);
    paramParcel.writeString(this.clickLineHexColor);
    paramParcel.writeString(this.normalTextHexColor);
    paramParcel.writeList(this.privacyReportInfoList);
  }
  
  public static class PrivacyReportInfo
    implements Parcelable
  {
    public static final Parcelable.Creator<PrivacyReportInfo> CREATOR = new a();
    public final String apkVersionName;
    public final String idContent;
    public final String packageName;
    public final String policyName;
    
    protected PrivacyReportInfo(Parcel paramParcel)
    {
      this.policyName = paramParcel.readString();
      this.idContent = paramParcel.readString();
      this.packageName = paramParcel.readString();
      this.apkVersionName = paramParcel.readString();
    }
    
    public PrivacyReportInfo(String paramString1, String paramString2, String paramString3, String paramString4)
    {
      this.policyName = paramString1;
      this.idContent = paramString2;
      this.packageName = paramString3;
      this.apkVersionName = paramString4;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("PrivacyReportInfo{policyName='");
      localStringBuilder.append(this.policyName);
      localStringBuilder.append('\'');
      localStringBuilder.append(", idContent='");
      localStringBuilder.append(this.idContent);
      localStringBuilder.append('\'');
      localStringBuilder.append(", packageName='");
      localStringBuilder.append(this.packageName);
      localStringBuilder.append('\'');
      localStringBuilder.append(", apkVersionName='");
      localStringBuilder.append(this.apkVersionName);
      localStringBuilder.append('\'');
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.policyName);
      paramParcel.writeString(this.idContent);
      paramParcel.writeString(this.packageName);
      paramParcel.writeString(this.apkVersionName);
    }
    
    class a
      implements Parcelable.Creator<LoginAgreementAndPrivacy.PrivacyReportInfo>
    {
      public LoginAgreementAndPrivacy.PrivacyReportInfo a(Parcel paramParcel)
      {
        return new LoginAgreementAndPrivacy.PrivacyReportInfo(paramParcel);
      }
      
      public LoginAgreementAndPrivacy.PrivacyReportInfo[] b(int paramInt)
      {
        return new LoginAgreementAndPrivacy.PrivacyReportInfo[paramInt];
      }
    }
  }
  
  public static enum Type
  {
    private final int value;
    
    static
    {
      Type localType1 = new Type("DEF", 0, 0);
      DEF = localType1;
      Type localType2 = new Type("APP_JOIN", 1, 1);
      APP_JOIN = localType2;
      Type localType3 = new Type("APP_CUSTOM", 2, 2);
      APP_CUSTOM = localType3;
      $VALUES = new Type[] { localType1, localType2, localType3 };
    }
    
    private Type(int paramInt)
    {
      this.value = paramInt;
    }
    
    public static Type getTypeByValue(int paramInt)
    {
      for (Type localType : ) {
        if (localType.getValue() == paramInt) {
          return localType;
        }
      }
      return DEF;
    }
    
    public int getValue()
    {
      return this.value;
    }
  }
  
  class a
    implements Parcelable.Creator<LoginAgreementAndPrivacy>
  {
    public LoginAgreementAndPrivacy a(Parcel paramParcel)
    {
      return new LoginAgreementAndPrivacy(paramParcel);
    }
    
    public LoginAgreementAndPrivacy[] b(int paramInt)
    {
      return new LoginAgreementAndPrivacy[paramInt];
    }
  }
  
  public static class b
  {
    private final LoginAgreementAndPrivacy.Type a;
    private String b;
    private String c;
    private String d;
    private boolean e = true;
    private String f;
    private String g;
    private final ArrayList<LoginAgreementAndPrivacy.PrivacyReportInfo> h = new ArrayList();
    
    public b(LoginAgreementAndPrivacy.Type paramType)
    {
      this.a = paramType;
    }
    
    public LoginAgreementAndPrivacy a()
    {
      return new LoginAgreementAndPrivacy(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy
 * JD-Core Version:    0.7.0.1
 */