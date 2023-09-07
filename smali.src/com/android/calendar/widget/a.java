package com.android.calendar.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.text.TextUtils;
import android.text.format.DateFormat;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.event.e0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TimeZone;
import t1.d;

public class a
{
  private String a;
  private boolean b;
  public final List<c> c;
  public final List<b> d;
  public final List<a> e;
  public final Context f;
  public final long g;
  public final int h;
  final int i;
  public boolean j;
  
  public a(Context paramContext, String paramString)
  {
    long l = System.currentTimeMillis();
    this.g = l;
    paramString = new r0(paramString);
    paramString.M();
    int k = r0.n(l, paramString.l());
    this.h = k;
    this.i = (k + 7 - 1);
    this.d = new ArrayList(50);
    this.c = new ArrayList(50);
    this.e = new ArrayList(8);
    this.f = paramContext;
  }
  
  private a c(int paramInt, r0 paramr0)
  {
    long l = paramr0.G(paramInt);
    if (paramInt == this.h + 1)
    {
      paramr0 = this.f;
      paramr0 = paramr0.getString(2131886181, new Object[] { Utils.p(paramr0, l, l, 524304).toString() });
    }
    else
    {
      paramr0 = Utils.p(this.f, l, l, 524306);
    }
    return new a(paramInt, paramr0);
  }
  
