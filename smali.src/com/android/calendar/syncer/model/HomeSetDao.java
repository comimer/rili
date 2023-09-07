package com.android.calendar.syncer.model;

import java.util.List;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/HomeSetDao;", "Lcom/android/calendar/syncer/model/SyncableDao;", "Lcom/android/calendar/syncer/model/HomeSet;", "getBindableByService", "", "serviceId", "", "getByService", "insertOrReplace", "homeSet", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
public abstract interface HomeSetDao
  extends SyncableDao<HomeSet>
{
  public abstract List<HomeSet> getBindableByService(long paramLong);
  
  public abstract List<HomeSet> getByService(long paramLong);
  
  public abstract long insertOrReplace(HomeSet paramHomeSet);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.HomeSetDao
 * JD-Core Version:    0.7.0.1
 */