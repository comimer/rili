package com.miui.calendar.alerts.entities;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.android.calendar.common.event.schema.CountdownEvent;
import n3.c;
import n3.e;
import o1.g;
import o3.f;

public class CountdownAlert
  extends BaseAlert<CountdownEvent>
{
  public static final Parcelable.Creator<CountdownAlert> CREATOR = new a();
  
  public CountdownAlert() {}
  
  private CountdownAlert(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public e getAdapter(Context paramContext, int paramInt)
  {
    paramContext = new e(paramContext, this);
    paramContext.n(paramInt);
    return paramContext;
  }
  
  public int getRemindType()
  {
    return 4;
  }
  
  public CountdownAlert loadAnotherOne(Context paramContext)
  {
    return new f(paramContext).b(getEventId(), getAlertAt());
  }
  
  public boolean needPopup(Context paramContext)
  {
    return g.b(paramContext, "countdown");
  }
  
  class a
    implements Parcelable.Creator<CountdownAlert>
  {
    public CountdownAlert a(Parcel paramParcel)
    {
      return new CountdownAlert(paramParcel, null);
    }
    
    public CountdownAlert[] b(int paramInt)
    {
      return new CountdownAlert[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alerts.entities.CountdownAlert
 * JD-Core Version:    0.7.0.1
 */