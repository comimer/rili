package com.android.calendar.event;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.CalendarContract.Attendees;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.Attendee;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import s1.e;

@Metadata(bv={}, d1={""}, d2={"Ls1/e;", "Landroid/content/Context;", "context", "", "startDay", "days", "eventType", "", "search", "", "Lcom/android/calendar/common/event/schema/Event;", "a", "events", "Lkotlin/u;", "c", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class c0
{
  public static final List<Event> a(e parame, Context paramContext, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    r.f(parame, "<this>");
    r.f(paramContext, "context");
    int[] arrayOfInt;
    if (paramInt3 >= 0)
    {
      arrayOfInt = new int[1];
      arrayOfInt[0] = paramInt3;
    }
    else
    {
      arrayOfInt = null;
    }
    paramString = t.G0(parame.f(paramContext, paramInt1, paramInt2, arrayOfInt, paramString));
    parame = t.E0(paramString);
    if (!com.android.calendar.settings.j.o(paramContext))
    {
      paramContext = new ArrayList();
      paramString = paramString.iterator();
      for (;;)
      {
        parame = paramContext;
        if (!paramString.hasNext()) {
          break;
        }
        parame = paramString.next();
        if ((((Event)parame).getEx().isRejectAgenda() ^ true)) {
          paramContext.add(parame);
        }
      }
    }
    return parame;
  }
  
  public static final void c(e parame, Context paramContext, List<? extends Event> paramList)
  {
    r.f(parame, "<this>");
    r.f(paramContext, "context");
    r.f(paramList, "events");
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      paramList = (Event)localIterator.next();
      parame = paramContext.getContentResolver().query(CalendarContract.Attendees.CONTENT_URI, j.j, "event_id=? AND attendeeEmail IS NOT NULL", new String[] { String.valueOf(paramList.getId()) }, null);
      if (parame != null)
      {
        r.e(parame, "context.contentResolver.…        ?: return@forEach");
        while (parame.moveToNext())
        {
          String str = parame.getString(1);
          Object localObject = parame.getString(2);
          int i = parame.getInt(4);
          if (parame.getInt(3) == 2)
          {
            if (localObject != null)
            {
              paramList.getEx().setOrganizer((String)localObject);
              paramList.getEx().setIsOrganizer(k.p(paramList.getEx().getOwnerAccount(), (String)localObject, true));
            }
            if (TextUtils.isEmpty(str)) {
              paramList.getEx().setOrganizerDisplayName(paramList.getEx().getOrganizer());
            } else {
              paramList.getEx().setOrganizerDisplayName(str);
            }
          }
          if ((localObject != null) && (paramList.getEx().getOwnerAccount() != null) && (k.p(paramList.getEx().getOwnerAccount(), (String)localObject, true)))
          {
            int j = parame.getInt(0);
            paramList.getEx().setOwnerAttendeeId(j);
            paramList.getEx().setSelfAttendeeStatus(i);
          }
          else
          {
            localObject = new Attendee(str, (String)localObject);
            ((Attendee)localObject).setStatus(i);
            paramList.getEx().addAttendee((Attendee)localObject);
          }
        }
        parame.close();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.c0
 * JD-Core Version:    0.7.0.1
 */