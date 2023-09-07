package com.android.calendar.syncer.model;

import androidx.lifecycle.LiveData;
import androidx.paging.b.b;
import java.util.List;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/CollectionDao;", "Lcom/android/calendar/syncer/model/SyncableDao;", "Lcom/android/calendar/syncer/model/Collection;", "", "id", "get", "serviceId", "", "getByService", "", "type", "getByServiceAndType", "Landroidx/paging/b$b;", "", "pageByServiceAndType", "getByServiceAndSync", "Landroidx/lifecycle/LiveData;", "", "observeHasSyncByService", "getSyncCalendars", "collection", "Lkotlin/u;", "insertOrReplace", "insert", "syncer_release"}, k=1, mv={1, 7, 1})
public abstract interface CollectionDao
  extends SyncableDao<Collection>
{
  public abstract Collection get(long paramLong);
  
  public abstract List<Collection> getByService(long paramLong);
  
  public abstract List<Collection> getByServiceAndSync(long paramLong);
  
  public abstract List<Collection> getByServiceAndType(long paramLong, String paramString);
  
  public abstract List<Collection> getSyncCalendars(long paramLong);
  
  public abstract void insert(Collection paramCollection);
  
  public abstract void insertOrReplace(Collection paramCollection);
  
  public abstract LiveData<Boolean> observeHasSyncByService(long paramLong);
  
  public abstract b.b<Integer, Collection> pageByServiceAndType(long paramLong, String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.CollectionDao
 * JD-Core Version:    0.7.0.1
 */