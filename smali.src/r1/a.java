package r1;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.ExtendedProperties;
import android.provider.CalendarContract.Instances;
import android.provider.ContactsContract.Data;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.k;
import com.android.calendar.event.j;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.b0;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.a;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class a
{
  private static final String[] a = { "contact_id", "display_name", "mimetype", "data1" };
  private static final Class[] b = { Integer.class, String.class, String.class, String.class };
  private static final String c;
  private static final SimpleDateFormat[] d;
  private static final SimpleDateFormat[] e;
  private static final String[] f = { "account_name_local", "LOCAL", "calendar_displayname_birthday" };
  
  static
  {
    Locale localLocale = Locale.US;
    c = String.format(localLocale, "(%s='%s' AND %s='%d') OR (%s='%s')", new Object[] { "mimetype", "vnd.android.cursor.item/contact_event", "data2", Integer.valueOf(3), "mimetype", "vnd.com.miui.cursor.item/lunarBirthday" });
    d = new SimpleDateFormat[] { new SimpleDateFormat("MM-dd", localLocale), new SimpleDateFormat("--MM-dd", localLocale) };
    e = new SimpleDateFormat[] { new SimpleDateFormat("yyyy-MM-dd", localLocale), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", localLocale), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm'Z'", localLocale), new SimpleDateFormat("yyyyMMdd", localLocale), new SimpleDateFormat("yyyyMMdd'T'HHmmssSSS'Z'", localLocale), new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'", localLocale), new SimpleDateFormat("yyyyMMdd'T'HHmm'Z'", localLocale) };
  }
  
  public static int A(Context paramContext)
  {
    return p0.d(paramContext).u(CalendarContract.Events.CONTENT_URI).s("hasExtendedProperties&255=7 AND customAppPackage IS NOT NULL").j();
  }
  
  public static int B(Context paramContext)
  {
    paramContext = p0.d(paramContext).u(CalendarContract.Calendars.CONTENT_URI).r(new String[] { "_id" }).t(new Class[] { Integer.class }).s("account_name=? AND account_type=? AND calendar_displayName=?").o(f).i();
    if (!paramContext.isEmpty()) {
      return paramContext.k().d().intValue();
    }
    return -1;
  }
  
  public static void C(Context paramContext, List<BirthdayEvent> paramList)
  {
    if (!y.q(paramContext))
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        paramContext = (BirthdayEvent)localIterator.next();
        if (paramContext.getDateType() == 1)
        {
          paramList = new StringBuilder();
          paramList.append("removeLunarBirthdayIfNeed(): IGNORE Chinese lunar birthday event, id = ");
          paramList.append(paramContext.getId());
          z.a("Cal:D:BirthdayHelper", paramList.toString());
          localIterator.remove();
        }
      }
    }
  }
  
  public static BirthdayEvent a(Context paramContext, p0.c paramc)
  {
    if (paramc == null)
    {
      z.m("Cal:D:BirthdayHelper", "buildFromContactCursor(): Query birthday failed. ResultRow is null");
      return null;
    }
    int i = paramc.e(0).intValue();
    String str1 = paramc.c(1);
    String str2 = str1;
    if (str1 == null) {
      str2 = "";
    }
    str1 = paramc.c(3);
    int j = u(paramc);
    paramc = t(str1, j);
    boolean bool = v(str1);
    if ((paramc != null) && (s(paramc)))
    {
      paramc.set(11, 10);
      paramc.set(12, 0);
      paramc.set(13, 0);
      paramc.set(14, 0);
      BirthdayEvent localBirthdayEvent = new BirthdayEvent();
      j.n(paramContext, localBirthdayEvent, true, true, 600);
      if (e(localBirthdayEvent, paramContext, str2, paramc, j, bool, false))
      {
        localBirthdayEvent.setContactId(i);
        return localBirthdayEvent;
      }
    }
    paramContext = new StringBuilder();
    paramContext.append("buildFromContactCursor(): Parsing birthday time failed. Time text is ");
    paramContext.append(str1);
    z.m("Cal:D:BirthdayHelper", paramContext.toString());
    return null;
  }
  
  public static String b(p0.c paramc)
  {
    if (paramc == null)
    {
      z.m("Cal:D:BirthdayHelper", "buildKeyContactCursorWhitOutContactId(): Query birthday failed. ResultRow is null");
      return null;
    }
    Object localObject1 = paramc.c(1);
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    localObject1 = paramc.c(3);
    int i = u(paramc);
    paramc = t((String)localObject1, i);
    boolean bool = v((String)localObject1);
    if ((paramc != null) && (s(paramc)))
    {
      paramc.set(11, 10);
      paramc.set(12, 0);
      paramc.set(13, 0);
      paramc.set(14, 0);
      localObject1 = new StringBuffer();
      ((StringBuffer)localObject1).append(i);
      ((StringBuffer)localObject1).append(bool);
      ((StringBuffer)localObject1).append(paramc.getTimeInMillis());
      ((StringBuffer)localObject1).append((String)localObject2);
      return ((StringBuffer)localObject1).toString();
    }
    return null;
  }
  
  public static void c(Context paramContext, ArrayList<Long> paramArrayList)
  {
    if (paramArrayList.size() > 0)
    {
      j localj = new j(paramContext);
      Object localObject = new ArrayList();
      int i = 0;
      while (i < paramArrayList.size())
      {
        localj.c((ArrayList)localObject, ((Long)paramArrayList.get(i)).longValue());
        if (i != paramArrayList.size() - 1)
        {
          paramContext = (Context)localObject;
          if (((ArrayList)localObject).size() < 200) {}
        }
        else
        {
          localj.u((ArrayList)localObject);
          paramContext = new ArrayList();
        }
        i++;
        localObject = paramContext;
      }
    }
  }
  
  public static int d(Context paramContext, int paramInt)
  {
    Uri localUri = CalendarContract.Calendars.CONTENT_URI;
    String str = String.format(Locale.US, "%s=%d", new Object[] { "_id", Integer.valueOf(paramInt) });
    return paramContext.getContentResolver().delete(localUri, str, null);
  }
  
  public static boolean e(BirthdayEvent paramBirthdayEvent, Context paramContext, String paramString, Calendar paramCalendar, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramBirthdayEvent.getEx().normalizeReminders();
    paramBirthdayEvent.getEx().setHasAlarm(true);
    String str1 = paramContext.getString(2131886249);
    String str2;
    if (paramInt == 1) {
      str2 = paramContext.getString(2131886247);
    } else {
      str2 = "";
    }
    if (y.f(paramContext)) {
      str2 = paramContext.getString(2131886250, new Object[] { k(paramContext, paramString) });
    } else {
      str2 = paramContext.getString(2131886243, new Object[] { k(paramContext, paramString), str2, str1 });
    }
    paramBirthdayEvent.setTitle(str2);
    paramBirthdayEvent.setAllDay(true);
    paramBirthdayEvent.setLocation(null);
    paramBirthdayEvent.setDescription(null);
    paramBirthdayEvent.getEx().setStart(paramCalendar.getTimeInMillis());
    paramBirthdayEvent.getEx().setEnd(paramBirthdayEvent.getEx().getStart());
    paramBirthdayEvent.getEx().setTimezone(Utils.U(paramContext));
    int i;
    if (paramInt == 1) {
      i = 8;
    } else {
      i = 6;
    }
    j.z(i, paramBirthdayEvent, Utils.C(paramContext), null, null);
    if (paramInt == 1) {
      paramBirthdayEvent.getEx().setRdate(b0.d(paramCalendar, 2, paramBirthdayEvent.isAllDay()));
    } else {
      paramBirthdayEvent.getEx().setRdate(null);
    }
    paramBirthdayEvent.setEventType(7);
    paramBirthdayEvent.setDateType(paramInt);
    paramBirthdayEvent.setUseYear(paramBoolean1);
    paramBirthdayEvent.setName(paramString);
    paramBirthdayEvent.setFirstBirthMillis(paramCalendar.getTimeInMillis());
    if (!paramBoolean2) {
      paramBirthdayEvent.getEx().setCustomAppPackage("com.miui.calendar");
    }
    return true;
  }
  
  public static int f(int paramInt1, int paramInt2)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(2, paramInt1);
    localCalendar.set(5, 1);
    while (paramInt2 > localCalendar.getActualMaximum(5)) {
      localCalendar.add(1, -1);
    }
    return localCalendar.get(1);
  }
  
  public static String g(Context paramContext, int paramInt, BirthdayEvent paramBirthdayEvent)
  {
    paramInt -= paramBirthdayEvent.getYear();
    if (paramInt == 0) {
      return "";
    }
    if (paramBirthdayEvent.getDateType() == 1)
    {
      if (paramBirthdayEvent.isUseYear()) {
        return paramContext.getResources().getQuantityString(2131755057, paramInt, new Object[] { Integer.valueOf(paramInt) });
      }
      return "";
    }
    if (paramBirthdayEvent.isUseYear()) {
      return paramContext.getResources().getQuantityString(2131755057, paramInt, new Object[] { Integer.valueOf(paramInt) });
    }
    return "";
  }
  
  public static String h(Context paramContext, Calendar paramCalendar, BirthdayEvent paramBirthdayEvent)
  {
    if (paramBirthdayEvent.getDateType() == 1) {
      return g(paramContext, a0.d(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5))[0], paramBirthdayEvent);
    }
    return g(paramContext, paramCalendar.get(1), paramBirthdayEvent);
  }
  
  public static String i(Context paramContext, BirthdayEvent paramBirthdayEvent)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramBirthdayEvent.getFirstBirthMillis());
    if (paramBirthdayEvent.getDateType() == 1) {
      return a0.z(paramContext.getResources(), localCalendar.get(1), localCalendar.get(2), localCalendar.get(5));
    }
    return DateUtils.formatDateRange(paramContext, new Formatter(new StringBuilder(50), Locale.getDefault()), paramBirthdayEvent.getFirstBirthMillis(), paramBirthdayEvent.getFirstBirthMillis(), 8, "UTC").toString();
  }
  
  public static String j(Context paramContext, long paramLong, BirthdayEvent paramBirthdayEvent)
  {
    Object localObject1 = Calendar.getInstance();
    Object localObject2 = Calendar.getInstance();
    ((Calendar)localObject2).add(1, 1);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    int i = com.miui.calendar.util.e0.i((Calendar)localObject1);
    int j = com.miui.calendar.util.e0.i((Calendar)localObject2);
    int k = com.miui.calendar.util.e0.i(localCalendar);
    localObject2 = paramContext.getString(2131886249);
    localObject1 = localObject2;
    if (paramBirthdayEvent.isUseYear())
    {
      localObject1 = localObject2;
      if ("".equals(h(paramContext, localCalendar, paramBirthdayEvent))) {
        localObject1 = paramContext.getString(2131886216);
      }
    }
    if ((k >= i - 7) && (k < j)) {
      return paramContext.getString(2131886223, new Object[] { s0.f(paramContext, k), k(paramContext, paramBirthdayEvent.getName()), h(paramContext, localCalendar, paramBirthdayEvent), o(paramContext, paramBirthdayEvent), localObject1 });
    }
    return paramContext.getString(2131886222, new Object[] { k(paramContext, paramBirthdayEvent.getName()), h(paramContext, localCalendar, paramBirthdayEvent), o(paramContext, paramBirthdayEvent), localObject1 });
  }
  
  public static String k(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramContext.getString(2131886890);
    }
    paramContext = paramString;
    if (paramString.length() >= 60)
    {
      paramContext = new StringBuilder();
      paramContext.append(paramString.substring(0, 60));
      paramContext.append("...");
      paramContext = paramContext.toString();
    }
    return paramContext;
  }
  
  public static long l(long paramLong)
  {
    r0 localr0 = new r0();
    localr0.D(paramLong);
    int i = localr0.p();
    int j = localr0.q();
    localr0.M();
    if ((i == 1) && (j == 29))
    {
      GregorianCalendar localGregorianCalendar = (GregorianCalendar)Calendar.getInstance();
      if ((localGregorianCalendar.isLeapYear(localr0.v())) && (localr0.p() <= i))
      {
        localr0.C(0, 0, 0, j, i, localr0.v());
        return localr0.y(false);
      }
      for (int k = localr0.v() + 1;; k++) {
        if (localGregorianCalendar.isLeapYear(k))
        {
          localr0.C(0, 0, 0, j, i, k);
          return localr0.y(false);
        }
      }
    }
    if ((localr0.p() >= i) && ((localr0.p() != i) || (localr0.q() > j)))
    {
      localr0.C(0, 0, 0, j, i, localr0.v() + 1);
      return localr0.y(false);
    }
    localr0.C(0, 0, 0, j, i, localr0.v());
    return localr0.y(false);
  }
  
  public static String m(Context paramContext, BirthdayEvent paramBirthdayEvent, long paramLong, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    String str1 = h(paramContext, localCalendar, paramBirthdayEvent);
    String str2 = o(paramContext, paramBirthdayEvent);
    String str3 = paramContext.getString(2131886249);
    int i = com.miui.calendar.util.e0.i(localCalendar);
    localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong - paramInt * 60 * 1000);
    paramInt = i - com.miui.calendar.util.e0.i(localCalendar);
    if (paramInt > 0)
    {
      paramBirthdayEvent = i(paramContext, paramBirthdayEvent);
      return paramContext.getResources().getQuantityString(2131755058, paramInt, new Object[] { Integer.valueOf(paramInt), str1, str2, str3, paramBirthdayEvent });
    }
    return paramContext.getString(2131886244, new Object[] { k(paramContext, paramBirthdayEvent.getName()), str1, str2, str3 });
  }
  
  public static String n(Context paramContext, BirthdayEvent paramBirthdayEvent, int paramInt)
  {
    if (paramBirthdayEvent == null) {
      return "";
    }
    String str1 = paramContext.getString(2131886249);
    if (paramInt > 0) {
      return paramContext.getString(2131886245, new Object[] { k(paramContext, paramBirthdayEvent.getName()), str1 });
    }
    String str2 = o(paramContext, paramBirthdayEvent);
    return paramContext.getString(2131886246, new Object[] { k(paramContext, paramBirthdayEvent.getName()), str2, str1 });
  }
  
  public static String o(Context paramContext, BirthdayEvent paramBirthdayEvent)
  {
    if (paramBirthdayEvent.getDateType() == 1) {
      return paramContext.getString(2131886247);
    }
    return "";
  }
  
  public static void p(Context paramContext)
  {
    b2.a.l(paramContext, "key_show_birthday_guide", false);
  }
  
  public static void q(Context paramContext)
  {
    if (z0.n(paramContext))
    {
      int i = B(paramContext);
      if (i >= 0) {
        d(paramContext, i);
      }
    }
    else
    {
      z.a("Cal:D:BirthdayHelper", "initBirthDay: have not agree user notice");
    }
  }
  
  public static void r(Context paramContext, ArrayList<BirthdayEvent> paramArrayList)
  {
    if (paramArrayList.size() > 0)
    {
      j localj = new j(paramContext);
      Object localObject = new ArrayList();
      p0.b localb = com.android.calendar.event.e0.c(paramContext);
      paramContext = (Context)localObject;
      int i = 0;
      while (i < paramArrayList.size())
      {
        localj.d(paramContext, (Event)paramArrayList.get(i), null, 3, false, localb);
        if (i != paramArrayList.size() - 1)
        {
          localObject = paramContext;
          if (paramContext.size() < 200) {}
        }
        else
        {
          localj.u(paramContext);
          localObject = new ArrayList();
        }
        i++;
        paramContext = (Context)localObject;
      }
    }
  }
  
  private static boolean s(Calendar paramCalendar)
  {
    boolean bool = true;
    if ((paramCalendar.get(1) < k.g()) || (paramCalendar.get(1) > k.d())) {
      bool = false;
    }
    return bool;
  }
  
  private static Calendar t(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString))
    {
      z.a("Cal:D:BirthdayHelper", "parseBirthdayTime(): birthdayString is empty!");
      return null;
    }
    Object localObject1;
    if (paramInt == 0)
    {
      localObject1 = new ParsePosition(0);
      Object localObject2 = d;
      int i = localObject2.length;
      paramInt = 0;
      while (paramInt < i) {
        synchronized (localObject2[paramInt])
        {
          ((ParsePosition)localObject1).setIndex(0);
          ???.parse(paramString, (ParsePosition)localObject1);
          if (paramString.length() == ((ParsePosition)localObject1).getIndex())
          {
            localObject4 = new java/text/SimpleDateFormat;
            Object localObject5 = new java/lang/StringBuilder;
            ((StringBuilder)localObject5).<init>();
            ((StringBuilder)localObject5).append("yyyy-");
            ((StringBuilder)localObject5).append(???.toPattern());
            ((SimpleDateFormat)localObject4).<init>(((StringBuilder)localObject5).toString(), Locale.US);
            localObject5 = new java/lang/StringBuilder;
            ((StringBuilder)localObject5).<init>();
            ((StringBuilder)localObject5).append("2000-");
            ((StringBuilder)localObject5).append(paramString);
            localObject5 = ((StringBuilder)localObject5).toString();
            ((ParsePosition)localObject1).setIndex(0);
            localObject4 = ((SimpleDateFormat)localObject4).parse((String)localObject5, (ParsePosition)localObject1);
            if (((String)localObject5).length() == ((ParsePosition)localObject1).getIndex())
            {
              paramString = Calendar.getInstance();
              paramString.setTime((Date)localObject4);
              paramString.set(1, f(paramString.get(2), paramString.get(5)));
              return paramString;
            }
          }
          paramInt++;
        }
      }
      Object localObject4 = e;
      i = localObject4.length;
      paramInt = 0;
      while (paramInt < i) {
        synchronized (localObject4[paramInt])
        {
          ((ParsePosition)localObject1).setIndex(0);
          localObject2 = ???.parse(paramString, (ParsePosition)localObject1);
          if (paramString.length() == ((ParsePosition)localObject1).getIndex())
          {
            paramString = Calendar.getInstance();
            paramString.setTime((Date)localObject2);
            return paramString;
          }
          paramInt++;
        }
      }
    }
    if (paramInt == 1)
    {
      paramString = a0.x(paramString);
      if (paramString != null)
      {
        if (paramString[2] < 1901) {
          paramString[2] = (Calendar.getInstance().get(1) - 1);
        }
        paramString = a0.w(paramString[2], paramString[1] + 1, paramString[0]);
        localObject1 = Calendar.getInstance();
        ((Calendar)localObject1).set(paramString[0], paramString[1] - 1, paramString[2]);
        return localObject1;
      }
    }
    return null;
  }
  
  public static int u(p0.c paramc)
  {
    return "vnd.com.miui.cursor.item/lunarBirthday".equals(paramc.c(2));
  }
  
  private static boolean v(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      z.a("Cal:D:BirthdayHelper", "parseBirthdayUseYear(): birthdayString is empty!");
      return false;
    }
    ParsePosition localParsePosition = new ParsePosition(0);
    SimpleDateFormat[] arrayOfSimpleDateFormat = e;
    int i = arrayOfSimpleDateFormat.length;
    int j = 0;
    while (j < i) {
      synchronized (arrayOfSimpleDateFormat[j])
      {
        localParsePosition.setIndex(0);
        ???.parse(paramString, localParsePosition);
        if ((paramString.length() == localParsePosition.getIndex()) && (localParsePosition.getErrorIndex() == -1)) {
          return true;
        }
        j++;
      }
    }
    return false;
  }
  
  public static p0.a w(Context paramContext)
  {
    return p0.d(paramContext).u(CalendarContract.ExtendedProperties.CONTENT_URI).s("name=?").o(new String[] { "key_birthday_info" }).r(new String[] { "event_id", "value" }).t(new Class[] { Long.class, String.class }).k();
  }
  
  public static int x(Context paramContext)
  {
    long l = s0.m(Calendar.getInstance());
    Uri.Builder localBuilder = CalendarContract.Instances.CONTENT_SEARCH_BY_DAY_URI.buildUpon();
    ContentUris.appendId(localBuilder, l);
    ContentUris.appendId(localBuilder, l);
    localBuilder.appendPath(" ");
    return p0.d(paramContext).u(localBuilder.build()).s("hasExtendedProperties&255=7").j();
  }
  
  public static p0.a y(Context paramContext)
  {
    return p0.d(paramContext).u(ContactsContract.Data.CONTENT_URI).s(c).r(a).t(b).k();
  }
  
  public static int z(Context paramContext)
  {
    return p0.d(paramContext).u(CalendarContract.Events.CONTENT_URI).s("hasExtendedProperties&255=7 AND customAppPackage IS NULL").j();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r1.a
 * JD-Core Version:    0.7.0.1
 */