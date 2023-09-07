package com.android.calendar.syncer.model;

import java.util.List;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/SyncableDao;", "Lcom/android/calendar/syncer/model/IdEntity;", "T", "", "", "items", "Lkotlin/u;", "insert", "item", "update", "(Lcom/android/calendar/syncer/model/IdEntity;)V", "delete", "syncer_release"}, k=1, mv={1, 7, 1})
public abstract interface SyncableDao<T extends IdEntity>
{
  public abstract void delete(T paramT);
  
  public abstract void insert(List<? extends T> paramList);
  
  public abstract void update(T paramT);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.SyncableDao
 * JD-Core Version:    0.7.0.1
 */