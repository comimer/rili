package com.miui.calendar.alerts.entities;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.android.calendar.common.event.schema.AgendaEvent;
import com.miui.calendar.util.k0;
import o1.g;

public class AgendaAlert
  extends BaseAlert<AgendaEvent>
{
  private static final String ACCOUNT_TYPE_EMAIL = "com.android.exchange";
  private static final String ACCOUNT_TYPE_XIAOMI = "com.xiaomi";
  public static final Parcelable.Creator<AgendaAlert> CREATOR = new a();
  
  public AgendaAlert() {}
  
  private AgendaAlert(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public n3.a getAdapter(Context paramContext, int paramInt)
  {
    paramContext = new n3.a(paramContext, this);
    paramContext.n(paramInt);
    return paramContext;
  }
  
  public int getRemindType()
  {
    if (getEventType() == 15) {
      return 4;
    }
    if (getEventType() == 3) {
      return 4;
    }
    if (getEventType() == 16) {
      return 4;
    }
    return 1;
  }
  
  public BaseAlert<AgendaEvent> loadAnotherOne(Context paramContext)
  {
    return new o3.a(paramContext).c(getAlertId());
  }
  
  public boolean needPopup(Context paramContext)
  {
    int i = getEventType();
    if (i != 0) {
      if (i != 3) {
        switch (i)
        {
        }
      }
    }
    String str1;
    while (("LOCAL".equals(getAccountType())) || ("com.xiaomi".equals(getAccountType())))
    {
      str1 = "agenda_default";
      break;
      str1 = "sms_movie";
      break;
      str1 = "sms_loan";
      break;
      str1 = "sms_hotel";
      break;
      str1 = "sms_gas";
      break;
      str1 = "sms_electricity";
      break;
      str1 = "sms_train";
      break;
      str1 = "sms_flight";
      break;
      str1 = "sms_credit";
      break;
    }
    if ((!k0.a(getAccountName())) && (!"com.android.exchange".equals(getAccountType()))) {
      str1 = "agenda_non_email";
    } else {
      str1 = "agenda_email";
    }
    String str2 = str1;
    if (isAllDay())
    {
      str2 = str1;
      if ("agenda_default".equals(str1)) {
        str2 = "agenda_default_fullday";
      }
    }
    return g.b(paramContext, str2);
  }
  
  class a
    implements Parcelable.Creator<AgendaAlert>
  {
    public AgendaAlert a(Parcel paramParcel)
    {
      return new AgendaAlert(paramParcel, null);
    }
    
    public AgendaAlert[] b(int paramInt)
    {
      return new AgendaAlert[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alerts.entities.AgendaAlert
 * JD-Core Version:    0.7.0.1
 */