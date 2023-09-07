package com.android.calendar.syncer.resource;

import com.android.calendar.syncer.model.SyncState;
import java.util.List;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/b;", "Lcom/android/calendar/syncer/resource/d;", "T", "", "", "g", "c", "", "name", "f", "(Ljava/lang/String;)Lcom/android/calendar/syncer/resource/d;", "", "flags", "h", "i", "Lkotlin/u;", "d", "a", "()Ljava/lang/String;", "tag", "Lcom/android/calendar/syncer/model/SyncState;", "b", "()Lcom/android/calendar/syncer/model/SyncState;", "e", "(Lcom/android/calendar/syncer/model/SyncState;)V", "lastSyncState", "syncer_release"}, k=1, mv={1, 7, 1})
public abstract interface b<T extends d<?>>
{
  public abstract String a();
  
  public abstract SyncState b();
  
  public abstract List<T> c();
  
  public abstract void d();
  
  public abstract void e(SyncState paramSyncState);
  
  public abstract T f(String paramString);
  
  public abstract List<T> g();
  
  public abstract int h(int paramInt);
  
  public abstract int i(int paramInt);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.resource.b
 * JD-Core Version:    0.7.0.1
 */