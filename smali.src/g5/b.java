package g5;

import com.sun.activation.registries.MailcapParseException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class b
{
  private static boolean d = false;
  private Map a = new HashMap();
  private Map b = new HashMap();
  private Map c = new HashMap();
  
  static
  {
    try
    {
      d = Boolean.getBoolean("javax.activation.addreverse");
      label8:
      return;
    }
    finally
    {
      break label8;
    }
  }
  
  public b()
  {
    if (a.a()) {
      a.b("new MailcapFile: default");
    }
  }
  
  public b(InputStream paramInputStream)
    throws IOException
  {
    if (a.a()) {
      a.b("new MailcapFile: InputStream");
    }
    d(new BufferedReader(new InputStreamReader(paramInputStream, "iso-8859-1")));
  }
  
  /* Error */
  public b(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 27	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: new 29	java/util/HashMap
    //   8: dup
    //   9: invokespecial 30	java/util/HashMap:<init>	()V
    //   12: putfield 32	g5/b:a	Ljava/util/Map;
    //   15: aload_0
    //   16: new 29	java/util/HashMap
    //   19: dup
    //   20: invokespecial 30	java/util/HashMap:<init>	()V
    //   23: putfield 34	g5/b:b	Ljava/util/Map;
    //   26: aload_0
    //   27: new 29	java/util/HashMap
    //   30: dup
    //   31: invokespecial 30	java/util/HashMap:<init>	()V
    //   34: putfield 36	g5/b:c	Ljava/util/Map;
    //   37: invokestatic 41	g5/a:a	()Z
    //   40: ifeq +31 -> 71
    //   43: new 68	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 69	java/lang/StringBuilder:<init>	()V
    //   50: astore_2
    //   51: aload_2
    //   52: ldc 71
    //   54: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: pop
    //   58: aload_2
    //   59: aload_1
    //   60: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: pop
    //   64: aload_2
    //   65: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokestatic 46	g5/a:b	(Ljava/lang/String;)V
    //   71: aconst_null
    //   72: astore_2
    //   73: new 81	java/io/FileReader
    //   76: astore_3
    //   77: aload_3
    //   78: aload_1
    //   79: invokespecial 83	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   82: new 53	java/io/BufferedReader
    //   85: astore_1
    //   86: aload_1
    //   87: aload_3
    //   88: invokespecial 63	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   91: aload_0
    //   92: aload_1
    //   93: invokespecial 65	g5/b:d	(Ljava/io/Reader;)V
    //   96: aload_3
    //   97: invokevirtual 88	java/io/Reader:close	()V
    //   100: return
    //   101: astore_1
    //   102: aload_3
    //   103: astore_2
    //   104: goto +4 -> 108
    //   107: astore_1
    //   108: aload_2
    //   109: ifnull +7 -> 116
    //   112: aload_2
    //   113: invokevirtual 88	java/io/Reader:close	()V
    //   116: aload_1
    //   117: athrow
    //   118: astore_1
    //   119: goto -19 -> 100
    //   122: astore_2
    //   123: goto -7 -> 116
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	b
    //   0	126	1	paramString	String
    //   50	63	2	localObject	Object
    //   122	1	2	localIOException	IOException
    //   76	27	3	localFileReader	java.io.FileReader
    // Exception table:
    //   from	to	target	type
    //   82	96	101	finally
    //   73	82	107	finally
    //   96	100	118	java/io/IOException
    //   112	116	122	java/io/IOException
  }
  
  private Map c(Map paramMap1, Map paramMap2)
  {
    Iterator localIterator = paramMap2.keySet().iterator();
    HashMap localHashMap = new HashMap(paramMap1);
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = (List)localHashMap.get(str);
      if (localObject == null)
      {
        localHashMap.put(str, paramMap2.get(str));
      }
      else
      {
        paramMap1 = (List)paramMap2.get(str);
        localObject = new ArrayList((Collection)localObject);
        ((List)localObject).addAll(paramMap1);
        localHashMap.put(str, localObject);
      }
    }
    return localHashMap;
  }
  
  private void d(Reader paramReader)
    throws IOException
  {
    BufferedReader localBufferedReader = new BufferedReader(paramReader);
    for (;;)
    {
      paramReader = null;
      for (;;)
      {
        for (;;)
        {
          Object localObject = localBufferedReader.readLine();
          if (localObject == null) {
            break label205;
          }
          String str = ((String)localObject).trim();
          localObject = paramReader;
          try
          {
            if (str.charAt(0) == '#') {
              continue;
            }
            localObject = paramReader;
            StringBuilder localStringBuilder;
            if (str.charAt(str.length() - 1) == '\\')
            {
              if (paramReader != null)
              {
                localObject = paramReader;
                localStringBuilder = new java/lang/StringBuilder;
                localObject = paramReader;
                localStringBuilder.<init>();
                localObject = paramReader;
                localStringBuilder.append(paramReader);
                localObject = paramReader;
                localStringBuilder.append(str.substring(0, str.length() - 1));
                localObject = paramReader;
                paramReader = localStringBuilder.toString();
                continue;
              }
              localObject = paramReader;
              paramReader = str.substring(0, str.length() - 1);
              continue;
            }
            if (paramReader != null)
            {
              localObject = paramReader;
              localStringBuilder = new java/lang/StringBuilder;
              localObject = paramReader;
              localStringBuilder.<init>();
              localObject = paramReader;
              localStringBuilder.append(paramReader);
              localObject = paramReader;
              localStringBuilder.append(str);
              localObject = paramReader;
              paramReader = localStringBuilder.toString();
              localObject = paramReader;
            }
          }
          catch (StringIndexOutOfBoundsException|MailcapParseException paramReader)
          {
            label205:
            paramReader = (Reader)localObject;
          }
          try
          {
            e(paramReader);
          }
          catch (MailcapParseException paramReader) {}
        }
        localObject = paramReader;
        e(str);
        continue;
        return;
      }
    }
  }
  
  protected static void f(int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString)
    throws MailcapParseException
  {
    if (a.a())
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("PARSE ERROR: Encountered a ");
      localStringBuilder.append(c.g(paramInt4));
      localStringBuilder.append(" token (");
      localStringBuilder.append(paramString);
      localStringBuilder.append(") while expecting a ");
      localStringBuilder.append(c.g(paramInt1));
      localStringBuilder.append(", a ");
      localStringBuilder.append(c.g(paramInt2));
      localStringBuilder.append(", or a ");
      localStringBuilder.append(c.g(paramInt3));
      localStringBuilder.append(" token.");
      a.b(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Encountered a ");
    localStringBuilder.append(c.g(paramInt4));
    localStringBuilder.append(" token (");
    localStringBuilder.append(paramString);
    localStringBuilder.append(") while expecting a ");
    localStringBuilder.append(c.g(paramInt1));
    localStringBuilder.append(", a ");
    localStringBuilder.append(c.g(paramInt2));
    localStringBuilder.append(", or a ");
    localStringBuilder.append(c.g(paramInt3));
    localStringBuilder.append(" token.");
    throw new MailcapParseException(localStringBuilder.toString());
  }
  
  protected static void g(int paramInt1, int paramInt2, int paramInt3, String paramString)
    throws MailcapParseException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Encountered a ");
    localStringBuilder.append(c.g(paramInt3));
    localStringBuilder.append(" token (");
    localStringBuilder.append(paramString);
    localStringBuilder.append(") while expecting a ");
    localStringBuilder.append(c.g(paramInt1));
    localStringBuilder.append(" or a ");
    localStringBuilder.append(c.g(paramInt2));
    localStringBuilder.append(" token.");
    throw new MailcapParseException(localStringBuilder.toString());
  }
  
  protected static void h(int paramInt1, int paramInt2, String paramString)
    throws MailcapParseException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Encountered a ");
    localStringBuilder.append(c.g(paramInt2));
    localStringBuilder.append(" token (");
    localStringBuilder.append(paramString);
    localStringBuilder.append(") while expecting a ");
    localStringBuilder.append(c.g(paramInt1));
    localStringBuilder.append(" token.");
    throw new MailcapParseException(localStringBuilder.toString());
  }
  
  public Map a(String paramString)
  {
    Map localMap = (Map)this.b.get(paramString);
    int i = paramString.indexOf('/') + 1;
    Object localObject = localMap;
    if (!paramString.substring(i).equals("*"))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString.substring(0, i));
      ((StringBuilder)localObject).append("*");
      paramString = ((StringBuilder)localObject).toString();
      paramString = (Map)this.b.get(paramString);
      localObject = localMap;
      if (paramString != null) {
        if (localMap != null) {
          localObject = c(localMap, paramString);
        } else {
          localObject = paramString;
        }
      }
    }
    return localObject;
  }
  
  public Map b(String paramString)
  {
    Map localMap = (Map)this.a.get(paramString);
    int i = paramString.indexOf('/') + 1;
    Object localObject = localMap;
    if (!paramString.substring(i).equals("*"))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString.substring(0, i));
      ((StringBuilder)localObject).append("*");
      paramString = ((StringBuilder)localObject).toString();
      paramString = (Map)this.a.get(paramString);
      localObject = localMap;
      if (paramString != null) {
        if (localMap != null) {
          localObject = c(localMap, paramString);
        } else {
          localObject = paramString;
        }
      }
    }
    return localObject;
  }
  
  protected void e(String paramString)
    throws MailcapParseException, IOException
  {
    Object localObject1 = new c(paramString);
    ((c)localObject1).k(false);
    if (a.a())
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("parse: ");
      ((StringBuilder)localObject2).append(paramString);
      a.b(((StringBuilder)localObject2).toString());
    }
    int i = ((c)localObject1).h();
    if (i != 2) {
      h(2, i, ((c)localObject1).b());
    }
    Object localObject3 = ((c)localObject1).b();
    Object localObject2 = Locale.ENGLISH;
    localObject3 = ((String)localObject3).toLowerCase((Locale)localObject2);
    i = ((c)localObject1).h();
    if ((i != 47) && (i != 59)) {
      g(47, 59, i, ((c)localObject1).b());
    }
    if (i == 47)
    {
      i = ((c)localObject1).h();
      if (i != 2) {
        h(2, i, ((c)localObject1).b());
      }
      localObject2 = ((c)localObject1).b().toLowerCase((Locale)localObject2);
      i = ((c)localObject1).h();
    }
    else
    {
      localObject2 = "*";
    }
    Object localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append((String)localObject3);
    ((StringBuilder)localObject4).append("/");
    ((StringBuilder)localObject4).append((String)localObject2);
    localObject4 = ((StringBuilder)localObject4).toString();
    if (a.a())
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("  Type: ");
      ((StringBuilder)localObject2).append((String)localObject4);
      a.b(((StringBuilder)localObject2).toString());
    }
    localObject3 = new LinkedHashMap();
    if (i != 59) {
      h(59, i, ((c)localObject1).b());
    }
    ((c)localObject1).k(true);
    int j = ((c)localObject1).h();
    ((c)localObject1).k(false);
    if ((j != 2) && (j != 59)) {
      g(2, 59, j, ((c)localObject1).b());
    }
    if (j == 2)
    {
      localObject2 = (List)this.c.get(localObject4);
      if (localObject2 == null)
      {
        localObject2 = new ArrayList();
        ((List)localObject2).add(paramString);
        this.c.put(localObject4, localObject2);
      }
      else
      {
        ((List)localObject2).add(paramString);
      }
    }
    i = j;
    if (j != 59) {
      i = ((c)localObject1).h();
    }
    if (i == 59)
    {
      i = 0;
      int m;
      Object localObject5;
      do
      {
        j = ((c)localObject1).h();
        if (j != 2) {
          h(2, j, ((c)localObject1).b());
        }
        paramString = ((c)localObject1).b().toLowerCase(Locale.ENGLISH);
        int k = ((c)localObject1).h();
        if ((k != 61) && (k != 59) && (k != 5)) {
          f(61, 59, 5, k, ((c)localObject1).b());
        }
        j = i;
        m = k;
        if (k == 61)
        {
          ((c)localObject1).k(true);
          j = ((c)localObject1).h();
          ((c)localObject1).k(false);
          if (j != 2) {
            h(2, j, ((c)localObject1).b());
          }
          localObject5 = ((c)localObject1).b();
          j = i;
          if (paramString.startsWith("x-java-"))
          {
            String str = paramString.substring(7);
            if ((str.equals("fallback-entry")) && (((String)localObject5).equalsIgnoreCase("true")))
            {
              j = 1;
            }
            else
            {
              if (a.a())
              {
                paramString = new StringBuilder();
                paramString.append("    Command: ");
                paramString.append(str);
                paramString.append(", Class: ");
                paramString.append((String)localObject5);
                a.b(paramString.toString());
              }
              localObject2 = (List)((Map)localObject3).get(str);
              paramString = (String)localObject2;
              if (localObject2 == null)
              {
                paramString = new ArrayList();
                ((Map)localObject3).put(str, paramString);
              }
              if (d)
              {
                paramString.add(0, localObject5);
                j = i;
              }
              else
              {
                paramString.add(localObject5);
                j = i;
              }
            }
          }
          m = ((c)localObject1).h();
        }
        i = j;
      } while (m == 59);
      if (j != 0) {
        paramString = this.b;
      } else {
        paramString = this.a;
      }
      localObject2 = (Map)paramString.get(localObject4);
      if (localObject2 == null)
      {
        paramString.put(localObject4, localObject3);
      }
      else
      {
        if (a.a())
        {
          paramString = new StringBuilder();
          paramString.append("Merging commands for type ");
          paramString.append((String)localObject4);
          a.b(paramString.toString());
        }
        paramString = ((Map)localObject2).keySet().iterator();
        while (paramString.hasNext())
        {
          localObject4 = (String)paramString.next();
          localObject1 = (List)((Map)localObject2).get(localObject4);
          localObject4 = (List)((Map)localObject3).get(localObject4);
          if (localObject4 != null)
          {
            localObject5 = ((List)localObject4).iterator();
            while (((Iterator)localObject5).hasNext())
            {
              localObject4 = (String)((Iterator)localObject5).next();
              if (!((List)localObject1).contains(localObject4)) {
                if (d) {
                  ((List)localObject1).add(0, localObject4);
                } else {
                  ((List)localObject1).add(localObject4);
                }
              }
            }
          }
        }
        localObject1 = ((Map)localObject3).keySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          paramString = (String)((Iterator)localObject1).next();
          if (!((Map)localObject2).containsKey(paramString)) {
            ((Map)localObject2).put(paramString, (List)((Map)localObject3).get(paramString));
          }
        }
      }
    }
    else if (i != 5)
    {
      g(5, 59, i, ((c)localObject1).b());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g5.b
 * JD-Core Version:    0.7.0.1
 */