package at.bitfire.ical4android;

import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.io.a;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import net.fortuna.ical4j.model.Content;
import net.fortuna.ical4j.model.DateTime;
import net.fortuna.ical4j.model.ParameterList;
import net.fortuna.ical4j.model.Property;
import net.fortuna.ical4j.model.PropertyList;
import net.fortuna.ical4j.model.TimeZoneRegistry;
import net.fortuna.ical4j.model.component.VAlarm;
import net.fortuna.ical4j.model.parameter.RelType;
import net.fortuna.ical4j.model.parameter.Related;
import net.fortuna.ical4j.model.property.Action;
import net.fortuna.ical4j.model.property.Clazz;
import net.fortuna.ical4j.model.property.Completed;
import net.fortuna.ical4j.model.property.DateProperty;
import net.fortuna.ical4j.model.property.Description;
import net.fortuna.ical4j.model.property.DtStart;
import net.fortuna.ical4j.model.property.Due;
import net.fortuna.ical4j.model.property.ExDate;
import net.fortuna.ical4j.model.property.Geo;
import net.fortuna.ical4j.model.property.Organizer;
import net.fortuna.ical4j.model.property.RDate;
import net.fortuna.ical4j.model.property.RRule;
import net.fortuna.ical4j.model.property.RelatedTo;
import net.fortuna.ical4j.model.property.Status;
import net.fortuna.ical4j.model.property.Trigger;
import oc.a.e;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/AndroidTask;", "", "Landroid/content/ContentValues;", "values", "Lkotlin/u;", "populateTask", "row", "populateProperty", "populateAlarm", "populateRelatedTo", "Landroid/net/Uri;", "add", "Lat/bitfire/ical4android/Task;", "task", "update", "Lat/bitfire/ical4android/BatchOperation;", "batch", "insertProperties", "insertAlarms", "insertCategories", "insertRelatedTo", "insertUnknownProperties", "", "delete", "Landroid/content/ContentProviderOperation$Builder;", "builder", "", "buildTask", "Ljava/util/TimeZone;", "getTimeZone", "loadProperties", "taskSyncURI", "", "toString", "Lat/bitfire/ical4android/AndroidTaskList;", "taskList", "Lat/bitfire/ical4android/AndroidTaskList;", "getTaskList", "()Lat/bitfire/ical4android/AndroidTaskList;", "", "id", "Ljava/lang/Long;", "getId", "()Ljava/lang/Long;", "setId", "(Ljava/lang/Long;)V", "Lat/bitfire/ical4android/Task;", "getTask", "()Lat/bitfire/ical4android/Task;", "setTask", "(Lat/bitfire/ical4android/Task;)V", "<init>", "(Lat/bitfire/ical4android/AndroidTaskList;)V", "(Lat/bitfire/ical4android/AndroidTaskList;Landroid/content/ContentValues;)V", "(Lat/bitfire/ical4android/AndroidTaskList;Lat/bitfire/ical4android/Task;)V", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1})
public abstract class AndroidTask
{
  public static final Companion Companion = new Companion(null);
  public static final String UNKNOWN_PROPERTY_DATA = "data0";
  private Long id;
  private Task task;
  private final AndroidTaskList<AndroidTask> taskList;
  
  public AndroidTask(AndroidTaskList<? extends AndroidTask> paramAndroidTaskList)
  {
    this.taskList = paramAndroidTaskList;
  }
  
  public AndroidTask(AndroidTaskList<? extends AndroidTask> paramAndroidTaskList, ContentValues paramContentValues)
  {
    this(paramAndroidTaskList);
    this.id = paramContentValues.getAsLong("_id");
  }
  
  public AndroidTask(AndroidTaskList<? extends AndroidTask> paramAndroidTaskList, Task paramTask)
  {
    this(paramAndroidTaskList);
    this.task = paramTask;
  }
  
