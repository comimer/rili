package at.bitfire.ical4android;

import android.accounts.Account;
import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.collections.t;
import kotlin.io.a;
import kotlin.jvm.internal.r;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/AndroidTaskList;", "Lat/bitfire/ical4android/AndroidTask;", "T", "", "Landroid/content/ContentValues;", "values", "Lkotlin/u;", "populate", "info", "", "update", "delete", "touchRelations", "", "_where", "", "_whereArgs", "", "queryTasks", "(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;", "", "id", "findById", "(J)Lat/bitfire/ical4android/AndroidTask;", "Landroid/net/Uri;", "taskListSyncUri", "", "loadProperties", "tasksSyncUri", "tasksPropertiesSyncUri", "Landroid/accounts/Account;", "account", "Landroid/accounts/Account;", "getAccount", "()Landroid/accounts/Account;", "Lat/bitfire/ical4android/TaskProvider;", "provider", "Lat/bitfire/ical4android/TaskProvider;", "getProvider", "()Lat/bitfire/ical4android/TaskProvider;", "Lat/bitfire/ical4android/AndroidTaskFactory;", "taskFactory", "Lat/bitfire/ical4android/AndroidTaskFactory;", "getTaskFactory", "()Lat/bitfire/ical4android/AndroidTaskFactory;", "J", "getId", "()J", "syncId", "Ljava/lang/String;", "getSyncId", "()Ljava/lang/String;", "setSyncId", "(Ljava/lang/String;)V", "name", "getName", "setName", "color", "Ljava/lang/Integer;", "getColor", "()Ljava/lang/Integer;", "setColor", "(Ljava/lang/Integer;)V", "isSynced", "Z", "()Z", "setSynced", "(Z)V", "isVisible", "setVisible", "<init>", "(Landroid/accounts/Account;Lat/bitfire/ical4android/TaskProvider;Lat/bitfire/ical4android/AndroidTaskFactory;J)V", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1})
public abstract class AndroidTaskList<T extends AndroidTask>
{
  public static final Companion Companion = new Companion(null);
  private final Account account;
  private Integer color;
  private final long id;
  private boolean isSynced;
  private boolean isVisible;
  private String name;
  private final TaskProvider provider;
  private String syncId;
  private final AndroidTaskFactory<T> taskFactory;
  
  public AndroidTaskList(Account paramAccount, TaskProvider paramTaskProvider, AndroidTaskFactory<? extends T> paramAndroidTaskFactory, long paramLong)
  {
    this.account = paramAccount;
    this.provider = paramTaskProvider;
    this.taskFactory = paramAndroidTaskFactory;
    this.id = paramLong;
  }
  
  public final int delete()
  {
    return this.provider.getClient().delete(taskListSyncUri(), null, null);
  }
  
  public final T findById(long paramLong)
  {
    AndroidTask localAndroidTask = (AndroidTask)t.a0(queryTasks("_id=?", new String[] { String.valueOf(paramLong) }));
    if (localAndroidTask != null) {
      return localAndroidTask;
    }
    throw new FileNotFoundException();
  }
  
  public final Account getAccount()
  {
    return this.account;
  }
  
  public final Integer getColor()
  {
    return this.color;
  }
  
  public final long getId()
  {
    return this.id;
  }
  
  public final String getName()
  {
    return this.name;
  }
  
  public final TaskProvider getProvider()
  {
    return this.provider;
  }
  
  public final String getSyncId()
  {
    return this.syncId;
  }
  
  public final AndroidTaskFactory<T> getTaskFactory()
  {
    return this.taskFactory;
  }
  
  public final boolean isSynced()
  {
    return this.isSynced;
  }
  
  public final boolean isVisible()
  {
    return this.isVisible;
  }
  
  protected final void populate(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "values");
    this.syncId = paramContentValues.getAsString("_sync_id");
    this.name = paramContentValues.getAsString("list_name");
    this.color = paramContentValues.getAsInteger("list_color");
    Integer localInteger = paramContentValues.getAsInteger("sync_enabled");
    boolean bool1 = true;
    boolean bool2;
    if (localInteger != null)
    {
      if (localInteger.intValue() != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.isSynced = bool2;
    }
    paramContentValues = paramContentValues.getAsInteger("visible");
    if (paramContentValues != null)
    {
      if (paramContentValues.intValue() != 0) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
      this.isVisible = bool2;
    }
  }
  
  public final List<T> queryTasks(String paramString, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('(');
    Object localObject = paramString;
    if (paramString == null) {
      localObject = "1";
    }
    localStringBuilder.append((String)localObject);
    localStringBuilder.append(") AND list_id=?");
    localObject = localStringBuilder.toString();
    paramString = paramArrayOfString;
    if (paramArrayOfString == null) {
      paramString = new String[0];
    }
    paramArrayOfString = (String[])j.o(paramString, String.valueOf(this.id));
    paramString = new LinkedList();
    paramArrayOfString = this.provider.getClient().query(tasksSyncUri$default(this, false, 1, null), null, (String)localObject, paramArrayOfString, null);
    if (paramArrayOfString != null) {
      try
      {
        while (paramArrayOfString.moveToNext()) {
          paramString.add(this.taskFactory.fromProvider(this, MiscUtils.CursorHelper.toValues$default(MiscUtils.CursorHelper.INSTANCE, paramArrayOfString, false, 1, null)));
        }
        localObject = u.a;
        a.a(paramArrayOfString, null);
      }
      finally
      {
        try
        {
          throw localThrowable;
        }
        finally
        {
          a.a(paramArrayOfString, localThrowable);
        }
      }
    }
    return paramString;
  }
  
  public final void setColor(Integer paramInteger)
  {
    this.color = paramInteger;
  }
  
  public final void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public final void setSyncId(String paramString)
  {
    this.syncId = paramString;
  }
  
  public final void setSynced(boolean paramBoolean)
  {
    this.isSynced = paramBoolean;
  }
  
  public final void setVisible(boolean paramBoolean)
  {
    this.isVisible = paramBoolean;
  }
  
  public final Uri taskListSyncUri()
  {
    TaskProvider.Companion localCompanion = TaskProvider.Companion;
    Uri localUri = ContentUris.withAppendedId(this.provider.taskListsUri(), this.id);
    r.e(localUri, "withAppendedId(provider.taskListsUri(), id)");
    return localCompanion.syncAdapterUri(localUri, this.account);
  }
  
  public final Uri tasksPropertiesSyncUri()
  {
    return TaskProvider.Companion.syncAdapterUri(this.provider.propertiesUri(), this.account);
  }
  
  public final Uri tasksSyncUri(boolean paramBoolean)
  {
    Uri localUri1 = TaskProvider.Companion.syncAdapterUri(this.provider.tasksUri(), this.account);
    Uri localUri2 = localUri1;
    if (paramBoolean)
    {
      localUri2 = localUri1.buildUpon().appendQueryParameter("load_properties", "1").build();
      r.e(localUri2, "uri     .buildUpon()\n   …                 .build()");
    }
    return localUri2;
  }
  
  public final int touchRelations()
  {
    Ical4Android.INSTANCE.getLog().fine("Touching relations to set parent_id");
    BatchOperation localBatchOperation = new BatchOperation(this.provider.getClient());
    Cursor localCursor = this.provider.getClient().query(tasksSyncUri(true), null, "list_id=? AND parent_id IS NULL AND mimetype=? AND data1 IS NOT NULL", new String[] { String.valueOf(this.id), "vnd.android.cursor.item/relation" }, null, null);
    if (localCursor != null) {
      try
      {
        while (localCursor.moveToNext())
        {
          localObject1 = MiscUtils.CursorHelper.toValues$default(MiscUtils.CursorHelper.INSTANCE, localCursor, false, 1, null);
          Object localObject3 = ((ContentValues)localObject1).getAsLong("property_id");
          Uri localUri = tasksPropertiesSyncUri();
          r.e(localObject3, "id");
          localUri = ContentUris.withAppendedId(localUri, ((Long)localObject3).longValue());
          r.e(localUri, "withAppendedId(tasksPropertiesSyncUri(), id)");
          localObject3 = new at/bitfire/ical4android/BatchOperation$Operation;
          localObject1 = ContentProviderOperation.newUpdate(localUri).withValue("data1", ((ContentValues)localObject1).getAsLong("data1"));
          r.e(localObject1, "newUpdate(propertyConten…ong(Relation.RELATED_ID))");
          ((BatchOperation.Operation)localObject3).<init>((ContentProviderOperation.Builder)localObject1, null, 0, 6, null);
          localBatchOperation.enqueue((BatchOperation.Operation)localObject3);
        }
        Object localObject1 = u.a;
        a.a(localCursor, null);
      }
      finally
      {
        try
        {
          throw localThrowable;
        }
        finally
        {
          a.a(localCursor, localThrowable);
        }
      }
    }
    return localThrowable.commit();
  }
  
  public final int update(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "info");
    return this.provider.getClient().update(taskListSyncUri(), paramContentValues, null, null);
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/AndroidTaskList$Companion;", "", "()V", "acquireTaskProvider", "Lat/bitfire/ical4android/TaskProvider;", "context", "Landroid/content/Context;", "create", "Landroid/net/Uri;", "account", "Landroid/accounts/Account;", "provider", "info", "Landroid/content/ContentValues;", "find", "", "T", "Lat/bitfire/ical4android/AndroidTaskList;", "Lat/bitfire/ical4android/AndroidTask;", "factory", "Lat/bitfire/ical4android/AndroidTaskListFactory;", "where", "", "whereArgs", "", "(Landroid/accounts/Account;Lat/bitfire/ical4android/TaskProvider;Lat/bitfire/ical4android/AndroidTaskListFactory;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;", "findByID", "id", "", "(Landroid/accounts/Account;Lat/bitfire/ical4android/TaskProvider;Lat/bitfire/ical4android/AndroidTaskListFactory;J)Lat/bitfire/ical4android/AndroidTaskList;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion
  {
    public final TaskProvider acquireTaskProvider(Context paramContext)
    {
      r.f(paramContext, "context");
      TaskProvider.ProviderName localProviderName = TaskProvider.ProviderName.OpenTasks;
      for (int i = 0; i < 1; i++)
      {
        Object localObject = new TaskProvider.ProviderName[] { localProviderName }[i];
        try
        {
          localObject = TaskProvider.Companion.acquire(paramContext, (TaskProvider.ProviderName)localObject);
          if (localObject != null) {
            return localObject;
          }
        }
        catch (Exception localException)
        {
          label48:
          break label48;
        }
      }
      return null;
    }
    
    public final Uri create(Account paramAccount, TaskProvider paramTaskProvider, ContentValues paramContentValues)
    {
      r.f(paramAccount, "account");
      r.f(paramTaskProvider, "provider");
      r.f(paramContentValues, "info");
      paramContentValues.put("account_name", paramAccount.name);
      paramContentValues.put("account_type", paramAccount.type);
      paramContentValues.put("list_access_level", Integer.valueOf(0));
      Logger localLogger = Ical4Android.INSTANCE.getLog();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Creating local task list: ");
      localStringBuilder.append(paramContentValues);
      localLogger.info(localStringBuilder.toString());
      paramAccount = paramTaskProvider.getClient().insert(TaskProvider.Companion.syncAdapterUri(paramTaskProvider.taskListsUri(), paramAccount), paramContentValues);
      if (paramAccount != null) {
        return paramAccount;
      }
      throw new CalendarStorageException("Couldn't create task list (empty result from provider)");
    }
    
    public final <T extends AndroidTaskList<? extends AndroidTask>> List<T> find(Account paramAccount, TaskProvider paramTaskProvider, AndroidTaskListFactory<? extends T> paramAndroidTaskListFactory, String paramString, String[] paramArrayOfString)
    {
      r.f(paramAccount, "account");
      r.f(paramTaskProvider, "provider");
      r.f(paramAndroidTaskListFactory, "factory");
      LinkedList localLinkedList = new LinkedList();
      paramString = paramTaskProvider.getClient().query(TaskProvider.Companion.syncAdapterUri(paramTaskProvider.taskListsUri(), paramAccount), null, paramString, paramArrayOfString, null);
      if (paramString != null) {
        try
        {
          while (paramString.moveToNext())
          {
            paramArrayOfString = MiscUtils.CursorHelper.toValues$default(MiscUtils.CursorHelper.INSTANCE, paramString, false, 1, null);
            Object localObject = paramArrayOfString.getAsLong("_id");
            r.e(localObject, "values.getAsLong(TaskLists._ID)");
            localObject = paramAndroidTaskListFactory.newInstance(paramAccount, paramTaskProvider, ((Number)localObject).longValue());
            ((AndroidTaskList)localObject).populate(paramArrayOfString);
            localLinkedList.add(localObject);
          }
          paramAccount = u.a;
          a.a(paramString, null);
        }
        finally
        {
          try
          {
            throw paramAccount;
          }
          finally
          {
            a.a(paramString, paramAccount);
          }
        }
      }
      return localLinkedList;
    }
    
    public final <T extends AndroidTaskList<? extends AndroidTask>> T findByID(Account paramAccount, TaskProvider paramTaskProvider, AndroidTaskListFactory<? extends T> paramAndroidTaskListFactory, long paramLong)
    {
      r.f(paramAccount, "account");
      r.f(paramTaskProvider, "provider");
      r.f(paramAndroidTaskListFactory, "factory");
      ContentProviderClient localContentProviderClient = paramTaskProvider.getClient();
      Object localObject = TaskProvider.Companion;
      Uri localUri = ContentUris.withAppendedId(paramTaskProvider.taskListsUri(), paramLong);
      r.e(localUri, "withAppendedId(provider.taskListsUri(), id)");
      localObject = localContentProviderClient.query(((TaskProvider.Companion)localObject).syncAdapterUri(localUri, paramAccount), null, null, null, null);
      if (localObject != null) {
        try
        {
          if (((Cursor)localObject).moveToNext())
          {
            paramAccount = paramAndroidTaskListFactory.newInstance(paramAccount, paramTaskProvider, paramLong);
            paramAccount.populate(MiscUtils.CursorHelper.toValues$default(MiscUtils.CursorHelper.INSTANCE, (Cursor)localObject, false, 1, null));
            a.a((Closeable)localObject, null);
            return paramAccount;
          }
          paramAccount = u.a;
          a.a((Closeable)localObject, null);
        }
        finally
        {
          try
          {
            throw paramTaskProvider;
          }
          finally
          {
            a.a((Closeable)localObject, paramTaskProvider);
          }
        }
      }
      throw new FileNotFoundException();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidTaskList
 * JD-Core Version:    0.7.0.1
 */