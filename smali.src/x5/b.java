package x5;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;

public class b
{
  private static Signature a(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64).signatures[0];
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  /* Error */
  public static a b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokestatic 33	x5/b:a	(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/Signature;
    //   7: astore_0
    //   8: aload_0
    //   9: ifnonnull +9 -> 18
    //   12: aconst_null
    //   13: invokestatic 38	com/xiaomi/accountsdk/utils/g:a	(Ljava/io/InputStream;)V
    //   16: aconst_null
    //   17: areturn
    //   18: aload_0
    //   19: invokevirtual 44	android/content/pm/Signature:toByteArray	()[B
    //   22: astore_3
    //   23: new 46	java/io/ByteArrayInputStream
    //   26: astore_0
    //   27: aload_0
    //   28: aload_3
    //   29: invokespecial 50	java/io/ByteArrayInputStream:<init>	([B)V
    //   32: ldc 52
    //   34: invokestatic 58	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   37: aload_0
    //   38: invokevirtual 62	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   41: checkcast 64	java/security/cert/X509Certificate
    //   44: invokevirtual 68	java/security/cert/X509Certificate:checkValidity	()V
    //   47: aload_3
    //   48: invokestatic 73	com/xiaomi/accountsdk/utils/CloudCoder:b	([B)Ljava/lang/String;
    //   51: invokevirtual 79	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   54: astore_1
    //   55: aload_3
    //   56: invokestatic 82	com/xiaomi/accountsdk/utils/CloudCoder:c	([B)Ljava/lang/String;
    //   59: invokevirtual 79	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   62: astore_2
    //   63: new 84	x5/a$b
    //   66: astore_3
    //   67: aload_3
    //   68: invokespecial 86	x5/a$b:<init>	()V
    //   71: aload_3
    //   72: aload_2
    //   73: invokevirtual 90	x5/a$b:e	(Ljava/lang/String;)Lx5/a$b;
    //   76: aload_1
    //   77: invokevirtual 93	x5/a$b:d	(Ljava/lang/String;)Lx5/a$b;
    //   80: invokevirtual 96	x5/a$b:c	()Lx5/a;
    //   83: astore_1
    //   84: aload_0
    //   85: invokestatic 38	com/xiaomi/accountsdk/utils/g:a	(Ljava/io/InputStream;)V
    //   88: aload_1
    //   89: areturn
    //   90: astore_1
    //   91: goto +6 -> 97
    //   94: astore_1
    //   95: aload_2
    //   96: astore_0
    //   97: aload_0
    //   98: invokestatic 38	com/xiaomi/accountsdk/utils/g:a	(Ljava/io/InputStream;)V
    //   101: aload_1
    //   102: athrow
    //   103: astore_0
    //   104: aconst_null
    //   105: astore_0
    //   106: aload_0
    //   107: invokestatic 38	com/xiaomi/accountsdk/utils/g:a	(Ljava/io/InputStream;)V
    //   110: aconst_null
    //   111: areturn
    //   112: astore_1
    //   113: goto -7 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	paramContext	Context
    //   0	116	1	paramString	String
    //   1	95	2	str	String
    //   22	50	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   32	84	90	finally
    //   2	8	94	finally
    //   18	32	94	finally
    //   2	8	103	java/security/cert/CertificateException
    //   18	32	103	java/security/cert/CertificateException
    //   32	84	112	java/security/cert/CertificateException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x5.b
 * JD-Core Version:    0.7.0.1
 */