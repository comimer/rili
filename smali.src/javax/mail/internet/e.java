package javax.mail.internet;

import com.sun.mail.util.h;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import javax.mail.MessagingException;
import o7.g;

public class e
  extends javax.mail.d
{
  protected g c = null;
  protected boolean d = true;
  protected boolean e = true;
  protected String f = null;
  protected boolean g = true;
  protected boolean h = true;
  protected boolean i = false;
  protected boolean j = false;
  
  public e()
  {
    this("mixed");
  }
  
  public e(String paramString)
  {
    String str = j.a();
    paramString = new a("multipart", paramString, null);
    paramString.f("boundary", str);
    this.b = paramString.toString();
    i();
  }
  
  private static boolean d(String paramString)
  {
    for (int k = 0; k < paramString.length(); k++) {
      if (paramString.charAt(k) != '-') {
        return false;
      }
    }
    return true;
  }
  
  /* Error */
  private d h(InputStream paramInputStream)
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 85	javax/mail/internet/e:f	(Ljava/io/InputStream;)Ljavax/mail/internet/d;
    //   5: astore_2
    //   6: aload_1
    //   7: invokevirtual 90	java/io/InputStream:close	()V
    //   10: aload_2
    //   11: areturn
    //   12: astore_2
    //   13: aload_1
    //   14: invokevirtual 90	java/io/InputStream:close	()V
    //   17: aload_2
    //   18: athrow
    //   19: astore_1
    //   20: goto -10 -> 10
    //   23: astore_1
    //   24: goto -7 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	e
    //   0	27	1	paramInputStream	InputStream
    //   5	6	2	locald	d
    //   12	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	6	12	finally
    //   6	10	19	java/io/IOException
    //   13	17	23	java/io/IOException
  }
  
  private static int k(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int k = 0;
    int m = paramInt1;
    paramInt1 = paramInt2;
    if (paramInt2 == 0) {
      return 0;
    }
    while (paramInt1 > 0)
    {
      paramInt2 = paramInputStream.read(paramArrayOfByte, m, paramInt1);
      if (paramInt2 <= 0) {
        break;
      }
      m += paramInt2;
      k += paramInt2;
      paramInt1 -= paramInt2;
    }
    if (k <= 0) {
      k = -1;
    }
    return k;
  }
  
  private void l(InputStream paramInputStream, long paramLong)
    throws IOException
  {
    while (paramLong > 0L)
    {
      long l = paramInputStream.skip(paramLong);
      if (l > 0L) {
        paramLong -= l;
      } else {
        throw new EOFException("can't skip");
      }
    }
  }
  
  public javax.mail.a b(int paramInt)
    throws MessagingException
  {
    try
    {
      j();
      javax.mail.a locala = super.b(paramInt);
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int c()
    throws MessagingException
  {
    try
    {
      j();
      int k = super.c();
      return k;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected c e(InputStream paramInputStream)
    throws MessagingException
  {
    return new c(paramInputStream);
  }
  
  protected d f(InputStream paramInputStream)
    throws MessagingException
  {
    return new d(paramInputStream);
  }
  
  protected d g(c paramc, byte[] paramArrayOfByte)
    throws MessagingException
  {
    return new d(paramc, paramArrayOfByte);
  }
  
  protected void i()
  {
    this.g = h.b("mail.mime.multipart.ignoremissingendboundary", true);
    this.h = h.b("mail.mime.multipart.ignoremissingboundaryparameter", true);
    this.i = h.b("mail.mime.multipart.ignoreexistingboundaryparameter", false);
    this.j = h.b("mail.mime.multipart.allowempty", false);
  }
  
  /* Error */
  protected void j()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	javax/mail/internet/e:d	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 67	javax/mail/internet/e:i	()V
    //   18: aload_0
    //   19: getfield 27	javax/mail/internet/e:c	Lo7/g;
    //   22: invokeinterface 148 1 0
    //   27: astore_2
    //   28: aload_2
    //   29: instanceof 150
    //   32: ifne +29 -> 61
    //   35: aload_2
    //   36: instanceof 152
    //   39: ifne +22 -> 61
    //   42: aload_2
    //   43: instanceof 154
    //   46: ifne +15 -> 61
    //   49: new 152	java/io/BufferedInputStream
    //   52: astore_3
    //   53: aload_3
    //   54: aload_2
    //   55: invokespecial 155	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   58: goto +5 -> 63
    //   61: aload_2
    //   62: astore_3
    //   63: aload_3
    //   64: instanceof 154
    //   67: ifeq +12 -> 79
    //   70: aload_3
    //   71: checkcast 154	javax/mail/internet/i
    //   74: astore 4
    //   76: goto +6 -> 82
    //   79: aconst_null
    //   80: astore 4
    //   82: new 49	javax/mail/internet/a
    //   85: astore_2
    //   86: aload_2
    //   87: aload_0
    //   88: getfield 65	javax/mail/d:b	Ljava/lang/String;
    //   91: invokespecial 156	javax/mail/internet/a:<init>	(Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield 39	javax/mail/internet/e:i	Z
    //   98: ifne +48 -> 146
    //   101: aload_2
    //   102: ldc 56
    //   104: invokevirtual 159	javax/mail/internet/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   107: astore_2
    //   108: aload_2
    //   109: ifnull +37 -> 146
    //   112: new 161	java/lang/StringBuilder
    //   115: astore 5
    //   117: aload 5
    //   119: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   122: aload 5
    //   124: ldc 164
    //   126: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: pop
    //   130: aload 5
    //   132: aload_2
    //   133: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: pop
    //   137: aload 5
    //   139: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: astore_2
    //   143: goto +5 -> 148
    //   146: aconst_null
    //   147: astore_2
    //   148: aload_2
    //   149: ifnonnull +32 -> 181
    //   152: aload_0
    //   153: getfield 37	javax/mail/internet/e:h	Z
    //   156: ifne +25 -> 181
    //   159: aload_0
    //   160: getfield 39	javax/mail/internet/e:i	Z
    //   163: ifeq +6 -> 169
    //   166: goto +15 -> 181
    //   169: new 171	javax/mail/internet/ParseException
    //   172: astore_2
    //   173: aload_2
    //   174: ldc 173
    //   176: invokespecial 174	javax/mail/internet/ParseException:<init>	(Ljava/lang/String;)V
    //   179: aload_2
    //   180: athrow
    //   181: new 176	com/sun/mail/util/e
    //   184: astore 6
    //   186: aload 6
    //   188: aload_3
    //   189: invokespecial 177	com/sun/mail/util/e:<init>	(Ljava/io/InputStream;)V
    //   192: aconst_null
    //   193: astore 7
    //   195: aload 6
    //   197: invokevirtual 179	com/sun/mail/util/e:c	()Ljava/lang/String;
    //   200: astore 8
    //   202: aload_2
    //   203: astore 9
    //   205: aload 8
    //   207: astore 5
    //   209: aload 8
    //   211: ifnull +226 -> 437
    //   214: aload 8
    //   216: invokevirtual 74	java/lang/String:length	()I
    //   219: iconst_1
    //   220: isub
    //   221: istore 10
    //   223: iload 10
    //   225: iflt +35 -> 260
    //   228: aload 8
    //   230: iload 10
    //   232: invokevirtual 78	java/lang/String:charAt	(I)C
    //   235: istore 11
    //   237: iload 11
    //   239: bipush 32
    //   241: if_icmpeq +13 -> 254
    //   244: iload 11
    //   246: bipush 9
    //   248: if_icmpeq +6 -> 254
    //   251: goto +9 -> 260
    //   254: iinc 10 255
    //   257: goto -34 -> 223
    //   260: aload 8
    //   262: iconst_0
    //   263: iload 10
    //   265: iconst_1
    //   266: iadd
    //   267: invokevirtual 183	java/lang/String:substring	(II)Ljava/lang/String;
    //   270: astore 5
    //   272: aload_2
    //   273: ifnull +60 -> 333
    //   276: aload 5
    //   278: aload_2
    //   279: invokevirtual 187	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   282: ifeq +9 -> 291
    //   285: aload_2
    //   286: astore 9
    //   288: goto +149 -> 437
    //   291: aload 5
    //   293: invokevirtual 74	java/lang/String:length	()I
    //   296: aload_2
    //   297: invokevirtual 74	java/lang/String:length	()I
    //   300: iconst_2
    //   301: iadd
    //   302: if_icmpne +77 -> 379
    //   305: aload 5
    //   307: aload_2
    //   308: invokevirtual 190	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   311: ifeq +68 -> 379
    //   314: aload 5
    //   316: ldc 164
    //   318: invokevirtual 193	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   321: ifeq +58 -> 379
    //   324: aconst_null
    //   325: astore 5
    //   327: aload_2
    //   328: astore 9
    //   330: goto +107 -> 437
    //   333: aload 5
    //   335: invokevirtual 74	java/lang/String:length	()I
    //   338: iconst_2
    //   339: if_icmple +40 -> 379
    //   342: aload 5
    //   344: ldc 164
    //   346: invokevirtual 190	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   349: ifeq +30 -> 379
    //   352: aload 5
    //   354: invokevirtual 74	java/lang/String:length	()I
    //   357: iconst_4
    //   358: if_icmple +14 -> 372
    //   361: aload 5
    //   363: invokestatic 195	javax/mail/internet/e:d	(Ljava/lang/String;)Z
    //   366: ifeq +6 -> 372
    //   369: goto +10 -> 379
    //   372: aload 5
    //   374: astore 9
    //   376: goto +61 -> 437
    //   379: aload 5
    //   381: invokevirtual 74	java/lang/String:length	()I
    //   384: ifle -189 -> 195
    //   387: aload 7
    //   389: astore 9
    //   391: aload 7
    //   393: ifnonnull +20 -> 413
    //   396: new 161	java/lang/StringBuilder
    //   399: astore 9
    //   401: aload 9
    //   403: aload 5
    //   405: invokevirtual 74	java/lang/String:length	()I
    //   408: iconst_2
    //   409: iadd
    //   410: invokespecial 198	java/lang/StringBuilder:<init>	(I)V
    //   413: aload 9
    //   415: aload 5
    //   417: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: pop
    //   421: aload 9
    //   423: invokestatic 203	java/lang/System:lineSeparator	()Ljava/lang/String;
    //   426: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: pop
    //   430: aload 9
    //   432: astore 7
    //   434: goto -239 -> 195
    //   437: aload 7
    //   439: ifnull +12 -> 451
    //   442: aload_0
    //   443: aload 7
    //   445: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   448: putfield 33	javax/mail/internet/e:f	Ljava/lang/String;
    //   451: aload 5
    //   453: ifnonnull +31 -> 484
    //   456: aload_0
    //   457: getfield 41	javax/mail/internet/e:j	Z
    //   460: istore_1
    //   461: iload_1
    //   462: ifeq +10 -> 472
    //   465: aload_3
    //   466: invokevirtual 90	java/io/InputStream:close	()V
    //   469: aload_0
    //   470: monitorexit
    //   471: return
    //   472: new 171	javax/mail/internet/ParseException
    //   475: astore_2
    //   476: aload_2
    //   477: ldc 205
    //   479: invokespecial 174	javax/mail/internet/ParseException:<init>	(Ljava/lang/String;)V
    //   482: aload_2
    //   483: athrow
    //   484: aload 9
    //   486: invokestatic 210	com/sun/mail/util/a:b	(Ljava/lang/String;)[B
    //   489: astore_2
    //   490: aload_2
    //   491: arraylength
    //   492: istore 12
    //   494: sipush 256
    //   497: newarray int
    //   499: astore 13
    //   501: iconst_0
    //   502: istore 10
    //   504: iload 10
    //   506: iload 12
    //   508: if_icmpge +26 -> 534
    //   511: aload_2
    //   512: iload 10
    //   514: baload
    //   515: istore 11
    //   517: iinc 10 1
    //   520: aload 13
    //   522: iload 11
    //   524: sipush 255
    //   527: iand
    //   528: iload 10
    //   530: iastore
    //   531: goto -27 -> 504
    //   534: iload 12
    //   536: newarray int
    //   538: astore 14
    //   540: iload 12
    //   542: istore 11
    //   544: iload 11
    //   546: ifle +73 -> 619
    //   549: iload 12
    //   551: iconst_1
    //   552: isub
    //   553: istore 10
    //   555: iload 10
    //   557: istore 15
    //   559: iload 10
    //   561: iload 11
    //   563: if_icmplt +32 -> 595
    //   566: aload_2
    //   567: iload 10
    //   569: baload
    //   570: aload_2
    //   571: iload 10
    //   573: iload 11
    //   575: isub
    //   576: baload
    //   577: if_icmpne +36 -> 613
    //   580: aload 14
    //   582: iload 10
    //   584: iconst_1
    //   585: isub
    //   586: iload 11
    //   588: iastore
    //   589: iinc 10 255
    //   592: goto -37 -> 555
    //   595: iload 15
    //   597: ifle +16 -> 613
    //   600: iinc 15 255
    //   603: aload 14
    //   605: iload 15
    //   607: iload 11
    //   609: iastore
    //   610: goto -15 -> 595
    //   613: iinc 11 255
    //   616: goto -72 -> 544
    //   619: iload 12
    //   621: iconst_1
    //   622: isub
    //   623: istore 10
    //   625: aload 14
    //   627: iload 10
    //   629: iconst_1
    //   630: iastore
    //   631: lconst_0
    //   632: lstore 16
    //   634: iconst_0
    //   635: istore 15
    //   637: lconst_0
    //   638: lstore 18
    //   640: iload 15
    //   642: ifne +883 -> 1525
    //   645: aload 4
    //   647: ifnull +73 -> 720
    //   650: aload 4
    //   652: invokeinterface 214 1 0
    //   657: lstore 16
    //   659: aload 6
    //   661: invokevirtual 179	com/sun/mail/util/e:c	()Ljava/lang/String;
    //   664: astore 5
    //   666: aload 5
    //   668: ifnull +14 -> 682
    //   671: aload 5
    //   673: invokevirtual 74	java/lang/String:length	()I
    //   676: ifle +6 -> 682
    //   679: goto -20 -> 659
    //   682: aload 5
    //   684: ifnonnull +30 -> 714
    //   687: aload_0
    //   688: getfield 35	javax/mail/internet/e:g	Z
    //   691: ifeq +11 -> 702
    //   694: aload_0
    //   695: iconst_0
    //   696: putfield 31	javax/mail/internet/e:e	Z
    //   699: goto +826 -> 1525
    //   702: new 171	javax/mail/internet/ParseException
    //   705: astore_2
    //   706: aload_2
    //   707: ldc 216
    //   709: invokespecial 174	javax/mail/internet/ParseException:<init>	(Ljava/lang/String;)V
    //   712: aload_2
    //   713: athrow
    //   714: aconst_null
    //   715: astore 7
    //   717: goto +10 -> 727
    //   720: aload_0
    //   721: aload_3
    //   722: invokevirtual 218	javax/mail/internet/e:e	(Ljava/io/InputStream;)Ljavax/mail/internet/c;
    //   725: astore 7
    //   727: aload_3
    //   728: invokevirtual 222	java/io/InputStream:markSupported	()Z
    //   731: ifeq +781 -> 1512
    //   734: aload 4
    //   736: ifnonnull +16 -> 752
    //   739: new 224	java/io/ByteArrayOutputStream
    //   742: astore 5
    //   744: aload 5
    //   746: invokespecial 225	java/io/ByteArrayOutputStream:<init>	()V
    //   749: goto +15 -> 764
    //   752: aload 4
    //   754: invokeinterface 214 1 0
    //   759: lstore 18
    //   761: aconst_null
    //   762: astore 5
    //   764: iload 12
    //   766: newarray byte
    //   768: astore 9
    //   770: iload 12
    //   772: newarray byte
    //   774: astore 20
    //   776: iconst_0
    //   777: istore 21
    //   779: iconst_1
    //   780: istore 22
    //   782: aload_3
    //   783: iload 12
    //   785: iconst_4
    //   786: iadd
    //   787: sipush 1000
    //   790: iadd
    //   791: invokevirtual 228	java/io/InputStream:mark	(I)V
    //   794: aload_3
    //   795: aload 9
    //   797: iconst_0
    //   798: iload 12
    //   800: invokestatic 230	javax/mail/internet/e:k	(Ljava/io/InputStream;[BII)I
    //   803: istore 23
    //   805: iload 23
    //   807: iload 12
    //   809: if_icmpge +58 -> 867
    //   812: aload_0
    //   813: getfield 35	javax/mail/internet/e:g	Z
    //   816: ifeq +39 -> 855
    //   819: aload 4
    //   821: ifnull +12 -> 833
    //   824: aload 4
    //   826: invokeinterface 214 1 0
    //   831: lstore 18
    //   833: aload_0
    //   834: iconst_0
    //   835: putfield 31	javax/mail/internet/e:e	Z
    //   838: iconst_1
    //   839: istore 15
    //   841: iconst_0
    //   842: istore 11
    //   844: aload 9
    //   846: astore 8
    //   848: aload 6
    //   850: astore 24
    //   852: goto +323 -> 1175
    //   855: new 171	javax/mail/internet/ParseException
    //   858: astore_2
    //   859: aload_2
    //   860: ldc 216
    //   862: invokespecial 174	javax/mail/internet/ParseException:<init>	(Ljava/lang/String;)V
    //   865: aload_2
    //   866: athrow
    //   867: iload 10
    //   869: istore 11
    //   871: iload 11
    //   873: iflt +24 -> 897
    //   876: aload 9
    //   878: iload 11
    //   880: baload
    //   881: aload_2
    //   882: iload 11
    //   884: baload
    //   885: if_icmpeq +6 -> 891
    //   888: goto +9 -> 897
    //   891: iinc 11 255
    //   894: goto -23 -> 871
    //   897: aload 6
    //   899: astore 24
    //   901: iload 11
    //   903: ifge +400 -> 1303
    //   906: iload 22
    //   908: ifne +63 -> 971
    //   911: aload 20
    //   913: iload 21
    //   915: iconst_1
    //   916: isub
    //   917: baload
    //   918: istore 11
    //   920: iload 11
    //   922: bipush 13
    //   924: if_icmpeq +10 -> 934
    //   927: iload 11
    //   929: bipush 10
    //   931: if_icmpne +40 -> 971
    //   934: iload 11
    //   936: bipush 10
    //   938: if_icmpne +27 -> 965
    //   941: iload 21
    //   943: iconst_2
    //   944: if_icmplt +21 -> 965
    //   947: aload 20
    //   949: iload 21
    //   951: iconst_2
    //   952: isub
    //   953: baload
    //   954: bipush 13
    //   956: if_icmpne +9 -> 965
    //   959: iconst_2
    //   960: istore 11
    //   962: goto +12 -> 974
    //   965: iconst_1
    //   966: istore 11
    //   968: goto +6 -> 974
    //   971: iconst_0
    //   972: istore 11
    //   974: iload 22
    //   976: ifne +32 -> 1008
    //   979: iload 11
    //   981: ifle +6 -> 987
    //   984: goto +24 -> 1008
    //   987: aload_2
    //   988: astore 6
    //   990: aload 9
    //   992: astore_2
    //   993: aload 7
    //   995: astore 9
    //   997: aload 5
    //   999: astore 7
    //   1001: aload 6
    //   1003: astore 5
    //   1005: goto +283 -> 1288
    //   1008: aload 4
    //   1010: ifnull +23 -> 1033
    //   1013: aload 4
    //   1015: invokeinterface 214 1 0
    //   1020: iload 12
    //   1022: i2l
    //   1023: lsub
    //   1024: iload 11
    //   1026: i2l
    //   1027: lsub
    //   1028: lstore 18
    //   1030: goto +3 -> 1033
    //   1033: aload 9
    //   1035: astore 25
    //   1037: aload_3
    //   1038: invokevirtual 232	java/io/InputStream:read	()I
    //   1041: istore 26
    //   1043: aload_2
    //   1044: astore 27
    //   1046: iload 26
    //   1048: istore 22
    //   1050: aload 7
    //   1052: astore 6
    //   1054: aload 5
    //   1056: astore 9
    //   1058: aload 25
    //   1060: astore 8
    //   1062: iload 26
    //   1064: bipush 45
    //   1066: if_icmpne +46 -> 1112
    //   1069: aload_2
    //   1070: astore 27
    //   1072: iload 26
    //   1074: istore 22
    //   1076: aload 7
    //   1078: astore 6
    //   1080: aload 5
    //   1082: astore 9
    //   1084: aload 25
    //   1086: astore 8
    //   1088: aload_3
    //   1089: invokevirtual 232	java/io/InputStream:read	()I
    //   1092: bipush 45
    //   1094: if_icmpne +18 -> 1112
    //   1097: aload_0
    //   1098: iconst_1
    //   1099: putfield 31	javax/mail/internet/e:e	Z
    //   1102: iconst_1
    //   1103: istore 15
    //   1105: aload 25
    //   1107: astore 8
    //   1109: goto +66 -> 1175
    //   1112: iload 22
    //   1114: bipush 32
    //   1116: if_icmpeq +178 -> 1294
    //   1119: iload 22
    //   1121: bipush 9
    //   1123: if_icmpne +6 -> 1129
    //   1126: goto +168 -> 1294
    //   1129: iload 22
    //   1131: bipush 10
    //   1133: if_icmpne +6 -> 1139
    //   1136: goto +28 -> 1164
    //   1139: iload 22
    //   1141: bipush 13
    //   1143: if_icmpne +130 -> 1273
    //   1146: aload_3
    //   1147: iconst_1
    //   1148: invokevirtual 228	java/io/InputStream:mark	(I)V
    //   1151: aload_3
    //   1152: invokevirtual 232	java/io/InputStream:read	()I
    //   1155: bipush 10
    //   1157: if_icmpeq +7 -> 1164
    //   1160: aload_3
    //   1161: invokevirtual 235	java/io/InputStream:reset	()V
    //   1164: aload 27
    //   1166: astore_2
    //   1167: aload 9
    //   1169: astore 5
    //   1171: aload 6
    //   1173: astore 7
    //   1175: aload 4
    //   1177: ifnull +23 -> 1200
    //   1180: aload_0
    //   1181: aload 4
    //   1183: lload 16
    //   1185: lload 18
    //   1187: invokeinterface 238 5 0
    //   1192: invokespecial 240	javax/mail/internet/e:h	(Ljava/io/InputStream;)Ljavax/mail/internet/d;
    //   1195: astore 5
    //   1197: goto +63 -> 1260
    //   1200: iload 21
    //   1202: iload 11
    //   1204: isub
    //   1205: istore 11
    //   1207: iload 11
    //   1209: ifle +16 -> 1225
    //   1212: aload 5
    //   1214: aload 20
    //   1216: iconst_0
    //   1217: iload 11
    //   1219: invokevirtual 244	java/io/ByteArrayOutputStream:write	([BII)V
    //   1222: goto +3 -> 1225
    //   1225: aload_0
    //   1226: getfield 31	javax/mail/internet/e:e	Z
    //   1229: ifne +18 -> 1247
    //   1232: iload 23
    //   1234: ifle +13 -> 1247
    //   1237: aload 5
    //   1239: aload 8
    //   1241: iconst_0
    //   1242: iload 23
    //   1244: invokevirtual 244	java/io/ByteArrayOutputStream:write	([BII)V
    //   1247: aload_0
    //   1248: aload 7
    //   1250: aload 5
    //   1252: invokevirtual 248	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   1255: invokevirtual 250	javax/mail/internet/e:g	(Ljavax/mail/internet/c;[B)Ljavax/mail/internet/d;
    //   1258: astore 5
    //   1260: aload_0
    //   1261: aload 5
    //   1263: invokespecial 253	javax/mail/d:a	(Ljavax/mail/a;)V
    //   1266: aload 24
    //   1268: astore 6
    //   1270: goto -630 -> 640
    //   1273: aload 27
    //   1275: astore 5
    //   1277: aload 9
    //   1279: astore 7
    //   1281: aload 8
    //   1283: astore_2
    //   1284: aload 6
    //   1286: astore 9
    //   1288: iconst_0
    //   1289: istore 11
    //   1291: goto +30 -> 1321
    //   1294: aload_3
    //   1295: invokevirtual 232	java/io/InputStream:read	()I
    //   1298: istore 22
    //   1300: goto -188 -> 1112
    //   1303: aload 9
    //   1305: astore 6
    //   1307: aload 7
    //   1309: astore 9
    //   1311: aload 5
    //   1313: astore 7
    //   1315: aload_2
    //   1316: astore 5
    //   1318: aload 6
    //   1320: astore_2
    //   1321: iload 11
    //   1323: iconst_1
    //   1324: iadd
    //   1325: aload 13
    //   1327: aload_2
    //   1328: iload 11
    //   1330: baload
    //   1331: bipush 127
    //   1333: iand
    //   1334: iaload
    //   1335: isub
    //   1336: aload 14
    //   1338: iload 11
    //   1340: iaload
    //   1341: invokestatic 259	java/lang/Math:max	(II)I
    //   1344: istore 11
    //   1346: iload 11
    //   1348: iconst_2
    //   1349: if_icmpge +82 -> 1431
    //   1352: aload 4
    //   1354: ifnonnull +21 -> 1375
    //   1357: iload 21
    //   1359: iconst_1
    //   1360: if_icmple +15 -> 1375
    //   1363: aload 7
    //   1365: aload 20
    //   1367: iconst_0
    //   1368: iload 21
    //   1370: iconst_1
    //   1371: isub
    //   1372: invokevirtual 244	java/io/ByteArrayOutputStream:write	([BII)V
    //   1375: aload_3
    //   1376: invokevirtual 235	java/io/InputStream:reset	()V
    //   1379: aload_0
    //   1380: aload_3
    //   1381: lconst_1
    //   1382: invokespecial 261	javax/mail/internet/e:l	(Ljava/io/InputStream;J)V
    //   1385: iload 21
    //   1387: iconst_1
    //   1388: if_icmplt +29 -> 1417
    //   1391: aload 20
    //   1393: iconst_0
    //   1394: aload 20
    //   1396: iload 21
    //   1398: iconst_1
    //   1399: isub
    //   1400: baload
    //   1401: i2b
    //   1402: bastore
    //   1403: aload 20
    //   1405: iconst_1
    //   1406: aload_2
    //   1407: iconst_0
    //   1408: baload
    //   1409: i2b
    //   1410: bastore
    //   1411: iconst_2
    //   1412: istore 11
    //   1414: goto +62 -> 1476
    //   1417: aload 20
    //   1419: iconst_0
    //   1420: aload_2
    //   1421: iconst_0
    //   1422: baload
    //   1423: i2b
    //   1424: bastore
    //   1425: iconst_1
    //   1426: istore 11
    //   1428: goto +48 -> 1476
    //   1431: iload 21
    //   1433: ifle +21 -> 1454
    //   1436: aload 4
    //   1438: ifnonnull +16 -> 1454
    //   1441: aload 7
    //   1443: aload 20
    //   1445: iconst_0
    //   1446: iload 21
    //   1448: invokevirtual 244	java/io/ByteArrayOutputStream:write	([BII)V
    //   1451: goto +3 -> 1454
    //   1454: aload_3
    //   1455: invokevirtual 235	java/io/InputStream:reset	()V
    //   1458: aload_0
    //   1459: aload_3
    //   1460: iload 11
    //   1462: i2l
    //   1463: invokespecial 261	javax/mail/internet/e:l	(Ljava/io/InputStream;J)V
    //   1466: aload_2
    //   1467: astore 6
    //   1469: aload 20
    //   1471: astore_2
    //   1472: aload 6
    //   1474: astore 20
    //   1476: aload 9
    //   1478: astore 8
    //   1480: aload 7
    //   1482: astore 27
    //   1484: iconst_0
    //   1485: istore 22
    //   1487: aload 24
    //   1489: astore 6
    //   1491: aload_2
    //   1492: astore 9
    //   1494: aload 5
    //   1496: astore_2
    //   1497: iload 11
    //   1499: istore 21
    //   1501: aload 8
    //   1503: astore 7
    //   1505: aload 27
    //   1507: astore 5
    //   1509: goto -727 -> 782
    //   1512: new 81	javax/mail/MessagingException
    //   1515: astore_2
    //   1516: aload_2
    //   1517: ldc_w 263
    //   1520: invokespecial 264	javax/mail/MessagingException:<init>	(Ljava/lang/String;)V
    //   1523: aload_2
    //   1524: athrow
    //   1525: aload_3
    //   1526: invokevirtual 90	java/io/InputStream:close	()V
    //   1529: aload_0
    //   1530: iconst_1
    //   1531: putfield 29	javax/mail/internet/e:d	Z
    //   1534: aload_0
    //   1535: monitorexit
    //   1536: return
    //   1537: astore_2
    //   1538: goto +21 -> 1559
    //   1541: astore_2
    //   1542: new 81	javax/mail/MessagingException
    //   1545: astore 5
    //   1547: aload 5
    //   1549: ldc_w 266
    //   1552: aload_2
    //   1553: invokespecial 269	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1556: aload 5
    //   1558: athrow
    //   1559: aload_3
    //   1560: invokevirtual 90	java/io/InputStream:close	()V
    //   1563: aload_2
    //   1564: athrow
    //   1565: astore_2
    //   1566: new 81	javax/mail/MessagingException
    //   1569: astore 5
    //   1571: aload 5
    //   1573: ldc_w 271
    //   1576: aload_2
    //   1577: invokespecial 269	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1580: aload 5
    //   1582: athrow
    //   1583: astore_2
    //   1584: aload_0
    //   1585: monitorexit
    //   1586: aload_2
    //   1587: athrow
    //   1588: astore_2
    //   1589: goto -1120 -> 469
    //   1592: astore_2
    //   1593: goto -64 -> 1529
    //   1596: astore 5
    //   1598: goto -35 -> 1563
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1601	0	this	e
    //   6	456	1	bool	boolean
    //   27	1497	2	localObject1	Object
    //   1537	1	2	localObject2	Object
    //   1541	23	2	localIOException1	IOException
    //   1565	12	2	localException	java.lang.Exception
    //   1583	4	2	localObject3	Object
    //   1588	1	2	localIOException2	IOException
    //   1592	1	2	localIOException3	IOException
    //   52	1508	3	localObject4	Object
    //   74	1363	4	locali	i
    //   115	1466	5	localObject5	Object
    //   1596	1	5	localIOException4	IOException
    //   184	1306	6	localObject6	Object
    //   193	1311	7	localObject7	Object
    //   200	1302	8	localObject8	Object
    //   203	1290	9	localObject9	Object
    //   221	647	10	k	int
    //   235	1263	11	m	int
    //   492	529	12	n	int
    //   499	827	13	arrayOfInt1	int[]
    //   538	799	14	arrayOfInt2	int[]
    //   557	547	15	i1	int
    //   632	552	16	l1	long
    //   638	548	18	l2	long
    //   774	701	20	localObject10	Object
    //   777	723	21	i2	int
    //   780	706	22	i3	int
    //   803	440	23	i4	int
    //   850	638	24	localObject11	Object
    //   1035	71	25	localObject12	Object
    //   1041	32	26	i5	int
    //   1044	462	27	localObject13	Object
    // Exception table:
    //   from	to	target	type
    //   181	192	1537	finally
    //   195	202	1537	finally
    //   214	223	1537	finally
    //   228	237	1537	finally
    //   260	272	1537	finally
    //   276	285	1537	finally
    //   291	324	1537	finally
    //   333	369	1537	finally
    //   379	387	1537	finally
    //   396	413	1537	finally
    //   413	430	1537	finally
    //   442	451	1537	finally
    //   456	461	1537	finally
    //   472	484	1537	finally
    //   484	501	1537	finally
    //   534	540	1537	finally
    //   650	659	1537	finally
    //   659	666	1537	finally
    //   671	679	1537	finally
    //   687	699	1537	finally
    //   702	714	1537	finally
    //   720	727	1537	finally
    //   727	734	1537	finally
    //   739	749	1537	finally
    //   752	761	1537	finally
    //   764	776	1537	finally
    //   782	805	1537	finally
    //   812	819	1537	finally
    //   824	833	1537	finally
    //   833	838	1537	finally
    //   855	867	1537	finally
    //   1013	1030	1537	finally
    //   1037	1043	1537	finally
    //   1088	1102	1537	finally
    //   1146	1164	1537	finally
    //   1180	1197	1537	finally
    //   1212	1222	1537	finally
    //   1225	1232	1537	finally
    //   1237	1247	1537	finally
    //   1247	1260	1537	finally
    //   1260	1266	1537	finally
    //   1294	1300	1537	finally
    //   1321	1346	1537	finally
    //   1363	1375	1537	finally
    //   1375	1385	1537	finally
    //   1441	1451	1537	finally
    //   1454	1466	1537	finally
    //   1512	1525	1537	finally
    //   1542	1559	1537	finally
    //   181	192	1541	java/io/IOException
    //   195	202	1541	java/io/IOException
    //   214	223	1541	java/io/IOException
    //   228	237	1541	java/io/IOException
    //   260	272	1541	java/io/IOException
    //   276	285	1541	java/io/IOException
    //   291	324	1541	java/io/IOException
    //   333	369	1541	java/io/IOException
    //   379	387	1541	java/io/IOException
    //   396	413	1541	java/io/IOException
    //   413	430	1541	java/io/IOException
    //   442	451	1541	java/io/IOException
    //   456	461	1541	java/io/IOException
    //   472	484	1541	java/io/IOException
    //   484	501	1541	java/io/IOException
    //   534	540	1541	java/io/IOException
    //   650	659	1541	java/io/IOException
    //   659	666	1541	java/io/IOException
    //   671	679	1541	java/io/IOException
    //   687	699	1541	java/io/IOException
    //   702	714	1541	java/io/IOException
    //   720	727	1541	java/io/IOException
    //   727	734	1541	java/io/IOException
    //   739	749	1541	java/io/IOException
    //   752	761	1541	java/io/IOException
    //   764	776	1541	java/io/IOException
    //   782	805	1541	java/io/IOException
    //   812	819	1541	java/io/IOException
    //   824	833	1541	java/io/IOException
    //   833	838	1541	java/io/IOException
    //   855	867	1541	java/io/IOException
    //   1013	1030	1541	java/io/IOException
    //   1037	1043	1541	java/io/IOException
    //   1088	1102	1541	java/io/IOException
    //   1146	1164	1541	java/io/IOException
    //   1180	1197	1541	java/io/IOException
    //   1212	1222	1541	java/io/IOException
    //   1225	1232	1541	java/io/IOException
    //   1237	1247	1541	java/io/IOException
    //   1247	1260	1541	java/io/IOException
    //   1260	1266	1541	java/io/IOException
    //   1294	1300	1541	java/io/IOException
    //   1321	1346	1541	java/io/IOException
    //   1363	1375	1541	java/io/IOException
    //   1375	1385	1541	java/io/IOException
    //   1441	1451	1541	java/io/IOException
    //   1454	1466	1541	java/io/IOException
    //   1512	1525	1541	java/io/IOException
    //   18	58	1565	java/lang/Exception
    //   2	7	1583	finally
    //   14	18	1583	finally
    //   18	58	1583	finally
    //   63	76	1583	finally
    //   82	108	1583	finally
    //   112	143	1583	finally
    //   152	166	1583	finally
    //   169	181	1583	finally
    //   465	469	1583	finally
    //   1525	1529	1583	finally
    //   1529	1534	1583	finally
    //   1559	1563	1583	finally
    //   1563	1565	1583	finally
    //   1566	1583	1583	finally
    //   465	469	1588	java/io/IOException
    //   1525	1529	1592	java/io/IOException
    //   1559	1563	1596	java/io/IOException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.e
 * JD-Core Version:    0.7.0.1
 */