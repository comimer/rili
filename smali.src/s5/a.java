package s5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Base64;
import java.security.Key;
import java.security.KeyStore;
import java.util.Locale;
import java.util.WeakHashMap;

public class a
{
  private static volatile Key a;
  private static volatile KeyStore b;
  private static final byte[] c = "0102030405060708".getBytes();
  private static final WeakHashMap<String, String> d = new WeakHashMap();
  private static final WeakHashMap<String, String> e = new WeakHashMap();
  
  private static byte[] a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Base64.decode(paramString, 10);
  }
  
  /* Error */
  public static String b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 64
    //   3: invokevirtual 68	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   6: ifne +5 -> 11
    //   9: aload_1
    //   10: areturn
    //   11: getstatic 35	s5/a:e	Ljava/util/WeakHashMap;
    //   14: aload_1
    //   15: invokevirtual 72	java/util/WeakHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   18: checkcast 20	java/lang/String
    //   21: astore_2
    //   22: aload_2
    //   23: ifnull +5 -> 28
    //   26: aload_2
    //   27: areturn
    //   28: getstatic 74	s5/a:a	Ljava/security/Key;
    //   31: ifnonnull +7 -> 38
    //   34: aload_0
    //   35: invokestatic 78	s5/a:i	(Landroid/content/Context;)V
    //   38: getstatic 74	s5/a:a	Ljava/security/Key;
    //   41: ifnonnull +5 -> 46
    //   44: aconst_null
    //   45: areturn
    //   46: aload_1
    //   47: bipush 10
    //   49: invokevirtual 82	java/lang/String:substring	(I)Ljava/lang/String;
    //   52: astore_3
    //   53: ldc 84
    //   55: invokestatic 90	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   58: astore_2
    //   59: getstatic 74	s5/a:a	Ljava/security/Key;
    //   62: astore_0
    //   63: new 92	javax/crypto/spec/IvParameterSpec
    //   66: astore 4
    //   68: aload 4
    //   70: getstatic 26	s5/a:c	[B
    //   73: invokespecial 95	javax/crypto/spec/IvParameterSpec:<init>	([B)V
    //   76: aload_2
    //   77: iconst_2
    //   78: aload_0
    //   79: aload 4
    //   81: invokevirtual 99	javax/crypto/Cipher:init	(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    //   84: iconst_0
    //   85: newarray byte
    //   87: astore_0
    //   88: aload_2
    //   89: aload_3
    //   90: invokestatic 101	s5/a:a	(Ljava/lang/String;)[B
    //   93: invokevirtual 105	javax/crypto/Cipher:doFinal	([B)[B
    //   96: astore_2
    //   97: aload_2
    //   98: astore_0
    //   99: goto +12 -> 111
    //   102: astore_2
    //   103: ldc 107
    //   105: ldc 109
    //   107: aload_2
    //   108: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   111: aload_0
    //   112: arraylength
    //   113: istore 5
    //   115: iconst_0
    //   116: istore 6
    //   118: iload 6
    //   120: istore 7
    //   122: iload 6
    //   124: iload 5
    //   126: if_icmpge +19 -> 145
    //   129: aload_0
    //   130: iload 6
    //   132: baload
    //   133: ifeq +12 -> 145
    //   136: iinc 7 1
    //   139: iinc 6 1
    //   142: goto -20 -> 122
    //   145: new 20	java/lang/String
    //   148: dup
    //   149: aload_0
    //   150: iconst_0
    //   151: iload 7
    //   153: invokespecial 118	java/lang/String:<init>	([BII)V
    //   156: astore_0
    //   157: getstatic 35	s5/a:e	Ljava/util/WeakHashMap;
    //   160: aload_1
    //   161: aload_0
    //   162: invokevirtual 122	java/util/WeakHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   165: pop
    //   166: aload_0
    //   167: areturn
    //   168: astore_0
    //   169: ldc 107
    //   171: ldc 109
    //   173: aload_0
    //   174: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   177: aload_1
    //   178: areturn
    //   179: astore_0
    //   180: ldc 107
    //   182: ldc 124
    //   184: aload_0
    //   185: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   188: aload_1
    //   189: areturn
    //   190: astore_0
    //   191: ldc 107
    //   193: ldc 124
    //   195: aload_0
    //   196: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   199: aload_1
    //   200: areturn
    //   201: astore_0
    //   202: ldc 107
    //   204: ldc 126
    //   206: aload_0
    //   207: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   210: aload_1
    //   211: areturn
    //   212: astore_0
    //   213: ldc 107
    //   215: ldc 126
    //   217: aload_0
    //   218: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   221: aload_1
    //   222: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	paramContext	Context
    //   0	223	1	paramString	String
    //   21	77	2	localObject	Object
    //   102	6	2	localIllegalBlockSizeException	javax.crypto.IllegalBlockSizeException
    //   52	38	3	str	String
    //   66	14	4	localIvParameterSpec	javax.crypto.spec.IvParameterSpec
    //   113	14	5	i	int
    //   116	24	6	j	int
    //   120	32	7	k	int
    // Exception table:
    //   from	to	target	type
    //   88	97	102	javax/crypto/IllegalBlockSizeException
    //   88	97	168	javax/crypto/BadPaddingException
    //   59	84	179	java/security/InvalidAlgorithmParameterException
    //   59	84	190	java/security/InvalidKeyException
    //   53	59	201	javax/crypto/NoSuchPaddingException
    //   53	59	212	java/security/NoSuchAlgorithmException
  }
  
  private static String c(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0)) {
      return Base64.encodeToString(paramArrayOfByte, 10);
    }
    return null;
  }
  
  /* Error */
  public static String d(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: getstatic 33	s5/a:d	Ljava/util/WeakHashMap;
    //   3: aload_1
    //   4: invokevirtual 72	java/util/WeakHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   7: checkcast 20	java/lang/String
    //   10: astore_2
    //   11: aload_2
    //   12: ifnull +5 -> 17
    //   15: aload_2
    //   16: areturn
    //   17: getstatic 74	s5/a:a	Ljava/security/Key;
    //   20: ifnonnull +7 -> 27
    //   23: aload_0
    //   24: invokestatic 78	s5/a:i	(Landroid/content/Context;)V
    //   27: getstatic 74	s5/a:a	Ljava/security/Key;
    //   30: ifnonnull +5 -> 35
    //   33: aload_1
    //   34: areturn
    //   35: ldc 84
    //   37: invokestatic 90	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   40: astore_3
    //   41: getstatic 74	s5/a:a	Ljava/security/Key;
    //   44: astore_0
    //   45: new 92	javax/crypto/spec/IvParameterSpec
    //   48: astore_2
    //   49: aload_2
    //   50: getstatic 26	s5/a:c	[B
    //   53: invokespecial 95	javax/crypto/spec/IvParameterSpec:<init>	([B)V
    //   56: aload_3
    //   57: iconst_1
    //   58: aload_0
    //   59: aload_2
    //   60: invokevirtual 99	javax/crypto/Cipher:init	(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    //   63: aload_1
    //   64: invokevirtual 24	java/lang/String:getBytes	()[B
    //   67: astore_0
    //   68: aload_0
    //   69: arraylength
    //   70: bipush 16
    //   72: irem
    //   73: ifne +6 -> 79
    //   76: goto +43 -> 119
    //   79: aload_0
    //   80: arraylength
    //   81: bipush 16
    //   83: idiv
    //   84: iconst_1
    //   85: iadd
    //   86: bipush 16
    //   88: imul
    //   89: newarray byte
    //   91: astore_2
    //   92: iconst_0
    //   93: istore 4
    //   95: iload 4
    //   97: aload_0
    //   98: arraylength
    //   99: if_icmpge +18 -> 117
    //   102: aload_2
    //   103: iload 4
    //   105: aload_0
    //   106: iload 4
    //   108: baload
    //   109: i2b
    //   110: bastore
    //   111: iinc 4 1
    //   114: goto -19 -> 95
    //   117: aload_2
    //   118: astore_0
    //   119: aload_3
    //   120: aload_0
    //   121: invokevirtual 105	javax/crypto/Cipher:doFinal	([B)[B
    //   124: astore_2
    //   125: new 133	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 134	java/lang/StringBuilder:<init>	()V
    //   132: astore_0
    //   133: aload_0
    //   134: ldc 64
    //   136: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: pop
    //   140: aload_0
    //   141: aload_2
    //   142: invokestatic 140	s5/a:c	([B)Ljava/lang/String;
    //   145: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: pop
    //   149: aload_0
    //   150: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: astore_0
    //   154: getstatic 33	s5/a:d	Ljava/util/WeakHashMap;
    //   157: aload_1
    //   158: aload_0
    //   159: invokevirtual 122	java/util/WeakHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   162: pop
    //   163: aload_0
    //   164: areturn
    //   165: astore_0
    //   166: ldc 107
    //   168: ldc 146
    //   170: aload_0
    //   171: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   174: aload_1
    //   175: areturn
    //   176: astore_0
    //   177: ldc 107
    //   179: ldc 146
    //   181: aload_0
    //   182: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   185: aload_1
    //   186: areturn
    //   187: astore_0
    //   188: ldc 107
    //   190: ldc 124
    //   192: aload_0
    //   193: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   196: aload_1
    //   197: areturn
    //   198: astore_0
    //   199: ldc 107
    //   201: ldc 124
    //   203: aload_0
    //   204: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   207: aload_1
    //   208: areturn
    //   209: astore_0
    //   210: ldc 107
    //   212: ldc 126
    //   214: aload_0
    //   215: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   218: aload_1
    //   219: areturn
    //   220: astore_0
    //   221: ldc 107
    //   223: ldc 126
    //   225: aload_0
    //   226: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   229: aload_1
    //   230: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	231	0	paramContext	Context
    //   0	231	1	paramString	String
    //   10	132	2	localObject	Object
    //   40	80	3	localCipher	javax.crypto.Cipher
    //   93	19	4	i	int
    // Exception table:
    //   from	to	target	type
    //   63	76	165	javax/crypto/IllegalBlockSizeException
    //   79	92	165	javax/crypto/IllegalBlockSizeException
    //   95	102	165	javax/crypto/IllegalBlockSizeException
    //   119	125	165	javax/crypto/IllegalBlockSizeException
    //   63	76	176	javax/crypto/BadPaddingException
    //   79	92	176	javax/crypto/BadPaddingException
    //   95	102	176	javax/crypto/BadPaddingException
    //   119	125	176	javax/crypto/BadPaddingException
    //   41	63	187	java/security/InvalidAlgorithmParameterException
    //   41	63	198	java/security/InvalidKeyException
    //   35	41	209	javax/crypto/NoSuchPaddingException
    //   35	41	220	java/security/NoSuchAlgorithmException
  }
  
  /* Error */
  private static void e(Context paramContext)
  {
    // Byte code:
    //   0: ldc 150
    //   2: ldc 152
    //   4: invokestatic 157	javax/crypto/KeyGenerator:getInstance	(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    //   7: astore_1
    //   8: invokestatic 163	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   11: astore_2
    //   12: aload_0
    //   13: getstatic 167	java/util/Locale:ENGLISH	Ljava/util/Locale;
    //   16: invokestatic 171	s5/a:m	(Landroid/content/Context;Ljava/util/Locale;)V
    //   19: new 173	android/security/keystore/KeyGenParameterSpec$Builder
    //   22: dup
    //   23: ldc 175
    //   25: iconst_3
    //   26: invokespecial 178	android/security/keystore/KeyGenParameterSpec$Builder:<init>	(Ljava/lang/String;I)V
    //   29: iconst_1
    //   30: anewarray 20	java/lang/String
    //   33: dup
    //   34: iconst_0
    //   35: ldc 180
    //   37: aastore
    //   38: invokevirtual 184	android/security/keystore/KeyGenParameterSpec$Builder:setBlockModes	([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    //   41: iconst_1
    //   42: anewarray 20	java/lang/String
    //   45: dup
    //   46: iconst_0
    //   47: ldc 186
    //   49: aastore
    //   50: invokevirtual 189	android/security/keystore/KeyGenParameterSpec$Builder:setEncryptionPaddings	([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    //   53: sipush 128
    //   56: invokevirtual 193	android/security/keystore/KeyGenParameterSpec$Builder:setKeySize	(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    //   59: iconst_0
    //   60: invokevirtual 197	android/security/keystore/KeyGenParameterSpec$Builder:setRandomizedEncryptionRequired	(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    //   63: iconst_0
    //   64: invokevirtual 200	android/security/keystore/KeyGenParameterSpec$Builder:setUserAuthenticationRequired	(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    //   67: invokevirtual 204	android/security/keystore/KeyGenParameterSpec$Builder:build	()Landroid/security/keystore/KeyGenParameterSpec;
    //   70: astore_3
    //   71: aload_1
    //   72: aload_3
    //   73: invokevirtual 207	javax/crypto/KeyGenerator:init	(Ljava/security/spec/AlgorithmParameterSpec;)V
    //   76: aload_0
    //   77: aload_2
    //   78: invokestatic 171	s5/a:m	(Landroid/content/Context;Ljava/util/Locale;)V
    //   81: aload_1
    //   82: invokevirtual 211	javax/crypto/KeyGenerator:generateKey	()Ljavax/crypto/SecretKey;
    //   85: astore_0
    //   86: invokestatic 215	s5/a:f	()Ljava/security/KeyStore;
    //   89: astore_2
    //   90: aload_0
    //   91: ifnull +11 -> 102
    //   94: aload_2
    //   95: ifnull +7 -> 102
    //   98: aload_0
    //   99: putstatic 74	s5/a:a	Ljava/security/Key;
    //   102: return
    //   103: astore_3
    //   104: goto +18 -> 122
    //   107: astore_3
    //   108: ldc 107
    //   110: ldc 217
    //   112: aload_3
    //   113: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: aload_0
    //   117: aload_2
    //   118: invokestatic 171	s5/a:m	(Landroid/content/Context;Ljava/util/Locale;)V
    //   121: return
    //   122: aload_0
    //   123: aload_2
    //   124: invokestatic 171	s5/a:m	(Landroid/content/Context;Ljava/util/Locale;)V
    //   127: aload_3
    //   128: athrow
    //   129: astore_0
    //   130: ldc 107
    //   132: ldc 219
    //   134: aload_0
    //   135: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   138: return
    //   139: astore_0
    //   140: ldc 107
    //   142: ldc 219
    //   144: aload_0
    //   145: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   148: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	paramContext	Context
    //   7	75	1	localKeyGenerator	javax.crypto.KeyGenerator
    //   11	113	2	localObject1	Object
    //   70	3	3	localKeyGenParameterSpec	android.security.keystore.KeyGenParameterSpec
    //   103	1	3	localObject2	Object
    //   107	21	3	localInvalidAlgorithmParameterException	java.security.InvalidAlgorithmParameterException
    // Exception table:
    //   from	to	target	type
    //   71	76	103	finally
    //   108	116	103	finally
    //   71	76	107	java/security/InvalidAlgorithmParameterException
    //   0	8	129	java/security/NoSuchProviderException
    //   0	8	139	java/security/NoSuchAlgorithmException
  }
  
  /* Error */
  private static KeyStore f()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 227	s5/a:b	Ljava/security/KeyStore;
    //   6: ifnull +12 -> 18
    //   9: getstatic 227	s5/a:b	Ljava/security/KeyStore;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: ldc 152
    //   20: invokestatic 232	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   23: astore_0
    //   24: aload_0
    //   25: aconst_null
    //   26: invokevirtual 236	java/security/KeyStore:load	(Ljava/security/KeyStore$LoadStoreParameter;)V
    //   29: aload_0
    //   30: putstatic 227	s5/a:b	Ljava/security/KeyStore;
    //   33: ldc 2
    //   35: monitorexit
    //   36: aload_0
    //   37: areturn
    //   38: astore_0
    //   39: ldc 107
    //   41: ldc 238
    //   43: aload_0
    //   44: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   47: ldc 2
    //   49: monitorexit
    //   50: aconst_null
    //   51: areturn
    //   52: astore_0
    //   53: ldc 107
    //   55: ldc 238
    //   57: aload_0
    //   58: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   61: ldc 2
    //   63: monitorexit
    //   64: aconst_null
    //   65: areturn
    //   66: astore_0
    //   67: ldc 107
    //   69: ldc 238
    //   71: aload_0
    //   72: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   75: ldc 2
    //   77: monitorexit
    //   78: aconst_null
    //   79: areturn
    //   80: astore_0
    //   81: ldc 107
    //   83: ldc 240
    //   85: aload_0
    //   86: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   89: ldc 2
    //   91: monitorexit
    //   92: aconst_null
    //   93: areturn
    //   94: astore_0
    //   95: ldc 2
    //   97: monitorexit
    //   98: aload_0
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   12	25	0	localKeyStore	KeyStore
    //   38	6	0	localNoSuchAlgorithmException	java.security.NoSuchAlgorithmException
    //   52	6	0	localIOException	java.io.IOException
    //   66	6	0	localCertificateException	java.security.cert.CertificateException
    //   80	6	0	localKeyStoreException	java.security.KeyStoreException
    //   94	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   24	33	38	java/security/NoSuchAlgorithmException
    //   24	33	52	java/io/IOException
    //   24	33	66	java/security/cert/CertificateException
    //   18	24	80	java/security/KeyStoreException
    //   3	13	94	finally
    //   18	24	94	finally
    //   24	33	94	finally
    //   39	47	94	finally
    //   53	61	94	finally
    //   67	75	94	finally
    //   81	89	94	finally
  }
  
  private static SharedPreferences g(Context paramContext)
  {
    return paramContext.getSharedPreferences("generate_secret_key_ret", 0);
  }
  
  public static boolean h(Context paramContext)
  {
    return g(paramContext).contains("generate_secret_key_success");
  }
  
  /* Error */
  public static void i(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 264	s5/a:h	(Landroid/content/Context;)Z
    //   7: ifeq +22 -> 29
    //   10: aload_0
    //   11: invokestatic 267	s5/a:j	(Landroid/content/Context;)Z
    //   14: ifne +15 -> 29
    //   17: ldc 107
    //   19: ldc_w 269
    //   22: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: ldc 2
    //   27: monitorexit
    //   28: return
    //   29: getstatic 74	s5/a:a	Ljava/security/Key;
    //   32: ifnull +15 -> 47
    //   35: ldc 107
    //   37: ldc_w 274
    //   40: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: ldc 2
    //   45: monitorexit
    //   46: return
    //   47: invokestatic 280	android/os/SystemClock:elapsedRealtime	()J
    //   50: lstore_1
    //   51: invokestatic 215	s5/a:f	()Ljava/security/KeyStore;
    //   54: astore_0
    //   55: aload_0
    //   56: ifnonnull +15 -> 71
    //   59: ldc 107
    //   61: ldc_w 282
    //   64: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: ldc 2
    //   69: monitorexit
    //   70: return
    //   71: aload_0
    //   72: ldc 175
    //   74: invokevirtual 285	java/security/KeyStore:containsAlias	(Ljava/lang/String;)Z
    //   77: ifne +15 -> 92
    //   80: ldc 107
    //   82: ldc_w 287
    //   85: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   88: ldc 2
    //   90: monitorexit
    //   91: return
    //   92: aload_0
    //   93: ldc 175
    //   95: aconst_null
    //   96: invokevirtual 291	java/security/KeyStore:getKey	(Ljava/lang/String;[C)Ljava/security/Key;
    //   99: putstatic 74	s5/a:a	Ljava/security/Key;
    //   102: new 133	java/lang/StringBuilder
    //   105: astore_0
    //   106: aload_0
    //   107: invokespecial 134	java/lang/StringBuilder:<init>	()V
    //   110: aload_0
    //   111: ldc_w 293
    //   114: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: pop
    //   118: getstatic 74	s5/a:a	Ljava/security/Key;
    //   121: ifnonnull +8 -> 129
    //   124: iconst_1
    //   125: istore_3
    //   126: goto +5 -> 131
    //   129: iconst_0
    //   130: istore_3
    //   131: aload_0
    //   132: iload_3
    //   133: invokevirtual 296	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   136: pop
    //   137: ldc 107
    //   139: aload_0
    //   140: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   146: goto +26 -> 172
    //   149: astore_0
    //   150: ldc 107
    //   152: ldc_w 298
    //   155: aload_0
    //   156: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   159: goto +13 -> 172
    //   162: astore_0
    //   163: ldc 107
    //   165: ldc_w 298
    //   168: aload_0
    //   169: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   172: new 133	java/lang/StringBuilder
    //   175: astore_0
    //   176: aload_0
    //   177: invokespecial 134	java/lang/StringBuilder:<init>	()V
    //   180: aload_0
    //   181: ldc_w 300
    //   184: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: pop
    //   188: aload_0
    //   189: invokestatic 280	android/os/SystemClock:elapsedRealtime	()J
    //   192: lload_1
    //   193: lsub
    //   194: invokevirtual 303	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   197: pop
    //   198: aload_0
    //   199: ldc_w 305
    //   202: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: pop
    //   206: ldc 107
    //   208: aload_0
    //   209: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   215: ldc 2
    //   217: monitorexit
    //   218: return
    //   219: astore_0
    //   220: new 307	java/lang/IllegalStateException
    //   223: astore 4
    //   225: aload 4
    //   227: aload_0
    //   228: invokespecial 310	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
    //   231: aload 4
    //   233: athrow
    //   234: astore_0
    //   235: new 307	java/lang/IllegalStateException
    //   238: astore 4
    //   240: aload 4
    //   242: aload_0
    //   243: invokespecial 310	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
    //   246: aload 4
    //   248: athrow
    //   249: astore_0
    //   250: ldc 2
    //   252: monitorexit
    //   253: aload_0
    //   254: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	255	0	paramContext	Context
    //   50	143	1	l	long
    //   125	8	3	bool	boolean
    //   223	24	4	localIllegalStateException	java.lang.IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   92	124	149	java/security/UnrecoverableKeyException
    //   131	146	149	java/security/UnrecoverableKeyException
    //   92	124	162	java/security/NoSuchAlgorithmException
    //   131	146	162	java/security/NoSuchAlgorithmException
    //   92	124	219	java/security/KeyStoreException
    //   131	146	219	java/security/KeyStoreException
    //   71	88	234	java/security/KeyStoreException
    //   3	25	249	finally
    //   29	43	249	finally
    //   47	55	249	finally
    //   59	67	249	finally
    //   71	88	249	finally
    //   92	124	249	finally
    //   131	146	249	finally
    //   150	159	249	finally
    //   163	172	249	finally
    //   172	215	249	finally
    //   220	234	249	finally
    //   235	249	249	finally
  }
  
  public static boolean j(Context paramContext)
  {
    return g(paramContext).getBoolean("generate_secret_key_success", false);
  }
  
  /* Error */
  public static void k(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 74	s5/a:a	Ljava/security/Key;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: invokestatic 264	s5/a:h	(Landroid/content/Context;)Z
    //   19: ifeq +19 -> 38
    //   22: aload_0
    //   23: invokestatic 78	s5/a:i	(Landroid/content/Context;)V
    //   26: ldc 107
    //   28: ldc_w 319
    //   31: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: ldc 2
    //   36: monitorexit
    //   37: return
    //   38: ldc 107
    //   40: ldc_w 321
    //   43: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: invokestatic 280	android/os/SystemClock:elapsedRealtime	()J
    //   49: lstore_2
    //   50: iconst_1
    //   51: istore 4
    //   53: iconst_1
    //   54: istore 5
    //   56: iconst_1
    //   57: istore 6
    //   59: invokestatic 215	s5/a:f	()Ljava/security/KeyStore;
    //   62: astore_1
    //   63: aload_1
    //   64: ifnull +46 -> 110
    //   67: aload_1
    //   68: ldc 175
    //   70: invokevirtual 285	java/security/KeyStore:containsAlias	(Ljava/lang/String;)Z
    //   73: ifeq +37 -> 110
    //   76: ldc 107
    //   78: ldc_w 323
    //   81: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: aload_0
    //   85: invokestatic 78	s5/a:i	(Landroid/content/Context;)V
    //   88: getstatic 74	s5/a:a	Ljava/security/Key;
    //   91: ifnull +6 -> 97
    //   94: goto +6 -> 100
    //   97: iconst_0
    //   98: istore 6
    //   100: aload_0
    //   101: iload 6
    //   103: invokestatic 327	s5/a:l	(Landroid/content/Context;Z)V
    //   106: ldc 2
    //   108: monitorexit
    //   109: return
    //   110: aload_0
    //   111: invokestatic 329	s5/a:e	(Landroid/content/Context;)V
    //   114: aload_0
    //   115: invokestatic 78	s5/a:i	(Landroid/content/Context;)V
    //   118: getstatic 74	s5/a:a	Ljava/security/Key;
    //   121: ifnull +10 -> 131
    //   124: iload 4
    //   126: istore 6
    //   128: goto +6 -> 134
    //   131: iconst_0
    //   132: istore 6
    //   134: aload_0
    //   135: iload 6
    //   137: invokestatic 327	s5/a:l	(Landroid/content/Context;Z)V
    //   140: goto +36 -> 176
    //   143: astore_1
    //   144: goto +79 -> 223
    //   147: astore_1
    //   148: ldc 107
    //   150: ldc_w 331
    //   153: aload_1
    //   154: invokestatic 115	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   157: getstatic 74	s5/a:a	Ljava/security/Key;
    //   160: ifnull +10 -> 170
    //   163: iload 4
    //   165: istore 6
    //   167: goto -33 -> 134
    //   170: iconst_0
    //   171: istore 6
    //   173: goto -39 -> 134
    //   176: new 133	java/lang/StringBuilder
    //   179: astore_0
    //   180: aload_0
    //   181: invokespecial 134	java/lang/StringBuilder:<init>	()V
    //   184: aload_0
    //   185: ldc_w 333
    //   188: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: pop
    //   192: aload_0
    //   193: invokestatic 280	android/os/SystemClock:elapsedRealtime	()J
    //   196: lload_2
    //   197: lsub
    //   198: invokevirtual 303	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   201: pop
    //   202: aload_0
    //   203: ldc_w 305
    //   206: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: pop
    //   210: ldc 107
    //   212: aload_0
    //   213: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 272	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: ldc 2
    //   221: monitorexit
    //   222: return
    //   223: getstatic 74	s5/a:a	Ljava/security/Key;
    //   226: ifnull +10 -> 236
    //   229: iload 5
    //   231: istore 6
    //   233: goto +6 -> 239
    //   236: iconst_0
    //   237: istore 6
    //   239: aload_0
    //   240: iload 6
    //   242: invokestatic 327	s5/a:l	(Landroid/content/Context;Z)V
    //   245: aload_1
    //   246: athrow
    //   247: astore_0
    //   248: ldc 2
    //   250: monitorexit
    //   251: aload_0
    //   252: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	253	0	paramContext	Context
    //   6	62	1	localObject1	Object
    //   143	1	1	localObject2	Object
    //   147	99	1	localException	java.lang.Exception
    //   49	148	2	l	long
    //   51	113	4	bool1	boolean
    //   54	176	5	bool2	boolean
    //   57	184	6	bool3	boolean
    // Exception table:
    //   from	to	target	type
    //   59	63	143	finally
    //   67	88	143	finally
    //   110	118	143	finally
    //   148	157	143	finally
    //   59	63	147	java/lang/Exception
    //   67	88	147	java/lang/Exception
    //   110	118	147	java/lang/Exception
    //   3	7	247	finally
    //   15	34	247	finally
    //   38	50	247	finally
    //   88	94	247	finally
    //   100	106	247	finally
    //   118	124	247	finally
    //   134	140	247	finally
    //   157	163	247	finally
    //   176	219	247	finally
    //   223	229	247	finally
    //   239	247	247	finally
  }
  
  private static void l(Context paramContext, boolean paramBoolean)
  {
    g(paramContext).edit().putBoolean("generate_secret_key_success", paramBoolean).commit();
  }
  
  private static void m(Context paramContext, Locale paramLocale)
  {
    Locale.setDefault(paramLocale);
    Resources localResources = paramContext.getResources();
    paramContext = localResources.getConfiguration();
    paramContext.locale = paramLocale;
    localResources.updateConfiguration(paramContext, localResources.getDisplayMetrics());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s5.a
 * JD-Core Version:    0.7.0.1
 */