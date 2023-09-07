package q0;

import android.content.Context;
import androidx.work.k;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class h
{
  private static final String a = k.f("WrkDbPathHelper");
  private static final String[] b = { "-journal", "-shm", "-wal" };
  
  public static File a(Context paramContext)
  {
    return c(paramContext, "androidx.work.workdb");
  }
  
  public static File b(Context paramContext)
  {
    return paramContext.getDatabasePath("androidx.work.workdb");
  }
  
  private static File c(Context paramContext, String paramString)
  {
    return new File(paramContext.getNoBackupFilesDir(), paramString);
  }
  
  public static String d()
  {
    return "androidx.work.workdb";
  }
  
  public static void e(Context paramContext)
  {
    if (b(paramContext).exists())
    {
      k.c().a(a, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
      Map localMap = f(paramContext);
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        File localFile = (File)localIterator.next();
        paramContext = (File)localMap.get(localFile);
        if ((localFile.exists()) && (paramContext != null))
        {
          if (paramContext.exists())
          {
            String str = String.format("Over-writing contents of %s", new Object[] { paramContext });
            k.c().h(a, str, new Throwable[0]);
          }
          if (localFile.renameTo(paramContext)) {
            paramContext = String.format("Migrated %s to %s", new Object[] { localFile, paramContext });
          } else {
            paramContext = String.format("Renaming %s to %s failed", new Object[] { localFile, paramContext });
          }
          k.c().a(a, paramContext, new Throwable[0]);
        }
      }
    }
  }
  
  public static Map<File, File> f(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    File localFile1 = b(paramContext);
    File localFile2 = a(paramContext);
    localHashMap.put(localFile1, localFile2);
    for (paramContext : b)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(localFile1.getPath());
      ((StringBuilder)localObject).append(paramContext);
      localObject = new File(((StringBuilder)localObject).toString());
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localFile2.getPath());
      localStringBuilder.append(paramContext);
      localHashMap.put(localObject, new File(localStringBuilder.toString()));
    }
    return localHashMap;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.h
 * JD-Core Version:    0.7.0.1
 */