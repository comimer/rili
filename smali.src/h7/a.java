package h7;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.TelephonyManager;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;

public class a
  implements b
{
  private static volatile a b;
  protected Context a;
  
  public a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public static a i(Context paramContext)
  {
    if (b == null) {
      try
      {
        if (b == null)
        {
          a locala = new h7/a;
          locala.<init>(paramContext.getApplicationContext());
          b = locala;
        }
      }
      finally {}
    }
    return b;
  }
  
  public String a(int paramInt)
  {
    return p5.a.a(this.a, PrivacyDataType.NETWORK_MCCMNC, new String[] { String.valueOf(paramInt) });
  }
  
  public int b(int paramInt)
  {
    return ((TelephonyManager)this.a.getSystemService("phone")).createForSubscriptionId(paramInt).getPhoneType();
  }
  
  public String c()
  {
    return g();
  }
  
  /* Error */
  public e7.a d(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual 76	h7/a:j	(I)Ljava/lang/String;
    //   7: astore_3
    //   8: aload_0
    //   9: iload_1
    //   10: invokevirtual 79	h7/a:k	(I)Ljava/lang/String;
    //   13: astore 4
    //   15: aload_0
    //   16: iload_1
    //   17: invokevirtual 82	h7/a:l	(I)Ljava/lang/String;
    //   20: astore 5
    //   22: goto +35 -> 57
    //   25: astore 5
    //   27: goto +18 -> 45
    //   30: astore 5
    //   32: aconst_null
    //   33: astore 4
    //   35: goto +10 -> 45
    //   38: astore 5
    //   40: aconst_null
    //   41: astore_3
    //   42: aload_3
    //   43: astore 4
    //   45: ldc 84
    //   47: ldc 86
    //   49: aload 5
    //   51: invokestatic 92	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   54: aload_2
    //   55: astore 5
    //   57: new 94	e7/a
    //   60: dup
    //   61: aload_3
    //   62: aload 4
    //   64: aload_0
    //   65: iload_1
    //   66: invokevirtual 97	h7/a:m	(I)Ljava/lang/String;
    //   69: aload 5
    //   71: invokespecial 100	e7/a:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   74: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	a
    //   0	75	1	paramInt	int
    //   1	54	2	localObject1	Object
    //   7	55	3	str1	String
    //   13	50	4	str2	String
    //   20	1	5	str3	String
    //   25	1	5	localSecurityException1	java.lang.SecurityException
    //   30	1	5	localSecurityException2	java.lang.SecurityException
    //   38	12	5	localSecurityException3	java.lang.SecurityException
    //   55	15	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   15	22	25	java/lang/SecurityException
    //   8	15	30	java/lang/SecurityException
    //   2	8	38	java/lang/SecurityException
  }
  
  public boolean e()
  {
    return Boolean.parseBoolean(p5.a.a(this.a, PrivacyDataType.MOBILE_DATA_ENABLE, new String[0]));
  }
  
  public int f()
  {
    return ((TelephonyManager)this.a.getSystemService("phone")).getPhoneCount();
  }
  
  @SuppressLint({"HardwareIds"})
  public String g()
  {
    return p5.a.c(this.a, PrivacyDataType.DEVICE_ID, new String[0]);
  }
  
  public boolean h(int paramInt)
  {
    return Boolean.parseBoolean(p5.a.a(this.a, PrivacyDataType.MOBILE_DATA_ENABLE, new String[] { String.valueOf(paramInt) }));
  }
  
  protected String j(int paramInt)
  {
    return p5.a.a(this.a, PrivacyDataType.ICCID, new String[] { String.valueOf(paramInt) });
  }
  
  protected String k(int paramInt)
  {
    return p5.a.a(this.a, PrivacyDataType.IMSI, new String[] { String.valueOf(paramInt) });
  }
  
  protected String l(int paramInt)
  {
    return p5.a.a(this.a, PrivacyDataType.LINE_1_NUMBER, new String[] { String.valueOf(paramInt) });
  }
  
  protected String m(int paramInt)
  {
    return p5.a.a(this.a, PrivacyDataType.MCCMNC, new String[] { String.valueOf(paramInt) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h7.a
 * JD-Core Version:    0.7.0.1
 */