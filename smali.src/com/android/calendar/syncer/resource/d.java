package com.android.calendar.syncer.resource;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/d;", "", "TData", "", "e", "fileName", "eTag", "scheduleTag", "Lkotlin/u;", "b", "", "flags", "c", "delete", "", "getId", "()Ljava/lang/Long;", "id", "getFileName", "()Ljava/lang/String;", "a", "setETag", "(Ljava/lang/String;)V", "d", "setScheduleTag", "syncer_release"}, k=1, mv={1, 7, 1})
public abstract interface d<TData>
{
  public abstract String a();
  
  public abstract void b(String paramString1, String paramString2, String paramString3);
  
  public abstract void c(int paramInt);
  
  public abstract String d();
  
  public abstract int delete();
  
  public abstract String e();
  
  public abstract String getFileName();
  
  public abstract Long getId();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.resource.d
 * JD-Core Version:    0.7.0.1
 */