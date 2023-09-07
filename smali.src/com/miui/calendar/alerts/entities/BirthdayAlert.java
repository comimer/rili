package com.miui.calendar.alerts.entities;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.miui.calendar.util.y;
import n3.d;
import o1.g;
import o3.e;
import s1.b;

public class BirthdayAlert
  extends BaseAlert<BirthdayEvent>
{
  public static final Parcelable.Creator<BirthdayAlert> CREATOR = new a();
  
  public BirthdayAlert() {}
  
  private BirthdayAlert(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public d getAdapter(Context paramContext, int paramInt)
  {
    paramContext = new d(paramContext, this);
    paramContext.n(paramInt);
    return paramContext;
  }
  
  public BirthdayEvent getEvent(Context paramContext)
  {
    if (this.mEvent == null) {
      this.mEvent = b.b(paramContext, getEventId());
    }
    return (BirthdayEvent)this.mEvent;
  }
  
  public int getRemindType()
  {
    return 4;
  }
  
  public boolean isAvailable(Context paramContext)
  {
    BirthdayEvent localBirthdayEvent = getEvent(paramContext);
    boolean bool1 = true;
    if (localBirthdayEvent != null)
    {
      bool2 = bool1;
      if (y.q(paramContext)) {
        break label39;
      }
      if (localBirthdayEvent.getDateType() != 1)
      {
        bool2 = bool1;
        break label39;
      }
    }
    boolean bool2 = false;
    label39:
    return bool2;
  }
  
  public BirthdayAlert loadAnotherOne(Context paramContext)
  {
    return (BirthdayAlert)new e(paramContext).c(getAlertId());
  }
  
  public boolean needPopup(Context paramContext)
  {
    String str;
    if (getEvent(paramContext).getContactId() > 0) {
      str = "birthday_contacts";
    } else {
      str = "birthday_manual";
    }
    return g.b(paramContext, str);
  }
  
  class a
    implements Parcelable.Creator<BirthdayAlert>
  {
    public BirthdayAlert a(Parcel paramParcel)
    {
      return new BirthdayAlert(paramParcel, null);
    }
    
    public BirthdayAlert[] b(int paramInt)
    {
      return new BirthdayAlert[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alerts.entities.BirthdayAlert
 * JD-Core Version:    0.7.0.1
 */