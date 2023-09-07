package com.miui.maml;

import android.text.TextUtils;
import com.miui.maml.util.Utils;
import java.io.File;
import java.io.InputStream;
import java.util.Locale;
import org.w3c.dom.Element;

public abstract class ResourceLoader
{
  private static final String CONFIG_FILE_NAME = "config.xml";
  private static final String IMAGES_FOLDER_NAME = "images";
  private static final String LOG_TAG = "ResourceLoader";
  private static final String MANIFEST_FILE_NAME = "manifest.xml";
  protected String mConfigName = "config.xml";
  protected String mLanguageCountrySuffix;
  protected String mLanguageSuffix;
  protected Locale mLocale;
  protected String mManifestName = "manifest.xml";
  private String mThemeName;
  
  private String getPathForLanguage(String paramString1, String paramString2)
  {
    Object localObject;
    if (!TextUtils.isEmpty(this.mLanguageCountrySuffix))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString2);
      ((StringBuilder)localObject).append("_");
      ((StringBuilder)localObject).append(this.mLanguageCountrySuffix);
      ((StringBuilder)localObject).append("/");
      ((StringBuilder)localObject).append(paramString1);
      localObject = ((StringBuilder)localObject).toString();
      if (resourceExists((String)localObject)) {
        return localObject;
      }
    }
    if (!TextUtils.isEmpty(this.mLanguageSuffix))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString2);
      ((StringBuilder)localObject).append("_");
      ((StringBuilder)localObject).append(this.mLanguageSuffix);
      ((StringBuilder)localObject).append("/");
      ((StringBuilder)localObject).append(paramString1);
      localObject = ((StringBuilder)localObject).toString();
      if (resourceExists((String)localObject)) {
        return localObject;
      }
    }
    if (!TextUtils.isEmpty(paramString2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString2);
      ((StringBuilder)localObject).append("/");
      ((StringBuilder)localObject).append(paramString1);
      paramString2 = ((StringBuilder)localObject).toString();
      if (resourceExists(paramString2)) {
        return paramString2;
      }
    }
    if (!resourceExists(paramString1)) {
      paramString1 = null;
    }
    return paramString1;
  }
  
  /* Error */
  private Element getXmlRoot(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: aload_1
    //   3: invokevirtual 79	com/miui/maml/ResourceLoader:getPathForLanguage	(Ljava/lang/String;)Ljava/lang/String;
    //   6: invokevirtual 83	com/miui/maml/ResourceLoader:getInputStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   9: astore_1
    //   10: aload_1
    //   11: ifnonnull +13 -> 24
    //   14: ldc 14
    //   16: ldc 85
    //   18: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: aconst_null
    //   23: areturn
    //   24: invokestatic 97	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   27: invokevirtual 101	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   30: aload_1
    //   31: invokevirtual 107	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   34: invokeinterface 113 1 0
    //   39: astore_2
    //   40: aload_1
    //   41: invokevirtual 118	java/io/InputStream:close	()V
    //   44: aload_2
    //   45: areturn
    //   46: astore_2
    //   47: goto +79 -> 126
    //   50: astore_2
    //   51: ldc 14
    //   53: aload_2
    //   54: invokevirtual 119	java/lang/Object:toString	()Ljava/lang/String;
    //   57: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   60: pop
    //   61: aload_1
    //   62: invokevirtual 118	java/io/InputStream:close	()V
    //   65: goto +59 -> 124
    //   68: astore_2
    //   69: ldc 14
    //   71: aload_2
    //   72: invokevirtual 120	org/xml/sax/SAXException:toString	()Ljava/lang/String;
    //   75: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   78: pop
    //   79: goto -18 -> 61
    //   82: astore_2
    //   83: ldc 14
    //   85: aload_2
    //   86: invokevirtual 119	java/lang/Object:toString	()Ljava/lang/String;
    //   89: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   92: pop
    //   93: goto -32 -> 61
    //   96: astore_2
    //   97: ldc 14
    //   99: aload_2
    //   100: invokevirtual 119	java/lang/Object:toString	()Ljava/lang/String;
    //   103: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   106: pop
    //   107: goto -46 -> 61
    //   110: astore_2
    //   111: ldc 14
    //   113: aload_2
    //   114: invokevirtual 119	java/lang/Object:toString	()Ljava/lang/String;
    //   117: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   120: pop
    //   121: goto -60 -> 61
    //   124: aconst_null
    //   125: areturn
    //   126: aload_1
    //   127: invokevirtual 118	java/io/InputStream:close	()V
    //   130: aload_2
    //   131: athrow
    //   132: astore_1
    //   133: goto -89 -> 44
    //   136: astore_1
    //   137: goto -13 -> 124
    //   140: astore_1
    //   141: goto -11 -> 130
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	ResourceLoader
    //   0	144	1	paramString	String
    //   39	6	2	localElement	Element
    //   46	1	2	localObject	Object
    //   50	4	2	localException	java.lang.Exception
    //   68	4	2	localSAXException	org.xml.sax.SAXException
    //   82	4	2	localParserConfigurationException	javax.xml.parsers.ParserConfigurationException
    //   96	4	2	localOutOfMemoryError	java.lang.OutOfMemoryError
    //   110	21	2	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   24	40	46	finally
    //   51	61	46	finally
    //   69	79	46	finally
    //   83	93	46	finally
    //   97	107	46	finally
    //   111	121	46	finally
    //   24	40	50	java/lang/Exception
    //   24	40	68	org/xml/sax/SAXException
    //   24	40	82	javax/xml/parsers/ParserConfigurationException
    //   24	40	96	java/lang/OutOfMemoryError
    //   24	40	110	java/io/IOException
    //   40	44	132	java/io/IOException
    //   61	65	136	java/io/IOException
    //   126	130	140	java/io/IOException
  }
  
  public void finish() {}
  
  /* Error */
  public ResourceManager.BitmapInfo getBitmapInfo(String paramString, android.graphics.BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: ldc 11
    //   4: invokespecial 125	com/miui/maml/ResourceLoader:getPathForLanguage	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   7: astore_3
    //   8: aload_3
    //   9: astore 4
    //   11: aload_3
    //   12: ifnonnull +82 -> 94
    //   15: new 45	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   22: astore_3
    //   23: aload_3
    //   24: ldc 127
    //   26: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: pop
    //   30: aload_3
    //   31: aload_1
    //   32: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: pop
    //   36: ldc 14
    //   38: aload_3
    //   39: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 130	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   45: pop
    //   46: aload_0
    //   47: aload_1
    //   48: ldc 11
    //   50: invokespecial 125	com/miui/maml/ResourceLoader:getPathForLanguage	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   53: astore_3
    //   54: aload_3
    //   55: astore 4
    //   57: aload_3
    //   58: ifnonnull +36 -> 94
    //   61: new 45	java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   68: astore_2
    //   69: aload_2
    //   70: ldc 132
    //   72: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: aload_2
    //   77: aload_1
    //   78: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: ldc 14
    //   84: aload_2
    //   85: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   91: pop
    //   92: aconst_null
    //   93: areturn
    //   94: aload_0
    //   95: aload 4
    //   97: invokevirtual 83	com/miui/maml/ResourceLoader:getInputStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   100: astore 5
    //   102: aload 5
    //   104: astore_3
    //   105: aload 5
    //   107: ifnonnull +83 -> 190
    //   110: new 45	java/lang/StringBuilder
    //   113: dup
    //   114: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   117: astore_3
    //   118: aload_3
    //   119: ldc 134
    //   121: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload_3
    //   126: aload_1
    //   127: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: pop
    //   131: ldc 14
    //   133: aload_3
    //   134: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokestatic 130	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   140: pop
    //   141: aload_0
    //   142: aload 4
    //   144: invokevirtual 83	com/miui/maml/ResourceLoader:getInputStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   147: astore 4
    //   149: aload 4
    //   151: astore_3
    //   152: aload 4
    //   154: ifnonnull +36 -> 190
    //   157: new 45	java/lang/StringBuilder
    //   160: dup
    //   161: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   164: astore_2
    //   165: aload_2
    //   166: ldc 136
    //   168: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: pop
    //   172: aload_2
    //   173: aload_1
    //   174: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: ldc 14
    //   180: aload_2
    //   181: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   187: pop
    //   188: aconst_null
    //   189: areturn
    //   190: new 138	android/graphics/Rect
    //   193: astore 4
    //   195: aload 4
    //   197: invokespecial 139	android/graphics/Rect:<init>	()V
    //   200: aload_3
    //   201: aload 4
    //   203: aload_2
    //   204: invokestatic 145	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   207: astore 5
    //   209: aload 5
    //   211: ifnonnull +93 -> 304
    //   214: new 45	java/lang/StringBuilder
    //   217: astore 5
    //   219: aload 5
    //   221: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   224: aload 5
    //   226: ldc 147
    //   228: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: pop
    //   232: aload 5
    //   234: aload_1
    //   235: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: pop
    //   239: ldc 14
    //   241: aload 5
    //   243: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokestatic 130	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   249: pop
    //   250: aload_3
    //   251: aload 4
    //   253: aload_2
    //   254: invokestatic 145	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   257: ifnonnull +40 -> 297
    //   260: new 45	java/lang/StringBuilder
    //   263: astore_2
    //   264: aload_2
    //   265: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   268: aload_2
    //   269: ldc 149
    //   271: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: pop
    //   275: aload_2
    //   276: aload_1
    //   277: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: pop
    //   281: ldc 14
    //   283: aload_2
    //   284: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   287: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   290: pop
    //   291: aload_3
    //   292: invokevirtual 118	java/io/InputStream:close	()V
    //   295: aconst_null
    //   296: areturn
    //   297: aload_3
    //   298: invokevirtual 118	java/io/InputStream:close	()V
    //   301: goto +39 -> 340
    //   304: new 151	com/miui/maml/ResourceManager$BitmapInfo
    //   307: dup
    //   308: aload 5
    //   310: aload 4
    //   312: invokespecial 154	com/miui/maml/ResourceManager$BitmapInfo:<init>	(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    //   315: astore_1
    //   316: aload_3
    //   317: invokevirtual 118	java/io/InputStream:close	()V
    //   320: aload_1
    //   321: areturn
    //   322: astore_1
    //   323: goto +19 -> 342
    //   326: astore_1
    //   327: ldc 14
    //   329: aload_1
    //   330: invokevirtual 119	java/lang/Object:toString	()Ljava/lang/String;
    //   333: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   336: pop
    //   337: goto -40 -> 297
    //   340: aconst_null
    //   341: areturn
    //   342: aload_3
    //   343: invokevirtual 118	java/io/InputStream:close	()V
    //   346: aload_1
    //   347: athrow
    //   348: astore_1
    //   349: goto -54 -> 295
    //   352: astore_1
    //   353: goto -13 -> 340
    //   356: astore_2
    //   357: goto -37 -> 320
    //   360: astore_2
    //   361: goto -15 -> 346
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	364	0	this	ResourceLoader
    //   0	364	1	paramString	String
    //   0	364	2	paramOptions	android.graphics.BitmapFactory.Options
    //   7	336	3	localObject1	Object
    //   9	302	4	localObject2	Object
    //   100	209	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   190	209	322	finally
    //   214	291	322	finally
    //   304	316	322	finally
    //   327	337	322	finally
    //   190	209	326	java/lang/OutOfMemoryError
    //   214	291	326	java/lang/OutOfMemoryError
    //   304	316	326	java/lang/OutOfMemoryError
    //   291	295	348	java/io/IOException
    //   297	301	352	java/io/IOException
    //   316	320	356	java/io/IOException
    //   342	346	360	java/io/IOException
  }
  
  public Element getConfigRoot()
  {
    return getXmlRoot(this.mConfigName);
  }
  
  public File getExtraFile(String paramString)
  {
    return null;
  }
  
  /* Error */
  public android.os.MemoryFile getFile(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: newarray long
    //   3: astore_2
    //   4: aload_0
    //   5: aload_1
    //   6: aload_2
    //   7: invokevirtual 164	com/miui/maml/ResourceLoader:getInputStream	(Ljava/lang/String;[J)Ljava/io/InputStream;
    //   10: astore_3
    //   11: aload_3
    //   12: ifnonnull +5 -> 17
    //   15: aconst_null
    //   16: areturn
    //   17: ldc 165
    //   19: newarray byte
    //   21: astore 4
    //   23: new 167	android/os/MemoryFile
    //   26: astore 5
    //   28: aload 5
    //   30: aload_1
    //   31: aload_2
    //   32: iconst_0
    //   33: laload
    //   34: l2i
    //   35: invokespecial 170	android/os/MemoryFile:<init>	(Ljava/lang/String;I)V
    //   38: iconst_0
    //   39: istore 6
    //   41: aload_3
    //   42: aload 4
    //   44: iconst_0
    //   45: ldc 165
    //   47: invokevirtual 174	java/io/InputStream:read	([BII)I
    //   50: istore 7
    //   52: iload 7
    //   54: ifle +25 -> 79
    //   57: aload 5
    //   59: aload 4
    //   61: iconst_0
    //   62: iload 6
    //   64: iload 7
    //   66: invokevirtual 178	android/os/MemoryFile:writeBytes	([BIII)V
    //   69: iload 6
    //   71: iload 7
    //   73: iadd
    //   74: istore 6
    //   76: goto -35 -> 41
    //   79: aload 5
    //   81: invokevirtual 182	android/os/MemoryFile:length	()I
    //   84: istore 6
    //   86: iload 6
    //   88: ifle +10 -> 98
    //   91: aload_3
    //   92: invokevirtual 118	java/io/InputStream:close	()V
    //   95: aload 5
    //   97: areturn
    //   98: aload_3
    //   99: invokevirtual 118	java/io/InputStream:close	()V
    //   102: goto +35 -> 137
    //   105: astore_1
    //   106: goto +33 -> 139
    //   109: astore_1
    //   110: ldc 14
    //   112: aload_1
    //   113: invokevirtual 119	java/lang/Object:toString	()Ljava/lang/String;
    //   116: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   119: pop
    //   120: goto -22 -> 98
    //   123: astore_1
    //   124: ldc 14
    //   126: aload_1
    //   127: invokevirtual 119	java/lang/Object:toString	()Ljava/lang/String;
    //   130: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   133: pop
    //   134: goto -36 -> 98
    //   137: aconst_null
    //   138: areturn
    //   139: aload_3
    //   140: invokevirtual 118	java/io/InputStream:close	()V
    //   143: aload_1
    //   144: athrow
    //   145: astore_1
    //   146: goto -51 -> 95
    //   149: astore_1
    //   150: goto -13 -> 137
    //   153: astore_3
    //   154: goto -11 -> 143
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	this	ResourceLoader
    //   0	157	1	paramString	String
    //   3	29	2	arrayOfLong	long[]
    //   10	130	3	localInputStream	InputStream
    //   153	1	3	localIOException	java.io.IOException
    //   21	39	4	arrayOfByte	byte[]
    //   26	70	5	localMemoryFile	android.os.MemoryFile
    //   39	48	6	i	int
    //   50	24	7	j	int
    // Exception table:
    //   from	to	target	type
    //   17	38	105	finally
    //   41	52	105	finally
    //   57	69	105	finally
    //   79	86	105	finally
    //   110	120	105	finally
    //   124	134	105	finally
    //   17	38	109	java/lang/OutOfMemoryError
    //   41	52	109	java/lang/OutOfMemoryError
    //   57	69	109	java/lang/OutOfMemoryError
    //   79	86	109	java/lang/OutOfMemoryError
    //   17	38	123	java/io/IOException
    //   41	52	123	java/io/IOException
    //   57	69	123	java/io/IOException
    //   79	86	123	java/io/IOException
    //   91	95	145	java/io/IOException
    //   98	102	149	java/io/IOException
    //   139	143	153	java/io/IOException
  }
  
  public String getID()
  {
    return "";
  }
  
  public final InputStream getInputStream(String paramString)
  {
    return getInputStream(paramString, null);
  }
  
  public abstract InputStream getInputStream(String paramString, long[] paramArrayOfLong);
  
  public Locale getLocale()
  {
    return this.mLocale;
  }
  
  public Element getManifestRoot()
  {
    return getXmlRoot(this.mManifestName);
  }
  
  public String getPathForLanguage(String paramString)
  {
    boolean bool = TextUtils.isEmpty(this.mLanguageCountrySuffix);
    Object localObject1 = null;
    if (!bool)
    {
      localObject2 = Utils.addFileNameSuffix(paramString, this.mLanguageCountrySuffix);
      localObject3 = localObject2;
      if (resourceExists((String)localObject2)) {}
    }
    else
    {
      localObject3 = null;
    }
    Object localObject2 = localObject3;
    if (localObject3 == null)
    {
      localObject2 = localObject3;
      if (!TextUtils.isEmpty(this.mLanguageSuffix))
      {
        localObject3 = Utils.addFileNameSuffix(paramString, this.mLanguageSuffix);
        localObject2 = localObject3;
        if (!resourceExists((String)localObject3))
        {
          localObject3 = localObject1;
          break label96;
        }
      }
    }
    Object localObject3 = localObject2;
    label96:
    if (localObject3 != null) {
      paramString = (String)localObject3;
    }
    return paramString;
  }
  
  public void init() {}
  
  public abstract boolean resourceExists(String paramString);
  
  public ResourceLoader setLocal(Locale paramLocale)
  {
    if (paramLocale != null)
    {
      this.mLanguageSuffix = paramLocale.getLanguage();
      String str = paramLocale.toString();
      this.mLanguageCountrySuffix = str;
      if (TextUtils.equals(this.mLanguageSuffix, str)) {
        this.mLanguageSuffix = null;
      }
    }
    this.mLocale = paramLocale;
    return this;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.ResourceLoader
 * JD-Core Version:    0.7.0.1
 */