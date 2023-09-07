package com.xiaomi.accountsdk.utils;

import org.json.JSONException;
import org.json.JSONObject;

public class FidNonce
  extends f
{
  public FidNonce(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public static enum Type
  {
    static
    {
      Type localType1 = new Type("NATIVE", 0);
      NATIVE = localType1;
      Type localType2 = new Type("WEB_VIEW", 1);
      WEB_VIEW = localType2;
      $VALUES = new Type[] { localType1, localType2 };
    }
    
    private Type() {}
  }
  
  public static class a
  {
    public FidNonce a(FidNonce.Type paramType)
    {
      o.a locala = o.a();
      FidSigningUtil.c localc = FidSigningUtil.a();
      return new a().b(paramType, locala, localc);
    }
    
    /* Error */
    FidNonce b(FidNonce.Type paramType, o.a parama, FidSigningUtil.c paramc)
    {
      // Byte code:
      //   0: aload_1
      //   1: ifnull +170 -> 171
      //   4: aload_2
      //   5: ifnonnull +5 -> 10
      //   8: aconst_null
      //   9: areturn
      //   10: aload_3
      //   11: ifnonnull +5 -> 16
      //   14: aconst_null
      //   15: areturn
      //   16: aload_3
      //   17: invokeinterface 38 1 0
      //   22: istore 4
      //   24: iload 4
      //   26: ifne +5 -> 31
      //   29: aconst_null
      //   30: areturn
      //   31: aload_1
      //   32: getstatic 44	com/xiaomi/accountsdk/utils/FidNonce$Type:NATIVE	Lcom/xiaomi/accountsdk/utils/FidNonce$Type;
      //   35: if_acmpne +9 -> 44
      //   38: ldc 46
      //   40: astore_1
      //   41: goto +6 -> 47
      //   44: ldc 48
      //   46: astore_1
      //   47: aload_0
      //   48: aload_1
      //   49: aload_0
      //   50: aload_2
      //   51: invokeinterface 53 1 0
      //   56: invokevirtual 57	com/xiaomi/accountsdk/utils/FidNonce$a:d	(J)Ljava/lang/String;
      //   59: aload_0
      //   60: invokevirtual 61	com/xiaomi/accountsdk/utils/FidNonce$a:e	()Ljava/lang/String;
      //   63: invokevirtual 64	com/xiaomi/accountsdk/utils/FidNonce$a:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      //   66: astore_2
      //   67: aload_2
      //   68: ldc 66
      //   70: invokevirtual 72	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   73: bipush 10
      //   75: invokestatic 78	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
      //   78: astore_1
      //   79: aload_3
      //   80: aload_2
      //   81: ldc 66
      //   83: invokevirtual 72	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   86: invokeinterface 81 2 0
      //   91: astore_2
      //   92: aload_2
      //   93: ifnonnull +5 -> 98
      //   96: aconst_null
      //   97: areturn
      //   98: aload_2
      //   99: bipush 10
      //   101: invokestatic 85	android/util/Base64:encode	([BI)[B
      //   104: astore_2
      //   105: new 68	java/lang/String
      //   108: dup
      //   109: aload_2
      //   110: ldc 66
      //   112: invokespecial 88	java/lang/String:<init>	([BLjava/lang/String;)V
      //   115: astore_2
      //   116: new 6	com/xiaomi/accountsdk/utils/FidNonce
      //   119: dup
      //   120: aload_1
      //   121: aload_2
      //   122: invokespecial 91	com/xiaomi/accountsdk/utils/FidNonce:<init>	(Ljava/lang/String;Ljava/lang/String;)V
      //   125: areturn
      //   126: astore_1
      //   127: ldc 93
      //   129: aload_1
      //   130: invokestatic 99	com/xiaomi/accountsdk/utils/b:i	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   133: aconst_null
      //   134: areturn
      //   135: astore_1
      //   136: ldc 93
      //   138: aload_1
      //   139: invokestatic 99	com/xiaomi/accountsdk/utils/b:i	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   142: aconst_null
      //   143: areturn
      //   144: astore_1
      //   145: ldc 93
      //   147: aload_1
      //   148: invokestatic 99	com/xiaomi/accountsdk/utils/b:i	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   151: aconst_null
      //   152: areturn
      //   153: astore_1
      //   154: ldc 93
      //   156: aload_1
      //   157: invokestatic 99	com/xiaomi/accountsdk/utils/b:i	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   160: aconst_null
      //   161: areturn
      //   162: astore_1
      //   163: ldc 93
      //   165: aload_1
      //   166: invokestatic 99	com/xiaomi/accountsdk/utils/b:i	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   169: aconst_null
      //   170: areturn
      //   171: new 101	java/lang/IllegalArgumentException
      //   174: dup
      //   175: ldc 103
      //   177: invokespecial 106	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
      //   180: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	181	0	this	a
      //   0	181	1	paramType	FidNonce.Type
      //   0	181	2	parama	o.a
      //   0	181	3	paramc	FidSigningUtil.c
      //   22	3	4	bool	boolean
      // Exception table:
      //   from	to	target	type
      //   105	116	126	java/io/UnsupportedEncodingException
      //   79	92	135	java/io/UnsupportedEncodingException
      //   79	92	144	com/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException
      //   67	79	153	java/io/UnsupportedEncodingException
      //   16	24	162	com/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException
    }
    
    String c(String paramString1, String paramString2, String paramString3)
    {
      try
      {
        JSONObject localJSONObject = new org/json/JSONObject;
        localJSONObject.<init>();
        localJSONObject.put("tp", paramString1);
        localJSONObject.put("nonce", paramString2);
        localJSONObject.put("v", paramString3);
        paramString1 = localJSONObject.toString();
        return paramString1;
      }
      catch (JSONException paramString1)
      {
        throw new IllegalStateException("should not happen");
      }
    }
    
    String d(long paramLong)
    {
      return i.b(paramLong);
    }
    
    String e()
    {
      return "5.3.0.release.8";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.FidNonce
 * JD-Core Version:    0.7.0.1
 */