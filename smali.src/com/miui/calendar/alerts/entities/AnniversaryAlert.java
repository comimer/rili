package com.miui.calendar.alerts.entities;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import n3.c;
import o1.g;

public class AnniversaryAlert
  extends BaseAlert<AnniversaryEvent>
{
  public static final Parcelable.Creator<AnniversaryAlert> CREATOR = new a();
  
  public AnniversaryAlert() {}
  
  private AnniversaryAlert(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public n3.b getAdapter(Context paramContext, int paramInt)
  {
    paramContext = new n3.b(paramContext, this);
    paramContext.n(paramInt);
    return paramContext;
  }
  
  public int getRemindType()
  {
    return 4;
  }
  
  public AnniversaryAlert loadAnotherOne(Context paramContext)
  {
    return new o3.b(paramContext).b(getEventId(), getAlertAt());
  }
  
  public boolean needPopup(Context paramContext)
  {
    return g.b(paramContext, "anniversary");
  }
  
  class a
    implements Parcelable.Creator<AnniversaryAlert>
  {
    public AnniversaryAlert a(Parcel paramParcel)
    {
      return new AnniversaryAlert(paramParcel, null);
    }
    
    public AnniversaryAlert[] b(int paramInt)
    {
      return new AnniversaryAlert[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alerts.entities.AnniversaryAlert
 * JD-Core Version:    0.7.0.1
 */