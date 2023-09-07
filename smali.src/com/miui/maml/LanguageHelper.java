package com.miui.maml;

import com.miui.maml.data.Variables;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class LanguageHelper
{
  private static final String COMPATIBLE_STRING_ROOT_TAG = "strings";
  private static final String DEFAULT_STRING_FILE_PATH = "strings/strings.xml";
  private static final String LOG_TAG = "LanguageHelper";
  private static final String STRING_FILE_PATH = "strings/strings.xml";
  private static final String STRING_ROOT_TAG = "resources";
  private static final String STRING_TAG = "string";
  
  /* Error */
  public static boolean load(java.util.Locale paramLocale, ResourceManager paramResourceManager, Variables paramVariables)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: ldc 11
    //   7: astore 5
    //   9: aload_0
    //   10: ifnull +41 -> 51
    //   13: ldc 11
    //   15: aload_0
    //   16: invokevirtual 36	java/util/Locale:toString	()Ljava/lang/String;
    //   19: invokestatic 42	com/miui/maml/util/Utils:addFileNameSuffix	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   22: astore 6
    //   24: aload 6
    //   26: astore 7
    //   28: aload_1
    //   29: aload 6
    //   31: invokevirtual 48	com/miui/maml/ResourceManager:resourceExists	(Ljava/lang/String;)Z
    //   34: ifne +20 -> 54
    //   37: ldc 11
    //   39: aload_0
    //   40: invokevirtual 51	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   43: invokestatic 42	com/miui/maml/util/Utils:addFileNameSuffix	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   46: astore 7
    //   48: goto +6 -> 54
    //   51: aconst_null
    //   52: astore 7
    //   54: aload_1
    //   55: aload 7
    //   57: invokevirtual 48	com/miui/maml/ResourceManager:resourceExists	(Ljava/lang/String;)Z
    //   60: ifne +22 -> 82
    //   63: aload_1
    //   64: ldc 11
    //   66: invokevirtual 48	com/miui/maml/ResourceManager:resourceExists	(Ljava/lang/String;)Z
    //   69: ifne +17 -> 86
    //   72: ldc 14
    //   74: ldc 53
    //   76: invokestatic 59	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   79: pop
    //   80: iconst_0
    //   81: ireturn
    //   82: aload 7
    //   84: astore 5
    //   86: invokestatic 65	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   89: astore 6
    //   91: aload 4
    //   93: astore_0
    //   94: aload_3
    //   95: astore 7
    //   97: aload 6
    //   99: invokevirtual 69	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   102: astore 6
    //   104: aload 4
    //   106: astore_0
    //   107: aload_3
    //   108: astore 7
    //   110: aload_1
    //   111: aload 5
    //   113: invokevirtual 73	com/miui/maml/ResourceManager:getInputStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   116: astore_1
    //   117: aload_1
    //   118: astore_0
    //   119: aload_1
    //   120: astore 7
    //   122: aload 6
    //   124: aload_1
    //   125: invokevirtual 79	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   128: astore 5
    //   130: aload_1
    //   131: ifnull +15 -> 146
    //   134: aload_1
    //   135: invokevirtual 84	java/io/InputStream:close	()V
    //   138: goto +8 -> 146
    //   141: astore_0
    //   142: aload_0
    //   143: invokevirtual 89	java/lang/Throwable:printStackTrace	()V
    //   146: aload 5
    //   148: aload_2
    //   149: invokestatic 93	com/miui/maml/LanguageHelper:setVariables	(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z
    //   152: ireturn
    //   153: astore_1
    //   154: goto +37 -> 191
    //   157: astore_1
    //   158: aload 7
    //   160: astore_0
    //   161: ldc 14
    //   163: aload_1
    //   164: invokevirtual 96	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   167: invokestatic 99	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   170: pop
    //   171: aload 7
    //   173: ifnull +16 -> 189
    //   176: aload 7
    //   178: invokevirtual 84	java/io/InputStream:close	()V
    //   181: goto +8 -> 189
    //   184: astore_0
    //   185: aload_0
    //   186: invokevirtual 89	java/lang/Throwable:printStackTrace	()V
    //   189: iconst_0
    //   190: ireturn
    //   191: aload_0
    //   192: ifnull +15 -> 207
    //   195: aload_0
    //   196: invokevirtual 84	java/io/InputStream:close	()V
    //   199: goto +8 -> 207
    //   202: astore_0
    //   203: aload_0
    //   204: invokevirtual 89	java/lang/Throwable:printStackTrace	()V
    //   207: aload_1
    //   208: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	paramLocale	java.util.Locale
    //   0	209	1	paramResourceManager	ResourceManager
    //   0	209	2	paramVariables	Variables
    //   1	107	3	localObject1	Object
    //   3	102	4	localObject2	Object
    //   7	140	5	localObject3	Object
    //   22	101	6	localObject4	Object
    //   26	151	7	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   134	138	141	java/lang/Exception
    //   97	104	153	finally
    //   110	117	153	finally
    //   122	130	153	finally
    //   161	171	153	finally
    //   97	104	157	java/lang/Exception
    //   110	117	157	java/lang/Exception
    //   122	130	157	java/lang/Exception
    //   176	181	184	java/lang/Exception
    //   195	199	202	java/lang/Exception
  }
  
  private static boolean setVariables(Document paramDocument, Variables paramVariables)
  {
    Object localObject = paramDocument.getElementsByTagName("resources");
    int i = ((NodeList)localObject).getLength();
    int j = 0;
    if (i <= 0)
    {
      paramDocument = paramDocument.getElementsByTagName("strings");
      if (paramDocument.getLength() <= 0) {
        return false;
      }
      i = 0;
    }
    else
    {
      i = 1;
      paramDocument = (Document)localObject;
    }
    NodeList localNodeList = ((Element)paramDocument.item(0)).getElementsByTagName("string");
    while (j < localNodeList.getLength())
    {
      paramDocument = (Element)localNodeList.item(j);
      localObject = paramDocument.getAttribute("name");
      if (i != 0) {
        paramDocument = paramDocument.getTextContent();
      } else {
        paramDocument = paramDocument.getAttribute("value");
      }
      paramVariables.put((String)localObject, paramDocument.replaceAll("\\\\", ""));
      j++;
    }
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.LanguageHelper
 * JD-Core Version:    0.7.0.1
 */