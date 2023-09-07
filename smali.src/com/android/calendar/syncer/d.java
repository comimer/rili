package com.android.calendar.syncer;

import android.util.Log;
import at.bitfire.ical4android.AndroidEvent;
import at.bitfire.ical4android.Event;
import at.bitfire.ical4android.ICalendar;
import c2.b;
import c2.c;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.List<Lat.bitfire.ical4android.Event;>;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import net.fortuna.ical4j.model.property.DateProperty;
import net.fortuna.ical4j.model.property.UtcProperty;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/d;", "", "Lc2/b;", "calendar", "", "Lat/bitfire/ical4android/Event;", "events", "Lkotlin/u;", "a", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class d
{
  public static final d a = new d();
  
  public final void a(b paramb, List<Event> paramList)
  {
    r.f(paramb, "calendar");
    r.f(paramList, "events");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Processing ");
    ((StringBuilder)localObject).append(paramList.size());
    ((StringBuilder)localObject).append(" events");
    Log.i("CalSync:D:EventImporter", ((StringBuilder)localObject).toString());
    HashSet localHashSet = new HashSet(paramList.size());
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      Event localEvent = (Event)localIterator1.next();
      String str = localEvent.getUid();
      r.c(str);
      paramList = new StringBuilder();
      paramList.append("Found VEVENT: ");
      paramList.append(str);
      Log.d("CalSync:D:EventImporter", paramList.toString());
      localHashSet.add(str);
      paramList = paramb.q(str);
      if (paramList.isEmpty())
      {
        paramList = new StringBuilder();
        paramList.append(str);
        paramList.append(" not in local calendar, adding");
        Log.d("CalSync:D:EventImporter", paramList.toString());
        new c(paramb, localEvent).add();
      }
      else
      {
        c localc = (c)t.Y(paramList);
        localObject = localEvent.getLastModified();
        paramList = (List<Event>)localObject;
        if (localObject != null)
        {
          Iterator localIterator2 = localEvent.getExceptions().iterator();
          for (;;)
          {
            paramList = (List<Event>)localObject;
            if (!localIterator2.hasNext()) {
              break;
            }
            paramList = ((Event)localIterator2.next()).getLastModified();
            if (paramList == null)
            {
              paramList = null;
              break;
            }
            if ((localObject != null) && (paramList.getDateTime().after(((DateProperty)localObject).getDate()))) {
              localObject = paramList;
            }
          }
        }
        if ((paramList != null) && (paramList.getDateTime().getTime() <= localc.f()))
        {
          paramList = new StringBuilder();
          paramList.append(str);
          paramList.append(" has not been modified since last sync");
          Log.d("CalSync:D:EventImporter", paramList.toString());
        }
        else
        {
          localc.update(localEvent);
        }
      }
    }
    paramList = new StringBuilder();
    paramList.append("Deleting old events (retaining ");
    paramList.append(localHashSet.size());
    paramList.append(" events by UID) …");
    Log.i("CalSync:D:EventImporter", paramList.toString());
    int i = paramb.r(localHashSet);
    paramb = new StringBuilder();
    paramb.append("… ");
    paramb.append(i);
    paramb.append(" events deleted");
    Log.i("CalSync:D:EventImporter", paramb.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.d
 * JD-Core Version:    0.7.0.1
 */