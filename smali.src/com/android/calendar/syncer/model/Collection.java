package com.android.calendar.syncer.model;

import at.bitfire.dav4jvm.Response;
import at.bitfire.dav4jvm.UrlUtils;
import at.bitfire.dav4jvm.property.CalendarColor;
import at.bitfire.dav4jvm.property.CalendarDescription;
import at.bitfire.dav4jvm.property.CalendarTimezone;
import at.bitfire.dav4jvm.property.CurrentUserPrivilegeSet;
import at.bitfire.dav4jvm.property.DisplayName;
import at.bitfire.dav4jvm.property.HrefListProperty;
import at.bitfire.dav4jvm.property.ResourceType;
import at.bitfire.dav4jvm.property.ResourceType.Companion;
import at.bitfire.dav4jvm.property.Source;
import at.bitfire.dav4jvm.property.SupportedCalendarComponentSet;
import com.android.calendar.syncer.g;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.text.Regex;
import okhttp3.t.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/Collection;", "Lcom/android/calendar/syncer/model/IdEntity;", "", "title", "", "readOnly", "", "component1", "component2", "component3", "Lokhttp3/t;", "component4", "component5", "component6", "component7", "component8", "component9", "", "component10", "()Ljava/lang/Integer;", "component11", "component12", "()Ljava/lang/Boolean;", "component13", "component14", "id", "serviceId", "type", "url", "privWriteContent", "privUnbind", "forceReadOnly", "displayName", "description", "color", "timezone", "supportsVEVENT", "source", "sync", "copy", "(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)Lcom/android/calendar/syncer/model/Collection;", "toString", "hashCode", "", "other", "equals", "J", "getId", "()J", "setId", "(J)V", "getServiceId", "setServiceId", "Ljava/lang/String;", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "Lokhttp3/t;", "getUrl", "()Lokhttp3/t;", "setUrl", "(Lokhttp3/t;)V", "Z", "getPrivWriteContent", "()Z", "setPrivWriteContent", "(Z)V", "getPrivUnbind", "setPrivUnbind", "getForceReadOnly", "setForceReadOnly", "getDisplayName", "setDisplayName", "getDescription", "setDescription", "Ljava/lang/Integer;", "getColor", "setColor", "(Ljava/lang/Integer;)V", "getTimezone", "setTimezone", "Ljava/lang/Boolean;", "getSupportsVEVENT", "setSupportsVEVENT", "(Ljava/lang/Boolean;)V", "getSource", "setSource", "getSync", "setSync", "confirmed", "getConfirmed", "setConfirmed", "<init>", "(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V", "Companion", "syncer_release"}, k=1, mv={1, 7, 1})
public final class Collection
  extends IdEntity
{
  public static final Companion Companion = new Companion(null);
  public static final String TYPE_ADDRESSBOOK = "ADDRESS_BOOK";
  public static final String TYPE_CALENDAR = "CALENDAR";
  public static final String TYPE_WEBCAL = "WEBCAL";
  private Integer color;
  private boolean confirmed;
  private String description;
  private String displayName;
  private boolean forceReadOnly;
  private long id;
  private boolean privUnbind;
  private boolean privWriteContent;
  private long serviceId;
  private okhttp3.t source;
  private Boolean supportsVEVENT;
  private boolean sync;
  private String timezone;
  private String type;
  private okhttp3.t url;
  
  public Collection(long paramLong1, long paramLong2, String paramString1, okhttp3.t paramt1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, String paramString3, Integer paramInteger, String paramString4, Boolean paramBoolean, okhttp3.t paramt2, boolean paramBoolean4)
  {
    this.id = paramLong1;
    this.serviceId = paramLong2;
    this.type = paramString1;
    this.url = paramt1;
    this.privWriteContent = paramBoolean1;
    this.privUnbind = paramBoolean2;
    this.forceReadOnly = paramBoolean3;
    this.displayName = paramString2;
    this.description = paramString3;
    this.color = paramInteger;
    this.timezone = paramString4;
    this.supportsVEVENT = paramBoolean;
    this.source = paramt2;
    this.sync = paramBoolean4;
  }
  
  public final long component1()
  {
    return getId();
  }
  
  public final Integer component10()
  {
    return this.color;
  }
  
  public final String component11()
  {
    return this.timezone;
  }
  
  public final Boolean component12()
  {
    return this.supportsVEVENT;
  }
  
  public final okhttp3.t component13()
  {
    return this.source;
  }
  
  public final boolean component14()
  {
    return this.sync;
  }
  
  public final long component2()
  {
    return this.serviceId;
  }
  
  public final String component3()
  {
    return this.type;
  }
  
  public final okhttp3.t component4()
  {
    return this.url;
  }
  
  public final boolean component5()
  {
    return this.privWriteContent;
  }
  
  public final boolean component6()
  {
    return this.privUnbind;
  }
  
  public final boolean component7()
  {
    return this.forceReadOnly;
  }
  
  public final String component8()
  {
    return this.displayName;
  }
  
  public final String component9()
  {
    return this.description;
  }
  
  public final Collection copy(long paramLong1, long paramLong2, String paramString1, okhttp3.t paramt1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, String paramString3, Integer paramInteger, String paramString4, Boolean paramBoolean, okhttp3.t paramt2, boolean paramBoolean4)
  {
    r.f(paramString1, "type");
    r.f(paramt1, "url");
    return new Collection(paramLong1, paramLong2, paramString1, paramt1, paramBoolean1, paramBoolean2, paramBoolean3, paramString2, paramString3, paramInteger, paramString4, paramBoolean, paramt2, paramBoolean4);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Collection)) {
      return false;
    }
    paramObject = (Collection)paramObject;
    if (getId() != paramObject.getId()) {
      return false;
    }
    if (this.serviceId != paramObject.serviceId) {
      return false;
    }
    if (!r.a(this.type, paramObject.type)) {
      return false;
    }
    if (!r.a(this.url, paramObject.url)) {
      return false;
    }
    if (this.privWriteContent != paramObject.privWriteContent) {
      return false;
    }
    if (this.privUnbind != paramObject.privUnbind) {
      return false;
    }
    if (this.forceReadOnly != paramObject.forceReadOnly) {
      return false;
    }
    if (!r.a(this.displayName, paramObject.displayName)) {
      return false;
    }
    if (!r.a(this.description, paramObject.description)) {
      return false;
    }
    if (!r.a(this.color, paramObject.color)) {
      return false;
    }
    if (!r.a(this.timezone, paramObject.timezone)) {
      return false;
    }
    if (!r.a(this.supportsVEVENT, paramObject.supportsVEVENT)) {
      return false;
    }
    if (!r.a(this.source, paramObject.source)) {
      return false;
    }
    return this.sync == paramObject.sync;
  }
  
  public final Integer getColor()
  {
    return this.color;
  }
  
  public final boolean getConfirmed()
  {
    return this.confirmed;
  }
  
  public final String getDescription()
  {
    return this.description;
  }
  
  public final String getDisplayName()
  {
    return this.displayName;
  }
  
  public final boolean getForceReadOnly()
  {
    return this.forceReadOnly;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public final boolean getPrivUnbind()
  {
    return this.privUnbind;
  }
  
  public final boolean getPrivWriteContent()
  {
    return this.privWriteContent;
  }
  
  public final long getServiceId()
  {
    return this.serviceId;
  }
  
  public final okhttp3.t getSource()
  {
    return this.source;
  }
  
  public final Boolean getSupportsVEVENT()
  {
    return this.supportsVEVENT;
  }
  
  public final boolean getSync()
  {
    return this.sync;
  }
  
  public final String getTimezone()
  {
    return this.timezone;
  }
  
  public final String getType()
  {
    return this.type;
  }
  
  public final okhttp3.t getUrl()
  {
    return this.url;
  }
  
  public int hashCode()
  {
    int i = Long.hashCode(getId());
    int j = Long.hashCode(this.serviceId);
    int k = this.type.hashCode();
    int m = this.url.hashCode();
    int n = this.privWriteContent;
    int i1 = 1;
    int i2 = n;
    int i3;
    if (n != 0) {
      i3 = 1;
    }
    int i4 = this.privUnbind;
    n = i4;
    if (i4 != 0) {
      n = 1;
    }
    int i5 = this.forceReadOnly;
    i4 = i5;
    if (i5 != 0) {
      i4 = 1;
    }
    Object localObject = this.displayName;
    int i7 = 0;
    int i6;
    if (localObject == null) {
      i5 = 0;
    } else {
      i6 = ((String)localObject).hashCode();
    }
    localObject = this.description;
    int i8;
    if (localObject == null) {
      i8 = 0;
    } else {
      i8 = ((String)localObject).hashCode();
    }
    localObject = this.color;
    int i9;
    if (localObject == null) {
      i9 = 0;
    } else {
      i9 = localObject.hashCode();
    }
    localObject = this.timezone;
    int i10;
    if (localObject == null) {
      i10 = 0;
    } else {
      i10 = ((String)localObject).hashCode();
    }
    localObject = this.supportsVEVENT;
    int i11;
    if (localObject == null) {
      i11 = 0;
    } else {
      i11 = localObject.hashCode();
    }
    localObject = this.source;
    if (localObject != null) {
      i7 = ((okhttp3.t)localObject).hashCode();
    }
    int i12 = this.sync;
    if (i12 == 0) {
      i1 = i12;
    }
    return ((((((((((((i * 31 + j) * 31 + k) * 31 + m) * 31 + i3) * 31 + n) * 31 + i4) * 31 + i6) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i11) * 31 + i7) * 31 + i1;
  }
  
  public final boolean readOnly()
  {
    boolean bool;
    if ((!this.forceReadOnly) && (this.privWriteContent)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public final void setColor(Integer paramInteger)
  {
    this.color = paramInteger;
  }
  
  public final void setConfirmed(boolean paramBoolean)
  {
    this.confirmed = paramBoolean;
  }
  
  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public final void setDisplayName(String paramString)
  {
    this.displayName = paramString;
  }
  
  public final void setForceReadOnly(boolean paramBoolean)
  {
    this.forceReadOnly = paramBoolean;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public final void setPrivUnbind(boolean paramBoolean)
  {
    this.privUnbind = paramBoolean;
  }
  
  public final void setPrivWriteContent(boolean paramBoolean)
  {
    this.privWriteContent = paramBoolean;
  }
  
  public final void setServiceId(long paramLong)
  {
    this.serviceId = paramLong;
  }
  
  public final void setSource(okhttp3.t paramt)
  {
    this.source = paramt;
  }
  
  public final void setSupportsVEVENT(Boolean paramBoolean)
  {
    this.supportsVEVENT = paramBoolean;
  }
  
  public final void setSync(boolean paramBoolean)
  {
    this.sync = paramBoolean;
  }
  
  public final void setTimezone(String paramString)
  {
    this.timezone = paramString;
  }
  
  public final void setType(String paramString)
  {
    r.f(paramString, "<set-?>");
    this.type = paramString;
  }
  
  public final void setUrl(okhttp3.t paramt)
  {
    r.f(paramt, "<set-?>");
    this.url = paramt;
  }
  
  public final String title()
  {
    String str1 = this.displayName;
    String str2 = str1;
    if (str1 == null) {
      str2 = g.a.d(this.url);
    }
    return str2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Collection(id=");
    localStringBuilder.append(getId());
    localStringBuilder.append(", serviceId=");
    localStringBuilder.append(this.serviceId);
    localStringBuilder.append(", type=");
    localStringBuilder.append(this.type);
    localStringBuilder.append(", url=");
    localStringBuilder.append(this.url);
    localStringBuilder.append(", privWriteContent=");
    localStringBuilder.append(this.privWriteContent);
    localStringBuilder.append(", privUnbind=");
    localStringBuilder.append(this.privUnbind);
    localStringBuilder.append(", forceReadOnly=");
    localStringBuilder.append(this.forceReadOnly);
    localStringBuilder.append(", displayName=");
    localStringBuilder.append(this.displayName);
    localStringBuilder.append(", description=");
    localStringBuilder.append(this.description);
    localStringBuilder.append(", color=");
    localStringBuilder.append(this.color);
    localStringBuilder.append(", timezone=");
    localStringBuilder.append(this.timezone);
    localStringBuilder.append(", supportsVEVENT=");
    localStringBuilder.append(this.supportsVEVENT);
    localStringBuilder.append(", source=");
    localStringBuilder.append(this.source);
    localStringBuilder.append(", sync=");
    localStringBuilder.append(this.sync);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/Collection$Companion;", "", "()V", "TYPE_ADDRESSBOOK", "", "TYPE_CALENDAR", "TYPE_WEBCAL", "fromDavResponse", "Lcom/android/calendar/syncer/model/Collection;", "dav", "Lat/bitfire/dav4jvm/Response;", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion
  {
    public final Collection fromDavResponse(Response paramResponse)
    {
      r.f(paramResponse, "dav");
      okhttp3.t localt = UrlUtils.INSTANCE.withTrailingSlash(paramResponse.getHref());
      Object localObject1 = (ResourceType)paramResponse.get(ResourceType.class);
      Object localObject2 = null;
      if (localObject1 != null)
      {
        Object localObject3 = ((ResourceType)localObject1).getTypes();
        Object localObject4 = ResourceType.Companion;
        if (((Set)localObject3).contains(((ResourceType.Companion)localObject4).getCALENDAR())) {
          localObject1 = "CALENDAR";
        } else if (((ResourceType)localObject1).getTypes().contains(((ResourceType.Companion)localObject4).getSUBSCRIBED())) {
          localObject1 = "WEBCAL";
        } else {
          localObject1 = null;
        }
        if (localObject1 != null)
        {
          localObject3 = (CurrentUserPrivilegeSet)paramResponse.get(CurrentUserPrivilegeSet.class);
          boolean bool1 = true;
          boolean bool2;
          boolean bool3;
          if (localObject3 != null)
          {
            bool2 = ((CurrentUserPrivilegeSet)localObject3).getMayWriteContent();
            bool3 = ((CurrentUserPrivilegeSet)localObject3).getMayUnbind();
          }
          else
          {
            bool2 = true;
            bool3 = bool2;
          }
          localObject4 = (DisplayName)paramResponse.get(DisplayName.class);
          Object localObject5;
          if (localObject4 != null)
          {
            localObject3 = ((DisplayName)localObject4).getDisplayName();
            int i;
            if ((localObject3 != null) && (((CharSequence)localObject3).length() != 0)) {
              i = 0;
            } else {
              i = 1;
            }
            if (i == 0) {
              localObject3 = ((DisplayName)localObject4).getDisplayName();
            } else {
              localObject3 = null;
            }
            localObject5 = localObject3;
          }
          else
          {
            localObject5 = null;
          }
          Ref.ObjectRef localObjectRef = new Ref.ObjectRef();
          if (!r.a(localObject1, "CALENDAR")) {
            bool1 = r.a(localObject1, "WEBCAL");
          }
          if (bool1)
          {
            localObject3 = (CalendarDescription)paramResponse.get(CalendarDescription.class);
            if (localObject3 != null) {
              localObject3 = ((CalendarDescription)localObject3).getDescription();
            } else {
              localObject3 = null;
            }
            localObject4 = (CalendarColor)paramResponse.get(CalendarColor.class);
            if (localObject4 != null) {
              localObject4 = Integer.valueOf(((CalendarColor)localObject4).getColor());
            } else {
              localObject4 = null;
            }
            localObject6 = (CalendarTimezone)paramResponse.get(CalendarTimezone.class);
            if (localObject6 != null) {
              localObject6 = ((CalendarTimezone)localObject6).getVTimeZone();
            } else {
              localObject6 = null;
            }
            if (r.a(localObject1, "CALENDAR"))
            {
              localObject2 = Boolean.TRUE;
              paramResponse = (SupportedCalendarComponentSet)paramResponse.get(SupportedCalendarComponentSet.class);
              if (paramResponse == null) {}
            }
            for (paramResponse = Boolean.valueOf(paramResponse.getSupportsEvents());; paramResponse = Boolean.TRUE)
            {
              break label385;
              paramResponse = (Response)localObject2;
              label385:
              Object localObject7 = localObject4;
              localObject2 = localObject6;
              localObject4 = localObject3;
              localObject6 = localObject7;
              localObject3 = localObject2;
              localObject2 = paramResponse;
              break;
              paramResponse = (Source)paramResponse.get(Source.class);
              if (paramResponse != null)
              {
                localObject7 = (String)kotlin.collections.t.a0(paramResponse.getHrefs());
                paramResponse = (Response)localObject2;
                if (localObject7 != null)
                {
                  paramResponse = new Regex("^webcal://").replace((CharSequence)localObject7, "http://");
                  paramResponse = new Regex("^webcals://").replace(paramResponse, "https://");
                  paramResponse = okhttp3.t.l.g(paramResponse);
                }
                localObjectRef.element = paramResponse;
              }
            }
          }
          localObject4 = null;
          paramResponse = (Response)localObject4;
          localObject3 = paramResponse;
          localObject2 = localObject3;
          Object localObject6 = paramResponse;
          return new Collection(0L, 0L, (String)localObject1, localt, bool2, bool3, false, localObject5, (String)localObject4, (Integer)localObject6, (String)localObject3, (Boolean)localObject2, (okhttp3.t)localObjectRef.element, false, 8259, null);
        }
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.Collection
 * JD-Core Version:    0.7.0.1
 */