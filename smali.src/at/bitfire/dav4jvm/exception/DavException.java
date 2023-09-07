package at.bitfire.dav4jvm.exception;

import at.bitfire.dav4jvm.Error;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.r;
import okhttp3.v;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/exception/DavException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Ljava/io/Serializable;", "", "request", "Ljava/lang/String;", "getRequest", "()Ljava/lang/String;", "setRequest", "(Ljava/lang/String;)V", "<set-?>", "requestBody", "getRequestBody", "response", "getResponse", "responseBody", "getResponseBody", "", "Lat/bitfire/dav4jvm/Error;", "errors", "Ljava/util/List;", "getErrors", "()Ljava/util/List;", "message", "", "ex", "Lokhttp3/a0;", "httpResponse", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;)V", "Companion", "build"}, k=1, mv={1, 4, 0})
public class DavException
  extends Exception
{
  public static final Companion Companion = new Companion(null);
  public static final int MAX_EXCERPT_SIZE = 10240;
  private List<Error> errors;
  private String request;
  private String requestBody;
  private final String response;
  private String responseBody;
  
  public DavException(String paramString)
  {
    this(paramString, null, null, 6, null);
  }
  
  public DavException(String paramString, Throwable paramThrowable)
  {
    this(paramString, paramThrowable, null, 4, null);
  }
  
  /* Error */
  public DavException(String paramString, Throwable paramThrowable, okhttp3.a0 parama0)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 69
    //   3: invokestatic 75	kotlin/jvm/internal/r:g	(Ljava/lang/Object;Ljava/lang/String;)V
    //   6: aload_0
    //   7: aload_1
    //   8: aload_2
    //   9: invokespecial 77	java/lang/Exception:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   12: aload_0
    //   13: invokestatic 82	kotlin/collections/t:j	()Ljava/util/List;
    //   16: putfield 84	at/bitfire/dav4jvm/exception/DavException:errors	Ljava/util/List;
    //   19: aload_3
    //   20: ifnull +526 -> 546
    //   23: aload_0
    //   24: aload_3
    //   25: invokevirtual 89	okhttp3/a0:toString	()Ljava/lang/String;
    //   28: putfield 91	at/bitfire/dav4jvm/exception/DavException:response	Ljava/lang/String;
    //   31: aload_0
    //   32: aload_3
    //   33: invokevirtual 95	okhttp3/a0:l0	()Lokhttp3/y;
    //   36: invokevirtual 98	okhttp3/y:toString	()Ljava/lang/String;
    //   39: putfield 100	at/bitfire/dav4jvm/exception/DavException:request	Ljava/lang/String;
    //   42: aload_3
    //   43: invokevirtual 95	okhttp3/a0:l0	()Lokhttp3/y;
    //   46: invokevirtual 104	okhttp3/y:a	()Lokhttp3/z;
    //   49: astore_1
    //   50: aload_1
    //   51: ifnull +134 -> 185
    //   54: aload_1
    //   55: invokevirtual 110	okhttp3/z:b	()Lokhttp3/v;
    //   58: astore 4
    //   60: aload 4
    //   62: ifnull +123 -> 185
    //   65: getstatic 59	at/bitfire/dav4jvm/exception/DavException:Companion	Lat/bitfire/dav4jvm/exception/DavException$Companion;
    //   68: aload 4
    //   70: invokevirtual 114	at/bitfire/dav4jvm/exception/DavException$Companion:isPlainText	(Lokhttp3/v;)Z
    //   73: ifeq +112 -> 185
    //   76: new 116	cc/e
    //   79: astore_2
    //   80: aload_2
    //   81: invokespecial 118	cc/e:<init>	()V
    //   84: aload_1
    //   85: aload_2
    //   86: invokevirtual 121	okhttp3/z:g	(Lcc/f;)V
    //   89: new 123	java/io/ByteArrayOutputStream
    //   92: astore_1
    //   93: aload_1
    //   94: invokespecial 124	java/io/ByteArrayOutputStream:<init>	()V
    //   97: aload_2
    //   98: aload_1
    //   99: lconst_0
    //   100: iconst_2
    //   101: aconst_null
    //   102: invokestatic 128	cc/e:H0	(Lcc/e;Ljava/io/OutputStream;JILjava/lang/Object;)Lcc/e;
    //   105: pop
    //   106: aload 4
    //   108: getstatic 133	kotlin/text/d:b	Ljava/nio/charset/Charset;
    //   111: invokevirtual 139	okhttp3/v:c	(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    //   114: astore_2
    //   115: aload_2
    //   116: ifnonnull +6 -> 122
    //   119: invokestatic 142	kotlin/jvm/internal/r:r	()V
    //   122: aload_0
    //   123: aload_1
    //   124: aload_2
    //   125: invokevirtual 147	java/nio/charset/Charset:name	()Ljava/lang/String;
    //   128: invokevirtual 150	java/io/ByteArrayOutputStream:toString	(Ljava/lang/String;)Ljava/lang/String;
    //   131: putfield 152	at/bitfire/dav4jvm/exception/DavException:requestBody	Ljava/lang/String;
    //   134: goto +51 -> 185
    //   137: astore_2
    //   138: getstatic 158	at/bitfire/dav4jvm/Dav4jvm:INSTANCE	Lat/bitfire/dav4jvm/Dav4jvm;
    //   141: invokevirtual 162	at/bitfire/dav4jvm/Dav4jvm:getLog	()Ljava/util/logging/Logger;
    //   144: getstatic 168	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   147: ldc 170
    //   149: aload_2
    //   150: invokevirtual 176	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   153: new 178	java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial 179	java/lang/StringBuilder:<init>	()V
    //   160: astore_1
    //   161: aload_1
    //   162: ldc 181
    //   164: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: aload_1
    //   169: aload_2
    //   170: invokevirtual 190	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   173: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: aload_0
    //   178: aload_1
    //   179: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: putfield 152	at/bitfire/dav4jvm/exception/DavException:requestBody	Ljava/lang/String;
    //   185: aload_3
    //   186: invokevirtual 194	okhttp3/a0:c	()Lokhttp3/b0;
    //   189: astore_1
    //   190: aload_1
    //   191: ifnull +11 -> 202
    //   194: aload_1
    //   195: invokevirtual 200	okhttp3/b0:z	()Lcc/g;
    //   198: astore_1
    //   199: goto +5 -> 204
    //   202: aconst_null
    //   203: astore_1
    //   204: aload_1
    //   205: ifnull +244 -> 449
    //   208: aload_3
    //   209: sipush 10240
    //   212: i2l
    //   213: invokevirtual 204	okhttp3/a0:c0	(J)Lokhttp3/b0;
    //   216: astore_1
    //   217: aload_1
    //   218: invokevirtual 207	okhttp3/b0:q	()Lokhttp3/v;
    //   221: astore_2
    //   222: aload_2
    //   223: ifnull +21 -> 244
    //   226: getstatic 59	at/bitfire/dav4jvm/exception/DavException:Companion	Lat/bitfire/dav4jvm/exception/DavException$Companion;
    //   229: aload_2
    //   230: invokevirtual 114	at/bitfire/dav4jvm/exception/DavException$Companion:isPlainText	(Lokhttp3/v;)Z
    //   233: ifeq +11 -> 244
    //   236: aload_0
    //   237: aload_1
    //   238: invokevirtual 210	okhttp3/b0:E	()Ljava/lang/String;
    //   241: putfield 212	at/bitfire/dav4jvm/exception/DavException:responseBody	Ljava/lang/String;
    //   244: aload_3
    //   245: invokevirtual 194	okhttp3/a0:c	()Lokhttp3/b0;
    //   248: astore_1
    //   249: aload_1
    //   250: ifnull +199 -> 449
    //   253: aload_1
    //   254: invokevirtual 207	okhttp3/b0:q	()Lokhttp3/v;
    //   257: astore 4
    //   259: aload 4
    //   261: ifnull +167 -> 428
    //   264: aload 4
    //   266: invokevirtual 215	okhttp3/v:h	()Ljava/lang/String;
    //   269: astore_2
    //   270: iconst_2
    //   271: anewarray 217	java/lang/String
    //   274: dup
    //   275: iconst_0
    //   276: ldc 219
    //   278: aastore
    //   279: dup
    //   280: iconst_1
    //   281: ldc 221
    //   283: aastore
    //   284: aload_2
    //   285: invokestatic 227	kotlin/collections/j:u	([Ljava/lang/Object;Ljava/lang/Object;)Z
    //   288: ifeq +136 -> 424
    //   291: aload 4
    //   293: invokevirtual 229	okhttp3/v:g	()Ljava/lang/String;
    //   296: ldc 231
    //   298: invokestatic 234	kotlin/jvm/internal/r:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   301: istore 5
    //   303: iload 5
    //   305: ifeq +119 -> 424
    //   308: getstatic 239	at/bitfire/dav4jvm/XmlUtils:INSTANCE	Lat/bitfire/dav4jvm/XmlUtils;
    //   311: invokevirtual 243	at/bitfire/dav4jvm/XmlUtils:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   314: astore 4
    //   316: aload 4
    //   318: aload_1
    //   319: invokevirtual 247	okhttp3/b0:e	()Ljava/io/Reader;
    //   322: invokeinterface 253 2 0
    //   327: aload 4
    //   329: invokeinterface 257 1 0
    //   334: istore 6
    //   336: iload 6
    //   338: iconst_1
    //   339: if_icmpeq +85 -> 424
    //   342: iload 6
    //   344: iconst_2
    //   345: if_icmpne +50 -> 395
    //   348: aload 4
    //   350: invokeinterface 260 1 0
    //   355: iconst_1
    //   356: if_icmpne +39 -> 395
    //   359: getstatic 239	at/bitfire/dav4jvm/XmlUtils:INSTANCE	Lat/bitfire/dav4jvm/XmlUtils;
    //   362: aload 4
    //   364: invokevirtual 264	at/bitfire/dav4jvm/XmlUtils:propertyName	(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property$Name;
    //   367: astore 7
    //   369: getstatic 269	at/bitfire/dav4jvm/Error:Companion	Lat/bitfire/dav4jvm/Error$Companion;
    //   372: astore_2
    //   373: aload 7
    //   375: aload_2
    //   376: invokevirtual 275	at/bitfire/dav4jvm/Error$Companion:getNAME	()Lat/bitfire/dav4jvm/Property$Name;
    //   379: invokestatic 234	kotlin/jvm/internal/r:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   382: ifeq +13 -> 395
    //   385: aload_0
    //   386: aload_2
    //   387: aload 4
    //   389: invokevirtual 279	at/bitfire/dav4jvm/Error$Companion:parseError	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    //   392: putfield 84	at/bitfire/dav4jvm/exception/DavException:errors	Ljava/util/List;
    //   395: aload 4
    //   397: invokeinterface 282 1 0
    //   402: istore 6
    //   404: goto -68 -> 336
    //   407: astore_2
    //   408: getstatic 158	at/bitfire/dav4jvm/Dav4jvm:INSTANCE	Lat/bitfire/dav4jvm/Dav4jvm;
    //   411: invokevirtual 162	at/bitfire/dav4jvm/Dav4jvm:getLog	()Ljava/util/logging/Logger;
    //   414: getstatic 168	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   417: ldc_w 284
    //   420: aload_2
    //   421: invokevirtual 176	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   424: getstatic 289	kotlin/u:a	Lkotlin/u;
    //   427: astore_2
    //   428: aload_1
    //   429: aconst_null
    //   430: invokestatic 294	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   433: goto +16 -> 449
    //   436: astore_2
    //   437: aload_2
    //   438: athrow
    //   439: astore 4
    //   441: aload_1
    //   442: aload_2
    //   443: invokestatic 294	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   446: aload 4
    //   448: athrow
    //   449: aload_3
    //   450: invokevirtual 194	okhttp3/a0:c	()Lokhttp3/b0;
    //   453: astore_1
    //   454: aload_1
    //   455: ifnull +96 -> 551
    //   458: aload_1
    //   459: invokevirtual 297	okhttp3/b0:close	()V
    //   462: goto +89 -> 551
    //   465: astore_1
    //   466: goto +65 -> 531
    //   469: astore_1
    //   470: getstatic 158	at/bitfire/dav4jvm/Dav4jvm:INSTANCE	Lat/bitfire/dav4jvm/Dav4jvm;
    //   473: invokevirtual 162	at/bitfire/dav4jvm/Dav4jvm:getLog	()Ljava/util/logging/Logger;
    //   476: getstatic 168	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   479: ldc_w 299
    //   482: aload_1
    //   483: invokevirtual 176	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   486: new 178	java/lang/StringBuilder
    //   489: astore_2
    //   490: aload_2
    //   491: invokespecial 179	java/lang/StringBuilder:<init>	()V
    //   494: aload_2
    //   495: ldc_w 301
    //   498: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: pop
    //   502: aload_2
    //   503: aload_1
    //   504: invokevirtual 190	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   507: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   510: pop
    //   511: aload_0
    //   512: aload_2
    //   513: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   516: putfield 212	at/bitfire/dav4jvm/exception/DavException:responseBody	Ljava/lang/String;
    //   519: aload_3
    //   520: invokevirtual 194	okhttp3/a0:c	()Lokhttp3/b0;
    //   523: astore_1
    //   524: aload_1
    //   525: ifnull +26 -> 551
    //   528: goto -70 -> 458
    //   531: aload_3
    //   532: invokevirtual 194	okhttp3/a0:c	()Lokhttp3/b0;
    //   535: astore_2
    //   536: aload_2
    //   537: ifnull +7 -> 544
    //   540: aload_2
    //   541: invokevirtual 297	okhttp3/b0:close	()V
    //   544: aload_1
    //   545: athrow
    //   546: aload_0
    //   547: aconst_null
    //   548: putfield 91	at/bitfire/dav4jvm/exception/DavException:response	Ljava/lang/String;
    //   551: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	552	0	this	DavException
    //   0	552	1	paramString	String
    //   0	552	2	paramThrowable	Throwable
    //   0	552	3	parama0	okhttp3.a0
    //   58	338	4	localObject1	Object
    //   439	8	4	localObject2	Object
    //   301	3	5	bool	boolean
    //   334	69	6	i	int
    //   367	7	7	localName	at.bitfire.dav4jvm.Property.Name
    // Exception table:
    //   from	to	target	type
    //   31	50	137	java/lang/Exception
    //   54	60	137	java/lang/Exception
    //   65	115	137	java/lang/Exception
    //   119	122	137	java/lang/Exception
    //   122	134	137	java/lang/Exception
    //   308	336	407	org/xmlpull/v1/XmlPullParserException
    //   348	395	407	org/xmlpull/v1/XmlPullParserException
    //   395	404	407	org/xmlpull/v1/XmlPullParserException
    //   253	259	436	finally
    //   264	303	436	finally
    //   308	336	436	finally
    //   348	395	436	finally
    //   395	404	436	finally
    //   408	424	436	finally
    //   424	428	436	finally
    //   437	439	439	finally
    //   185	190	465	finally
    //   194	199	465	finally
    //   208	222	465	finally
    //   226	244	465	finally
    //   244	249	465	finally
    //   428	433	465	finally
    //   441	449	465	finally
    //   470	519	465	finally
    //   185	190	469	java/io/IOException
    //   194	199	469	java/io/IOException
    //   208	222	469	java/io/IOException
    //   226	244	469	java/io/IOException
    //   244	249	469	java/io/IOException
    //   428	433	469	java/io/IOException
    //   441	449	469	java/io/IOException
  }
  
  public final List<Error> getErrors()
  {
    return this.errors;
  }
  
  public final String getRequest()
  {
    return this.request;
  }
  
  public final String getRequestBody()
  {
    return this.requestBody;
  }
  
  public final String getResponse()
  {
    return this.response;
  }
  
  public final String getResponseBody()
  {
    return this.responseBody;
  }
  
  public final void setRequest(String paramString)
  {
    this.request = paramString;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/exception/DavException$Companion;", "", "Lokhttp3/v;", "type", "", "isPlainText", "", "MAX_EXCERPT_SIZE", "I", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
  public static final class Companion
  {
    public final boolean isPlainText(v paramv)
    {
      r.g(paramv, "type");
      if (!r.a(paramv.h(), "text")) {
        if (r.a(paramv.h(), "application"))
        {
          paramv = paramv.g();
          if (j.u(new String[] { "html", "xml" }, paramv)) {}
        }
        else
        {
          return false;
        }
      }
      boolean bool = true;
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.exception.DavException
 * JD-Core Version:    0.7.0.1
 */