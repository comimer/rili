package g7;

import android.content.Context;
import com.xiaomi.phonenum.utils.RSAEncryptUtil;
import com.xiaomi.phonenum.utils.RSAEncryptUtil.EncryptException;
import f7.a;
import f7.f;

public class b
  implements a
{
  private a a;
  private RSAEncryptUtil b;
  
  b(a parama)
  {
    this.a = parama;
    try
    {
      parama = new com/xiaomi/phonenum/utils/RSAEncryptUtil;
      parama.<init>();
      this.b = parama;
    }
    catch (RSAEncryptUtil.EncryptException parama)
    {
      parama.printStackTrace();
    }
  }
  
  /* Error */
  public f7.e a(f7.d paramd)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 42	f7/d:a	Ljava/lang/String;
    //   4: getstatic 46	d7/a:b	Ljava/lang/String;
    //   7: invokevirtual 52	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   10: ifne +14 -> 24
    //   13: aload_0
    //   14: getfield 21	g7/b:a	Lf7/a;
    //   17: aload_1
    //   18: invokeinterface 54 2 0
    //   23: areturn
    //   24: aload_0
    //   25: getfield 26	g7/b:b	Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;
    //   28: ifnonnull +10 -> 38
    //   31: getstatic 60	com/xiaomi/phonenum/bean/HttpError:ENCRYPT	Lcom/xiaomi/phonenum/bean/HttpError;
    //   34: invokevirtual 64	com/xiaomi/phonenum/bean/HttpError:result	()Lf7/e;
    //   37: areturn
    //   38: aconst_null
    //   39: astore_2
    //   40: aload_1
    //   41: getfield 67	f7/d:b	Ljava/net/URI;
    //   44: astore_3
    //   45: new 69	java/util/ArrayList
    //   48: astore 4
    //   50: aload 4
    //   52: invokespecial 70	java/util/ArrayList:<init>	()V
    //   55: aload 4
    //   57: aload_1
    //   58: getfield 74	f7/d:d	Ljava/util/Map;
    //   61: invokestatic 80	com/xiaomi/phonenum/utils/a:c	(Ljava/util/Map;)Ljava/lang/String;
    //   64: invokeinterface 86 2 0
    //   69: pop
    //   70: aload 4
    //   72: aload_3
    //   73: invokevirtual 92	java/net/URI:getQuery	()Ljava/lang/String;
    //   76: invokeinterface 86 2 0
    //   81: pop
    //   82: aload 4
    //   84: ldc 94
    //   86: invokestatic 97	com/xiaomi/phonenum/utils/a:a	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   89: astore 4
    //   91: aload 4
    //   93: invokestatic 103	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   96: ifne +57 -> 153
    //   99: aload_0
    //   100: getfield 26	g7/b:b	Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;
    //   103: aload 4
    //   105: invokevirtual 106	com/xiaomi/phonenum/utils/RSAEncryptUtil:d	(Ljava/lang/String;)Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$a;
    //   108: astore 5
    //   110: new 108	java/util/HashMap
    //   113: astore 4
    //   115: aload 4
    //   117: invokespecial 109	java/util/HashMap:<init>	()V
    //   120: aload 4
    //   122: ldc 111
    //   124: aload 5
    //   126: getfield 114	com/xiaomi/phonenum/utils/RSAEncryptUtil$a:a	Ljava/lang/String;
    //   129: invokeinterface 120 3 0
    //   134: pop
    //   135: aload 4
    //   137: ldc 122
    //   139: aload 5
    //   141: getfield 123	com/xiaomi/phonenum/utils/RSAEncryptUtil$a:b	Ljava/lang/String;
    //   144: invokeinterface 120 3 0
    //   149: pop
    //   150: goto +6 -> 156
    //   153: aconst_null
    //   154: astore 4
    //   156: new 88	java/net/URI
    //   159: astore 5
    //   161: aload 5
    //   163: aload_3
    //   164: invokevirtual 126	java/net/URI:getScheme	()Ljava/lang/String;
    //   167: aload_3
    //   168: invokevirtual 129	java/net/URI:getAuthority	()Ljava/lang/String;
    //   171: aload_3
    //   172: invokevirtual 132	java/net/URI:getPath	()Ljava/lang/String;
    //   175: aconst_null
    //   176: aload_3
    //   177: invokevirtual 135	java/net/URI:getFragment	()Ljava/lang/String;
    //   180: invokespecial 138	java/net/URI:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   183: new 140	f7/d$b
    //   186: astore_3
    //   187: aload_3
    //   188: invokespecial 141	f7/d$b:<init>	()V
    //   191: aload_3
    //   192: aload 5
    //   194: invokevirtual 144	java/net/URI:toString	()Ljava/lang/String;
    //   197: invokevirtual 148	f7/d$b:h	(Ljava/lang/String;)Lf7/d$b;
    //   200: aload_1
    //   201: getfield 150	f7/d:c	Ljava/util/Map;
    //   204: invokevirtual 154	f7/d$b:e	(Ljava/util/Map;)Lf7/d$b;
    //   207: aload 4
    //   209: invokevirtual 156	f7/d$b:d	(Ljava/util/Map;)Lf7/d$b;
    //   212: invokevirtual 159	f7/d$b:b	()Lf7/d;
    //   215: astore 4
    //   217: aload 4
    //   219: astore_1
    //   220: goto +39 -> 259
    //   223: astore 4
    //   225: new 161	java/lang/StringBuilder
    //   228: dup
    //   229: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   232: astore_3
    //   233: aload_3
    //   234: ldc 164
    //   236: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: pop
    //   240: aload_3
    //   241: aload_1
    //   242: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   245: pop
    //   246: ldc 173
    //   248: aload_3
    //   249: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: aload 4
    //   254: invokestatic 179	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   257: aload_2
    //   258: astore_1
    //   259: aload_1
    //   260: ifnonnull +10 -> 270
    //   263: getstatic 60	com/xiaomi/phonenum/bean/HttpError:ENCRYPT	Lcom/xiaomi/phonenum/bean/HttpError;
    //   266: invokevirtual 64	com/xiaomi/phonenum/bean/HttpError:result	()Lf7/e;
    //   269: areturn
    //   270: aload_0
    //   271: getfield 21	g7/b:a	Lf7/a;
    //   274: aload_1
    //   275: invokeinterface 54 2 0
    //   280: astore_1
    //   281: aload_1
    //   282: ifnonnull +10 -> 292
    //   285: getstatic 182	com/xiaomi/phonenum/bean/HttpError:DECRYPT	Lcom/xiaomi/phonenum/bean/HttpError;
    //   288: invokevirtual 64	com/xiaomi/phonenum/bean/HttpError:result	()Lf7/e;
    //   291: areturn
    //   292: aload_1
    //   293: getfield 185	f7/e:b	Ljava/lang/String;
    //   296: ifnonnull +5 -> 301
    //   299: aload_1
    //   300: areturn
    //   301: new 187	f7/e$a
    //   304: astore 4
    //   306: aload 4
    //   308: aload_1
    //   309: invokespecial 190	f7/e$a:<init>	(Lf7/e;)V
    //   312: aload 4
    //   314: aload_0
    //   315: getfield 26	g7/b:b	Lcom/xiaomi/phonenum/utils/RSAEncryptUtil;
    //   318: aload_1
    //   319: getfield 185	f7/e:b	Ljava/lang/String;
    //   322: invokevirtual 193	com/xiaomi/phonenum/utils/RSAEncryptUtil:a	(Ljava/lang/String;)Ljava/lang/String;
    //   325: invokevirtual 196	f7/e$a:a	(Ljava/lang/String;)Lf7/e$a;
    //   328: invokevirtual 198	f7/e$a:b	()Lf7/e;
    //   331: astore 4
    //   333: aload 4
    //   335: areturn
    //   336: astore_2
    //   337: new 161	java/lang/StringBuilder
    //   340: dup
    //   341: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   344: astore 4
    //   346: aload 4
    //   348: ldc 200
    //   350: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: pop
    //   354: aload 4
    //   356: aload_1
    //   357: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   360: pop
    //   361: ldc 173
    //   363: aload 4
    //   365: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   368: aload_2
    //   369: invokestatic 179	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   372: getstatic 182	com/xiaomi/phonenum/bean/HttpError:DECRYPT	Lcom/xiaomi/phonenum/bean/HttpError;
    //   375: invokevirtual 64	com/xiaomi/phonenum/bean/HttpError:result	()Lf7/e;
    //   378: areturn
    //   379: astore 4
    //   381: new 161	java/lang/StringBuilder
    //   384: dup
    //   385: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   388: astore 4
    //   390: aload 4
    //   392: ldc 202
    //   394: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: pop
    //   398: aload 4
    //   400: aload_1
    //   401: getfield 42	f7/d:a	Ljava/lang/String;
    //   404: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: pop
    //   408: new 204	java/lang/IllegalArgumentException
    //   411: dup
    //   412: aload 4
    //   414: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   417: invokespecial 207	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   420: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	421	0	this	b
    //   0	421	1	paramd	f7.d
    //   39	219	2	localObject1	Object
    //   336	33	2	localEncryptException1	RSAEncryptUtil.EncryptException
    //   44	205	3	localObject2	Object
    //   48	170	4	localObject3	Object
    //   223	30	4	localEncryptException2	RSAEncryptUtil.EncryptException
    //   304	60	4	localObject4	Object
    //   379	1	4	localURISyntaxException	java.net.URISyntaxException
    //   388	25	4	localStringBuilder	java.lang.StringBuilder
    //   108	85	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   40	150	223	com/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException
    //   156	217	223	com/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException
    //   301	333	336	com/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException
    //   40	150	379	java/net/URISyntaxException
    //   156	217	379	java/net/URISyntaxException
  }
  
  public static class a
    extends f
  {
    public a(Context paramContext)
    {
      super();
    }
    
    public a c(f7.b paramb)
    {
      return new b(super.c(paramb));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g7.b
 * JD-Core Version:    0.7.0.1
 */