  public final Uri add()
  {
    Object localObject1 = new BatchOperation(this.taskList.getProvider().getClient());
    Object localObject2 = ContentProviderOperation.newInsert(AndroidTaskList.tasksSyncUri$default(this.taskList, false, 1, null));
    r.e(localObject2, "newInsert(taskList.tasksSyncUri())");
    buildTask((ContentProviderOperation.Builder)localObject2, false);
    ((BatchOperation)localObject1).enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject2, null, 0, 6, null));
    ((BatchOperation)localObject1).commit();
    localObject2 = ((BatchOperation)localObject1).getResult(0);
    if (localObject2 != null)
    {
      Uri localUri = ((ContentProviderResult)localObject2).uri;
      if (localUri != null) {
        this.id = Long.valueOf(ContentUris.parseId(localUri));
      }
      insertProperties((BatchOperation)localObject1);
      ((BatchOperation)localObject1).commit();
      localObject1 = ((ContentProviderResult)localObject2).uri;
      r.c(localObject1);
      return localObject1;
    }
    throw new CalendarStorageException("Empty result from provider when adding a task");
  }
  
  protected void buildTask(ContentProviderOperation.Builder paramBuilder, boolean paramBoolean)
  {
    r.f(paramBuilder, "builder");
    if (!paramBoolean) {
      paramBuilder.withValue("list_id", Long.valueOf(this.taskList.getId()));
    }
    Task localTask = getTask();
    if (localTask != null)
    {
      Object localObject1 = paramBuilder.withValue("_uid", localTask.getUid()).withValue("_dirty", Integer.valueOf(0)).withValue("sync_version", localTask.getSequence()).withValue("title", localTask.getSummary()).withValue("location", localTask.getLocation());
      Object localObject2 = localTask.getGeoPosition();
      Object localObject4 = null;
      if (localObject2 != null) {
        localObject2 = ((Geo)localObject2).getValue();
      } else {
        localObject2 = null;
      }
      ((ContentProviderOperation.Builder)localObject1).withValue("geo", localObject2).withValue("description", localTask.getDescription()).withValue("task_color", localTask.getColor()).withValue("url", localTask.getUrl()).withValue("parent_id", null);
      localObject1 = localTask.getOrganizer();
      if (localObject1 != null) {
        try
        {
          localObject2 = new java/net/URI;
          ((URI)localObject2).<init>(((Organizer)localObject1).getValue());
          if (k.p(((URI)localObject2).getScheme(), "mailto", true))
          {
            localObject2 = ((URI)localObject2).getSchemeSpecificPart();
            break label252;
          }
          Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Found non-mailto ORGANIZER URI, ignoring", localObject2);
        }
        catch (URISyntaxException localURISyntaxException)
        {
          Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Invalid ORGANIZER URI, ignoring", localURISyntaxException);
        }
      } else {
        localObject3 = null;
      }
      label252:
      paramBuilder.withValue("organizer", localObject3);
      localObject1 = paramBuilder.withValue("priority", Integer.valueOf(localTask.getPriority()));
      Object localObject3 = localTask.getClassification();
      paramBoolean = r.a(localObject3, Clazz.PUBLIC);
      int i = 2;
      if (paramBoolean) {
        localObject3 = Integer.valueOf(0);
      } else if (r.a(localObject3, Clazz.CONFIDENTIAL)) {
        localObject3 = Integer.valueOf(2);
      } else if (localObject3 == null) {
        localObject3 = a.e.a;
      } else {
        localObject3 = Integer.valueOf(1);
      }
      ((ContentProviderOperation.Builder)localObject1).withValue("class", localObject3);
      localObject3 = localTask.getCompletedAt();
      if (localObject3 != null)
      {
        localObject3 = ((DateProperty)localObject3).getDate();
        if (localObject3 != null)
        {
          localObject3 = Long.valueOf(((java.util.Date)localObject3).getTime());
          break label398;
        }
      }
      localObject3 = null;
      label398:
      paramBuilder.withValue("completed", localObject3).withValue("completed_is_allday", Integer.valueOf(0)).withValue("percent_complete", localTask.getPercentComplete());
      localObject3 = localTask.getStatus();
      if (r.a(localObject3, Status.VTODO_IN_PROCESS)) {
        i = 1;
      } else if (!r.a(localObject3, Status.VTODO_COMPLETED)) {
        if (r.a(localObject3, Status.VTODO_CANCELLED)) {
          i = 3;
        } else {
          i = 0;
        }
      }
      paramBuilder.withValue("status", Integer.valueOf(i));
      paramBoolean = localTask.isAllDay();
      if (paramBoolean)
      {
        paramBuilder.withValue("is_allday", Integer.valueOf(1)).withValue("tz", null);
      }
      else
      {
        localObject3 = MiscUtils.INSTANCE;
        ((MiscUtils)localObject3).androidifyTimeZone(localTask.getDtStart());
        ((MiscUtils)localObject3).androidifyTimeZone(localTask.getDue());
        paramBuilder.withValue("is_allday", Integer.valueOf(0)).withValue("tz", getTimeZone().getID());
      }
      localObject1 = paramBuilder.withValue("created", localTask.getCreatedAt()).withValue("last_modified", localTask.getLastModified());
      localObject3 = localTask.getDtStart();
      if (localObject3 != null)
      {
        localObject3 = ((DateProperty)localObject3).getDate();
        if (localObject3 != null)
        {
          localObject3 = Long.valueOf(((java.util.Date)localObject3).getTime());
          break label639;
        }
      }
      localObject3 = null;
      label639:
      localObject1 = ((ContentProviderOperation.Builder)localObject1).withValue("dtstart", localObject3);
      localObject3 = localTask.getDue();
      if (localObject3 != null)
      {
        localObject3 = ((DateProperty)localObject3).getDate();
        if (localObject3 != null)
        {
          localObject3 = Long.valueOf(((java.util.Date)localObject3).getTime());
          break label690;
        }
      }
      localObject3 = null;
      label690:
      localObject1 = ((ContentProviderOperation.Builder)localObject1).withValue("due", localObject3);
      localObject3 = localTask.getDuration();
      if (localObject3 != null) {
        localObject3 = ((net.fortuna.ical4j.model.property.Duration)localObject3).getValue();
      } else {
        localObject3 = null;
      }
      localObject1 = ((ContentProviderOperation.Builder)localObject1).withValue("duration", localObject3);
      if (localTask.getRDates().isEmpty()) {
        localObject3 = null;
      } else {
        localObject3 = DateUtils.INSTANCE.recurrenceSetsToAndroidString(localTask.getRDates(), paramBoolean);
      }
      localObject1 = ((ContentProviderOperation.Builder)localObject1).withValue("rdate", localObject3);
      localObject3 = localTask.getRRule();
      if (localObject3 != null) {
        localObject3 = ((RRule)localObject3).getValue();
      } else {
        localObject3 = null;
      }
      localObject1 = ((ContentProviderOperation.Builder)localObject1).withValue("rrule", localObject3);
      if (localTask.getExDates().isEmpty()) {
        localObject3 = localObject4;
      } else {
        localObject3 = DateUtils.INSTANCE.recurrenceSetsToAndroidString(localTask.getExDates(), paramBoolean);
      }
      ((ContentProviderOperation.Builder)localObject1).withValue("exdate", localObject3);
      Ical4Android.INSTANCE.getLog().log(Level.FINE, "Built task object", paramBuilder.build());
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public final int delete()
  {
    try
    {
      int i = this.taskList.getProvider().getClient().delete(taskSyncURI$default(this, false, 1, null), null, null);
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new CalendarStorageException("Couldn't delete event", localRemoteException);
    }
  }
  
  public final Long getId()
  {
    return this.id;
  }
  
  public final Task getTask()
  {
    Object localObject1 = this.task;
    if (localObject1 != null) {
      return localObject1;
    }
    localObject1 = this.id;
    if (localObject1 != null)
    {
      long l = ((Number)localObject1).longValue();
      try
      {
        Object localObject2 = this.taskList.getProvider().getClient();
        localObject1 = ((ContentProviderClient)localObject2).query(taskSyncURI(true), null, null, null, null);
        if (localObject1 != null) {
          try
          {
            if (((Cursor)localObject1).moveToFirst())
            {
              Task localTask1 = new at/bitfire/ical4android/Task;
              localTask1.<init>();
              this.task = localTask1;
              Object localObject3 = MiscUtils.CursorHelper.INSTANCE.toValues((Cursor)localObject1, true);
              Ical4Android.INSTANCE.getLog().log(Level.FINER, "Found task", localObject3);
              populateTask((ContentValues)localObject3);
              if (((ContentValues)localObject3).containsKey("property_id"))
              {
                populateProperty((ContentValues)localObject3);
                while (((Cursor)localObject1).moveToNext()) {
                  populateProperty(MiscUtils.CursorHelper.INSTANCE.toValues((Cursor)localObject1, true));
                }
              }
              Object localObject4 = localTask1.getRelatedTo();
              localObject3 = ((ContentValues)localObject3).getAsLong("parent_id");
              if (localObject3 != null)
              {
                r.e(localObject3, "getAsLong(Tasks.PARENT_ID)");
                l = ((Number)localObject3).longValue();
                if (((localObject4 instanceof Collection)) && (((Collection)localObject4).isEmpty())) {}
                do
                {
                  Iterator localIterator;
                  while (!localIterator.hasNext())
                  {
                    i = 0;
                    break;
                    localIterator = ((Iterable)localObject4).iterator();
                  }
                  localObject3 = (RelType)((RelatedTo)localIterator.next()).getParameter("RELTYPE");
                  if ((!r.a(localObject3, RelType.PARENT)) && (localObject3 != null)) {
                    i = 0;
                  } else {
                    i = 1;
                  }
                } while (i == 0);
                int i = 1;
                if (i == 0)
                {
                  localObject3 = ContentUris.withAppendedId(AndroidTaskList.tasksSyncUri$default(this.taskList, false, 1, null), l);
                  r.e(localObject3, "withAppendedId(taskList.tasksSyncUri(), parentId)");
                  localObject2 = ((ContentProviderClient)localObject2).query((Uri)localObject3, new String[] { "_uid" }, null, null, null);
                  if (localObject2 != null) {
                    try
                    {
                      if (((Cursor)localObject2).moveToNext())
                      {
                        localObject3 = new net/fortuna/ical4j/model/property/RelatedTo;
                        ((RelatedTo)localObject3).<init>(((Cursor)localObject2).getString(0));
                        ((Collection)localObject4).add(localObject3);
                      }
                      localObject4 = u.a;
                      a.a((Closeable)localObject2, null);
                    }
                    finally {}
                  }
                }
              }
              this.task = localTask2;
              a.a((Closeable)localObject1, null);
              return localTask2;
            }
            u localu = u.a;
            a.a((Closeable)localObject1, null);
          }
          finally
          {
            try
            {
              throw localThrowable1;
            }
            finally
            {
              a.a((Closeable)localObject1, localThrowable1);
            }
          }
        }
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("Couldn't find task #");
        ((StringBuilder)localObject1).append(l);
        throw new FileNotFoundException(((StringBuilder)localObject1).toString());
      }
      catch (Exception localException)
      {
        this.task = null;
        throw localException;
      }
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public final AndroidTaskList<AndroidTask> getTaskList()
  {
    return this.taskList;
  }
  
  public final java.util.TimeZone getTimeZone()
  {
    Task localTask = getTask();
    if (localTask != null)
    {
      Object localObject1 = localTask.getDtStart();
      Object localObject2 = null;
      if (localObject1 != null)
      {
        localObject3 = ((DateProperty)localObject1).getTimeZone();
        if (localObject3 != null) {}
      }
      else
      {
        localObject3 = null;
      }
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        localObject3 = localTask.getDue();
        localObject1 = localObject2;
        if (localObject3 != null) {
          localObject1 = ((DateProperty)localObject3).getTimeZone();
        }
      }
      Object localObject3 = localObject1;
      if (localObject1 == null)
      {
        localObject3 = java.util.TimeZone.getDefault();
        r.e(localObject3, "getDefault()");
      }
      return localObject3;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void insertAlarms(BatchOperation paramBatchOperation)
  {
    r.f(paramBatchOperation, "batch");
    Task localTask = getTask();
    if (localTask != null)
    {
      Iterator localIterator = localTask.getAlarms().iterator();
      while (localIterator.hasNext())
      {
        VAlarm localVAlarm = (VAlarm)localIterator.next();
        Object localObject1 = ICalendar.Companion;
        r.e(localVAlarm, "alarm");
        int i = 1;
        localObject1 = ((ICalendar.Companion)localObject1).vAlarmToMin(localVAlarm, localTask, true);
        if (localObject1 != null)
        {
          Object localObject2 = (Related)((Pair)localObject1).component1();
          int j = ((Number)((Pair)localObject1).component2()).intValue();
          int k;
          if (r.a(localObject2, Related.END)) {
            k = 1;
          } else {
            k = 2;
          }
          localObject1 = localVAlarm.getAction();
          if (localObject1 != null)
          {
            localObject2 = ((Action)localObject1).getValue();
            if (localObject2 != null)
            {
              localObject1 = Locale.US;
              r.e(localObject1, "US");
              localObject1 = ((String)localObject2).toUpperCase((Locale)localObject1);
              r.e(localObject1, "this as java.lang.String).toUpperCase(locale)");
              break label182;
            }
          }
          localObject1 = null;
          label182:
          if (r.a(localObject1, Action.AUDIO.getValue())) {
            i = 4;
          } else if (!r.a(localObject1, Action.DISPLAY.getValue())) {
            if (r.a(localObject1, Action.EMAIL.getValue())) {
              i = 2;
            } else {
              i = 0;
            }
          }
          localObject2 = ContentProviderOperation.newInsert(this.taskList.tasksPropertiesSyncUri()).withValue("task_id", this.id).withValue("mimetype", "vnd.android.cursor.item/alarm").withValue("data0", Integer.valueOf(j)).withValue("data1", Integer.valueOf(k));
          localObject1 = localVAlarm.getDescription();
          if (localObject1 != null)
          {
            localObject1 = ((Description)localObject1).getValue();
            if (localObject1 != null) {}
          }
          else
          {
            localObject1 = localVAlarm.getSummary();
          }
          localObject1 = ((ContentProviderOperation.Builder)localObject2).withValue("data2", localObject1).withValue("data3", Integer.valueOf(i));
          r.e(localObject1, "newInsert(taskList.tasks…rm.ALARM_TYPE, alarmType)");
          Ical4Android.INSTANCE.getLog().log(Level.FINE, "Inserting alarm", ((ContentProviderOperation.Builder)localObject1).build());
          paramBatchOperation.enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject1, null, 0, 6, null));
        }
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void insertCategories(BatchOperation paramBatchOperation)
  {
    r.f(paramBatchOperation, "batch");
    Object localObject1 = getTask();
    if (localObject1 != null)
    {
      localObject1 = ((Task)localObject1).getCategories().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (String)((Iterator)localObject1).next();
        localObject2 = ContentProviderOperation.newInsert(this.taskList.tasksPropertiesSyncUri()).withValue("task_id", this.id).withValue("mimetype", "vnd.android.cursor.item/category").withValue("data1", localObject2);
        r.e(localObject2, "newInsert(taskList.tasks….CATEGORY_NAME, category)");
        Ical4Android.INSTANCE.getLog().log(Level.FINE, "Inserting category", ((ContentProviderOperation.Builder)localObject2).build());
        paramBatchOperation.enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject2, null, 0, 6, null));
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void insertProperties(BatchOperation paramBatchOperation)
  {
    r.f(paramBatchOperation, "batch");
    insertAlarms(paramBatchOperation);
    insertCategories(paramBatchOperation);
    insertRelatedTo(paramBatchOperation);
    insertUnknownProperties(paramBatchOperation);
  }
  
  protected void insertRelatedTo(BatchOperation paramBatchOperation)
  {
    r.f(paramBatchOperation, "batch");
    Object localObject1 = getTask();
    if (localObject1 != null)
    {
      localObject1 = ((Task)localObject1).getRelatedTo().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        RelatedTo localRelatedTo = (RelatedTo)((Iterator)localObject1).next();
        Object localObject2 = (RelType)localRelatedTo.getParameter("RELTYPE");
        int i;
        if (r.a(localObject2, RelType.CHILD)) {
          i = 1;
        } else if (r.a(localObject2, RelType.SIBLING)) {
          i = 2;
        } else {
          i = 0;
        }
        localObject2 = ContentProviderOperation.newInsert(this.taskList.tasksPropertiesSyncUri()).withValue("task_id", this.id).withValue("mimetype", "vnd.android.cursor.item/relation").withValue("data3", localRelatedTo.getValue()).withValue("data2", Integer.valueOf(i));
        r.e(localObject2, "newInsert(taskList.tasks…on.RELATED_TYPE, relType)");
        Ical4Android.INSTANCE.getLog().log(Level.FINE, "Inserting relation", ((ContentProviderOperation.Builder)localObject2).build());
        paramBatchOperation.enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject2, null, 0, 6, null));
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void insertUnknownProperties(BatchOperation paramBatchOperation)
  {
    r.f(paramBatchOperation, "batch");
    Object localObject1 = getTask();
    if (localObject1 != null)
    {
      Object localObject2 = ((Task)localObject1).getUnknownProperties().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (Property)((Iterator)localObject2).next();
        if (((Content)localObject1).getValue().length() > 25000)
        {
          localObject2 = Ical4Android.INSTANCE.getLog();
          paramBatchOperation = new StringBuilder();
          paramBatchOperation.append("Ignoring unknown property with ");
          paramBatchOperation.append(((Content)localObject1).getValue().length());
          paramBatchOperation.append(" octets (too long)");
          ((Logger)localObject2).warning(paramBatchOperation.toString());
          return;
        }
        ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newInsert(this.taskList.tasksPropertiesSyncUri()).withValue("task_id", this.id).withValue("mimetype", "vnd.android.cursor.item/vnd.ical4android.unknown-property");
        UnknownProperty localUnknownProperty = UnknownProperty.INSTANCE;
        r.e(localObject1, "property");
        localObject1 = localBuilder.withValue("data0", localUnknownProperty.toJsonString((Property)localObject1));
        r.e(localObject1, "newInsert(taskList.tasks…y.toJsonString(property))");
        Ical4Android.INSTANCE.getLog().log(Level.FINE, "Inserting unknown property", ((ContentProviderOperation.Builder)localObject1).build());
        paramBatchOperation.enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject1, null, 0, 6, null));
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void populateAlarm(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    Task localTask = getTask();
    if (localTask != null)
    {
      PropertyList localPropertyList = new PropertyList();
      Trigger localTrigger = new Trigger(java.time.Duration.ofMinutes(-paramContentValues.getAsLong("data0").longValue()));
      Object localObject = paramContentValues.getAsInteger("data1");
      if ((localObject != null) && (((Integer)localObject).intValue() == 2)) {
        localTrigger.getParameters().add(Related.START);
      } else if ((localObject != null) && (((Integer)localObject).intValue() == 1)) {
        localTrigger.getParameters().add(Related.END);
      }
      localPropertyList.add(localTrigger);
      localObject = paramContentValues.getAsInteger("data3");
      if ((localObject != null) && (((Integer)localObject).intValue() == 2)) {
        localObject = Action.EMAIL;
      } else if ((localObject != null) && (((Integer)localObject).intValue() == 4)) {
        localObject = Action.AUDIO;
      } else {
        localObject = Action.DISPLAY;
      }
      localPropertyList.add(localObject);
      localObject = paramContentValues.getAsString("data2");
      paramContentValues = (ContentValues)localObject;
      if (localObject == null) {
        paramContentValues = localTask.getSummary();
      }
      localPropertyList.add(new Description(paramContentValues));
      localTask.getAlarms().add(new VAlarm(localPropertyList));
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void populateProperty(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    Ical4Android localIcal4Android = Ical4Android.INSTANCE;
    localIcal4Android.getLog().log(Level.FINER, "Found property", paramContentValues);
    Object localObject1 = getTask();
    if (localObject1 != null)
    {
      Object localObject2 = paramContentValues.getAsString("mimetype");
      if (localObject2 != null) {
        switch (((String)localObject2).hashCode())
        {
        default: 
          break;
        case 2014793731: 
          if (((String)localObject2).equals("vnd.android.cursor.item/category")) {
            ((Task)localObject1).getCategories().add(paramContentValues.getAsString("data1"));
          }
          break;
        case 1409846529: 
          if (((String)localObject2).equals("vnd.android.cursor.item/relation")) {
            populateRelatedTo(paramContentValues);
          }
          break;
        case 1104451967: 
          if (((String)localObject2).equals("vnd.android.cursor.item/vnd.ical4android.unknown-property"))
          {
            localObject1 = ((Task)localObject1).getUnknownProperties();
            localObject2 = UnknownProperty.INSTANCE;
            paramContentValues = paramContentValues.getAsString("data0");
            r.e(paramContentValues, "row.getAsString(UNKNOWN_PROPERTY_DATA)");
            ((Collection)localObject1).add(((UnknownProperty)localObject2).fromJsonString(paramContentValues));
          }
          break;
        case 892095852: 
          if (((String)localObject2).equals("vnd.android.cursor.item/alarm")) {
            populateAlarm(paramContentValues);
          }
          break;
        }
      }
      localObject1 = localIcal4Android.getLog();
      paramContentValues = new StringBuilder();
      paramContentValues.append("Found unknown property of type ");
      paramContentValues.append((String)localObject2);
      ((Logger)localObject1).warning(paramContentValues.toString());
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void populateRelatedTo(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    Object localObject = paramContentValues.getAsString("data3");
    if (localObject == null)
    {
      Ical4Android.INSTANCE.getLog().warning("Task relation doesn't refer to same task list; can't be synchronized");
      return;
    }
    localObject = new RelatedTo((String)localObject);
    ParameterList localParameterList = ((Property)localObject).getParameters();
    paramContentValues = paramContentValues.getAsInteger("data2");
    if ((paramContentValues != null) && (paramContentValues.intValue() == 1)) {
      paramContentValues = RelType.CHILD;
    } else if ((paramContentValues != null) && (paramContentValues.intValue() == 2)) {
      paramContentValues = RelType.SIBLING;
    } else {
      paramContentValues = RelType.PARENT;
    }
    localParameterList.add(paramContentValues);
    paramContentValues = getTask();
    if (paramContentValues != null)
    {
      paramContentValues.getRelatedTo().add(localObject);
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void populateTask(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "values");
    Task localTask = getTask();
    if (localTask != null)
    {
      localTask.setUid(paramContentValues.getAsString("_uid"));
      localTask.setSequence(paramContentValues.getAsInteger("sync_version"));
      localTask.setSummary(paramContentValues.getAsString("title"));
      localTask.setLocation(paramContentValues.getAsString("location"));
      String str = paramContentValues.getAsString("geo");
      if (str != null) {
        localTask.setGeoPosition(new Geo(str));
      }
      localTask.setDescription(paramContentValues.getAsString("description"));
      localTask.setColor(paramContentValues.getAsInteger("task_color"));
      localTask.setUrl(paramContentValues.getAsString("url"));
      str = paramContentValues.getAsString("organizer");
      Object localObject2;
      if (str != null) {
        try
        {
          localObject2 = new net/fortuna/ical4j/model/property/Organizer;
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          ((StringBuilder)localObject3).append("mailto:");
          ((StringBuilder)localObject3).append(str);
          ((Organizer)localObject2).<init>(((StringBuilder)localObject3).toString());
          localTask.setOrganizer((Organizer)localObject2);
        }
        catch (URISyntaxException localURISyntaxException)
        {
          Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Invalid ORGANIZER email", localURISyntaxException);
        }
      }
      Object localObject1 = paramContentValues.getAsInteger("priority");
      if (localObject1 != null) {
        localTask.setPriority(((Number)localObject1).intValue());
      }
      localObject1 = paramContentValues.getAsInteger("class");
      boolean bool1 = true;
      if ((localObject1 != null) && (((Integer)localObject1).intValue() == 0)) {
        localObject1 = Clazz.PUBLIC;
      } else if ((localObject1 != null) && (((Integer)localObject1).intValue() == 1)) {
        localObject1 = Clazz.PRIVATE;
      } else if ((localObject1 != null) && (((Integer)localObject1).intValue() == 2)) {
        localObject1 = Clazz.CONFIDENTIAL;
      } else {
        localObject1 = null;
      }
      localTask.setClassification((Clazz)localObject1);
      localObject1 = paramContentValues.getAsLong("completed");
      if (localObject1 != null) {
        localTask.setCompletedAt(new Completed(new DateTime(((Number)localObject1).longValue())));
      }
      localObject1 = paramContentValues.getAsInteger("percent_complete");
      if (localObject1 != null) {
        localTask.setPercentComplete(Integer.valueOf(((Number)localObject1).intValue()));
      }
      localObject1 = paramContentValues.getAsInteger("status");
      if ((localObject1 != null) && (((Integer)localObject1).intValue() == 1)) {
        localObject1 = Status.VTODO_IN_PROCESS;
      } else if ((localObject1 != null) && (((Integer)localObject1).intValue() == 2)) {
        localObject1 = Status.VTODO_COMPLETED;
      } else if ((localObject1 != null) && (((Integer)localObject1).intValue() == 3)) {
        localObject1 = Status.VTODO_CANCELLED;
      } else {
        localObject1 = Status.VTODO_NEEDS_ACTION;
      }
      localTask.setStatus((Status)localObject1);
      localObject1 = paramContentValues.getAsInteger("is_allday");
      boolean bool2 = false;
      if (localObject1 != null) {
        if (((Number)localObject1).intValue() != 0) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
      }
      localObject1 = paramContentValues.getAsString("tz");
      if (localObject1 != null) {
        localObject1 = DateUtils.INSTANCE.getTzRegistry().getTimeZone((String)localObject1);
      } else {
        localObject1 = null;
      }
      Object localObject3 = paramContentValues.getAsLong("created");
      if (localObject3 != null) {
        localTask.setCreatedAt(Long.valueOf(((Number)localObject3).longValue()));
      }
      localObject3 = paramContentValues.getAsLong("last_modified");
      if (localObject3 != null) {
        localTask.setLastModified(Long.valueOf(((Number)localObject3).longValue()));
      }
      localObject3 = paramContentValues.getAsLong("dtstart");
      long l;
      if (localObject3 != null)
      {
        l = ((Number)localObject3).longValue();
        if (bool2)
        {
          localObject3 = new net.fortuna.ical4j.model.Date(l);
        }
        else
        {
          localObject2 = new DateTime(l);
          localObject3 = localObject2;
          if (localObject1 != null)
          {
            ((DateTime)localObject2).setTimeZone((net.fortuna.ical4j.model.TimeZone)localObject1);
            localObject3 = localObject2;
          }
        }
        localTask.setDtStart(new DtStart((net.fortuna.ical4j.model.Date)localObject3));
      }
      localObject3 = paramContentValues.getAsLong("due");
      if (localObject3 != null)
      {
        l = ((Number)localObject3).longValue();
        if (bool2)
        {
          localObject1 = new net.fortuna.ical4j.model.Date(l);
        }
        else
        {
          localObject3 = new DateTime(l);
          if (localObject1 != null) {
            ((DateTime)localObject3).setTimeZone((net.fortuna.ical4j.model.TimeZone)localObject1);
          }
          localObject1 = localObject3;
        }
        localTask.setDue(new Due((net.fortuna.ical4j.model.Date)localObject1));
      }
      localObject1 = paramContentValues.getAsString("duration");
      if (localObject1 != null) {
        localTask.setDuration(new net.fortuna.ical4j.model.property.Duration(null, DateUtils.INSTANCE.fixDuration((String)localObject1)));
      }
      localObject1 = paramContentValues.getAsString("rdate");
      if (localObject1 != null) {
        localTask.getRDates().add(DateUtils.INSTANCE.androidStringToRecurrenceSet((String)localObject1, RDate.class, bool2));
      }
      localObject1 = paramContentValues.getAsString("exdate");
      if (localObject1 != null) {
        localTask.getExDates().add(DateUtils.INSTANCE.androidStringToRecurrenceSet((String)localObject1, ExDate.class, bool2));
      }
      paramContentValues = paramContentValues.getAsString("rrule");
      if (paramContentValues != null) {
        localTask.setRRule(new RRule(paramContentValues));
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public final void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public final void setTask(Task paramTask)
  {
    this.task = paramTask;
  }
  
  protected final Uri taskSyncURI(boolean paramBoolean)
  {
    Object localObject = this.id;
    if (localObject != null)
    {
      long l = ((Number)localObject).longValue();
      localObject = ContentUris.withAppendedId(this.taskList.tasksSyncUri(paramBoolean), l);
      r.e(localObject, "withAppendedId(taskList.…cUri(loadProperties), id)");
      return localObject;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public String toString()
  {
    return MiscUtils.INSTANCE.reflectionToString(this);
  }
  
  public final Uri update(Task paramTask)
  {
    r.f(paramTask, "task");
    this.task = paramTask;
    paramTask = new BatchOperation(this.taskList.getProvider().getClient());
    Uri localUri = taskSyncURI$default(this, false, 1, null);
    ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newUpdate(localUri);
    r.e(localBuilder, "newUpdate(uri)");
    buildTask(localBuilder, true);
    paramTask.enqueue(new BatchOperation.Operation(localBuilder, null, 0, 6, null));
    localBuilder = ContentProviderOperation.newDelete(this.taskList.tasksPropertiesSyncUri()).withSelection("task_id=?", new String[] { String.valueOf(this.id) });
    r.e(localBuilder, "newDelete(taskList.tasks…, arrayOf(id.toString()))");
    paramTask.enqueue(new BatchOperation.Operation(localBuilder, null, 0, 6, null));
    insertProperties(paramTask);
    paramTask.commit();
    return localUri;
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/AndroidTask$Companion;", "", "()V", "UNKNOWN_PROPERTY_DATA", "", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidTask
 * JD-Core Version:    0.7.0.1
 */