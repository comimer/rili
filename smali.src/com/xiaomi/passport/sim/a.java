package com.xiaomi.passport.sim;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import com.xiaomi.accountsdk.utils.b;

public class a
{
  private static String a = "SIMId";
  
  public static String a(Context paramContext, int paramInt)
  {
    paramContext = b(paramContext, paramInt);
    if (paramContext != null) {
      return paramContext.a();
    }
    return null;
  }
  
  private static a b(Context paramContext, int paramInt)
  {
    int i = h7.a.i(paramContext).b(paramInt);
    String str = a;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("phone type: ");
    ((StringBuilder)localObject).append(i);
    b.g(str, ((StringBuilder)localObject).toString());
    if (i == 2)
    {
      paramContext = p5.a.a(paramContext, PrivacyDataType.ICCID, new String[] { String.valueOf(paramInt) });
      if (!TextUtils.isEmpty(paramContext)) {
        return new a(1, paramContext);
      }
    }
    else if (i == 1)
    {
      paramContext = p5.a.a(paramContext, PrivacyDataType.IMSI, new String[] { String.valueOf(paramInt) });
      if (!TextUtils.isEmpty(paramContext)) {
        return new a(2, paramContext);
      }
    }
    else
    {
      b.g(a, "unknown phone type, use iccid and imsi combination");
      localObject = p5.a.a(paramContext, PrivacyDataType.ICCID, new String[] { String.valueOf(paramInt) });
      paramContext = p5.a.a(paramContext, PrivacyDataType.IMSI, new String[] { String.valueOf(paramInt) });
      if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!TextUtils.isEmpty(paramContext))) {
        return new a(0, String.format("%s&%s", new Object[] { localObject, paramContext }));
      }
    }
    return null;
  }
  
  static final class a
  {
    public final int a;
    public final String b;
    
    a(int paramInt, String paramString)
    {
      this.a = paramInt;
      this.b = paramString;
    }
    
    public String a()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append(",");
      localStringBuilder.append(this.b);
      return localStringBuilder.toString();
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (a.class == paramObject.getClass()))
      {
        Object localObject = (a)paramObject;
        if (this.a != ((a)localObject).a) {
          return false;
        }
        paramObject = this.b;
        localObject = ((a)localObject).b;
        return paramObject != null ? paramObject.equals(localObject) : localObject == null;
      }
      return false;
    }
    
    public int hashCode()
    {
      int i = this.a;
      String str = this.b;
      int j;
      if (str != null) {
        j = str.hashCode();
      } else {
        j = 0;
      }
      return i * 31 + j;
    }
    
    public String toString()
    {
      return a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.sim.a
 * JD-Core Version:    0.7.0.1
 */