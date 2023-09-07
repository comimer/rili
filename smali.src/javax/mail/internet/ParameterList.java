package javax.mail.internet;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ParameterList
{
  private static final boolean e = com.sun.mail.util.h.b("mail.mime.encodeparameters", true);
  private static final boolean f = com.sun.mail.util.h.b("mail.mime.decodeparameters", true);
  private static final boolean g = com.sun.mail.util.h.b("mail.mime.decodeparameters.strict", false);
  private static final boolean h = com.sun.mail.util.h.b("mail.mime.applefilenames", false);
  private static final boolean i = com.sun.mail.util.h.b("mail.mime.windowsfilenames", false);
  private static final boolean j = com.sun.mail.util.h.b("mail.mime.parameters.strict", true);
  private static final boolean k = com.sun.mail.util.h.b("mail.mime.splitlongparameters", true);
  private static final char[] l = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private Map<String, Object> a = new LinkedHashMap();
  private Set<String> b;
  private Map<String, Object> c;
  private String d = null;
  
  public ParameterList()
  {
    if (f)
    {
      this.b = new HashSet();
      this.c = new HashMap();
    }
  }
  
  public ParameterList(String paramString)
    throws ParseException
  {
    this();
    Object localObject1 = new b(paramString, "()<>@,;:\\\"\t []/?=");
    Object localObject2;
    for (;;)
    {
      localObject2 = ((b)localObject1).e();
      int m = ((b.a)localObject2).a();
      if (m != -4)
      {
        if ((char)m != ';') {
          break label396;
        }
        localObject2 = ((b)localObject1).e();
        if (((b.a)localObject2).a() != -4) {}
      }
      else
      {
        if (f) {
          a(false);
        }
        return;
      }
      String str;
      if (((b.a)localObject2).a() == -1)
      {
        str = ((b.a)localObject2).b().toLowerCase(Locale.ENGLISH);
        localObject2 = ((b)localObject1).e();
        if ((char)((b.a)localObject2).a() == '=')
        {
          if ((i) && ((str.equals("name")) || (str.equals("filename")))) {
            localObject2 = ((b)localObject1).g(';', true);
          } else if (j) {
            localObject2 = ((b)localObject1).e();
          } else {
            localObject2 = ((b)localObject1).f(';');
          }
          m = ((b.a)localObject2).a();
          if ((m != -1) && (m != -2))
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("In parameter list <");
            ((StringBuilder)localObject1).append(paramString);
            ((StringBuilder)localObject1).append(">, expected parameter value, got \"");
            ((StringBuilder)localObject1).append(((b.a)localObject2).b());
            ((StringBuilder)localObject1).append("\"");
            throw new ParseException(((StringBuilder)localObject1).toString());
          }
          localObject2 = ((b.a)localObject2).b();
          this.d = str;
          if (f) {
            f(str, (String)localObject2);
          } else {
            this.a.put(str, localObject2);
          }
        }
        else
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("In parameter list <");
          ((StringBuilder)localObject1).append(paramString);
          ((StringBuilder)localObject1).append(">, expected '=', got \"");
          ((StringBuilder)localObject1).append(((b.a)localObject2).b());
          ((StringBuilder)localObject1).append("\"");
          throw new ParseException(((StringBuilder)localObject1).toString());
        }
      }
      else
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("In parameter list <");
        ((StringBuilder)localObject1).append(paramString);
        ((StringBuilder)localObject1).append(">, expected parameter name, got \"");
        ((StringBuilder)localObject1).append(((b.a)localObject2).b());
        ((StringBuilder)localObject1).append("\"");
        throw new ParseException(((StringBuilder)localObject1).toString());
        label396:
        if (m != -1) {
          break;
        }
        str = this.d;
        if ((str == null) || (((!h) || ((!str.equals("name")) && (!this.d.equals("filename")))) && (j))) {
          break;
        }
        str = (String)this.a.get(this.d);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(str);
        localStringBuilder.append(" ");
        localStringBuilder.append(((b.a)localObject2).b());
        localObject2 = localStringBuilder.toString();
        this.a.put(this.d, localObject2);
      }
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("In parameter list <");
    ((StringBuilder)localObject1).append(paramString);
    ((StringBuilder)localObject1).append(">, expected ';', got \"");
    ((StringBuilder)localObject1).append(((b.a)localObject2).b());
    ((StringBuilder)localObject1).append("\"");
    throw new ParseException(((StringBuilder)localObject1).toString());
  }
  
  /* Error */
  private void a(boolean paramBoolean)
    throws ParseException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 103	javax/mail/internet/ParameterList:b	Ljava/util/Set;
    //   4: invokeinterface 208 1 0
    //   9: astore_2
    //   10: aload_2
    //   11: invokeinterface 214 1 0
    //   16: ifeq +386 -> 402
    //   19: aload_2
    //   20: invokeinterface 218 1 0
    //   25: checkcast 141	java/lang/String
    //   28: astore_3
    //   29: new 6	javax/mail/internet/ParameterList$MultiValue
    //   32: astore 4
    //   34: aconst_null
    //   35: astore 5
    //   37: aload 4
    //   39: aconst_null
    //   40: invokespecial 221	javax/mail/internet/ParameterList$MultiValue:<init>	(Ljavax/mail/internet/ParameterList$a;)V
    //   43: new 223	java/io/ByteArrayOutputStream
    //   46: astore 6
    //   48: aload 6
    //   50: invokespecial 224	java/io/ByteArrayOutputStream:<init>	()V
    //   53: iconst_0
    //   54: istore 7
    //   56: new 161	java/lang/StringBuilder
    //   59: astore 8
    //   61: aload 8
    //   63: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   66: aload 8
    //   68: aload_3
    //   69: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: pop
    //   73: aload 8
    //   75: ldc 226
    //   77: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload 8
    //   83: iload 7
    //   85: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   88: pop
    //   89: aload 8
    //   91: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: astore 9
    //   96: aload_0
    //   97: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   100: aload 9
    //   102: invokeinterface 193 2 0
    //   107: astore 8
    //   109: aload 8
    //   111: ifnonnull +6 -> 117
    //   114: goto +77 -> 191
    //   117: aload 4
    //   119: aload 8
    //   121: invokevirtual 234	java/util/AbstractCollection:add	(Ljava/lang/Object;)Z
    //   124: pop
    //   125: aload 5
    //   127: astore 10
    //   129: aload 8
    //   131: instanceof 17
    //   134: ifeq +233 -> 367
    //   137: aload 5
    //   139: astore 10
    //   141: aload 8
    //   143: checkcast 17	javax/mail/internet/ParameterList$d
    //   146: astore 11
    //   148: iload 7
    //   150: ifne +17 -> 167
    //   153: aload 5
    //   155: astore 10
    //   157: aload 11
    //   159: getfield 236	javax/mail/internet/ParameterList$d:b	Ljava/lang/String;
    //   162: astore 8
    //   164: goto +182 -> 346
    //   167: aload 5
    //   169: astore 8
    //   171: aload 5
    //   173: ifnonnull +173 -> 346
    //   176: aload 5
    //   178: astore 10
    //   180: aload_0
    //   181: getfield 103	javax/mail/internet/ParameterList:b	Ljava/util/Set;
    //   184: aload_3
    //   185: invokeinterface 239 2 0
    //   190: pop
    //   191: iload 7
    //   193: ifne +17 -> 210
    //   196: aload_0
    //   197: getfield 96	javax/mail/internet/ParameterList:a	Ljava/util/Map;
    //   200: aload_3
    //   201: invokeinterface 241 2 0
    //   206: pop
    //   207: goto -197 -> 10
    //   210: aload 5
    //   212: astore 8
    //   214: aload 5
    //   216: ifnull +18 -> 234
    //   219: aload 5
    //   221: invokestatic 247	javax/mail/internet/h:o	(Ljava/lang/String;)Ljava/lang/String;
    //   224: astore 8
    //   226: goto +8 -> 234
    //   229: astore 5
    //   231: goto +58 -> 289
    //   234: aload 8
    //   236: ifnull +15 -> 251
    //   239: aload 8
    //   241: astore 5
    //   243: aload 8
    //   245: invokevirtual 250	java/lang/String:length	()I
    //   248: ifne +8 -> 256
    //   251: invokestatic 252	javax/mail/internet/h:k	()Ljava/lang/String;
    //   254: astore 5
    //   256: aload 5
    //   258: ifnull +18 -> 276
    //   261: aload 4
    //   263: aload 6
    //   265: aload 5
    //   267: invokevirtual 254	java/io/ByteArrayOutputStream:toString	(Ljava/lang/String;)Ljava/lang/String;
    //   270: putfield 257	javax/mail/internet/ParameterList$MultiValue:value	Ljava/lang/String;
    //   273: goto +39 -> 312
    //   276: aload 4
    //   278: aload 6
    //   280: invokevirtual 258	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   283: putfield 257	javax/mail/internet/ParameterList$MultiValue:value	Ljava/lang/String;
    //   286: goto +26 -> 312
    //   289: getstatic 53	javax/mail/internet/ParameterList:g	Z
    //   292: istore 12
    //   294: iload 12
    //   296: ifne +32 -> 328
    //   299: aload 4
    //   301: aload 6
    //   303: ldc_w 260
    //   306: invokevirtual 254	java/io/ByteArrayOutputStream:toString	(Ljava/lang/String;)Ljava/lang/String;
    //   309: putfield 257	javax/mail/internet/ParameterList$MultiValue:value	Ljava/lang/String;
    //   312: aload_0
    //   313: getfield 96	javax/mail/internet/ParameterList:a	Ljava/util/Map;
    //   316: aload_3
    //   317: aload 4
    //   319: invokeinterface 185 3 0
    //   324: pop
    //   325: goto -315 -> 10
    //   328: new 111	javax/mail/internet/ParseException
    //   331: astore 8
    //   333: aload 8
    //   335: aload 5
    //   337: invokevirtual 261	java/lang/Object:toString	()Ljava/lang/String;
    //   340: invokespecial 177	javax/mail/internet/ParseException:<init>	(Ljava/lang/String;)V
    //   343: aload 8
    //   345: athrow
    //   346: aload 8
    //   348: astore 10
    //   350: aload 11
    //   352: getfield 263	javax/mail/internet/ParameterList$d:a	Ljava/lang/String;
    //   355: aload 6
    //   357: invokestatic 266	javax/mail/internet/ParameterList:c	(Ljava/lang/String;Ljava/io/OutputStream;)V
    //   360: aload 8
    //   362: astore 5
    //   364: goto +20 -> 384
    //   367: aload 5
    //   369: astore 10
    //   371: aload 6
    //   373: aload 8
    //   375: checkcast 141	java/lang/String
    //   378: invokestatic 271	com/sun/mail/util/a:b	(Ljava/lang/String;)[B
    //   381: invokevirtual 277	java/io/OutputStream:write	([B)V
    //   384: aload_0
    //   385: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   388: aload 9
    //   390: invokeinterface 241 2 0
    //   395: pop
    //   396: iinc 7 1
    //   399: goto -343 -> 56
    //   402: aload_0
    //   403: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   406: invokeinterface 280 1 0
    //   411: ifle +111 -> 522
    //   414: aload_0
    //   415: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   418: invokeinterface 284 1 0
    //   423: invokeinterface 287 1 0
    //   428: astore 5
    //   430: aload 5
    //   432: invokeinterface 214 1 0
    //   437: ifeq +72 -> 509
    //   440: aload 5
    //   442: invokeinterface 218 1 0
    //   447: astore 8
    //   449: aload 8
    //   451: instanceof 17
    //   454: ifeq -24 -> 430
    //   457: aload 8
    //   459: checkcast 17	javax/mail/internet/ParameterList$d
    //   462: astore 8
    //   464: aload 8
    //   466: aload 8
    //   468: getfield 263	javax/mail/internet/ParameterList$d:a	Ljava/lang/String;
    //   471: aload 8
    //   473: getfield 236	javax/mail/internet/ParameterList$d:b	Ljava/lang/String;
    //   476: invokestatic 290	javax/mail/internet/ParameterList:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   479: putfield 263	javax/mail/internet/ParameterList$d:a	Ljava/lang/String;
    //   482: goto -52 -> 430
    //   485: astore 8
    //   487: getstatic 53	javax/mail/internet/ParameterList:g	Z
    //   490: ifne +6 -> 496
    //   493: goto -63 -> 430
    //   496: new 111	javax/mail/internet/ParseException
    //   499: dup
    //   500: aload 8
    //   502: invokevirtual 261	java/lang/Object:toString	()Ljava/lang/String;
    //   505: invokespecial 177	javax/mail/internet/ParseException:<init>	(Ljava/lang/String;)V
    //   508: athrow
    //   509: aload_0
    //   510: getfield 96	javax/mail/internet/ParameterList:a	Ljava/util/Map;
    //   513: aload_0
    //   514: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   517: invokeinterface 294 2 0
    //   522: aload_0
    //   523: getfield 103	javax/mail/internet/ParameterList:b	Ljava/util/Set;
    //   526: invokeinterface 297 1 0
    //   531: aload_0
    //   532: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   535: invokeinterface 298 1 0
    //   540: return
    //   541: astore 8
    //   543: iload_1
    //   544: ifeq +141 -> 685
    //   547: aload_0
    //   548: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   551: invokeinterface 280 1 0
    //   556: ifle +111 -> 667
    //   559: aload_0
    //   560: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   563: invokeinterface 284 1 0
    //   568: invokeinterface 287 1 0
    //   573: astore 5
    //   575: aload 5
    //   577: invokeinterface 214 1 0
    //   582: ifeq +72 -> 654
    //   585: aload 5
    //   587: invokeinterface 218 1 0
    //   592: astore 10
    //   594: aload 10
    //   596: instanceof 17
    //   599: ifeq -24 -> 575
    //   602: aload 10
    //   604: checkcast 17	javax/mail/internet/ParameterList$d
    //   607: astore 10
    //   609: aload 10
    //   611: aload 10
    //   613: getfield 263	javax/mail/internet/ParameterList$d:a	Ljava/lang/String;
    //   616: aload 10
    //   618: getfield 236	javax/mail/internet/ParameterList$d:b	Ljava/lang/String;
    //   621: invokestatic 290	javax/mail/internet/ParameterList:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   624: putfield 263	javax/mail/internet/ParameterList$d:a	Ljava/lang/String;
    //   627: goto -52 -> 575
    //   630: astore 10
    //   632: getstatic 53	javax/mail/internet/ParameterList:g	Z
    //   635: ifne +6 -> 641
    //   638: goto -63 -> 575
    //   641: new 111	javax/mail/internet/ParseException
    //   644: dup
    //   645: aload 10
    //   647: invokevirtual 261	java/lang/Object:toString	()Ljava/lang/String;
    //   650: invokespecial 177	javax/mail/internet/ParseException:<init>	(Ljava/lang/String;)V
    //   653: athrow
    //   654: aload_0
    //   655: getfield 96	javax/mail/internet/ParameterList:a	Ljava/util/Map;
    //   658: aload_0
    //   659: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   662: invokeinterface 294 2 0
    //   667: aload_0
    //   668: getfield 103	javax/mail/internet/ParameterList:b	Ljava/util/Set;
    //   671: invokeinterface 297 1 0
    //   676: aload_0
    //   677: getfield 108	javax/mail/internet/ParameterList:c	Ljava/util/Map;
    //   680: invokeinterface 298 1 0
    //   685: aload 8
    //   687: athrow
    //   688: astore 5
    //   690: aload 10
    //   692: astore 5
    //   694: goto -310 -> 384
    //   697: astore 5
    //   699: goto -387 -> 312
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	702	0	this	ParameterList
    //   0	702	1	paramBoolean	boolean
    //   9	11	2	localIterator	Iterator
    //   28	289	3	str1	String
    //   32	286	4	localMultiValue	MultiValue
    //   35	185	5	str2	String
    //   229	1	5	localUnsupportedEncodingException1	UnsupportedEncodingException
    //   241	345	5	localObject1	Object
    //   688	1	5	localIOException	IOException
    //   692	1	5	localObject2	Object
    //   697	1	5	localUnsupportedEncodingException2	UnsupportedEncodingException
    //   46	326	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   54	343	7	m	int
    //   59	413	8	localObject3	Object
    //   485	16	8	localUnsupportedEncodingException3	UnsupportedEncodingException
    //   541	145	8	localObject4	Object
    //   94	295	9	str3	String
    //   127	490	10	localObject5	Object
    //   630	61	10	localUnsupportedEncodingException4	UnsupportedEncodingException
    //   146	205	11	locald	d
    //   292	3	12	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   219	226	229	java/io/UnsupportedEncodingException
    //   243	251	229	java/io/UnsupportedEncodingException
    //   251	256	229	java/io/UnsupportedEncodingException
    //   261	273	229	java/io/UnsupportedEncodingException
    //   276	286	229	java/io/UnsupportedEncodingException
    //   464	482	485	java/io/UnsupportedEncodingException
    //   0	10	541	finally
    //   10	34	541	finally
    //   37	53	541	finally
    //   56	109	541	finally
    //   117	125	541	finally
    //   129	137	541	finally
    //   141	148	541	finally
    //   157	164	541	finally
    //   180	191	541	finally
    //   196	207	541	finally
    //   219	226	541	finally
    //   243	251	541	finally
    //   251	256	541	finally
    //   261	273	541	finally
    //   276	286	541	finally
    //   289	294	541	finally
    //   299	312	541	finally
    //   312	325	541	finally
    //   328	346	541	finally
    //   350	360	541	finally
    //   371	384	541	finally
    //   384	396	541	finally
    //   609	627	630	java/io/UnsupportedEncodingException
    //   129	137	688	java/io/IOException
    //   141	148	688	java/io/IOException
    //   157	164	688	java/io/IOException
    //   180	191	688	java/io/IOException
    //   350	360	688	java/io/IOException
    //   371	384	688	java/io/IOException
    //   299	312	697	java/io/UnsupportedEncodingException
  }
  
  private static String b(String paramString1, String paramString2)
    throws ParseException, UnsupportedEncodingException
  {
    byte[] arrayOfByte = new byte[paramString1.length()];
    int m = 0;
    for (int n = m; m < paramString1.length(); n++)
    {
      int i1 = paramString1.charAt(m);
      int i2 = m;
      int i3 = i1;
      if (i1 == 37) {
        try
        {
          i2 = Integer.parseInt(paramString1.substring(m + 1, m + 3), 16);
          i3 = (char)i2;
          i2 = m + 2;
        }
        catch (StringIndexOutOfBoundsException localStringIndexOutOfBoundsException)
        {
          if (!g)
          {
            i2 = m;
            i3 = i1;
          }
          else
          {
            throw new ParseException(localStringIndexOutOfBoundsException.toString());
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          if (!g)
          {
            i2 = m;
            i3 = i1;
          }
          else
          {
            throw new ParseException(localNumberFormatException.toString());
          }
        }
      }
      arrayOfByte[n] = ((byte)(byte)i3);
      m = i2 + 1;
    }
    paramString1 = paramString2;
    if (paramString2 != null) {
      paramString1 = h.o(paramString2);
    }
    if (paramString1 != null)
    {
      paramString2 = paramString1;
      if (paramString1.length() != 0) {}
    }
    else
    {
      paramString2 = h.k();
    }
    return new String(arrayOfByte, 0, n, paramString2);
  }
  
  private static void c(String paramString, OutputStream paramOutputStream)
    throws ParseException, IOException
  {
    int i1;
    for (int m = 0; m < paramString.length(); m = i1 + 1)
    {
      int n = paramString.charAt(m);
      i1 = m;
      int i2 = n;
      if (n == 37) {
        try
        {
          i1 = Integer.parseInt(paramString.substring(m + 1, m + 3), 16);
          i2 = (char)i1;
          i1 = m + 2;
        }
        catch (StringIndexOutOfBoundsException localStringIndexOutOfBoundsException)
        {
          if (!g)
          {
            i1 = m;
            i2 = n;
          }
          else
          {
            throw new ParseException(localStringIndexOutOfBoundsException.toString());
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          if (!g)
          {
            i1 = m;
            i2 = n;
          }
          else
          {
            throw new ParseException(localNumberFormatException.toString());
          }
        }
      }
      paramOutputStream.write((byte)i2);
    }
  }
  
  private static d d(String paramString)
    throws ParseException
  {
    d locald = new d(null);
    locald.c = paramString;
    locald.a = paramString;
    try
    {
      int m = paramString.indexOf('\'');
      Object localObject2;
      if (m < 0)
      {
        if (!g) {
          return locald;
        }
        localObject1 = new javax/mail/internet/ParseException;
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("Missing charset in encoded value: ");
        ((StringBuilder)localObject2).append(paramString);
        ((ParseException)localObject1).<init>(((StringBuilder)localObject2).toString());
        throw ((Throwable)localObject1);
      }
      Object localObject1 = paramString.substring(0, m);
      m = paramString.indexOf('\'', m + 1);
      if (m < 0)
      {
        if (!g) {
          return locald;
        }
        localObject2 = new javax/mail/internet/ParseException;
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append("Missing language in encoded value: ");
        ((StringBuilder)localObject1).append(paramString);
        ((ParseException)localObject2).<init>(((StringBuilder)localObject1).toString());
        throw ((Throwable)localObject2);
      }
      locald.a = paramString.substring(m + 1);
      locald.b = ((String)localObject1);
    }
    catch (StringIndexOutOfBoundsException paramString)
    {
      if (g) {
        throw new ParseException(paramString.toString());
      }
    }
    catch (NumberFormatException paramString)
    {
      if (g) {
        break label197;
      }
    }
    return locald;
    label197:
    throw new ParseException(paramString.toString());
  }
  
  private void f(String paramString1, String paramString2)
    throws ParseException
  {
    int m = paramString1.indexOf('*');
    if (m < 0)
    {
      this.a.put(paramString1, paramString2);
    }
    else
    {
      Object localObject;
      if (m == paramString1.length() - 1)
      {
        paramString1 = paramString1.substring(0, m);
        localObject = d(paramString2);
        try
        {
          ((d)localObject).a = b(((d)localObject).a, ((d)localObject).b);
        }
        catch (UnsupportedEncodingException paramString2)
        {
          if (g) {
            break label93;
          }
        }
        this.a.put(paramString1, localObject);
        return;
        label93:
        throw new ParseException(paramString2.toString());
      }
      else
      {
        localObject = paramString1.substring(0, m);
        this.b.add(localObject);
        this.a.put(localObject, "");
        String str = paramString1;
        localObject = paramString2;
        if (paramString1.endsWith("*"))
        {
          if (paramString1.endsWith("*0*"))
          {
            paramString2 = d(paramString2);
          }
          else
          {
            localObject = new d(null);
            ((d)localObject).c = paramString2;
            ((d)localObject).a = paramString2;
            paramString2 = (String)localObject;
          }
          str = paramString1.substring(0, paramString1.length() - 1);
          localObject = paramString2;
        }
        this.c.put(str, localObject);
      }
    }
  }
  
  private static String g(String paramString)
  {
    return h.t(paramString, "()<>@,;:\\\"\t []/?=");
  }
  
  public String e(String paramString)
  {
    paramString = this.a.get(paramString.trim().toLowerCase(Locale.ENGLISH));
    if ((paramString instanceof MultiValue)) {
      paramString = ((MultiValue)paramString).value;
    } else if ((paramString instanceof b)) {
      paramString = ((b)paramString).a;
    } else if ((paramString instanceof d)) {
      paramString = ((d)paramString).a;
    } else {
      paramString = (String)paramString;
    }
    return paramString;
  }
  
  public void h(String paramString1, String paramString2)
  {
    String str = paramString1.trim().toLowerCase(Locale.ENGLISH);
    if (f) {
      try
      {
        f(str, paramString2);
      }
      catch (ParseException paramString1)
      {
        this.a.put(str, paramString2);
      }
    } else {
      this.a.put(str, paramString2);
    }
  }
  
  public String i(int paramInt)
  {
    c localc = new c(paramInt);
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (Map.Entry)localIterator.next();
      Object localObject2 = (String)((Map.Entry)localObject1).getKey();
      localObject1 = ((Map.Entry)localObject1).getValue();
      boolean bool = localObject1 instanceof MultiValue;
      paramInt = 0;
      Object localObject3;
      if (bool)
      {
        localObject3 = (MultiValue)localObject1;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append("*");
        String str = ((StringBuilder)localObject1).toString();
        while (paramInt < ((AbstractCollection)localObject3).size())
        {
          localObject1 = ((AbstractList)localObject3).get(paramInt);
          if ((localObject1 instanceof d))
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(str);
            ((StringBuilder)localObject2).append(paramInt);
            ((StringBuilder)localObject2).append("*");
            localObject2 = ((StringBuilder)localObject2).toString();
            localObject1 = ((d)localObject1).c;
          }
          else
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(str);
            ((StringBuilder)localObject2).append(paramInt);
            localObject2 = ((StringBuilder)localObject2).toString();
            localObject1 = (String)localObject1;
          }
          localc.a((String)localObject2, g((String)localObject1));
          paramInt++;
        }
      }
      else if ((localObject1 instanceof b))
      {
        localc.a((String)localObject2, g(((b)localObject1).a));
      }
      else if ((localObject1 instanceof d))
      {
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append((String)localObject2);
        ((StringBuilder)localObject3).append("*");
        localc.a(((StringBuilder)localObject3).toString(), g(((d)localObject1).c));
      }
      else
      {
        localObject1 = (String)localObject1;
        if ((((String)localObject1).length() > 60) && (k) && (e))
        {
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append((String)localObject2);
          ((StringBuilder)localObject3).append("*");
          localObject2 = ((StringBuilder)localObject3).toString();
          for (paramInt = 0; ((String)localObject1).length() > 60; paramInt++)
          {
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append((String)localObject2);
            ((StringBuilder)localObject3).append(paramInt);
            localc.a(((StringBuilder)localObject3).toString(), g(((String)localObject1).substring(0, 60)));
            localObject1 = ((String)localObject1).substring(60);
          }
          if (((String)localObject1).length() > 0)
          {
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append((String)localObject2);
            ((StringBuilder)localObject3).append(paramInt);
            localc.a(((StringBuilder)localObject3).toString(), g((String)localObject1));
          }
        }
        else
        {
          localc.a((String)localObject2, g((String)localObject1));
        }
      }
    }
    return localc.toString();
  }
  
  public String toString()
  {
    return i(0);
  }
  
  private static class MultiValue
    extends ArrayList<Object>
  {
    private static final long serialVersionUID = 699561094618751023L;
    String value;
  }
  
  private static class b
  {
    String a;
  }
  
  private static class c
  {
    private int a;
    private StringBuilder b = new StringBuilder();
    
    public c(int paramInt)
    {
      this.a = paramInt;
    }
    
    public void a(String paramString1, String paramString2)
    {
      this.b.append("; ");
      this.a += 2;
      int i = paramString1.length();
      int j = paramString2.length();
      if (this.a + (i + j + 1) > 76)
      {
        this.b.append("\r\n\t");
        this.a = 8;
      }
      StringBuilder localStringBuilder = this.b;
      localStringBuilder.append(paramString1);
      localStringBuilder.append('=');
      i = this.a + (paramString1.length() + 1);
      this.a = i;
      if (i + paramString2.length() > 76)
      {
        paramString1 = h.j(this.a, paramString2);
        this.b.append(paramString1);
        i = paramString1.lastIndexOf('\n');
        if (i >= 0) {
          this.a += paramString1.length() - i - 1;
        } else {
          this.a += paramString1.length();
        }
      }
      else
      {
        this.b.append(paramString2);
        this.a += paramString2.length();
      }
    }
    
    public String toString()
    {
      return this.b.toString();
    }
  }
  
  private static class d
  {
    String a;
    String b;
    String c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.ParameterList
 * JD-Core Version:    0.7.0.1
 */