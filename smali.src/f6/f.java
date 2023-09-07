package f6;

import java.io.File;

public class f
{
  public static void a(File paramFile)
  {
    try
    {
      if (paramFile.isDirectory()) {
        for (File localFile : paramFile.listFiles()) {
          if (localFile.isDirectory()) {
            c(localFile.getAbsolutePath());
          } else {
            d(localFile);
          }
        }
      }
      label53:
      return;
    }
    catch (Exception paramFile)
    {
      break label53;
    }
  }
  
  public static void b(String paramString)
  {
    a(new File(paramString));
  }
  
  public static void c(String paramString)
  {
    try
    {
      File localFile = new java/io/File;
      localFile.<init>(paramString);
      b(paramString);
      localFile.delete();
      label18:
      return;
    }
    catch (Exception paramString)
    {
      break label18;
    }
  }
  
  public static void d(File paramFile)
  {
    try
    {
      paramFile.delete();
      label5:
      return;
    }
    catch (Exception paramFile)
    {
      break label5;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.f
 * JD-Core Version:    0.7.0.1
 */