  private b d(long paramLong1, boolean paramBoolean, long paramLong2, long paramLong3, int paramInt1, int paramInt2, String paramString1, String paramString2, int paramInt3, int paramInt4, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt5)
  {
    b localb = new b();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramInt5 != 101) {
      if (paramInt5 != 201) {
        if (paramInt5 != 202) {
          break label367;
        }
      }
    }
    for (;;)
    {
      if (paramBoolean)
      {
        localStringBuilder.append(this.f.getResources().getString(2131886535));
      }
      else
      {
        String str1 = Utils.p(this.f, paramLong2, paramLong2, 524417);
        String str2 = Utils.p(this.f, paramLong3, paramLong3, 524417);
        localStringBuilder.append(str1);
        localStringBuilder.append("-");
        localStringBuilder.append(str2);
        if (this.b)
        {
          localStringBuilder.append(" ");
          localStringBuilder.append(this.a);
          continue;
          if (paramBoolean)
          {
            localStringBuilder.append(this.f.getResources().getString(2131886535));
          }
          else
          {
            str2 = Utils.p(this.f, paramLong2, paramLong2, 524417);
            str1 = Utils.p(this.f, paramLong3, paramLong3, 524417);
            localStringBuilder.append(str2);
            localStringBuilder.append("&");
            localStringBuilder.append(str1);
            if (this.b)
            {
              localStringBuilder.append(" ");
              localStringBuilder.append(this.a);
              continue;
              if (paramBoolean)
              {
                localStringBuilder.append(Utils.p(this.f, paramLong2, paramLong3, 524304));
              }
              else
              {
                paramInt5 = 524289;
                if (DateFormat.is24HourFormat(this.f)) {
                  paramInt5 = 524417;
                }
                int k = paramInt5;
                if (paramInt2 > paramInt1) {
                  k = paramInt5 | 0x10;
                }
                localStringBuilder.append(Utils.p(this.f, paramLong2, paramLong3, k));
                if (this.b)
                {
                  localStringBuilder.append(" ");
                  localStringBuilder.append(this.a);
                }
              }
            }
          }
        }
      }
    }
    label367:
    localb.h = paramLong1;
    localb.i = paramLong2;
    localb.j = paramLong3;
    localb.k = paramBoolean;
    localb.b = localStringBuilder.toString();
    localb.a = 0;
    localb.l = paramInt3;
    localb.g = paramInt4;
    localb.m = paramString3;
    localb.n = paramString4;
    localb.o = paramString5;
    paramInt1 = -1;
    try
    {
      paramInt2 = Integer.parseInt(paramString6);
      paramInt1 = paramInt2 & 0xFF;
    }
    catch (Exception paramString3)
    {
      paramString4 = new StringBuilder();
      paramString4.append("eventType change error");
      paramString4.append(paramString3);
      z.c("Cal:D:AgendaWidgetModel", paramString4.toString());
    }
    localb.p = paramInt1;
    localb.f = e0.d(this.f, paramString1);
    localb.e = 0;
    if (!TextUtils.isEmpty(paramString2))
    {
      localb.c = 0;
      localb.d = paramString2;
    }
    else
    {
      localb.c = 8;
    }
    return localb;
  }
  
  public void a(Cursor paramCursor, String paramString)
  {
    Object localObject1 = this;
    Object localObject2 = new r0(paramString);
    Object localObject3 = new ArrayList(7);
    for (int k = 0; k < 7; k++) {
      ((ArrayList)localObject3).add(new LinkedList());
    }
    ((r0)localObject2).M();
    boolean bool = TextUtils.equals(paramString, r0.j()) ^ true;
    ((a)localObject1).b = bool;
    if (bool)
    {
      paramString = TimeZone.getTimeZone(paramString);
      if (((r0)localObject2).k() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      ((a)localObject1).a = paramString.getDisplayName(bool, 0);
    }
    paramCursor.moveToPosition(-1);
    localObject1 = Utils.U(((a)localObject1).f);
    paramString = (String)localObject2;
    localObject2 = localObject1;
    int m;
    for (;;)
    {
      localObject1 = this;
      Object localObject4 = paramCursor;
      if (!paramCursor.moveToNext()) {
        break;
      }
      m = paramCursor.getPosition();
      long l1 = ((Cursor)localObject4).getLong(5);
      if (((Cursor)localObject4).getInt(0) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      long l2 = ((Cursor)localObject4).getLong(1);
      long l3 = ((Cursor)localObject4).getLong(2);
      String str1 = ((Cursor)localObject4).getString(3);
      String str2 = ((Cursor)localObject4).getString(4);
      n = ((Cursor)localObject4).getInt(6);
      k = ((Cursor)localObject4).getInt(7);
      i1 = ((Cursor)localObject4).getInt(8);
      int i2 = ((Cursor)localObject4).getInt(9);
      String str3 = ((Cursor)localObject4).getString(10);
      ((Cursor)localObject4).getString(11);
      String str4 = ((Cursor)localObject4).getString(12);
      String str5 = ((Cursor)localObject4).getString(13);
      String str6 = ((Cursor)localObject4).getString(14);
      long l4 = l2;
      long l5 = l3;
      if (bool)
      {
        l4 = Utils.f(paramString, l2, (String)localObject2);
        l5 = Utils.f(paramString, l3, (String)localObject2);
      }
      localObject4 = new StringBuilder();
      ((StringBuilder)localObject4).append("buildFromCursor(): Row #");
      ((StringBuilder)localObject4).append(m);
      ((StringBuilder)localObject4).append(" allDay:");
      ((StringBuilder)localObject4).append(bool);
      ((StringBuilder)localObject4).append(" start:");
      ((StringBuilder)localObject4).append(l4);
      ((StringBuilder)localObject4).append(" end:");
      ((StringBuilder)localObject4).append(l5);
      ((StringBuilder)localObject4).append(" eventId:");
      ((StringBuilder)localObject4).append(l1);
      z.a("Cal:D:AgendaWidgetModel", ((StringBuilder)localObject4).toString());
      if (l5 >= ((a)localObject1).g)
      {
        while (n > ((a)localObject1).i) {}
        m = ((a)localObject1).d.size();
        ((a)localObject1).d.add(d(l1, bool, l4, l5, n, k, str1, str2, i1, i2, str3, str4, str5, str6, 101));
        i1 = this.h;
        k = n;
        if (n < i1) {
          k = i1;
        }
        localObject4 = (LinkedList)((ArrayList)localObject3).get(k - i1);
        localObject1 = new c(1, m);
        if (bool) {
          ((LinkedList)localObject4).addFirst(localObject1);
        } else {
          ((LinkedList)localObject4).add(localObject1);
        }
      }
    }
    int i1 = ((ArrayList)localObject3).size();
    for (k = 0; k < i1; k++)
    {
      paramCursor = (LinkedList)((ArrayList)localObject3).get(k);
      m = paramCursor.size();
      if ((k == 0) && (m == 0)) {
        ((a)localObject1).j = true;
      }
      for (n = 0; n < m; n++)
      {
        localObject2 = (c)paramCursor.get(n);
        if ((k != i1 - 1) && (n >= m - 1)) {
          bool = false;
        } else {
          bool = true;
        }
        ((c)localObject2).c = bool;
      }
    }
    k = ((a)localObject1).h;
    paramCursor = ((ArrayList)localObject3).iterator();
    int n = 0;
    while (paramCursor.hasNext())
    {
      localObject2 = (LinkedList)paramCursor.next();
      if (!((AbstractCollection)localObject2).isEmpty())
      {
        if (k != ((a)localObject1).h)
        {
          localObject3 = ((a)localObject1).c(k, paramString);
          i1 = ((a)localObject1).e.size();
          ((a)localObject1).e.add(localObject3);
          ((a)localObject1).c.add(new c(0, i1));
        }
        ((a)localObject1).c.addAll((Collection)localObject2);
        n += ((LinkedList)localObject2).size();
      }
      k++;
      if (n >= 20) {
        break;
      }
    }
  }
  
  public void b(List<Event> paramList, String paramString, int paramInt)
  {
    r0 localr0 = new r0(paramString);
    int k = 0;
    this.b = false;
    Iterator localIterator = paramList.iterator();
    for (;;)
    {
      a locala = this;
      paramList = paramString;
      if (!localIterator.hasNext()) {
        break;
      }
      Event localEvent = (Event)localIterator.next();
      long l1 = System.currentTimeMillis();
      long l2 = localEvent.getStartTimeMillis();
      long l3 = localEvent.getEndTimeMillis();
      if (localEvent.isAllDay())
      {
        l3 = Calendar.getInstance().getTimeInMillis();
        l2 = Utils.f(localr0, l3, paramList);
        l3 = Utils.f(localr0, l3 + 86400000L, paramList);
      }
      else
      {
        if (l1 > l3) {
          continue;
        }
      }
      paramList = Calendar.getInstance();
      paramList.setTimeInMillis(l2);
      int m = d.b(paramList);
      paramList.setTimeInMillis(l3);
      int n = d.b(paramList);
      paramList = new StringBuilder();
      paramList.append("buildFromEventList(): allDay:");
      paramList.append(localEvent.isAllDay());
      paramList.append(" start:");
      paramList.append(localEvent.getStartTimeMillis());
      paramList.append(" end:");
      paramList.append(localEvent.getEndTimeMillis());
      paramList.append(" startDay:");
      paramList.append(m);
      paramList.append(" endDay:");
      paramList.append(n);
      paramList.append(" eventId:");
      paramList.append(localEvent.getId());
      paramList.append(" title:");
      paramList.append(localEvent.getTitle());
      paramList.append(" location:");
      paramList.append(localEvent.getLocation());
      z.a("Cal:D:AgendaWidgetModel", paramList.toString());
      Object localObject1 = Calendar.getInstance();
      int i1 = localEvent.getEventType();
      Object localObject2;
      if (i1 != 7)
      {
        if (i1 != 8)
        {
          if (i1 != 9) {
            localObject2 = localEvent.getTitle();
          }
          StringBuilder localStringBuilder;
          for (paramList = localEvent.getLocation();; paramList = localStringBuilder.toString())
          {
            k = 0;
            break;
            localObject3 = (CountdownEvent)localEvent;
            i1 = ((CountdownEvent)localObject3).calDays((Calendar)localObject1);
            if (i1 == 0) {
              paramList = locala.f.getString(2131886392);
            } else {
              paramList = locala.f.getResources().getQuantityString(2131755059, i1, new Object[] { Integer.valueOf(i1) });
            }
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(((CountdownEvent)localObject3).getContent());
            ((StringBuilder)localObject2).append("·");
            ((StringBuilder)localObject2).append(paramList);
            localObject2 = ((StringBuilder)localObject2).toString();
            paramList = locala.f.getString(2131886391);
            localStringBuilder = new StringBuilder();
            localStringBuilder.append(paramList);
            localStringBuilder.append(" | ");
            localStringBuilder.append(((CountdownEvent)localObject3).getDateString(locala.f, (Calendar)localObject1));
          }
        }
        Object localObject3 = (AnniversaryEvent)localEvent;
        i1 = ((AnniversaryEvent)localObject3).calAnniversary((Calendar)localObject1);
        if (i1 > 0)
        {
          paramList = locala.f.getResources().getQuantityString(2131755029, i1, new Object[] { Integer.valueOf(i1) });
        }
        else
        {
          i1 = ((AnniversaryEvent)localObject3).calDays((Calendar)localObject1);
          paramList = locala.f.getResources().getQuantityString(2131755026, i1, new Object[] { Integer.valueOf(i1) });
        }
        k = 0;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(((AnniversaryEvent)localObject3).getContent());
        ((StringBuilder)localObject2).append("·");
        ((StringBuilder)localObject2).append(paramList);
        localObject2 = ((StringBuilder)localObject2).toString();
        paramList = locala.f.getString(2131886194);
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(paramList);
        ((StringBuilder)localObject1).append(" | ");
        ((StringBuilder)localObject1).append(((AnniversaryEvent)localObject3).getDateString(locala.f));
        paramList = ((StringBuilder)localObject1).toString();
      }
      else
      {
        paramList = (BirthdayEvent)localEvent;
        localObject2 = paramList.getTitle();
        paramList = paramList.getDateString(locala.f);
      }
      locala.d.add(d(localEvent.getId(), localEvent.isAllDay(), l2, l3, m, n, (String)localObject2, paramList, localEvent.getColor(), localEvent.getEx().getSelfAttendeeStatus(), localEvent.getDescription(), localEvent.getEx().getAccountName(), localEvent.getEx().getAccountType(), String.valueOf(localEvent.getEx().getHasExtendedProperties()), paramInt));
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("\nAgendaWidgetModel [eventInfos=");
    localStringBuilder.append(this.d);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public static class a
  {
    final int a;
    final String b;
    
    a(int paramInt, String paramString)
    {
      this.a = paramInt;
      this.b = paramString;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      a locala = (a)paramObject;
      paramObject = this.b;
      if (paramObject == null)
      {
        if (locala.b != null) {
          return false;
        }
      }
      else if (!paramObject.equals(locala.b)) {
        return false;
      }
      return this.a == locala.a;
    }
    
    public int hashCode()
    {
      String str = this.b;
      int i;
      if (str == null) {
        i = 0;
      } else {
        i = str.hashCode();
      }
      return (i + 31) * 31 + this.a;
    }
    
    public String toString()
    {
      return this.b;
    }
  }
  
  public static class b
  {
    public int a = 8;
    public String b;
    public int c = 8;
    public String d;
    public int e = 8;
    public String f;
    public int g;
    public long h;
    public long i;
    public long j;
    public boolean k;
    public int l;
    public String m;
    public String n;
    public String o;
    public int p;
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (b)paramObject;
      if (this.h != paramObject.h) {
        return false;
      }
      if (this.k != paramObject.k) {
        return false;
      }
      if (this.j != paramObject.j) {
        return false;
      }
      if (this.i != paramObject.i) {
        return false;
      }
      String str = this.f;
      if (str == null)
      {
        if (paramObject.f != null) {
          return false;
        }
      }
      else if (!str.equals(paramObject.f)) {
        return false;
      }
      if (this.e != paramObject.e) {
        return false;
      }
      if (this.a != paramObject.a) {
        return false;
      }
      if (this.c != paramObject.c) {
        return false;
      }
      str = this.b;
      if (str == null)
      {
        if (paramObject.b != null) {
          return false;
        }
      }
      else if (!str.equals(paramObject.b)) {
        return false;
      }
      str = this.d;
      if (str == null)
      {
        if (paramObject.d != null) {
          return false;
        }
      }
      else if (!str.equals(paramObject.d)) {
        return false;
      }
      if (this.l != paramObject.l) {
        return false;
      }
      if (this.g != paramObject.g) {
        return false;
      }
      if (!TextUtils.equals(this.m, paramObject.m)) {
        return false;
      }
      if (!TextUtils.equals(this.n, paramObject.n)) {
        return false;
      }
      return TextUtils.equals(this.o, paramObject.o);
    }
    
    public int hashCode()
    {
      int i1;
      if (this.k) {
        i1 = 1231;
      } else {
        i1 = 1237;
      }
      long l1 = this.h;
      int i2 = (int)(l1 ^ l1 >>> 32);
      l1 = this.j;
      int i3 = (int)(l1 ^ l1 >>> 32);
      l1 = this.i;
      int i4 = (int)(l1 ^ l1 >>> 32);
      String str = this.f;
      int i5 = 0;
      int i6;
      if (str == null) {
        i6 = 0;
      } else {
        i6 = str.hashCode();
      }
      int i7 = this.e;
      int i8 = this.a;
      int i9 = this.c;
      str = this.b;
      int i10;
      if (str == null) {
        i10 = 0;
      } else {
        i10 = str.hashCode();
      }
      str = this.d;
      if (str != null) {
        i5 = str.hashCode();
      }
      return ((((((((((((((i1 + 31) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i5) * 31 + this.l) * 31 + this.g) * 31 + this.m.hashCode()) * 31 + this.n.hashCode()) * 31 + this.o.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("EventInfo [visibTitle=");
      localStringBuilder.append(this.e);
      localStringBuilder.append(", title=");
      localStringBuilder.append(this.f);
      localStringBuilder.append(", visibWhen=");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", id=");
      localStringBuilder.append(this.h);
      localStringBuilder.append(", when=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", visibWhere=");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", where=");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", color=");
      localStringBuilder.append(String.format("0x%x", new Object[] { Integer.valueOf(this.l) }));
      localStringBuilder.append(", selfAttendeeStatus=");
      localStringBuilder.append(this.g);
      localStringBuilder.append(", calendarDisplayName=");
      localStringBuilder.append(this.m);
      localStringBuilder.append(", accountName=");
      localStringBuilder.append(this.n);
      localStringBuilder.append(", accountType=");
      localStringBuilder.append(this.o);
      localStringBuilder.append(", eventType=");
      localStringBuilder.append(this.p);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static class c
  {
    final int a;
    final int b;
    boolean c = true;
    
    c(int paramInt1, int paramInt2)
    {
      this.a = paramInt1;
      this.b = paramInt2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.a
 * JD-Core Version:    0.7.0.1
 */