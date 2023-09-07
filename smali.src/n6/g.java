package n6;

import m6.b;

public class g
  extends b
{
  public String getName()
  {
    return "getSystemInfo";
  }
  
  /* Error */
  public m6.d invoke(com.xiaomi.passport.webview.a parama, org.json.JSONObject paramJSONObject)
    throws com.xiaomi.passport.jsb.PassportJsbMethodException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 29	android/view/View:getContext	()Landroid/content/Context;
    //   4: astore_2
    //   5: new 31	org/json/JSONObject
    //   8: dup
    //   9: invokespecial 32	org/json/JSONObject:<init>	()V
    //   12: astore_1
    //   13: aload_1
    //   14: ldc 34
    //   16: invokestatic 40	n7/a:g	()Z
    //   19: invokevirtual 44	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   22: pop
    //   23: aload_1
    //   24: ldc 46
    //   26: invokestatic 51	n7/b:e	()Z
    //   29: invokevirtual 44	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   32: pop
    //   33: aload_1
    //   34: ldc 53
    //   36: invokestatic 59	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   39: invokevirtual 62	java/util/Locale:toString	()Ljava/lang/String;
    //   42: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   45: pop
    //   46: aload_1
    //   47: ldc 67
    //   49: getstatic 73	android/os/Build:MODEL	Ljava/lang/String;
    //   52: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   55: pop
    //   56: aload_1
    //   57: ldc 75
    //   59: getstatic 78	android/os/Build:DEVICE	Ljava/lang/String;
    //   62: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   65: pop
    //   66: aload_1
    //   67: ldc 80
    //   69: getstatic 85	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   72: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   75: pop
    //   76: aload_1
    //   77: ldc 87
    //   79: getstatic 91	android/os/Build$VERSION:SDK_INT	I
    //   82: invokevirtual 94	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   85: pop
    //   86: aload_1
    //   87: ldc 96
    //   89: getstatic 99	android/os/Build$VERSION:INCREMENTAL	Ljava/lang/String;
    //   92: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   95: pop
    //   96: iconst_0
    //   97: istore_3
    //   98: ldc 101
    //   100: invokestatic 107	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   103: astore 4
    //   105: aload_1
    //   106: ldc 109
    //   108: aload 4
    //   110: ldc 111
    //   112: invokestatic 117	o5/c:j	(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    //   115: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   118: pop
    //   119: aload_1
    //   120: ldc 119
    //   122: aload 4
    //   124: ldc 121
    //   126: invokestatic 117	o5/c:j	(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    //   129: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   132: pop
    //   133: aload_1
    //   134: ldc 123
    //   136: ldc 101
    //   138: ldc 125
    //   140: iconst_0
    //   141: anewarray 127	java/lang/Object
    //   144: invokestatic 131	o5/c:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   147: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   150: pop
    //   151: ldc 133
    //   153: ldc 135
    //   155: iconst_1
    //   156: anewarray 127	java/lang/Object
    //   159: dup
    //   160: iconst_0
    //   161: ldc 137
    //   163: aastore
    //   164: invokestatic 131	o5/c:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   167: astore 4
    //   169: aload 4
    //   171: instanceof 139
    //   174: ifeq +12 -> 186
    //   177: aload_1
    //   178: ldc 141
    //   180: aload 4
    //   182: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   185: pop
    //   186: aload_2
    //   187: invokevirtual 147	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   190: ldc 149
    //   192: iconst_0
    //   193: invokestatic 155	android/provider/Settings$Global:getInt	(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    //   196: iconst_1
    //   197: if_icmpeq +5 -> 202
    //   200: iconst_1
    //   201: istore_3
    //   202: aload_1
    //   203: ldc 157
    //   205: iload_3
    //   206: invokevirtual 44	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   209: pop
    //   210: aload_1
    //   211: ldc 159
    //   213: invokestatic 163	com/xiaomi/accountsdk/account/e:g	()Ljava/lang/String;
    //   216: invokevirtual 65	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   219: pop
    //   220: new 165	m6/d
    //   223: dup
    //   224: aload_1
    //   225: invokespecial 168	m6/d:<init>	(Lorg/json/JSONObject;)V
    //   228: astore_1
    //   229: aload_1
    //   230: areturn
    //   231: astore_1
    //   232: new 17	com/xiaomi/passport/jsb/PassportJsbMethodException
    //   235: dup
    //   236: bipush 105
    //   238: ldc 170
    //   240: invokespecial 173	com/xiaomi/passport/jsb/PassportJsbMethodException:<init>	(ILjava/lang/String;)V
    //   243: athrow
    //   244: astore 4
    //   246: goto -213 -> 33
    //   249: astore 4
    //   251: goto -100 -> 151
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	254	0	this	g
    //   0	254	1	parama	com.xiaomi.passport.webview.a
    //   0	254	2	paramJSONObject	org.json.JSONObject
    //   97	109	3	bool	boolean
    //   103	78	4	localObject	java.lang.Object
    //   244	1	4	localUnknownValueException	com.xiaomi.verificationsdk.internal.UnknownValueException
    //   249	1	4	localClassNotFoundException	java.lang.ClassNotFoundException
    // Exception table:
    //   from	to	target	type
    //   13	23	231	org/json/JSONException
    //   23	33	231	org/json/JSONException
    //   33	96	231	org/json/JSONException
    //   98	151	231	org/json/JSONException
    //   151	186	231	org/json/JSONException
    //   186	200	231	org/json/JSONException
    //   202	229	231	org/json/JSONException
    //   23	33	244	com/xiaomi/verificationsdk/internal/UnknownValueException
    //   98	151	249	java/lang/ClassNotFoundException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.g
 * JD-Core Version:    0.7.0.1
 */