package com.xiaomi.onetrack;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.onetrack.api.h;
import com.xiaomi.onetrack.d.d;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.ac;
import com.xiaomi.onetrack.util.b;
import com.xiaomi.onetrack.util.i;
import com.xiaomi.onetrack.util.k;
import com.xiaomi.onetrack.util.p;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import xcrash.XCrash;

public class CrashAnalysis
{
  public static final String ANR_CRASH = "anr";
  public static final String JAVA_CRASH = "java";
  public static final String NATIVE_CRASH = "native";
  private static final String a = "CrashAnalysis";
  private static final String b = "com.xiaomi.digest.DigestUtil";
  private static final String c = "calcuateJavaDigest";
  private static final String d = "/sdcard/tombstone";
  private static final String e = "backtrace feature id:\n\t";
  private static final String f = "error reason:\n\t";
  private static final String g = "Crash time: '";
  private static final String h = ".xcrash";
  private static final int i = 604800000;
  private static final int j = 102400;
  private static final int k = 10;
  private static final int l = 20;
  private static final String m = "@[0-9a-fA-F]{1,10}";
  private static final String n = "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}";
  private static final String o = "0x[0-9a-fA-F]{1,10}";
  private static final String p = "\\d+[B,KB,MB]*";
  private static final String q = "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+";
  private static final int r = 20;
  private static final boolean s = false;
  private static final AtomicBoolean t = new AtomicBoolean(false);
  private final FileProcessor[] u;
  private final h v;
  
