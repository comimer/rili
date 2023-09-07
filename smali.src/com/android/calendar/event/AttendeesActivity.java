package com.android.calendar.event;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import com.android.calendar.common.Utils;
import com.android.calendar.common.b;
import com.android.calendar.common.event.schema.AgendaEvent;
import com.android.calendar.common.event.schema.AgendaEvent.Calendar;
import com.android.calendar.common.event.schema.Attendee;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.u;
import miuix.appcompat.app.m;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/AttendeesActivity;", "Lcom/android/calendar/common/b;", "Lkotlin/u;", "b0", "Ljava/util/ArrayList;", "", "emailList", "email", "a0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "btnGuestsEmail", "Landroidx/recyclerview/widget/RecyclerView;", "c", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/android/calendar/common/event/schema/AgendaEvent;", "d", "Lcom/android/calendar/common/event/schema/AgendaEvent;", "agendaEvent", "e", "Ljava/lang/String;", "syncAccountName", "f", "calendarOwnerAccount", "g", "Ljava/util/ArrayList;", "toEmails", "h", "ccEmails", "", "Lcom/android/calendar/event/AttendeesActivity$c;", "i", "Ljava/util/List;", "itemList", "<init>", "()V", "k", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class AttendeesActivity
  extends b
{
  public static final b k = new b(null);
  private TextView b;
  private RecyclerView c;
  private AgendaEvent d;
  private String e;
  private String f;
  private final ArrayList<String> g = new ArrayList();
  private final ArrayList<String> h = new ArrayList();
  private final List<c> i = new ArrayList();
  public Map<Integer, View> j;
  
  private final void a0(ArrayList<String> paramArrayList, String paramString)
  {
    if (Utils.j0(paramString, this.e)) {
      paramArrayList.add(paramString);
    }
  }
  
  private final void b0()
  {
    Resources localResources = getResources();
    AgendaEvent localAgendaEvent1 = this.d;
    AgendaEvent localAgendaEvent2 = localAgendaEvent1;
    if (localAgendaEvent1 == null)
    {
      r.x("agendaEvent");
      localAgendaEvent2 = null;
    }
    startActivity(Utils.i(localResources, localAgendaEvent2.getTitle(), null, this.g, this.h, this.f));
  }
  
  private static final void c0(AttendeesActivity paramAttendeesActivity, View paramView)
  {
    r.f(paramAttendeesActivity, "this$0");
    paramAttendeesActivity.b0();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558439);
    setTitle(2131886201);
    paramBundle = getIntent();
    if (paramBundle != null) {
      paramBundle = paramBundle.getSerializableExtra("extra_event");
    } else {
      paramBundle = null;
    }
    if ((paramBundle instanceof AgendaEvent)) {
      paramBundle = (AgendaEvent)paramBundle;
    } else {
      paramBundle = null;
    }
    if (paramBundle == null) {
      finish();
    } else {
      this.d = paramBundle;
    }
    Object localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    int m;
    if (paramBundle.getCalendars() != null)
    {
      localObject1 = this.d;
      paramBundle = (Bundle)localObject1;
      if (localObject1 == null)
      {
        r.x("agendaEvent");
        paramBundle = null;
      }
      if (paramBundle.getCalendarPosition() >= 0)
      {
        localObject1 = this.d;
        paramBundle = (Bundle)localObject1;
        if (localObject1 == null)
        {
          r.x("agendaEvent");
          paramBundle = null;
        }
        m = paramBundle.getCalendarPosition();
        localObject1 = this.d;
        paramBundle = (Bundle)localObject1;
        if (localObject1 == null)
        {
          r.x("agendaEvent");
          paramBundle = null;
        }
        paramBundle = paramBundle.getCalendars();
        r.c(paramBundle);
        if (m < paramBundle.size())
        {
          localObject1 = this.d;
          paramBundle = (Bundle)localObject1;
          if (localObject1 == null)
          {
            r.x("agendaEvent");
            paramBundle = null;
          }
          localObject2 = paramBundle.getCalendars();
          r.c(localObject2);
          localObject1 = this.d;
          paramBundle = (Bundle)localObject1;
          if (localObject1 == null)
          {
            r.x("agendaEvent");
            paramBundle = null;
          }
          this.f = ((AgendaEvent.Calendar)((List)localObject2).get(paramBundle.getCalendarPosition())).getOwnerAccount();
          localObject1 = this.d;
          paramBundle = (Bundle)localObject1;
          if (localObject1 == null)
          {
            r.x("agendaEvent");
            paramBundle = null;
          }
          localObject2 = paramBundle.getCalendars();
          r.c(localObject2);
          localObject1 = this.d;
          paramBundle = (Bundle)localObject1;
          if (localObject1 == null)
          {
            r.x("agendaEvent");
            paramBundle = null;
          }
          this.e = ((AgendaEvent.Calendar)((List)localObject2).get(paramBundle.getCalendarPosition())).getAccountName();
        }
      }
    }
    Object localObject2 = getResources().getStringArray(2130903118);
    r.e(localObject2, "resources.getStringArray(R.array.response_labels2)");
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getNoResponseAttendees();
    int n = 0;
    Object localObject3;
    Object localObject4;
    if (paramBundle != null)
    {
      if ((paramBundle.isEmpty() ^ true))
      {
        localObject3 = this.i;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(localObject2[0]);
        ((StringBuilder)localObject1).append('(');
        ((StringBuilder)localObject1).append(paramBundle.size());
        ((StringBuilder)localObject1).append(')');
        ((List)localObject3).add(new c(0, ((StringBuilder)localObject1).toString()));
        localObject3 = this.i;
        localObject1 = new ArrayList(t.u(paramBundle, 10));
        localObject4 = paramBundle.iterator();
        while (((Iterator)localObject4).hasNext())
        {
          paramBundle = ((Attendee)((Iterator)localObject4).next()).getName();
          if (paramBundle == null) {
            paramBundle = "";
          } else {
            r.e(paramBundle, "attendee.name ?: \"\"");
          }
          ((Collection)localObject1).add(new c(1, paramBundle));
        }
        ((List)localObject3).addAll((Collection)localObject1);
      }
      paramBundle = u.a;
    }
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getAcceptedAttendees();
    if (paramBundle != null)
    {
      if ((paramBundle.isEmpty() ^ true))
      {
        if ((this.i.isEmpty() ^ true)) {
          this.i.add(new c(2, ""));
        }
        localObject1 = this.i;
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append(localObject2[1]);
        ((StringBuilder)localObject3).append('(');
        ((StringBuilder)localObject3).append(paramBundle.size());
        ((StringBuilder)localObject3).append(')');
        ((List)localObject1).add(new c(0, ((StringBuilder)localObject3).toString()));
        localObject1 = this.i;
        localObject3 = new ArrayList(t.u(paramBundle, 10));
        paramBundle = paramBundle.iterator();
        while (paramBundle.hasNext())
        {
          localObject4 = ((Attendee)paramBundle.next()).getName();
          r.e(localObject4, "attendee.name");
          ((Collection)localObject3).add(new c(1, (String)localObject4));
        }
        ((List)localObject1).addAll((Collection)localObject3);
      }
      paramBundle = u.a;
    }
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getDeclinedAttendees();
    if (paramBundle != null)
    {
      if ((paramBundle.isEmpty() ^ true))
      {
        if ((this.i.isEmpty() ^ true)) {
          this.i.add(new c(2, ""));
        }
        localObject3 = this.i;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(localObject2[3]);
        ((StringBuilder)localObject1).append('(');
        ((StringBuilder)localObject1).append(paramBundle.size());
        ((StringBuilder)localObject1).append(')');
        ((List)localObject3).add(new c(0, ((StringBuilder)localObject1).toString()));
        localObject1 = this.i;
        localObject3 = new ArrayList(t.u(paramBundle, 10));
        paramBundle = paramBundle.iterator();
        while (paramBundle.hasNext())
        {
          localObject4 = ((Attendee)paramBundle.next()).getName();
          r.e(localObject4, "attendee.name");
          ((Collection)localObject3).add(new c(1, (String)localObject4));
        }
        ((List)localObject1).addAll((Collection)localObject3);
      }
      paramBundle = u.a;
    }
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getTentativeAttendees();
    if (paramBundle != null)
    {
      if ((paramBundle.isEmpty() ^ true))
      {
        if ((this.i.isEmpty() ^ true)) {
          this.i.add(new c(2, ""));
        }
        localObject3 = this.i;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(localObject2[2]);
        ((StringBuilder)localObject1).append('(');
        ((StringBuilder)localObject1).append(paramBundle.size());
        ((StringBuilder)localObject1).append(')');
        ((List)localObject3).add(new c(0, ((StringBuilder)localObject1).toString()));
        localObject2 = this.i;
        localObject1 = new ArrayList(t.u(paramBundle, 10));
        paramBundle = paramBundle.iterator();
        while (paramBundle.hasNext())
        {
          localObject3 = ((Attendee)paramBundle.next()).getName();
          r.e(localObject3, "attendee.name");
          ((Collection)localObject1).add(new c(1, (String)localObject3));
        }
        ((List)localObject2).addAll((Collection)localObject1);
      }
      paramBundle = u.a;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("itemList: ");
    paramBundle.append(this.i);
    z.a("Cal:D:AttendeesActivity", paramBundle.toString());
    paramBundle = findViewById(2131362058);
    r.e(paramBundle, "findViewById(R.id.btn_email_guests)");
    localObject1 = (TextView)paramBundle;
    this.b = ((TextView)localObject1);
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("btnGuestsEmail");
      paramBundle = null;
    }
    v.f(paramBundle, false);
    localObject1 = this.b;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("btnGuestsEmail");
      paramBundle = null;
    }
    paramBundle.setOnClickListener(new a(this));
    paramBundle = findViewById(2131363017);
    r.e(paramBundle, "findViewById(R.id.recycler_view)");
    localObject1 = (RecyclerView)paramBundle;
    this.c = ((RecyclerView)localObject1);
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("recyclerView");
      paramBundle = null;
    }
    paramBundle.setLayoutManager(new LinearLayoutManager(this, 1, false));
    localObject1 = this.c;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("recyclerView");
      paramBundle = null;
    }
    paramBundle.setAdapter(new a());
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getAcceptedAttendees();
    if (paramBundle != null)
    {
      localObject1 = paramBundle.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Attendee)((Iterator)localObject1).next();
        paramBundle = this.g;
        localObject2 = ((Attendee)localObject2).getEmail();
        r.e(localObject2, "attendee.email");
        a0(paramBundle, (String)localObject2);
      }
      paramBundle = u.a;
    }
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getTentativeAttendees();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.iterator();
      while (paramBundle.hasNext())
      {
        localObject2 = (Attendee)paramBundle.next();
        localObject1 = this.g;
        localObject2 = ((Attendee)localObject2).getEmail();
        r.e(localObject2, "attendee.email");
        a0((ArrayList)localObject1, (String)localObject2);
      }
      paramBundle = u.a;
    }
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getNoResponseAttendees();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.iterator();
      while (paramBundle.hasNext())
      {
        localObject2 = (Attendee)paramBundle.next();
        localObject1 = this.g;
        localObject2 = ((Attendee)localObject2).getEmail();
        r.e(localObject2, "attendee.email");
        a0((ArrayList)localObject1, (String)localObject2);
      }
      paramBundle = u.a;
    }
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getDeclinedAttendees();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.iterator();
      while (paramBundle.hasNext())
      {
        localObject2 = (Attendee)paramBundle.next();
        localObject1 = this.h;
        localObject2 = ((Attendee)localObject2).getEmail();
        r.e(localObject2, "attendee.email");
        a0((ArrayList)localObject1, (String)localObject2);
      }
      paramBundle = u.a;
    }
    localObject1 = this.d;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("agendaEvent");
      paramBundle = null;
    }
    paramBundle = paramBundle.getEx().getOrganizer();
    if ((!this.g.contains(paramBundle)) && (!this.h.contains(paramBundle)))
    {
      localObject1 = this.g;
      r.e(paramBundle, "eventOrganizerEmail");
      a0((ArrayList)localObject1, paramBundle);
    }
    if ((this.g.size() <= 0) && (this.h.size() > 0))
    {
      this.g.addAll(this.h);
      this.h.clear();
    }
    if (this.g.size() > 0) {
      m = 1;
    } else {
      m = 0;
    }
    int i1 = m;
    if (this.g.size() == 1)
    {
      i1 = m;
      if (this.g.contains(paramBundle)) {
        i1 = 0;
      }
    }
    paramBundle = this.b;
    if (paramBundle == null)
    {
      r.x("btnGuestsEmail");
      paramBundle = null;
    }
    if (i1 != 0) {
      m = n;
    } else {
      m = 8;
    }
    paramBundle.setVisibility(m);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/AttendeesActivity$a;", "Landroidx/recyclerview/widget/RecyclerView$g;", "Lcom/android/calendar/event/AttendeesActivity$d;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "g", "getItemCount", "position", "getItemViewType", "holder", "Lkotlin/u;", "f", "<init>", "(Lcom/android/calendar/event/AttendeesActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class a
    extends RecyclerView.g<AttendeesActivity.d>
  {
    public void f(AttendeesActivity.d paramd, int paramInt)
    {
      r.f(paramd, "holder");
      paramd.a((AttendeesActivity.c)AttendeesActivity.Z(this.a).get(paramInt));
    }
    
    public AttendeesActivity.d g(ViewGroup paramViewGroup, int paramInt)
    {
      r.f(paramViewGroup, "parent");
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2) {
            paramViewGroup = this.a.getLayoutInflater().inflate(2131558989, paramViewGroup, false);
          } else {
            paramViewGroup = this.a.getLayoutInflater().inflate(2131558990, paramViewGroup, false);
          }
        }
        else {
          paramViewGroup = this.a.getLayoutInflater().inflate(2131558989, paramViewGroup, false);
        }
      }
      else {
        paramViewGroup = this.a.getLayoutInflater().inflate(2131558991, paramViewGroup, false);
      }
      r.e(paramViewGroup, "view");
      return new AttendeesActivity.d(paramViewGroup, paramInt);
    }
    
    public int getItemCount()
    {
      return AttendeesActivity.Z(this.a).size();
    }
    
    public int getItemViewType(int paramInt)
    {
      return ((AttendeesActivity.c)AttendeesActivity.Z(this.a).get(paramInt)).b();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/AttendeesActivity$b;", "", "", "EXTRA_EVENT", "Ljava/lang/String;", "", "ITEM_TYPE_ATTENDEE", "I", "ITEM_TYPE_DIVIDER", "ITEM_TYPE_TITLE", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/AttendeesActivity$c;", "", "", "toString", "", "hashCode", "other", "", "equals", "a", "I", "b", "()I", "type", "Ljava/lang/String;", "()Ljava/lang/String;", "text", "<init>", "(ILjava/lang/String;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
  {
    private final int a;
    private final String b;
    
    public c(int paramInt, String paramString)
    {
      this.a = paramInt;
      this.b = paramString;
    }
    
    public final String a()
    {
      return this.b;
    }
    
    public final int b()
    {
      return this.a;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof c)) {
        return false;
      }
      paramObject = (c)paramObject;
      if (this.a != paramObject.a) {
        return false;
      }
      return r.a(this.b, paramObject.b);
    }
    
    public int hashCode()
    {
      return Integer.hashCode(this.a) * 31 + this.b.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Item(type=");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", text=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/AttendeesActivity$d;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Lcom/android/calendar/event/AttendeesActivity$c;", "item", "Lkotlin/u;", "a", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "textView", "Landroid/view/View;", "view", "", "type", "<init>", "(Landroid/view/View;I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    extends RecyclerView.c0
  {
    private final TextView a;
    
    public d(View paramView, int paramInt)
    {
      super();
      if (paramInt == 2) {
        paramView = null;
      } else {
        paramView = (TextView)paramView.findViewById(2131363349);
      }
      this.a = paramView;
    }
    
    public final void a(AttendeesActivity.c paramc)
    {
      r.f(paramc, "item");
      TextView localTextView = this.a;
      if (localTextView != null) {
        localTextView.setText(paramc.a());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.AttendeesActivity
 * JD-Core Version:    0.7.0.1
 */