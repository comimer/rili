package com.xiaomi.onetrack.d;

import android.annotation.TargetApi;
import android.content.Context;
import android.security.KeyPairGeneratorSpec.Builder;
import android.util.Base64;
import com.xiaomi.onetrack.util.p;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.crypto.Cipher;
import javax.security.auth.x500.X500Principal;

public class b
{
  public static final String a = ;
  private static final String b = "AndroidKeyStore";
  private static final String c = "AndroidKeyStore";
  private static final String d = "RSA/ECB/PKCS1Padding";
  private static final String e = "RSA_KEY";
  
  public static String a(Context paramContext, String paramString)
    throws Exception
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      KeyStore localKeyStore = KeyStore.getInstance("AndroidKeyStore");
      localKeyStore.load(null);
      a(paramContext, localKeyStore);
      paramContext = localKeyStore.getCertificate("RSA_KEY");
      if (paramContext != null)
      {
        localCipher.init(1, paramContext.getPublicKey());
        paramContext = Base64.encodeToString(localCipher.doFinal(paramString.getBytes("UTF-8")), 0);
        return paramContext;
      }
      return null;
    }
    finally {}
  }
  
  private static void a()
    throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, InstantiationException, NoSuchMethodException, InvalidAlgorithmParameterException, NoSuchProviderException, NoSuchAlgorithmException, LinkageError
  {
    Object localObject1 = Class.forName("android.security.keystore.KeyGenParameterSpec$Builder");
    Object localObject2 = ((Class)localObject1).getConstructor(new Class[] { String.class, Integer.TYPE });
    Class localClass = Class.forName("android.security.keystore.KeyProperties");
    localObject2 = ((Constructor)localObject2).newInstance(new Object[] { "RSA_KEY", Integer.valueOf(localClass.getDeclaredField("PURPOSE_ENCRYPT").getInt(null) | localClass.getDeclaredField("PURPOSE_DECRYPT").getInt(null)) });
    ((Class)localObject1).getMethod("setDigests", new Class[] { [Ljava.lang.String.class }).invoke(localObject2, new Object[] { { (String)localClass.getDeclaredField("DIGEST_SHA256").get(null), (String)localClass.getDeclaredField("DIGEST_SHA512").get(null) } });
    ((Class)localObject1).getMethod("setEncryptionPaddings", new Class[] { [Ljava.lang.String.class }).invoke(localObject2, new Object[] { { (String)localClass.getDeclaredField("ENCRYPTION_PADDING_RSA_PKCS1").get(null) } });
    localObject1 = ((Class)localObject1).getMethod("build", new Class[0]).invoke(localObject2, new Object[0]);
    localClass = Class.forName("java.security.KeyPairGenerator");
    localObject2 = (KeyPairGenerator)localClass.getMethod("getInstance", new Class[] { String.class, String.class }).invoke(null, new Object[] { "RSA", "AndroidKeyStore" });
    localClass.getMethod("initialize", new Class[] { AlgorithmParameterSpec.class }).invoke(localObject2, new Object[] { localObject1 });
    ((KeyPairGenerator)localObject2).generateKeyPair();
  }
  
  @TargetApi(18)
  private static void a(Context paramContext)
    throws KeyStoreException, NoSuchProviderException, NoSuchAlgorithmException, InvalidAlgorithmParameterException
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    Object localObject = new GregorianCalendar();
    ((Calendar)localObject).add(1, 1);
    localObject = new KeyPairGeneratorSpec.Builder(paramContext).setAlias("RSA_KEY").setSubject(new X500Principal("CN=RSA_KEY")).setSerialNumber(BigInteger.valueOf(1337L)).setStartDate(localGregorianCalendar.getTime()).setEndDate(((Calendar)localObject).getTime()).build();
    paramContext = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
    paramContext.initialize((AlgorithmParameterSpec)localObject);
    paramContext.generateKeyPair();
  }
  
  /* Error */
  private static void a(Context paramContext, KeyStore paramKeyStore)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 16
    //   3: invokevirtual 258	java/security/KeyStore:containsAlias	(Ljava/lang/String;)Z
    //   6: ifne +19 -> 25
    //   9: invokestatic 260	com/xiaomi/onetrack/d/b:a	()V
    //   12: goto +13 -> 25
    //   15: astore_0
    //   16: ldc 9
    //   18: ldc_w 262
    //   21: aload_0
    //   22: invokestatic 267	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   25: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	26	0	paramContext	Context
    //   0	26	1	paramKeyStore	KeyStore
    // Exception table:
    //   from	to	target	type
    //   0	12	15	finally
  }
  
  private static String b()
  {
    String str2;
    try
    {
      String str1 = new java/lang/String;
      str1.<init>(new byte[] { 104, 42, 89, 51, 49, 93, 99, 33, 64, 53, 78, 115, 95, 106, 80, 115, 118, 101, 106, 33, 64, 51, 91, 40, 42, 119, 40, 33, 108 }, "UTF-8");
    }
    catch (Exception localException)
    {
      p.b("AndroidKeyStore", localException.getMessage());
      str2 = "";
    }
    return str2;
  }
  
  public static String b(Context paramContext, String paramString)
    throws Exception
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      KeyStore localKeyStore = KeyStore.getInstance("AndroidKeyStore");
      localKeyStore.load(null);
      a(paramContext, localKeyStore);
      localCipher.init(2, (PrivateKey)localKeyStore.getKey("RSA_KEY", null));
      paramContext = new String(localCipher.doFinal(Base64.decode(paramString, 0)), "UTF-8");
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.d.b
 * JD-Core Version:    0.7.0.1
 */