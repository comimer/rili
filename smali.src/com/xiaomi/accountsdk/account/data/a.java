package com.xiaomi.accountsdk.account.data;

import android.text.TextUtils;

public final class a
{
  public final String a;
  public final String b;
  
  private a(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public static a a(String paramString1, String paramString2)
  {
    return new a(paramString1, paramString2);
  }
  
  public static a b(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    Object localObject = null;
    if (bool) {
      return null;
    }
    String[] arrayOfString = paramString.split(",");
    paramString = localObject;
    if (arrayOfString.length == 2)
    {
      paramString = localObject;
      if (!TextUtils.isEmpty(arrayOfString[0])) {
        if (TextUtils.isEmpty(arrayOfString[1])) {
          paramString = localObject;
        } else {
          paramString = new a(arrayOfString[0], arrayOfString[1]);
        }
      }
    }
    return paramString;
  }
  
  public String c()
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
      paramObject = (a)paramObject;
      String str = this.a;
      if (str != null ? !str.equals(paramObject.a) : paramObject.a != null) {
        return false;
      }
      str = this.b;
      paramObject = paramObject.b;
      return str != null ? str.equals(paramObject) : paramObject == null;
    }
    return false;
  }
  
  public int hashCode()
  {
    String str = this.a;
    int i = 0;
    int j;
    if (str != null) {
      j = str.hashCode();
    } else {
      j = 0;
    }
    str = this.b;
    if (str != null) {
      i = str.hashCode();
    }
    return j * 31 + i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.a
 * JD-Core Version:    0.7.0.1
 */