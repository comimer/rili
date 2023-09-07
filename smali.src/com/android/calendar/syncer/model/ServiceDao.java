package com.android.calendar.syncer.model;

import java.util.List;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/ServiceDao;", "", "", "accountName", "type", "Lcom/android/calendar/syncer/model/Service;", "getByAccountAndType", "", "getIdByAccountAndType", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;", "id", "get", "", "getByType", "service", "insertOrReplace", "Lkotlin/u;", "deleteAll", "", "accountNames", "deleteExceptAccounts", "([Ljava/lang/String;)V", "oldName", "newName", "renameAccount", "syncer_release"}, k=1, mv={1, 7, 1})
public abstract interface ServiceDao
{
  public abstract void deleteAll();
  
  public abstract void deleteExceptAccounts(String[] paramArrayOfString);
  
  public abstract Service get(long paramLong);
  
  public abstract Service getByAccountAndType(String paramString1, String paramString2);
  
  public abstract List<Service> getByType(String paramString);
  
  public abstract Long getIdByAccountAndType(String paramString1, String paramString2);
  
  public abstract long insertOrReplace(Service paramService);
  
  public abstract void renameAccount(String paramString1, String paramString2);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.ServiceDao
 * JD-Core Version:    0.7.0.1
 */