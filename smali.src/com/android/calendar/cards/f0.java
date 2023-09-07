package com.android.calendar.cards;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.android.calendar.event.e0;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.DynamicLinearLayout.b;
import com.miui.calendar.view.i;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.animation.a;
import miuix.animation.d;

public class f0
  extends m1<e, List<Event>>
{
  private List<Event> b = new ArrayList();
  private int c = -1;
  private float d = -1.0F;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  
  public f0(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  private ArrayList<EventInfoActivity.EventInfo> r(int paramInt, ArrayList<EventInfoActivity.EventInfo> paramArrayList)
  {
    int j = paramArrayList.size();
    int k = 200;
    if (j <= 200) {
      return paramArrayList;
    }
    j = 0;
    if (paramInt >= 100) {
      if (paramArrayList.size() - paramInt >= 100)
      {
        j = paramInt - 100;
        k = paramInt + 100;
      }
      else
      {
        j = paramArrayList.size() - 200;
        k = paramArrayList.size();
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("limitAgendaList start:");
    localStringBuilder.append(j);
    localStringBuilder.append(" end:");
    localStringBuilder.append(k);
    z.a("Cal:D:AgendaGroupSingleCard", localStringBuilder.toString());
    return new ArrayList(paramArrayList.subList(j, k));
  }
  
  int c()
  {
    return 20;
  }
  
  int d()
  {
    return 0;
  }
  
  void p(List<Event> paramList)
  {
    this.b = paramList;
  }
  
  void q(final e parame, final Context paramContext)
  {
    Object localObject = this.b;
    if (localObject == null) {
      return;
    }
    if (((List)localObject).isEmpty())
    {
      e.a(parame).setVisibility(0);
      e.b(parame).setVisibility(8);
    }
    else
    {
      e.a(parame).setVisibility(8);
      e.b(parame).setVisibility(0);
    }
    if (e.b(parame).getAdapter() == null)
    {
      localObject = new c(paramContext);
      ((c)localObject).l(this.b);
      e.b(parame).setAdapter((i)localObject);
    }
    else
    {
      ((c)e.b(parame).getAdapter()).l(this.b);
      e.b(parame).getAdapter().c();
    }
    this.e = paramContext.getResources().getDimensionPixelOffset(2131167088);
    this.f = paramContext.getResources().getDimensionPixelOffset(2131167088);
    this.g = 0;
    this.h = 0;
    int j = paramContext.getResources().getDimensionPixelOffset(2131166055);
    int k = paramContext.getResources().getDimensionPixelOffset(2131166052);
    this.i = (DeviceUtils.u(paramContext) - j - k);
    e.b(parame).setOnItemTouchListener(new a());
    e.b(parame).setOnItemClickListener(new b(parame, paramContext));
  }
  
  class a
    implements View.OnTouchListener
  {
    a() {}
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      a.y(new View[] { paramView }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
      if (paramMotionEvent.getAction() == 1) {
        paramView.performClick();
      }
      if ((paramMotionEvent.getAction() == 3) && (f0.g(f0.this) == 0) && (f0.i(f0.this) == paramMotionEvent.getY())) {
        paramView.performClick();
      }
      f0.h(f0.this, paramMotionEvent.getAction());
      f0.j(f0.this, paramMotionEvent.getY());
      return true;
    }
  }
  
  class b
    implements DynamicLinearLayout.b
  {
    b(f0.e parame, Context paramContext) {}
    
    public void a(int paramInt)
    {
      if ((f0.k(f0.this) != null) && (paramInt < f0.k(f0.this).size()))
      {
        Event localEvent = (Event)f0.k(f0.this).get(paramInt);
        Object localObject1 = new HashMap();
        int i = localEvent.getEventType();
        if (i != 7)
        {
          if (i != 8)
          {
            if (i != 9) {
              localObject2 = "日程";
            } else {
              localObject2 = "倒数日";
            }
          }
          else {
            localObject2 = "纪念日";
          }
        }
        else {
          localObject2 = "生日";
        }
        ((HashMap)localObject1).put("type", localObject2);
        CardHelper.o("card_item_clicked", parame.getAdapterPosition(), paramInt, null, (Map)localObject1, "agenda_group_card");
        localObject1 = new Intent(paramContext, EventInfoActivity.class);
        Object localObject2 = new ArrayList();
        Object localObject3 = f0.k(f0.this).iterator();
        Object localObject4;
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (Event)((Iterator)localObject3).next();
          ((ArrayList)localObject2).add(new EventInfoActivity.EventInfo(((Event)localObject4).getId(), ((Event)localObject4).getEventType(), ((Event)localObject4).getStartTimeMillis(), ((Event)localObject4).getEndTimeMillis(), 0, f0.this.a));
        }
        if ((f0.e.c(parame).getTop() >= 0) && (f0.l(f0.this) > f0.e.c(parame).getHeight()))
        {
          localObject3 = new Rect();
          localObject4 = new int[2];
          f0.e.c(parame).getLocationInWindow((int[])localObject4);
          ((Rect)localObject3).left = localObject4[0];
          i = localObject4[1];
          ((Rect)localObject3).top = i;
          ((Rect)localObject3).bottom = (i + f0.e.c(parame).getHeight());
          ((Rect)localObject3).right = (((Rect)localObject3).left + f0.e.c(parame).getWidth());
          ((Intent)localObject1).putExtra("extra_initial_rect", (Parcelable)localObject3);
        }
        ((Intent)localObject1).putExtra("extra_key_event_id", localEvent.getId());
        ((Intent)localObject1).putParcelableArrayListExtra("EXTRA_EVENT_INFO_LIST", f0.m(f0.this, paramInt, (ArrayList)localObject2));
        ((Intent)localObject1).setFlags(268435456);
        paramContext.startActivity((Intent)localObject1);
      }
    }
  }
  
  private class c
    extends i
  {
    private Calendar b = f0.this.a;
    private Context c;
    private List<Event> d;
    
    public c(Context paramContext)
    {
      this.c = paramContext;
    }
    
    private void e(f0.d paramd, Event paramEvent)
    {
      paramd.b.setText(e0.d(this.c, paramEvent.getTitle()));
      if (TextUtils.isEmpty(paramEvent.getLocation()))
      {
        paramd.h.setVisibility(8);
      }
      else
      {
        paramd.h.setVisibility(0);
        paramd.c.setText(paramEvent.getLocation());
        paramd.d.setText("");
        paramd.f.setVisibility(8);
      }
      if ((paramEvent.getEx().isCanceledMeeting()) || (paramEvent.getEx().isRejectAgenda()))
      {
        paramd = paramd.b;
        paramd.setPaintFlags(paramd.getPaintFlags() | 0x10);
      }
    }
    
    private void f(f0.d paramd, Event paramEvent)
    {
      AnniversaryEvent localAnniversaryEvent = (AnniversaryEvent)paramEvent;
      paramd.a.setImageResource(2131231244);
      paramd.h.setVisibility(0);
      paramd.f.setVisibility(0);
      paramd.c.setText(this.c.getString(2131886194));
      paramd.d.setText(localAnniversaryEvent.getDateString(this.c));
      paramd.d.setVisibility(0);
      paramd.e.setVisibility(8);
      int i = localAnniversaryEvent.calAnniversary(this.b);
      if (i > 0)
      {
        paramEvent = this.c.getResources().getQuantityString(2131755029, i, new Object[] { Integer.valueOf(i) });
      }
      else
      {
        i = localAnniversaryEvent.calDays(this.b);
        paramEvent = this.c.getResources().getQuantityString(2131755026, i, new Object[] { Integer.valueOf(i) });
      }
      paramd = paramd.b;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localAnniversaryEvent.getContent());
      localStringBuilder.append(" · ");
      localStringBuilder.append(paramEvent);
      paramd.setText(localStringBuilder.toString());
    }
    
    private void g(f0.d paramd, Event paramEvent)
    {
      BirthdayEvent localBirthdayEvent = (BirthdayEvent)paramEvent;
      paramd.a.setImageResource(2131231248);
      paramd.b.setText(paramEvent.getTitle());
      paramd.c.setText(localBirthdayEvent.getDateString(this.c));
      paramd.f.setVisibility(8);
      paramd.h.setVisibility(0);
      paramd.d.setVisibility(8);
      paramd.e.setVisibility(8);
    }
    
    private void h(f0.d paramd, Event paramEvent)
    {
      CountdownEvent localCountdownEvent = (CountdownEvent)paramEvent;
      paramd.a.setImageResource(2131231272);
      paramd.h.setVisibility(0);
      paramd.c.setText(this.c.getResources().getString(2131886391));
      paramd.f.setVisibility(0);
      paramd.d.setText(localCountdownEvent.getDateString(this.c, this.b));
      if (localCountdownEvent.getRepeatType() > 0)
      {
        paramd.g.setVisibility(0);
        paramd.e.setVisibility(0);
        paramd.e.setText(this.c.getResources().getStringArray(2130903114)[localCountdownEvent.getRepeatType()]);
      }
      else
      {
        paramd.g.setVisibility(8);
        paramd.e.setVisibility(8);
      }
      paramd.d.setVisibility(0);
      int i = localCountdownEvent.calDays(this.b);
      paramEvent = paramd.b;
      if (i == 0)
      {
        paramd = new StringBuilder();
        paramd.append(localCountdownEvent.getContent());
        paramd.append(" · ");
        paramd.append(this.c.getString(2131886392));
        paramd = paramd.toString();
      }
      else
      {
        paramd = new StringBuilder();
        paramd.append(localCountdownEvent.getContent());
        paramd.append(" · ");
        paramd.append(this.c.getResources().getQuantityString(2131755059, i, new Object[] { Integer.valueOf(i) }));
        paramd = paramd.toString();
      }
      paramEvent.setText(paramd);
    }
    
    private Pair<String, String> i(Long paramLong1, Long paramLong2, String paramString, Calendar paramCalendar)
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH:mm", Locale.getDefault());
      localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone(paramString));
      String str1 = localSimpleDateFormat.format(new Date(paramLong1.longValue()));
      String str2 = localSimpleDateFormat.format(new Date(paramLong2.longValue()));
      paramString = Calendar.getInstance();
      paramString.set(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), 0, 0, 0);
      long l1 = paramString.getTimeInMillis();
      paramString.set(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), 23, 59, 59);
      long l2 = paramString.getTimeInMillis();
      long l3 = paramLong1.longValue();
      String str3 = "24:00";
      String str4 = "00:00";
      paramCalendar = str1;
      paramString = str2;
      if (l3 < l1)
      {
        paramCalendar = str1;
        paramString = str2;
        if (paramLong2.longValue() > l2)
        {
          paramString = "24:00";
          paramCalendar = "00:00";
        }
      }
      if ((paramLong1.longValue() < l1) && (paramLong2.longValue() < l2))
      {
        paramString = localSimpleDateFormat.format(new Date(paramLong2.longValue()));
        paramCalendar = str4;
      }
      if ((paramLong1.longValue() > l1) && (paramLong2.longValue() > l2))
      {
        paramCalendar = localSimpleDateFormat.format(new Date(paramLong1.longValue()));
        paramLong1 = str3;
      }
      else
      {
        paramLong1 = paramString;
      }
      return new Pair(paramCalendar, paramLong1);
    }
    
    private void j(Long paramLong1, Long paramLong2, Boolean paramBoolean, f0.d paramd)
    {
      if (paramBoolean.booleanValue())
      {
        paramd.i.setVisibility(8);
        paramd.l.setVisibility(0);
      }
      else
      {
        paramd.i.setVisibility(0);
        paramd.l.setVisibility(8);
        paramBoolean = (String)i(paramLong1, paramLong2, this.b.getTimeZone().getID(), this.b).first;
        paramLong1 = (String)i(paramLong1, paramLong2, this.b.getTimeZone().getID(), this.b).second;
        paramd.j.setText(paramBoolean);
        paramd.k.setText(paramLong1);
      }
    }
    
    private void k(f0.d paramd, Event paramEvent)
    {
      int i = Utils.x(this.c.getResources(), paramEvent.getEx().getAccountName(), paramEvent.getEx().getAccountType(), paramEvent.getEx().getCalendarDisplayName(), paramEvent.getColor());
      paramEvent = this.c.getResources().getDrawable(2131231262, this.c.getTheme());
      paramEvent.mutate();
      paramEvent.setTint(i);
      paramd.a.setImageDrawable(paramEvent);
    }
    
    public int a()
    {
      return this.d.size();
    }
    
    public View b(int paramInt, View paramView)
    {
      f0.d locald;
      if (paramView == null)
      {
        paramView = LayoutInflater.from(this.c).inflate(2131558461, null);
        locald = new f0.d(paramView);
        paramView.setTag(locald);
      }
      else
      {
        locald = (f0.d)paramView.getTag();
      }
      Object localObject = this.d;
      if ((localObject != null) && (((List)localObject).size() == 1))
      {
        locald.m.setBackgroundResource(2131231037);
        locald.m.setPadding(f0.n(f0.this), f0.o(f0.this), f0.e(f0.this), f0.f(f0.this));
      }
      else if (paramInt == 0)
      {
        locald.m.setBackgroundResource(2131231044);
        locald.m.setPadding(f0.n(f0.this), f0.o(f0.this), f0.e(f0.this), 0);
      }
      else
      {
        localObject = this.d;
        if ((localObject != null) && (paramInt == ((List)localObject).size() - 1))
        {
          locald.m.setBackgroundResource(2131231034);
          locald.m.setPadding(f0.n(f0.this), 0, f0.e(f0.this), f0.f(f0.this));
        }
        else
        {
          locald.m.setBackgroundResource(2131231040);
          locald.m.setPadding(f0.n(f0.this), 0, f0.e(f0.this), 0);
        }
      }
      localObject = (Event)this.d.get(paramInt);
      k(locald, (Event)localObject);
      j(Long.valueOf(((Event)localObject).getStartTimeMillis()), Long.valueOf(((Event)localObject).getEndTimeMillis()), Boolean.valueOf(((Event)localObject).isAllDay()), locald);
      TextView localTextView = locald.b;
      localTextView.setPaintFlags(localTextView.getPaintFlags() & 0xFFFFFFEF);
      paramInt = ((Event)localObject).getEventType();
      if (paramInt != 7)
      {
        if (paramInt != 8)
        {
          if (paramInt != 9) {
            e(locald, (Event)localObject);
          } else {
            h(locald, (Event)localObject);
          }
        }
        else {
          f(locald, (Event)localObject);
        }
      }
      else {
        g(locald, (Event)localObject);
      }
      return paramView;
    }
    
    public void l(List<Event> paramList)
    {
      this.d = paramList;
    }
  }
  
  private static class d
  {
    ImageView a;
    TextView b;
    TextView c;
    TextView d;
    TextView e;
    View f;
    View g;
    LinearLayout h;
    View i;
    TextView j;
    TextView k;
    TextView l;
    View m;
    
    public d(View paramView)
    {
      this.a = ((ImageView)paramView.findViewById(2131362563));
      this.b = ((TextView)paramView.findViewById(2131362984));
      this.c = ((TextView)paramView.findViewById(2131362462));
      this.d = ((TextView)paramView.findViewById(2131363126));
      this.e = ((TextView)paramView.findViewById(2131363357));
      this.f = paramView.findViewById(2131362111);
      this.g = paramView.findViewById(2131362112);
      this.h = ((LinearLayout)paramView.findViewById(2131363125));
      this.i = paramView.findViewById(2131361921);
      this.j = ((TextView)paramView.findViewById(2131363240));
      this.k = ((TextView)paramView.findViewById(2131362410));
      this.l = ((TextView)paramView.findViewById(2131361943));
      this.m = paramView.findViewById(2131363074);
    }
  }
  
  public static class e
    extends RecyclerView.c0
  {
    private View a;
    private TextView b;
    private DynamicLinearLayout c;
    
    public e(View paramView)
    {
      super();
      this.a = paramView;
      this.b = ((TextView)paramView.findViewById(2131362882));
      this.c = ((DynamicLinearLayout)paramView.findViewById(2131362207));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.f0
 * JD-Core Version:    0.7.0.1
 */