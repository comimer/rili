package i1;

import android.util.Pair;
import com.airbnb.lottie.network.FileExtension;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class f
{
  private final d a;
  
  public f(d paramd)
  {
    this.a = paramd;
  }
  
  private static String b(String paramString, FileExtension paramFileExtension, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("lottie_cache_");
    localStringBuilder.append(paramString.replaceAll("\\W+", ""));
    if (paramBoolean) {
      paramString = paramFileExtension.tempExtension();
    } else {
      paramString = paramFileExtension.extension;
    }
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  private File c(String paramString)
    throws FileNotFoundException
  {
    File localFile = new File(d(), b(paramString, FileExtension.JSON, false));
    if (localFile.exists()) {
      return localFile;
    }
    paramString = new File(d(), b(paramString, FileExtension.ZIP, false));
    if (paramString.exists()) {
      return paramString;
    }
    return null;
  }
  
  private File d()
  {
    File localFile = this.a.a();
    if (localFile.isFile()) {
      localFile.delete();
    }
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return localFile;
  }
  
  Pair<FileExtension, InputStream> a(String paramString)
  {
    try
    {
      File localFile = c(paramString);
      if (localFile == null) {
        return null;
      }
      FileInputStream localFileInputStream = new FileInputStream(localFile);
      FileExtension localFileExtension;
      if (localFile.getAbsolutePath().endsWith(".zip")) {
        localFileExtension = FileExtension.ZIP;
      } else {
        localFileExtension = FileExtension.JSON;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Cache hit for ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(" at ");
      localStringBuilder.append(localFile.getAbsolutePath());
      k1.d.a(localStringBuilder.toString());
      return new Pair(localFileExtension, localFileInputStream);
    }
    catch (FileNotFoundException paramString) {}
    return null;
  }
  
  void e(String paramString, FileExtension paramFileExtension)
  {
    paramString = b(paramString, paramFileExtension, true);
    paramFileExtension = new File(d(), paramString);
    paramString = new File(paramFileExtension.getAbsolutePath().replace(".temp", ""));
    boolean bool = paramFileExtension.renameTo(paramString);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Copying temp file to real file (");
    localStringBuilder.append(paramString);
    localStringBuilder.append(")");
    k1.d.a(localStringBuilder.toString());
    if (!bool)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unable to rename cache file ");
      localStringBuilder.append(paramFileExtension.getAbsolutePath());
      localStringBuilder.append(" to ");
      localStringBuilder.append(paramString.getAbsolutePath());
      localStringBuilder.append(".");
      k1.d.c(localStringBuilder.toString());
    }
  }
  
  /* Error */
  File f(String paramString, InputStream paramInputStream, FileExtension paramFileExtension)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_3
    //   2: iconst_1
    //   3: invokestatic 64	i1/f:b	(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    //   6: astore_1
    //   7: new 54	java/io/File
    //   10: dup
    //   11: aload_0
    //   12: invokespecial 58	i1/f:d	()Ljava/io/File;
    //   15: aload_1
    //   16: invokespecial 67	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   19: astore_3
    //   20: new 156	java/io/FileOutputStream
    //   23: astore_1
    //   24: aload_1
    //   25: aload_3
    //   26: invokespecial 157	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   29: sipush 1024
    //   32: newarray byte
    //   34: astore 4
    //   36: aload_2
    //   37: aload 4
    //   39: invokevirtual 163	java/io/InputStream:read	([B)I
    //   42: istore 5
    //   44: iload 5
    //   46: iconst_m1
    //   47: if_icmpeq +15 -> 62
    //   50: aload_1
    //   51: aload 4
    //   53: iconst_0
    //   54: iload 5
    //   56: invokevirtual 169	java/io/OutputStream:write	([BII)V
    //   59: goto -23 -> 36
    //   62: aload_1
    //   63: invokevirtual 172	java/io/OutputStream:flush	()V
    //   66: aload_1
    //   67: invokevirtual 175	java/io/OutputStream:close	()V
    //   70: aload_2
    //   71: invokevirtual 176	java/io/InputStream:close	()V
    //   74: aload_3
    //   75: areturn
    //   76: astore_3
    //   77: aload_1
    //   78: invokevirtual 175	java/io/OutputStream:close	()V
    //   81: aload_3
    //   82: athrow
    //   83: astore_1
    //   84: aload_2
    //   85: invokevirtual 176	java/io/InputStream:close	()V
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	f
    //   0	90	1	paramString	String
    //   0	90	2	paramInputStream	InputStream
    //   0	90	3	paramFileExtension	FileExtension
    //   34	18	4	arrayOfByte	byte[]
    //   42	13	5	i	int
    // Exception table:
    //   from	to	target	type
    //   29	36	76	finally
    //   36	44	76	finally
    //   50	59	76	finally
    //   62	66	76	finally
    //   20	29	83	finally
    //   66	70	83	finally
    //   77	83	83	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i1.f
 * JD-Core Version:    0.7.0.1
 */