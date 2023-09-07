package i1;

import android.util.Pair;
import com.airbnb.lottie.h;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.network.FileExtension;
import com.airbnb.lottie.p;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;
import k1.d;

public class g
{
  private final f a;
  private final e b;
  
  public g(f paramf, e parame)
  {
    this.a = paramf;
    this.b = parame;
  }
  
  private h a(String paramString1, String paramString2)
  {
    if (paramString2 == null) {
      return null;
    }
    Object localObject = this.a.a(paramString1);
    if (localObject == null) {
      return null;
    }
    paramString2 = (FileExtension)((Pair)localObject).first;
    localObject = (InputStream)((Pair)localObject).second;
    if (paramString2 == FileExtension.ZIP) {
      paramString1 = p.y(new ZipInputStream((InputStream)localObject), paramString1);
    } else {
      paramString1 = p.o((InputStream)localObject, paramString1);
    }
    if (paramString1.b() != null) {
      return (h)paramString1.b();
    }
    return null;
  }
  
  /* Error */
  private i0<h> b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 70	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 71	java/lang/StringBuilder:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: ldc 73
    //   11: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: pop
    //   15: aload_3
    //   16: aload_1
    //   17: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: pop
    //   21: aload_3
    //   22: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokestatic 86	k1/d:a	(Ljava/lang/String;)V
    //   28: aconst_null
    //   29: astore 4
    //   31: aconst_null
    //   32: astore_3
    //   33: aload_0
    //   34: getfield 17	i1/g:b	Li1/e;
    //   37: aload_1
    //   38: invokeinterface 91 2 0
    //   43: astore 5
    //   45: aload 5
    //   47: astore_3
    //   48: aload 5
    //   50: astore 4
    //   52: aload 5
    //   54: invokeinterface 97 1 0
    //   59: ifeq +137 -> 196
    //   62: aload 5
    //   64: astore_3
    //   65: aload 5
    //   67: astore 4
    //   69: aload_0
    //   70: aload_1
    //   71: aload 5
    //   73: invokeinterface 101 1 0
    //   78: aload 5
    //   80: invokeinterface 104 1 0
    //   85: aload_2
    //   86: invokespecial 108	i1/g:d	(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/i0;
    //   89: astore_1
    //   90: aload 5
    //   92: astore_3
    //   93: aload 5
    //   95: astore 4
    //   97: new 70	java/lang/StringBuilder
    //   100: astore_2
    //   101: aload 5
    //   103: astore_3
    //   104: aload 5
    //   106: astore 4
    //   108: aload_2
    //   109: invokespecial 71	java/lang/StringBuilder:<init>	()V
    //   112: aload 5
    //   114: astore_3
    //   115: aload 5
    //   117: astore 4
    //   119: aload_2
    //   120: ldc 110
    //   122: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: pop
    //   126: aload 5
    //   128: astore_3
    //   129: aload 5
    //   131: astore 4
    //   133: aload_1
    //   134: invokevirtual 61	com/airbnb/lottie/i0:b	()Ljava/lang/Object;
    //   137: ifnull +9 -> 146
    //   140: iconst_1
    //   141: istore 6
    //   143: goto +6 -> 149
    //   146: iconst_0
    //   147: istore 6
    //   149: aload 5
    //   151: astore_3
    //   152: aload 5
    //   154: astore 4
    //   156: aload_2
    //   157: iload 6
    //   159: invokevirtual 113	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   162: pop
    //   163: aload 5
    //   165: astore_3
    //   166: aload 5
    //   168: astore 4
    //   170: aload_2
    //   171: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: invokestatic 86	k1/d:a	(Ljava/lang/String;)V
    //   177: aload 5
    //   179: invokeinterface 118 1 0
    //   184: goto +10 -> 194
    //   187: astore_2
    //   188: ldc 120
    //   190: aload_2
    //   191: invokestatic 123	k1/d:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   194: aload_1
    //   195: areturn
    //   196: aload 5
    //   198: astore_3
    //   199: aload 5
    //   201: astore 4
    //   203: new 125	java/lang/IllegalArgumentException
    //   206: astore_1
    //   207: aload 5
    //   209: astore_3
    //   210: aload 5
    //   212: astore 4
    //   214: aload_1
    //   215: aload 5
    //   217: invokeinterface 128 1 0
    //   222: invokespecial 130	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   225: aload 5
    //   227: astore_3
    //   228: aload 5
    //   230: astore 4
    //   232: new 58	com/airbnb/lottie/i0
    //   235: dup
    //   236: aload_1
    //   237: invokespecial 133	com/airbnb/lottie/i0:<init>	(Ljava/lang/Throwable;)V
    //   240: astore_1
    //   241: aload 5
    //   243: invokeinterface 118 1 0
    //   248: goto +10 -> 258
    //   251: astore_2
    //   252: ldc 120
    //   254: aload_2
    //   255: invokestatic 123	k1/d:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   258: aload_1
    //   259: areturn
    //   260: astore_1
    //   261: goto +40 -> 301
    //   264: astore_1
    //   265: aload 4
    //   267: astore_3
    //   268: new 58	com/airbnb/lottie/i0
    //   271: dup
    //   272: aload_1
    //   273: invokespecial 133	com/airbnb/lottie/i0:<init>	(Ljava/lang/Throwable;)V
    //   276: astore_1
    //   277: aload 4
    //   279: ifnull +20 -> 299
    //   282: aload 4
    //   284: invokeinterface 118 1 0
    //   289: goto +10 -> 299
    //   292: astore_2
    //   293: ldc 120
    //   295: aload_2
    //   296: invokestatic 123	k1/d:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   299: aload_1
    //   300: areturn
    //   301: aload_3
    //   302: ifnull +19 -> 321
    //   305: aload_3
    //   306: invokeinterface 118 1 0
    //   311: goto +10 -> 321
    //   314: astore_2
    //   315: ldc 120
    //   317: aload_2
    //   318: invokestatic 123	k1/d:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   321: aload_1
    //   322: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	this	g
    //   0	323	1	paramString1	String
    //   0	323	2	paramString2	String
    //   7	299	3	localObject1	Object
    //   29	254	4	localObject2	Object
    //   43	199	5	localc	c
    //   141	17	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   177	184	187	java/io/IOException
    //   241	248	251	java/io/IOException
    //   33	45	260	finally
    //   52	62	260	finally
    //   69	90	260	finally
    //   97	101	260	finally
    //   108	112	260	finally
    //   119	126	260	finally
    //   133	140	260	finally
    //   156	163	260	finally
    //   170	177	260	finally
    //   203	207	260	finally
    //   214	225	260	finally
    //   232	241	260	finally
    //   268	277	260	finally
    //   33	45	264	java/lang/Exception
    //   52	62	264	java/lang/Exception
    //   69	90	264	java/lang/Exception
    //   97	101	264	java/lang/Exception
    //   108	112	264	java/lang/Exception
    //   119	126	264	java/lang/Exception
    //   133	140	264	java/lang/Exception
    //   156	163	264	java/lang/Exception
    //   170	177	264	java/lang/Exception
    //   203	207	264	java/lang/Exception
    //   214	225	264	java/lang/Exception
    //   232	241	264	java/lang/Exception
    //   282	289	292	java/io/IOException
    //   305	311	314	java/io/IOException
  }
  
  private i0<h> d(String paramString1, InputStream paramInputStream, String paramString2, String paramString3)
    throws IOException
  {
    Object localObject = paramString2;
    if (paramString2 == null) {
      localObject = "application/json";
    }
    if ((!((String)localObject).contains("application/zip")) && (!((String)localObject).contains("application/x-zip")) && (!((String)localObject).contains("application/x-zip-compressed")) && (!paramString1.split("\\?")[0].endsWith(".lottie")))
    {
      d.a("Received json response.");
      localObject = FileExtension.JSON;
      paramString2 = e(paramString1, paramInputStream, paramString3);
      paramInputStream = (InputStream)localObject;
    }
    else
    {
      d.a("Handling zip response.");
      localObject = FileExtension.ZIP;
      paramString2 = f(paramString1, paramInputStream, paramString3);
      paramInputStream = (InputStream)localObject;
    }
    if ((paramString3 != null) && (paramString2.b() != null)) {
      this.a.e(paramString1, paramInputStream);
    }
    return paramString2;
  }
  
  private i0<h> e(String paramString1, InputStream paramInputStream, String paramString2)
    throws IOException
  {
    if (paramString2 == null) {
      return p.o(paramInputStream, null);
    }
    return p.o(new FileInputStream(this.a.f(paramString1, paramInputStream, FileExtension.JSON).getAbsolutePath()), paramString1);
  }
  
  private i0<h> f(String paramString1, InputStream paramInputStream, String paramString2)
    throws IOException
  {
    if (paramString2 == null) {
      return p.y(new ZipInputStream(paramInputStream), null);
    }
    return p.y(new ZipInputStream(new FileInputStream(this.a.f(paramString1, paramInputStream, FileExtension.ZIP))), paramString1);
  }
  
  public i0<h> c(String paramString1, String paramString2)
  {
    Object localObject = a(paramString1, paramString2);
    if (localObject != null) {
      return new i0(localObject);
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Animation for ");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(" not found in cache. Fetching from network.");
    d.a(((StringBuilder)localObject).toString());
    return b(paramString1, paramString2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i1.g
 * JD-Core Version:    0.7.0.1
 */