  /* Error */
  private CrashAnalysis(Context paramContext, h paramh)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 89	java/lang/Object:<init>	()V
    //   4: ldc 91
    //   6: iconst_0
    //   7: anewarray 93	java/lang/Class
    //   10: invokevirtual 97	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   13: iconst_0
    //   14: anewarray 4	java/lang/Object
    //   17: invokevirtual 103	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   20: astore_3
    //   21: getstatic 109	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   24: astore 4
    //   26: aload_0
    //   27: aload_3
    //   28: ldc 111
    //   30: aload 4
    //   32: invokespecial 114	com/xiaomi/onetrack/CrashAnalysis:a	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    //   35: aload_0
    //   36: aload_3
    //   37: ldc 116
    //   39: invokestatic 119	com/xiaomi/onetrack/CrashAnalysis:a	()Ljava/lang/String;
    //   42: invokespecial 114	com/xiaomi/onetrack/CrashAnalysis:a	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    //   45: aload_0
    //   46: aload_3
    //   47: ldc 121
    //   49: aload 4
    //   51: invokespecial 114	com/xiaomi/onetrack/CrashAnalysis:a	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    //   54: aload_0
    //   55: aload_3
    //   56: ldc 123
    //   58: aload 4
    //   60: invokespecial 114	com/xiaomi/onetrack/CrashAnalysis:a	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    //   63: aload_0
    //   64: aload_3
    //   65: ldc 125
    //   67: aload 4
    //   69: invokespecial 114	com/xiaomi/onetrack/CrashAnalysis:a	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    //   72: aload_0
    //   73: aload_3
    //   74: ldc 127
    //   76: aload 4
    //   78: invokespecial 114	com/xiaomi/onetrack/CrashAnalysis:a	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    //   81: getstatic 131	xcrash/XCrash:l	I
    //   84: istore 5
    //   86: ldc 129
    //   88: ldc 133
    //   90: iconst_2
    //   91: anewarray 93	java/lang/Class
    //   94: dup
    //   95: iconst_0
    //   96: ldc 135
    //   98: aastore
    //   99: dup
    //   100: iconst_1
    //   101: aload_3
    //   102: invokevirtual 139	java/lang/Object:getClass	()Ljava/lang/Class;
    //   105: aastore
    //   106: invokevirtual 143	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   109: aconst_null
    //   110: iconst_2
    //   111: anewarray 4	java/lang/Object
    //   114: dup
    //   115: iconst_0
    //   116: aload_1
    //   117: invokevirtual 147	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   120: aastore
    //   121: dup
    //   122: iconst_1
    //   123: aload_3
    //   124: aastore
    //   125: invokevirtual 153	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   128: pop
    //   129: ldc 20
    //   131: ldc 155
    //   133: invokestatic 160	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: goto +37 -> 173
    //   139: astore_1
    //   140: new 162	java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   147: astore_3
    //   148: aload_3
    //   149: ldc 165
    //   151: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload_3
    //   156: aload_1
    //   157: invokevirtual 174	java/lang/Throwable:toString	()Ljava/lang/String;
    //   160: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: pop
    //   164: ldc 20
    //   166: aload_3
    //   167: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokestatic 160	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   173: aload_0
    //   174: aload_2
    //   175: putfield 177	com/xiaomi/onetrack/CrashAnalysis:v	Lcom/xiaomi/onetrack/api/h;
    //   178: aload_0
    //   179: iconst_3
    //   180: anewarray 6	com/xiaomi/onetrack/CrashAnalysis$FileProcessor
    //   183: dup
    //   184: iconst_0
    //   185: new 6	com/xiaomi/onetrack/CrashAnalysis$FileProcessor
    //   188: dup
    //   189: aload_0
    //   190: ldc 14
    //   192: invokespecial 180	com/xiaomi/onetrack/CrashAnalysis$FileProcessor:<init>	(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V
    //   195: aastore
    //   196: dup
    //   197: iconst_1
    //   198: new 6	com/xiaomi/onetrack/CrashAnalysis$FileProcessor
    //   201: dup
    //   202: aload_0
    //   203: ldc 11
    //   205: invokespecial 180	com/xiaomi/onetrack/CrashAnalysis$FileProcessor:<init>	(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V
    //   208: aastore
    //   209: dup
    //   210: iconst_2
    //   211: new 6	com/xiaomi/onetrack/CrashAnalysis$FileProcessor
    //   214: dup
    //   215: aload_0
    //   216: ldc 17
    //   218: invokespecial 180	com/xiaomi/onetrack/CrashAnalysis$FileProcessor:<init>	(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V
    //   221: aastore
    //   222: putfield 182	com/xiaomi/onetrack/CrashAnalysis:u	[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;
    //   225: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	226	0	this	CrashAnalysis
    //   0	226	1	paramContext	Context
    //   0	226	2	paramh	h
    //   20	147	3	localObject	Object
    //   24	53	4	localBoolean	Boolean
    //   84	1	5	i1	int
    // Exception table:
    //   from	to	target	type
    //   4	136	139	finally
  }
  
  private static String a()
  {
    return k.a();
  }
  
  private void a(long paramLong)
  {
    aa.d(ac.b() * 100L + paramLong);
  }
  
  /* Error */
  static void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 147	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: invokestatic 211	com/xiaomi/onetrack/f/a:a	(Landroid/content/Context;)V
    //   7: getstatic 131	xcrash/XCrash:l	I
    //   10: istore_1
    //   11: ldc 129
    //   13: ldc 213
    //   15: iconst_2
    //   16: anewarray 93	java/lang/Class
    //   19: dup
    //   20: iconst_0
    //   21: ldc 135
    //   23: aastore
    //   24: dup
    //   25: iconst_1
    //   26: ldc 215
    //   28: aastore
    //   29: invokevirtual 143	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   32: aconst_null
    //   33: iconst_2
    //   34: anewarray 4	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: aload_0
    //   40: invokevirtual 147	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   43: aastore
    //   44: dup
    //   45: iconst_1
    //   46: invokestatic 119	com/xiaomi/onetrack/CrashAnalysis:a	()Ljava/lang/String;
    //   49: aastore
    //   50: invokevirtual 153	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   53: pop
    //   54: ldc 20
    //   56: ldc 217
    //   58: invokestatic 222	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   61: pop
    //   62: goto +38 -> 100
    //   65: astore_0
    //   66: new 162	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   73: astore_2
    //   74: aload_2
    //   75: ldc 224
    //   77: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload_2
    //   82: aload_0
    //   83: invokevirtual 174	java/lang/Throwable:toString	()Ljava/lang/String;
    //   86: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: pop
    //   90: ldc 20
    //   92: aload_2
    //   93: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokestatic 222	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   99: pop
    //   100: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	paramContext	Context
    //   10	1	1	i1	int
    //   73	20	2	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   0	62	65	finally
  }
  
  private void a(Object paramObject1, String paramString, Object paramObject2)
    throws Exception
  {
    Class localClass;
    if (paramObject2.getClass() == Boolean.class) {
      localClass = Boolean.TYPE;
    } else {
      localClass = paramObject2.getClass();
    }
    paramObject1.getClass().getDeclaredMethod(paramString, new Class[] { localClass }).invoke(paramObject1, new Object[] { paramObject2 });
  }
  
  private long b()
  {
    long l1 = aa.c();
    if (l1 == 0L)
    {
      p.a("CrashAnalysis", "no ticket data found, return max count");
      return 10L;
    }
    long l2 = ac.b();
    if (l1 / 100L != l2)
    {
      p.a("CrashAnalysis", "no today's ticket, return max count");
      return 10L;
    }
    l2 = l1 - l2 * 100L;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("today's remain ticket is ");
    localStringBuilder.append(l2);
    p.a("CrashAnalysis", localStringBuilder.toString());
    return l2;
  }
  
  private static long b(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    long l1 = 0L;
    long l2 = l1;
    if (!bool) {
      try
      {
        int i1 = paramString.indexOf("Crash time: '");
        l2 = l1;
        if (i1 != -1)
        {
          int i2 = i1 + 13;
          i1 = paramString.indexOf("'\n", i2);
          l2 = l1;
          if (i1 != -1) {
            l2 = b.a(paramString.substring(i2, i1));
          }
        }
      }
      catch (Exception localException)
      {
        paramString = new StringBuilder();
        paramString.append("getCrashTimeStamp error: ");
        paramString.append(localException.toString());
        p.b("CrashAnalysis", paramString.toString());
        l2 = l1;
      }
    }
    return l2;
  }
  
  private static String c(String paramString1, String paramString2)
  {
    boolean bool = TextUtils.isEmpty(paramString1);
    String str1 = "uncategoried";
    String str2 = str1;
    if (!bool) {
      try
      {
        int i1;
        int i2;
        if (paramString2.equals("anr"))
        {
          i1 = paramString1.indexOf(" tid=1 ");
          str2 = str1;
          if (i1 == -1) {
            break label192;
          }
          i2 = paramString1.indexOf("\n  at ", i1);
          str2 = str1;
          if (i2 == -1) {
            break label192;
          }
          i1 = paramString1.indexOf('\n', i2 + 6);
          str2 = str1;
          if (i1 == -1) {
            break label192;
          }
          paramString1 = paramString1.substring(i2 + 2, i1);
        }
        else
        {
          i1 = paramString1.indexOf("error reason:\n\t");
          str2 = str1;
          if (i1 == -1) {
            break label192;
          }
          i1 += 15;
          i2 = paramString1.indexOf("\n\n", i1);
          str2 = str1;
          if (i2 == -1) {
            break label192;
          }
          paramString1 = paramString1.substring(i1, i2);
        }
        str2 = paramString1;
      }
      catch (Exception paramString2)
      {
        paramString1 = new StringBuilder();
        paramString1.append("getErrorReasonString error: ");
        paramString1.append(paramString2.toString());
        p.b("CrashAnalysis", paramString1.toString());
        str2 = str1;
      }
    }
    label192:
    return str2;
  }
  
  private List<File> c()
  {
    Object localObject = new File(a()).listFiles();
    if (localObject == null)
    {
      p.a("CrashAnalysis", "this path does not denote a directory, or if an I/O error occurs.");
      return null;
    }
    List localList = Arrays.asList((Object[])localObject);
    Collections.sort(localList, new CrashAnalysis.2(this));
    int i1 = localList.size();
    localObject = localList;
    if (i1 > 20)
    {
      int i2 = i1 - 20;
      for (int i3 = 0; i3 < i2; i3++) {
        k.a((File)localList.get(i3));
      }
      localObject = localList.subList(i2, i1);
    }
    return localObject;
  }
  
  public static String calculateJavaDigest(String paramString)
  {
    paramString = paramString.replaceAll("\\t", "").split("\\n");
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = Math.min(paramString.length, 20);
    int i2 = 0;
    int i4;
    for (int i3 = 0;; i3++)
    {
      i4 = i2;
      if (i3 >= i1) {
        break;
      }
      paramString[i3] = paramString[i3].replaceAll("((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+", "$1XX").replaceAll("\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}", "XX").replaceAll("\\d+[B,KB,MB]*", "");
    }
    while ((i4 < i1) && ((!paramString[i4].contains("...")) || (!paramString[i4].contains("more"))))
    {
      localStringBuilder.append(paramString[i4]);
      localStringBuilder.append('\n');
      i4++;
    }
    return d.h(localStringBuilder.toString());
  }
  
  private static String d(String paramString1, String paramString2)
  {
    boolean bool = TextUtils.isEmpty(paramString1);
    String str1 = "";
    str2 = str1;
    if (!bool) {
      try
      {
        bool = paramString2.equals("anr");
        int i1;
        int i2;
        if (bool)
        {
          i1 = paramString1.indexOf(" tid=1 ");
          str2 = str1;
          if (i1 != -1)
          {
            i2 = paramString1.indexOf("\n\n", i1);
            str2 = str1;
            if (i2 == -1) {}
          }
        }
        else
        {
          for (paramString1 = calculateJavaDigest(paramString1.substring(i1, i2));; paramString1 = paramString1.substring(i1, i2))
          {
            str2 = paramString1;
            break;
            i1 = paramString1.indexOf("backtrace feature id:\n\t");
            str2 = str1;
            if (i1 == -1) {
              break;
            }
            i1 += 23;
            i2 = paramString1.indexOf("\n\n", i1);
            str2 = str1;
            if (i2 == -1) {
              break;
            }
          }
        }
        return str2;
      }
      catch (Exception paramString1)
      {
        paramString2 = new StringBuilder();
        paramString2.append("calculateFeatureId error: ");
        paramString2.append(paramString1.toString());
        p.b("CrashAnalysis", paramString2.toString());
        str2 = str1;
      }
    }
  }
  
  private boolean d()
  {
    Object localObject1 = c();
    long l1 = b();
    boolean bool1;
    if ((localObject1 != null) && (((List)localObject1).size() > 0))
    {
      long l2 = System.currentTimeMillis();
      long l3 = aa.b();
      long l4 = l3;
      if (l3 > l2) {
        l4 = l2 - 604800000L;
      }
      localObject1 = ((List)localObject1).iterator();
      l3 = 0L;
      bool1 = false;
      while (((Iterator)localObject1).hasNext())
      {
        File localFile = (File)((Iterator)localObject1).next();
        long l5 = localFile.lastModified();
        if ((l5 >= l2 - 604800000L) && (l5 <= l2))
        {
          long l6;
          boolean bool2;
          long l7;
          if (l5 <= l4)
          {
            p.a("CrashAnalysis", "found already reported crash file, ignore");
            l6 = l3;
            bool2 = bool1;
            l7 = l1;
            localObject2 = localObject1;
          }
          do
          {
            localObject1 = localObject2;
            l1 = l7;
            bool1 = bool2;
            l3 = l6;
            break;
            localObject2 = localObject1;
            l7 = l1;
            bool2 = bool1;
            l6 = l3;
          } while (l1 <= 0L);
          FileProcessor[] arrayOfFileProcessor = this.u;
          int i1 = arrayOfFileProcessor.length;
          int i2 = 0;
          for (;;)
          {
            localObject2 = localObject1;
            l7 = l1;
            bool2 = bool1;
            l6 = l3;
            if (i2 >= i1) {
              break;
            }
            l7 = l1;
            l6 = l3;
            if (arrayOfFileProcessor[i2].a(localFile))
            {
              localObject2 = new StringBuilder();
              ((StringBuilder)localObject2).append("find crash file:");
              ((StringBuilder)localObject2).append(localFile.getName());
              p.a("CrashAnalysis", ((StringBuilder)localObject2).toString());
              l7 = l1 - 1L;
              l1 = l3;
              if (l3 < l5) {
                l1 = l5;
              }
              bool1 = true;
              l6 = l1;
            }
            i2++;
            l1 = l7;
            l3 = l6;
          }
        }
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("remove obsolete crash files: ");
        ((StringBuilder)localObject2).append(localFile.getName());
        p.a("CrashAnalysis", ((StringBuilder)localObject2).toString());
        k.a(localFile);
      }
      if (l3 > 0L) {
        aa.c(l3);
      }
    }
    else
    {
      bool1 = false;
    }
    if (bool1) {
      a(l1);
    }
    return bool1;
  }
  
  private void e()
  {
    FileProcessor[] arrayOfFileProcessor = this.u;
    int i1 = arrayOfFileProcessor.length;
    for (int i2 = 0; i2 < i1; i2++) {
      arrayOfFileProcessor[i2].a();
    }
  }
  
  public static boolean isSupport()
  {
    try
    {
      int i1 = XCrash.l;
      return true;
    }
    finally {}
    return false;
  }
  
  public static void start(Context paramContext, h paramh)
  {
    if (t.compareAndSet(false, true)) {
      i.a(new CrashAnalysis.1(paramContext, paramh));
    } else {
      p.b("CrashAnalysis", "run method has been invoked more than once");
    }
  }
  
  private class FileProcessor
  {
    final List<File> a = new ArrayList();
    final String b;
    final String c;
    
    FileProcessor(String paramString)
    {
      this.c = paramString;
      this$1 = new StringBuilder();
      CrashAnalysis.this.append(paramString);
      CrashAnalysis.this.append(".xcrash");
      this.b = CrashAnalysis.this.toString();
    }
    
    private String a(String paramString)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = paramString.split("__");
        if (paramString.length == 2)
        {
          paramString = paramString[0].split("_");
          if (paramString.length == 3) {
            return paramString[2];
          }
        }
      }
      return null;
    }
    
    void a()
    {
      for (int i = 0; i < this.a.size(); i++)
      {
        String str1 = ((File)this.a.get(i)).getAbsoluteFile().getAbsolutePath();
        String str2 = a(str1);
        String str3 = k.a(str1, 102400);
        if ((!TextUtils.isEmpty(str3)) && (CrashAnalysis.c(CrashAnalysis.this) != null))
        {
          String str4 = CrashAnalysis.a(str3, this.c);
          String str5 = CrashAnalysis.b(str3, this.c);
          long l = CrashAnalysis.a(str3);
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("fileName: ");
          localStringBuilder.append(str1);
          p.a("CrashAnalysis", localStringBuilder.toString());
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("feature id: ");
          localStringBuilder.append(str4);
          p.a("CrashAnalysis", localStringBuilder.toString());
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("error: ");
          localStringBuilder.append(str5);
          p.a("CrashAnalysis", localStringBuilder.toString());
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("crashTimeStamp: ");
          localStringBuilder.append(l);
          p.a("CrashAnalysis", localStringBuilder.toString());
          CrashAnalysis.c(CrashAnalysis.this).a(str3, str5, this.c, str2, str4, l);
          k.a(new File(str1));
          p.a("CrashAnalysis", "remove reported crash file");
        }
      }
    }
    
    boolean a(File paramFile)
    {
      if (paramFile.getName().contains(this.b))
      {
        this.a.add(paramFile);
        return true;
      }
      return false;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.CrashAnalysis
 * JD-Core Version:    0.7.0.1
 */