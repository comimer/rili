package com.android.calendar.syncer.model;

import at.bitfire.dav4jvm.property.SyncToken;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/SyncState;", "", "type", "Lcom/android/calendar/syncer/model/SyncState$Type;", "value", "", "initialSync", "", "(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)V", "getInitialSync", "()Ljava/lang/Boolean;", "setInitialSync", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getType", "()Lcom/android/calendar/syncer/model/SyncState$Type;", "getValue", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/calendar/syncer/model/SyncState;", "equals", "other", "hashCode", "", "toString", "Companion", "Type", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class SyncState
{
  public static final Companion Companion = new Companion(null);
  private static final String KEY_INITIAL_SYNC = "initialSync";
  private static final String KEY_TYPE = "type";
  private static final String KEY_VALUE = "value";
  private Boolean initialSync;
  private final Type type;
  private final String value;
  
  public SyncState(Type paramType, String paramString, Boolean paramBoolean)
  {
    this.type = paramType;
    this.value = paramString;
    this.initialSync = paramBoolean;
  }
  
  public final Type component1()
  {
    return this.type;
  }
  
  public final String component2()
  {
    return this.value;
  }
  
  public final Boolean component3()
  {
    return this.initialSync;
  }
  
  public final SyncState copy(Type paramType, String paramString, Boolean paramBoolean)
  {
    r.f(paramType, "type");
    r.f(paramString, "value");
    return new SyncState(paramType, paramString, paramBoolean);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof SyncState)) {
      return false;
    }
    paramObject = (SyncState)paramObject;
    if (this.type != paramObject.type) {
      return false;
    }
    if (!r.a(this.value, paramObject.value)) {
      return false;
    }
    return r.a(this.initialSync, paramObject.initialSync);
  }
  
  public final Boolean getInitialSync()
  {
    return this.initialSync;
  }
  
  public final Type getType()
  {
    return this.type;
  }
  
  public final String getValue()
  {
    return this.value;
  }
  
  public int hashCode()
  {
    int i = this.type.hashCode();
    int j = this.value.hashCode();
    Boolean localBoolean = this.initialSync;
    int k;
    if (localBoolean == null) {
      k = 0;
    } else {
      k = localBoolean.hashCode();
    }
    return (i * 31 + j) * 31 + k;
  }
  
  public final void setInitialSync(Boolean paramBoolean)
  {
    this.initialSync = paramBoolean;
  }
  
  public String toString()
  {
    Object localObject = new JSONObject();
    ((JSONObject)localObject).put("type", this.type.name());
    ((JSONObject)localObject).put("value", this.value);
    Boolean localBoolean = this.initialSync;
    if (localBoolean != null) {
      ((JSONObject)localObject).put("initialSync", localBoolean.booleanValue());
    }
    localObject = ((JSONObject)localObject).toString();
    r.e(localObject, "json.toString()");
    return localObject;
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/SyncState$Companion;", "", "()V", "KEY_INITIAL_SYNC", "", "KEY_TYPE", "KEY_VALUE", "fromString", "Lcom/android/calendar/syncer/model/SyncState;", "s", "fromSyncToken", "token", "Lat/bitfire/dav4jvm/property/SyncToken;", "initialSync", "", "(Lat/bitfire/dav4jvm/property/SyncToken;Ljava/lang/Boolean;)Lcom/android/calendar/syncer/model/SyncState;", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion
  {
    public final SyncState fromString(String paramString)
    {
      localObject1 = null;
      if (paramString == null) {
        return null;
      }
      try
      {
        Object localObject2 = new org/json/JSONObject;
        ((JSONObject)localObject2).<init>(paramString);
        paramString = ((JSONObject)localObject2).getString("type");
        r.e(paramString, "json.getString(KEY_TYPE)");
        SyncState.Type localType = SyncState.Type.valueOf(paramString);
        String str = ((JSONObject)localObject2).getString("value");
        r.e(str, "json.getString(KEY_VALUE)");
        try
        {
          paramString = Boolean.valueOf(((JSONObject)localObject2).getBoolean("initialSync"));
        }
        catch (JSONException paramString)
        {
          paramString = null;
        }
        localObject2 = new com/android/calendar/syncer/model/SyncState;
        ((SyncState)localObject2).<init>(localType, str, paramString);
        paramString = (String)localObject2;
      }
      catch (JSONException paramString)
      {
        for (;;)
        {
          paramString = localObject1;
        }
      }
      return paramString;
    }
    
    public final SyncState fromSyncToken(SyncToken paramSyncToken, Boolean paramBoolean)
    {
      r.f(paramSyncToken, "token");
      SyncState.Type localType = SyncState.Type.SYNC_TOKEN;
      paramSyncToken = paramSyncToken.getToken();
      if (paramSyncToken != null) {
        return new SyncState(localType, paramSyncToken, paramBoolean);
      }
      throw new IllegalArgumentException("Required value was null.".toString());
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/SyncState$Type;", "", "(Ljava/lang/String;I)V", "CTAG", "SYNC_TOKEN", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum Type
  {
    private Type() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.SyncState
 * JD-Core Version:    0.7.0.1
 */