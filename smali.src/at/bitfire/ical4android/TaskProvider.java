package at.bitfire.ical4android;

import android.accounts.Account;
import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.net.Uri.Builder;
import androidx.core.content.pm.c;
import java.io.Closeable;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import oc.a.a;
import oc.a.b;
import oc.a.c;
import oc.a.d;
import oc.a.f;
import oc.a.g;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/TaskProvider;", "Ljava/io/Closeable;", "Landroid/net/Uri;", "taskListsUri", "syncStateUri", "tasksUri", "propertiesUri", "alarmsUri", "categoriesUri", "Lkotlin/u;", "close", "Lat/bitfire/ical4android/TaskProvider$ProviderName;", "name", "Lat/bitfire/ical4android/TaskProvider$ProviderName;", "getName", "()Lat/bitfire/ical4android/TaskProvider$ProviderName;", "Landroid/content/ContentProviderClient;", "client", "Landroid/content/ContentProviderClient;", "getClient", "()Landroid/content/ContentProviderClient;", "<init>", "(Lat/bitfire/ical4android/TaskProvider$ProviderName;Landroid/content/ContentProviderClient;)V", "Companion", "ProviderName", "ProviderTooOldException", "ical4android_release"}, k=1, mv={1, 7, 1})
public final class TaskProvider
  implements Closeable
{
  public static final Companion Companion = new Companion(null);
  public static final String PERMISSION_READ_TASKS = "org.dmfs.permission.READ_TASKS";
  public static final String PERMISSION_WRITE_TASKS = "org.dmfs.permission.WRITE_TASKS";
  private final ContentProviderClient client;
  private final ProviderName name;
  
  private TaskProvider(ProviderName paramProviderName, ContentProviderClient paramContentProviderClient)
  {
    this.name = paramProviderName;
    this.client = paramContentProviderClient;
  }
  
  public final Uri alarmsUri()
  {
    Uri localUri = a.a.a(this.name.getAuthority());
    r.c(localUri);
    return localUri;
  }
  
  public final Uri categoriesUri()
  {
    Uri localUri = a.b.a(this.name.getAuthority());
    r.c(localUri);
    return localUri;
  }
  
  public void close()
  {
    MiscUtils.ContentProviderClientHelper.INSTANCE.closeCompat(this.client);
  }
  
  public final ContentProviderClient getClient()
  {
    return this.client;
  }
  
  public final ProviderName getName()
  {
    return this.name;
  }
  
  public final Uri propertiesUri()
  {
    Uri localUri = a.c.a(this.name.getAuthority());
    r.c(localUri);
    return localUri;
  }
  
  public final Uri syncStateUri()
  {
    Uri localUri = a.d.a(this.name.getAuthority());
    r.c(localUri);
    return localUri;
  }
  
  public final Uri taskListsUri()
  {
    Uri localUri = a.f.a(this.name.getAuthority());
    r.c(localUri);
    return localUri;
  }
  
  public final Uri tasksUri()
  {
    Uri localUri = a.g.a(this.name.getAuthority());
    r.c(localUri);
    return localUri;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/TaskProvider$Companion;", "", "Landroid/content/Context;", "context", "Lat/bitfire/ical4android/TaskProvider$ProviderName;", "name", "Lkotlin/u;", "checkVersion", "Lat/bitfire/ical4android/TaskProvider;", "acquire", "Landroid/content/ContentProviderClient;", "client", "fromProviderClient", "Landroid/net/Uri;", "uri", "Landroid/accounts/Account;", "account", "syncAdapterUri", "", "PERMISSION_READ_TASKS", "Ljava/lang/String;", "PERMISSION_WRITE_TASKS", "<init>", "()V", "ical4android_release"}, k=1, mv={1, 7, 1})
  public static final class Companion
  {
    private final void checkVersion(Context paramContext, TaskProvider.ProviderName paramProviderName)
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramProviderName.getPackageName(), 0);
      long l = c.a(paramContext);
      if (l >= paramProviderName.getMinVersionCode()) {
        return;
      }
      paramContext = paramContext.versionName;
      r.e(paramContext, "info.versionName");
      paramContext = new TaskProvider.ProviderTooOldException(paramProviderName, l, paramContext);
      Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Task provider too old", paramContext);
      throw paramContext;
    }
    
    @SuppressLint({"Recycle"})
    public final TaskProvider acquire(Context paramContext, TaskProvider.ProviderName paramProviderName)
    {
      r.f(paramContext, "context");
      r.f(paramProviderName, "name");
      Object localObject1 = null;
      try
      {
        checkVersion(paramContext, paramProviderName);
        localObject2 = paramContext.getContentResolver().acquireContentProviderClient(paramProviderName.getAuthority());
        paramContext = localObject1;
        if (localObject2 != null)
        {
          paramContext = new at/bitfire/ical4android/TaskProvider;
          paramContext.<init>(paramProviderName, (ContentProviderClient)localObject2, null);
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Object localObject2 = Ical4Android.INSTANCE.getLog();
        paramContext = new StringBuilder();
        paramContext.append("Package ");
        paramContext.append(paramProviderName.getPackageName());
        paramContext.append(" not installed");
        ((Logger)localObject2).warning(paramContext.toString());
        paramContext = localObject1;
      }
      catch (SecurityException paramContext)
      {
        Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Not allowed to access task provider", paramContext);
        paramContext = localObject1;
      }
      return paramContext;
    }
    
    public final TaskProvider fromProviderClient(Context paramContext, ContentProviderClient paramContentProviderClient)
    {
      r.f(paramContext, "context");
      r.f(paramContentProviderClient, "client");
      TaskProvider.ProviderName localProviderName = TaskProvider.ProviderName.OpenTasks;
      checkVersion(paramContext, localProviderName);
      return new TaskProvider(localProviderName, paramContentProviderClient, null);
    }
    
    public final Uri syncAdapterUri(Uri paramUri, Account paramAccount)
    {
      r.f(paramUri, "uri");
      r.f(paramAccount, "account");
      paramUri = paramUri.buildUpon().appendQueryParameter("account_name", paramAccount.name).appendQueryParameter("account_type", paramAccount.type).appendQueryParameter("caller_is_syncadapter", "true").build();
      r.c(paramUri);
      return paramUri;
    }
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/TaskProvider$ProviderName;", "", "authority", "", "packageName", "minVersionCode", "", "minVersionName", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "getAuthority", "()Ljava/lang/String;", "getMinVersionCode", "()J", "getMinVersionName", "getPackageName", "OpenTasks", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum ProviderName
  {
    private final String authority;
    private final long minVersionCode;
    private final String minVersionName;
    private final String packageName;
    
    private ProviderName(String paramString1, String paramString2, long paramLong, String paramString3)
    {
      this.authority = paramString1;
      this.packageName = paramString2;
      this.minVersionCode = paramLong;
      this.minVersionName = paramString3;
    }
    
    public final String getAuthority()
    {
      return this.authority;
    }
    
    public final long getMinVersionCode()
    {
      return this.minVersionCode;
    }
    
    public final String getMinVersionName()
    {
      return this.minVersionName;
    }
    
    public final String getPackageName()
    {
      return this.packageName;
    }
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/TaskProvider$ProviderTooOldException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "provider", "Lat/bitfire/ical4android/TaskProvider$ProviderName;", "installedVersionCode", "", "installedVersionName", "", "(Lat/bitfire/ical4android/TaskProvider$ProviderName;JLjava/lang/String;)V", "getInstalledVersionName", "()Ljava/lang/String;", "getProvider", "()Lat/bitfire/ical4android/TaskProvider$ProviderName;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class ProviderTooOldException
    extends Exception
  {
    private final String installedVersionName;
    private final TaskProvider.ProviderName provider;
    
    public ProviderTooOldException(TaskProvider.ProviderName paramProviderName, long paramLong, String paramString)
    {
      super();
      this.provider = paramProviderName;
      this.installedVersionName = paramString;
    }
    
    public final String getInstalledVersionName()
    {
      return this.installedVersionName;
    }
    
    public final TaskProvider.ProviderName getProvider()
    {
      return this.provider;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.TaskProvider
 * JD-Core Version:    0.7.0.1
 */