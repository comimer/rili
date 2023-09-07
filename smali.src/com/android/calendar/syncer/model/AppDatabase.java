package com.android.calendar.syncer.model;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabase.JournalMode;
import androidx.room.RoomDatabase.a;
import androidx.room.j;
import com.android.calendar.syncer.a;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/AppDatabase;", "Landroidx/room/RoomDatabase;", "()V", "collectionDao", "Lcom/android/calendar/syncer/model/CollectionDao;", "homeSetDao", "Lcom/android/calendar/syncer/model/HomeSetDao;", "serviceDao", "Lcom/android/calendar/syncer/model/ServiceDao;", "Companion", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
public abstract class AppDatabase
  extends RoomDatabase
{
  public static final Companion Companion = new Companion(null);
  public static final String TAG = "CalSync:D:AppDatabase";
  
  public abstract CollectionDao collectionDao();
  
  public abstract HomeSetDao homeSetDao();
  
  public abstract ServiceDao serviceDao();
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/AppDatabase$Companion;", "Lcom/android/calendar/syncer/a;", "Lcom/android/calendar/syncer/model/AppDatabase;", "Landroid/content/Context;", "context", "createInstance", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class Companion
    extends a<AppDatabase>
  {
    public AppDatabase createInstance(Context paramContext)
    {
      r.f(paramContext, "context");
      paramContext = j.a(paramContext.getApplicationContext(), AppDatabase.class, "calendar_service.db").g(RoomDatabase.JournalMode.TRUNCATE).d();
      r.e(paramContext, "databaseBuilder(context.…                 .build()");
      return (AppDatabase)paramContext;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.AppDatabase
 * JD-Core Version:    0.7.0.1
 */