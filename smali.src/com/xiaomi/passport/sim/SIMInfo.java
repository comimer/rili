package com.xiaomi.passport.sim;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import com.xiaomi.accountsdk.account.data.MiuiActivatorInfo;
import com.xiaomi.accountsdk.account.data.MiuiActivatorInfo.b;
import com.xiaomi.phonenum.data.AccountCertification;
import com.xiaomi.phonenum.data.AccountCertification.b;
import i7.b;

public class SIMInfo
  implements Parcelable
{
  public static final Parcelable.Creator<SIMInfo> CREATOR = new a();
  public static final int INVALID_SLOT_INDEX = -1;
  public static final int INVALID_SUB_ID = -1;
  public static final String SIM_INFO_TYPE_ACTIVATION_ACCOUNT_CERT = "activationAccountCert";
  public static final String SIM_INFO_TYPE_ACTIVATION_OR_OPERATOR_ACCOUNT_CERT = "activationOrOperatorAccountCert";
  public static final String SIM_INFO_TYPE_ACTIVATOR_INFO = "activatorInfo";
  public static final String SIM_INFO_TYPE_ICCID = "iccid";
  public static final String SIM_INFO_TYPE_IMSI = "imsi";
  public static final String SIM_INFO_TYPE_IN_SERVICE = "inService";
  public static final String SIM_INFO_TYPE_LINE_1_NUMBER = "line1Number";
  public static final String SIM_INFO_TYPE_MCCMNC = "mccmnc";
  public static final String SIM_INFO_TYPE_MOBILE_DATA_ENABLE = "mobileDataEnable";
  public static final String SIM_INFO_TYPE_NETWORK_MCCMNC = "networkMCCMNC";
  public static final String SIM_INFO_TYPE_OPERATOR_ACCOUNT_CERT = "operatorAccountCert";
  public static final String SIM_INFO_TYPE_SIM_ID = "simId";
  public static final String SIM_INFO_TYPE_SLOT_INDEX = "slotIndex";
  public static final String SIM_INFO_TYPE_SUB_ID = "subId";
  public final AccountCertification accountCert;
  public final MiuiActivatorInfo activatorInfo;
  public final String iccid;
  public final String imsi;
  public final Boolean inService;
  public final String line1Number;
  public final String mccmnc;
  public final Boolean mobileDataEnable;
  public final String networkMCCMNC;
  public final String simId;
  public final int slotIndex;
  public final int subId;
  
  public SIMInfo(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Boolean paramBoolean1, Boolean paramBoolean2, AccountCertification paramAccountCertification, MiuiActivatorInfo paramMiuiActivatorInfo)
  {
    this.slotIndex = paramInt1;
    this.subId = paramInt2;
    this.simId = paramString1;
    this.line1Number = paramString2;
    this.iccid = paramString3;
    this.imsi = paramString4;
    this.mccmnc = paramString5;
    this.networkMCCMNC = paramString6;
    this.inService = paramBoolean1;
    this.mobileDataEnable = paramBoolean2;
    this.accountCert = paramAccountCertification;
    this.activatorInfo = paramMiuiActivatorInfo;
  }
  
  protected SIMInfo(Parcel paramParcel)
  {
    this.slotIndex = paramParcel.readInt();
    this.subId = paramParcel.readInt();
    this.simId = paramParcel.readString();
    this.line1Number = paramParcel.readString();
    this.iccid = paramParcel.readString();
    this.imsi = paramParcel.readString();
    this.mccmnc = paramParcel.readString();
    this.networkMCCMNC = paramParcel.readString();
    this.inService = ((Boolean)paramParcel.readValue(Boolean.class.getClassLoader()));
    this.mobileDataEnable = ((Boolean)paramParcel.readValue(Boolean.class.getClassLoader()));
    this.accountCert = ((AccountCertification)paramParcel.readParcelable(AccountCertification.class.getClassLoader()));
    this.activatorInfo = ((MiuiActivatorInfo)paramParcel.readParcelable(MiuiActivatorInfo.class.getClassLoader()));
  }
  
  public static SIMInfo[] build(Context paramContext, String[] paramArrayOfString, AccountCertification.b paramb, MiuiActivatorInfo.b paramb1)
  {
    int i = h7.a.i(paramContext).f();
    SIMInfo[] arrayOfSIMInfo = new SIMInfo[i];
    int j = paramArrayOfString.length;
    Object localObject1 = null;
    Object localObject2 = null;
    int k = 0;
    int m;
    for (;;)
    {
      m = -1;
      if (k >= j) {
        break;
      }
      Object localObject3 = paramArrayOfString[k];
      ((String)localObject3).hashCode();
      switch (((String)localObject3).hashCode())
      {
      default: 
        break;
      case 2092001019: 
        if (((String)localObject3).equals("activationAccountCert")) {
          m = 3;
        }
        break;
      case 1931219299: 
        if (((String)localObject3).equals("activatorInfo")) {
          m = 2;
        }
        break;
      case 1178409645: 
        if (((String)localObject3).equals("operatorAccountCert")) {
          m = 1;
        }
        break;
      case -1588313004: 
        if (((String)localObject3).equals("activationOrOperatorAccountCert")) {
          m = 0;
        }
        break;
      }
      Object localObject4;
      switch (m)
      {
      default: 
        localObject3 = localObject1;
        localObject4 = localObject2;
        break;
      case 2: 
        localObject3 = localObject1;
        localObject4 = localObject2;
        if (paramb1 != null)
        {
          localObject4 = paramb1.a(paramContext);
          localObject3 = localObject1;
        }
        break;
      case 0: 
      case 1: 
      case 3: 
        localObject3 = localObject1;
        localObject4 = localObject2;
        if (paramb != null)
        {
          localObject3 = paramb.a(paramContext, getAccountCertSourceFlag(paramArrayOfString));
          localObject4 = localObject2;
        }
        break;
      }
      k++;
      localObject1 = localObject3;
      localObject2 = localObject4;
    }
    for (k = 0; k < i; k++)
    {
      paramb1 = new b(paramContext, k);
      if (b.a(paramb1) != -1)
      {
        int n = paramArrayOfString.length;
        for (j = 0; j < n; j++)
        {
          paramb = paramArrayOfString[j];
          paramb.hashCode();
          switch (paramb.hashCode())
          {
          default: 
          case 2092001019: 
          case 1931219299: 
            do
            {
              do
              {
                m = -1;
                break;
              } while (!paramb.equals("activationAccountCert"));
              m = 11;
              break;
            } while (!paramb.equals("activatorInfo"));
            m = 10;
            break;
          case 1604867174: 
            if (paramb.equals("line1Number")) {
              m = 9;
            }
            break;
          case 1280257488: 
            if (paramb.equals("inService")) {
              m = 8;
            }
            break;
          case 1178409645: 
            if (paramb.equals("operatorAccountCert")) {
              m = 7;
            }
            break;
          case 109440082: 
            if (paramb.equals("simId")) {
              m = 6;
            }
            break;
          case 100017508: 
            if (paramb.equals("iccid")) {
              m = 5;
            }
            break;
          case 3236474: 
            if (paramb.equals("imsi")) {
              m = 4;
            }
            break;
          case -205609969: 
            if (paramb.equals("mobileDataEnable")) {
              m = 3;
            }
            break;
          case -1079903691: 
            if (paramb.equals("mccmnc")) {
              m = 2;
            }
            break;
          case -1165398557: 
            if (paramb.equals("networkMCCMNC")) {
              m = 1;
            }
            break;
          case -1588313004: 
            if (paramb.equals("activationOrOperatorAccountCert")) {
              break label677;
            }
          }
          m = -1;
          break label680;
          label677:
          m = 0;
          switch (m)
          {
          default: 
            break;
          case 10: 
            if (localObject2 != null) {
              paramb1.c(localObject2[k]);
            }
            break;
          case 9: 
            paramb1.g(paramContext);
            break;
          case 8: 
            paramb1.f(paramContext);
            break;
          case 6: 
            paramb1.k(paramContext);
            break;
          case 5: 
            paramb1.d(paramContext);
            break;
          case 4: 
            paramb1.e(paramContext);
            break;
          case 3: 
            paramb1.i(paramContext);
            break;
          case 2: 
            paramb1.h(paramContext);
            break;
          case 1: 
            paramb1.j(paramContext);
            break;
          case 0: 
          case 7: 
          case 11: 
            label680:
            if (localObject1 != null) {
              paramb1.b(localObject1[k]);
            }
            break;
          }
        }
      }
      arrayOfSIMInfo[k] = paramb1.l();
    }
    return arrayOfSIMInfo;
  }
  
  private static b getAccountCertSourceFlag(String[] paramArrayOfString)
  {
    b localb = b.c(new int[0]);
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      str.hashCode();
      int k = -1;
      switch (str.hashCode())
      {
      default: 
        break;
      case 2092001019: 
        if (str.equals("activationAccountCert")) {
          k = 2;
        }
        break;
      case 1178409645: 
        if (str.equals("operatorAccountCert")) {
          k = 1;
        }
        break;
      case -1588313004: 
        if (str.equals("activationOrOperatorAccountCert")) {
          k = 0;
        }
        break;
      }
      switch (k)
      {
      default: 
        break;
      case 2: 
        localb = localb.a(1);
        break;
      case 1: 
        localb = localb.a(2);
        break;
      case 0: 
        localb = localb.a(1).a(2);
      }
    }
    return localb;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.slotIndex);
    paramParcel.writeInt(this.subId);
    paramParcel.writeString(this.simId);
    paramParcel.writeString(this.line1Number);
    paramParcel.writeString(this.iccid);
    paramParcel.writeString(this.imsi);
    paramParcel.writeString(this.mccmnc);
    paramParcel.writeString(this.networkMCCMNC);
    paramParcel.writeValue(this.inService);
    paramParcel.writeValue(this.mobileDataEnable);
    paramParcel.writeParcelable(this.accountCert, paramInt);
    paramParcel.writeParcelable(this.activatorInfo, paramInt);
  }
  
  class a
    implements Parcelable.Creator<SIMInfo>
  {
    public SIMInfo a(Parcel paramParcel)
    {
      return new SIMInfo(paramParcel);
    }
    
    public SIMInfo[] b(int paramInt)
    {
      return new SIMInfo[paramInt];
    }
  }
  
  public static class b
  {
    private int a;
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private Boolean i;
    private Boolean j;
    private AccountCertification k;
    private MiuiActivatorInfo l;
    
    public b(Context paramContext, int paramInt)
    {
      this.a = paramInt;
      this.b = -1;
      try
      {
        this.b = Integer.parseInt(p5.a.a(paramContext, PrivacyDataType.SUB_ID, new String[] { String.valueOf(paramInt) }));
        label39:
        return;
      }
      catch (Exception paramContext)
      {
        break label39;
      }
    }
    
    public b b(AccountCertification paramAccountCertification)
    {
      this.k = paramAccountCertification;
      return this;
    }
    
    public b c(MiuiActivatorInfo paramMiuiActivatorInfo)
    {
      this.l = paramMiuiActivatorInfo;
      return this;
    }
    
    public b d(Context paramContext)
    {
      return m(p5.a.a(paramContext, PrivacyDataType.ICCID, new String[] { String.valueOf(this.b) }));
    }
    
    public b e(Context paramContext)
    {
      return n(p5.a.a(paramContext, PrivacyDataType.IMSI, new String[] { String.valueOf(this.b) }));
    }
    
    public b f(Context paramContext)
    {
      paramContext = p5.a.a(paramContext, PrivacyDataType.SIM_IN_SERVICE, new String[] { String.valueOf(this.b), String.valueOf(3000L) });
      if (paramContext == null) {
        return this;
      }
      return o(Boolean.valueOf(Boolean.parseBoolean(paramContext)));
    }
    
    public b g(Context paramContext)
    {
      return p(p5.a.a(paramContext, PrivacyDataType.LINE_1_NUMBER, new String[] { String.valueOf(this.b) }));
    }
    
    public b h(Context paramContext)
    {
      return q(p5.a.a(paramContext, PrivacyDataType.MCCMNC, new String[] { String.valueOf(this.b) }));
    }
    
    public b i(Context paramContext)
    {
      try
      {
        paramContext = r(Boolean.valueOf(Boolean.parseBoolean(p5.a.a(paramContext, PrivacyDataType.MOBILE_DATA_ENABLE, new String[] { String.valueOf(this.b) }))));
        return paramContext;
      }
      catch (Exception paramContext) {}
      return this;
    }
    
    public b j(Context paramContext)
    {
      return s(p5.a.a(paramContext, PrivacyDataType.NETWORK_MCCMNC, new String[] { String.valueOf(this.b) }));
    }
    
    public b k(Context paramContext)
    {
      return t(a.a(paramContext, this.b));
    }
    
    public SIMInfo l()
    {
      return new SIMInfo(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
    }
    
    public b m(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b n(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b o(Boolean paramBoolean)
    {
      this.i = paramBoolean;
      return this;
    }
    
    public b p(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b q(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public b r(Boolean paramBoolean)
    {
      this.j = paramBoolean;
      return this;
    }
    
    public b s(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public b t(String paramString)
    {
      this.c = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.sim.SIMInfo
 * JD-Core Version:    0.7.0.1
 */