package com.xiaomi.phonenum.data;

import java.util.HashMap;
import java.util.Map;

public class a
{
  private static final Map<Integer, AccountCertification> a = new HashMap();
  
  public static AccountCertification a(int paramInt)
  {
    try
    {
      AccountCertification localAccountCertification = (AccountCertification)a.get(Integer.valueOf(paramInt));
      if (localAccountCertification == null) {
        return null;
      }
      localAccountCertification = new AccountCertification(localAccountCertification.subId, localAccountCertification.hashedPhoneNumber, localAccountCertification.activatorToken, null);
      return localAccountCertification;
    }
    finally {}
  }
  
  public static void b(AccountCertification paramAccountCertification)
  {
    try
    {
      a.put(Integer.valueOf(paramAccountCertification.subId), paramAccountCertification);
      return;
    }
    finally
    {
      paramAccountCertification = finally;
      throw paramAccountCertification;
    }
  }
  
  public static void c(AccountCertification paramAccountCertification)
  {
    try
    {
      AccountCertification localAccountCertification = a(paramAccountCertification.subId);
      if (localAccountCertification == null) {
        return;
      }
      if (localAccountCertification.equals(paramAccountCertification)) {
        a.remove(Integer.valueOf(paramAccountCertification.subId));
      }
      return;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.data.a
 * JD-Core Version:    0.7.0.1
 */