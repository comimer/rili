package com.android.calendar.syncer.model;

import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.collections.t;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import w7.l;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/DaoTools;", "Lcom/android/calendar/syncer/model/IdEntity;", "T", "Lcom/android/calendar/syncer/model/SyncableDao;", "item", "Lkotlin/u;", "delete", "(Lcom/android/calendar/syncer/model/IdEntity;)V", "", "items", "insert", "update", "K", "allOld", "", "allNew", "Lkotlin/Function1;", "selectKey", "Lkotlin/Function2;", "prepareNew", "syncAll", "dao", "<init>", "(Lcom/android/calendar/syncer/model/SyncableDao;)V", "Companion", "syncer_release"}, k=1, mv={1, 7, 1})
public final class DaoTools<T extends IdEntity>
  implements SyncableDao<T>
{
  public static final Companion Companion = new Companion(null);
  private static final String TAG = "CalSync:D:DaoTools";
  
  public DaoTools(SyncableDao<T> paramSyncableDao)
  {
    this.$$delegate_0 = paramSyncableDao;
  }
  
  public void delete(T paramT)
  {
    r.f(paramT, "item");
    this.$$delegate_0.delete(paramT);
  }
  
  public void insert(List<? extends T> paramList)
  {
    r.f(paramList, "items");
    this.$$delegate_0.insert(paramList);
  }
  
  public final <K> void syncAll(List<? extends T> paramList, Map<K, ? extends T> paramMap, l<? super T, ? extends K> paraml, p<? super T, ? super T, u> paramp)
  {
    r.f(paramList, "allOld");
    r.f(paramMap, "allNew");
    r.f(paraml, "selectKey");
    r.f(paramp, "prepareNew");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Syncing tables allOld:");
    ((StringBuilder)localObject).append(paramList);
    ((StringBuilder)localObject).append(" allNew:");
    ((StringBuilder)localObject).append(paramMap);
    Log.d("CalSync:D:DaoTools", ((StringBuilder)localObject).toString());
    paramMap = m0.u(paramMap);
    localObject = paramList.iterator();
    while (((Iterator)localObject).hasNext())
    {
      IdEntity localIdEntity1 = (IdEntity)((Iterator)localObject).next();
      paramList = paraml.invoke(localIdEntity1);
      IdEntity localIdEntity2 = (IdEntity)paramMap.get(paramList);
      if (localIdEntity2 != null)
      {
        localIdEntity2.setId(localIdEntity1.getId());
        paramp.invoke(localIdEntity2, localIdEntity1);
        if (!r.a(localIdEntity2, localIdEntity1)) {
          update(localIdEntity2);
        }
        paramMap.remove(paramList);
      }
      else
      {
        delete(localIdEntity1);
      }
    }
    insert(t.E0(paramMap.values()));
  }
  
  public void update(T paramT)
  {
    r.f(paramT, "item");
    this.$$delegate_0.update(paramT);
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/DaoTools$Companion;", "", "()V", "TAG", "", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.DaoTools
 * JD-Core Version:    0.7.0.1
 */