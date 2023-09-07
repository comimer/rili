package n1;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.miui.calendar.search.g;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.w;
import com.miui.calendar.util.z;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;

@Metadata(bv={}, d1={""}, d2={"Ln1/c;", "Landroidx/recyclerview/widget/RecyclerView$g;", "Ln1/c$a;", "", "l", "Landroid/view/View;", "v", "", "position", "Ln1/e$a;", "item", "holder", "Lkotlin/u;", "s", "t", "j", "k", "h", "u", "clickedItem", "view", "m", "Landroid/view/ViewGroup;", "parent", "viewType", "r", "getItemCount", "o", "Lcom/miui/calendar/search/g;", "onChoiceItemClickListener", "i", "isEditMode", "w", "x", "getItemViewType", "Landroid/content/Context;", "mContext", "Ln1/i;", "mAgendaSet", "", "from", "<init>", "(Landroid/content/Context;Ln1/i;Ljava/lang/String;)V", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class c
  extends RecyclerView.g<a>
{
  public static final b j = new b(null);
  private final Context a;
  private final i b;
  private final String c;
  private final String d;
  private final String e;
  private g<e.a> f;
  private boolean g;
  private boolean h;
  private HashSet<e.a> i;
  
  public c(Context paramContext, i parami, String paramString)
  {
    this.a = paramContext;
    this.b = parami;
    this.c = paramString;
    parami = paramContext.getResources().getString(2131886179);
    r.e(parami, "mContext.resources.getSt….agenda_month_empty_hint)");
    this.d = parami;
    paramContext = paramContext.getResources().getString(2131886180);
    r.e(paramContext, "mContext.resources.getSt…nda_not_today_empty_hint)");
    this.e = paramContext;
    this.i = new HashSet();
  }
  
  private final void h(int paramInt, e.a parama)
  {
    if (parama.f == null) {
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("addChoice id:");
    ((StringBuilder)localObject).append(parama.f.getId());
    z.a("Cal:D:AgendaAdapter", ((StringBuilder)localObject).toString());
    this.i.add(parama);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("addChoice size:");
    ((StringBuilder)localObject).append(this.i.size());
    z.a("Cal:D:AgendaAdapter", ((StringBuilder)localObject).toString());
    localObject = this.f;
    if (localObject != null) {
      ((g)localObject).a(paramInt, true, parama);
    }
  }
  
  private final void j(int paramInt, e.a parama, a parama1)
  {
    this.h = (k(parama) ^ true);
    parama1.c().setChecked(this.h);
    if (this.h) {
      h(paramInt, parama);
    } else {
      u(paramInt, parama);
    }
  }
  
  private final boolean k(e.a parama)
  {
    return this.i.contains(parama);
  }
  
  private final boolean l()
  {
    boolean bool;
    if (getItemCount() == this.i.size()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private final void m(int paramInt, e.a parama, View paramView)
  {
    Intent localIntent = new Intent(this.a, EventInfoActivity.class);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.e().subList(Math.max(paramInt - 20, 0), Math.min(paramInt + 20, this.b.e().size())).iterator();
    while (localIterator.hasNext())
    {
      localObject = (e.a)localIterator.next();
      if (((e.a)localObject).f != null)
      {
        long l1 = ((e.a)localObject).f.getId();
        paramInt = ((e.a)localObject).f.getEventType();
        long l2 = ((e.a)localObject).f.getStartTimeMillis();
        long l3 = ((e.a)localObject).f.getEndTimeMillis();
        if (((e.a)localObject).f.getEventType() == 9) {
          localObject = Utils.X();
        } else {
          localObject = ((e.a)localObject).e;
        }
        localArrayList.add(new EventInfoActivity.EventInfo(l1, paramInt, l2, l3, 0, (Calendar)localObject, 16, null));
      }
    }
    Object localObject = new Rect();
    paramView.getGlobalVisibleRect((Rect)localObject);
    localIntent.putExtra("extra_initial_rect", (Parcelable)localObject);
    localIntent.putExtra("extra_key_event_id", parama.f.getId());
    localIntent.putExtra("extra_key_event_info", new EventInfoActivity.EventInfo(parama.f.getId(), parama.f.getEventType(), parama.f.getStartTimeMillis(), parama.f.getEndTimeMillis(), 0, parama.e, 16, null));
    localIntent.putParcelableArrayListExtra("EXTRA_EVENT_INFO_LIST", localArrayList);
    this.a.startActivity(localIntent);
  }
  
  private static final void p(c paramc, int paramInt, e.a parama, a parama1, View paramView)
  {
    r.f(paramc, "this$0");
    r.f(parama, "$item");
    r.f(parama1, "$holder");
    r.e(paramView, "it");
    paramc.s(paramView, paramInt, parama, parama1);
  }
  
  private static final boolean q(c paramc, int paramInt, e.a parama, a parama1, View paramView)
  {
    r.f(paramc, "this$0");
    r.f(parama, "$item");
    r.f(parama1, "$holder");
    z.a("Cal:D:AgendaAdapter", "holder.itemView onLongClick");
    if (r.a(paramc.c, "from_search_view"))
    {
      r.e(paramView, "v");
      paramc.t(paramView, paramInt, parama, parama1);
    }
    return false;
  }
  
  private final void s(View paramView, int paramInt, e.a parama, a parama1)
  {
    if (!this.g)
    {
      if ((!parama.h) && (!parama.g))
      {
        g0.f("key_agenda_item_clicked", new String[] { "item_position", String.valueOf(paramInt) });
        m(paramInt, parama, paramView);
      }
      else
      {
        Utils.j(this.a, parama.e);
      }
    }
    else {
      j(paramInt, parama, parama1);
    }
  }
  
  private final boolean t(View paramView, int paramInt, e.a parama, a parama1)
  {
    if (!this.g)
    {
      parama1 = this.f;
      if (parama1 != null) {
        parama1.d(paramView, paramInt);
      }
      paramView = this.f;
      if (paramView != null) {
        paramView.b(getItemCount());
      }
      boolean bool = k(parama) ^ true;
      this.h = bool;
      if (bool) {
        h(paramInt, parama);
      } else {
        u(paramInt, parama);
      }
      this.g ^= true;
      notifyDataSetChanged();
    }
    return true;
  }
  
  private final void u(int paramInt, e.a parama)
  {
    if (parama.f == null) {
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("removeChoice id:");
    ((StringBuilder)localObject).append(parama.f.getId());
    z.a("Cal:D:AgendaAdapter", ((StringBuilder)localObject).toString());
    this.i.remove(parama);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("removeChoice size:");
    ((StringBuilder)localObject).append(this.i.size());
    z.a("Cal:D:AgendaAdapter", ((StringBuilder)localObject).toString());
    localObject = this.f;
    if (localObject != null) {
      ((g)localObject).a(paramInt, false, parama);
    }
  }
  
  public int getItemCount()
  {
    return this.b.getCount();
  }
  
  public int getItemViewType(int paramInt)
  {
    return d.c(this.b.getItem(paramInt));
  }
  
  public final void i()
  {
    z.a("Cal:D:AgendaAdapter", "exitActionMode");
    this.g = false;
    this.i.clear();
    notifyDataSetChanged();
  }
  
  public void o(a parama, int paramInt)
  {
    r.f(parama, "holder");
    e.a locala = this.b.getItem(paramInt);
    if (locala == null) {
      return;
    }
    boolean bool = locala.g;
    int k = 8;
    if (bool)
    {
      localObject1 = parama.m();
      if ((!locala.a) && (!locala.c)) {
        m = 8;
      } else {
        m = 0;
      }
      ((View)localObject1).setVisibility(m);
      parama.g().setVisibility(0);
      localObject2 = parama.g();
      if (s0.z(locala.e.getTimeInMillis())) {
        localObject1 = this.d;
      } else {
        localObject1 = this.e;
      }
      ((TextView)localObject2).setText((CharSequence)localObject1);
      parama.d().setVisibility(0);
      parama.h().setVisibility(8);
      parama.k().setVisibility(8);
    }
    else if (locala.f != null)
    {
      localObject1 = parama.m();
      if ((!locala.c) && (!locala.a)) {
        m = 8;
      } else {
        m = 0;
      }
      ((View)localObject1).setVisibility(m);
      parama.g().setVisibility(8);
      parama.d().setVisibility(0);
      parama.h().setVisibility(0);
      parama.j().setText(com.android.calendar.event.e0.d(this.a, locala.f.getTitle()));
      localObject2 = com.miui.calendar.util.e0.e(this.a, locala.f, TimeZone.getDefault().getID(), locala.e);
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(locala.f.getLocation()))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append("  ");
        ((StringBuilder)localObject1).append(locala.f.getLocation());
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      parama.i().setText((CharSequence)localObject1);
      m = d.b(locala.f);
      if (m >= 0)
      {
        parama.k().setVisibility(0);
        parama.k().setImageResource(m);
      }
      else
      {
        parama.k().setVisibility(8);
      }
    }
    long l;
    if (locala.c)
    {
      parama.d().setVisibility(0);
      parama.e().setTypeface(w.b(this.a));
      localObject2 = parama.e();
      if (locala.h) {
        localObject1 = String.valueOf(Utils.V().get(5));
      } else {
        localObject1 = String.valueOf(locala.e.get(5));
      }
      ((TextView)localObject2).setText((CharSequence)localObject1);
      localObject2 = parama.f();
      localObject1 = this.a;
      if (locala.h) {
        l = Utils.W();
      } else {
        l = locala.e.getTimeInMillis();
      }
      ((TextView)localObject2).setText(DateUtils.formatDateTime((Context)localObject1, l, 34826));
      if (locala.h) {
        localObject1 = Utils.V();
      } else {
        localObject1 = locala.e;
      }
      if (s0.z(((Calendar)localObject1).getTimeInMillis()))
      {
        m = this.a.getResources().getColor(2131100943);
        parama.e().setTextColor(m);
        parama.f().setTextColor(m);
      }
      else
      {
        parama.e().setTextColor(this.a.getResources().getColor(2131099714));
        parama.f().setTextColor(this.a.getResources().getColor(2131099715));
      }
    }
    else
    {
      parama.d().setVisibility(4);
    }
    miuix.animation.a.y(new View[] { parama.o() }).d().z(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).z(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).P(parama.o(), new d9.a[0]);
    parama.o().setOnClickListener(new a(this, paramInt, locala, parama));
    Object localObject1 = parama.n();
    if (locala.a) {
      m = 0;
    } else {
      m = 8;
    }
    ((View)localObject1).setVisibility(m);
    localObject1 = parama.a();
    if (paramInt == getItemCount() - 1) {
      m = 0;
    } else {
      m = 8;
    }
    ((View)localObject1).setVisibility(m);
    localObject1 = parama.n();
    Object localObject2 = this.a;
    if (locala.h) {
      l = Utils.W();
    } else {
      l = locala.e.getTimeInMillis();
    }
    ((TextView)localObject1).setText(DateUtils.formatDateTime((Context)localObject2, l, 52));
    bool = locala.c;
    if ((bool) && (locala.d))
    {
      parama.p().setVisibility(8);
      parama.b().setVisibility(8);
      parama.l().setBackgroundResource(2131231023);
      if (locala.a) {
        parama.o().setBackgroundResource(2131231033);
      } else {
        parama.o().setBackgroundResource(2131231041);
      }
    }
    else if (bool)
    {
      parama.l().setBackgroundResource(2131231027);
      if (locala.a)
      {
        parama.p().setVisibility(8);
        parama.o().setBackgroundResource(2131231038);
      }
      else
      {
        parama.p().setVisibility(0);
        parama.o().setBackgroundResource(2131231047);
      }
      parama.b().setVisibility(8);
    }
    else if (locala.d)
    {
      parama.p().setVisibility(8);
      parama.b().setVisibility(0);
      parama.l().setBackgroundResource(2131231026);
      parama.o().setBackgroundResource(2131231033);
    }
    else
    {
      parama.p().setVisibility(8);
      parama.b().setVisibility(8);
      parama.l().setBackgroundResource(2131231025);
      parama.o().setBackgroundResource(2131231038);
    }
    parama.c().setClickable(false);
    localObject1 = parama.c();
    int m = k;
    if (this.g) {
      m = 0;
    }
    ((View)localObject1).setVisibility(m);
    this.h = k(locala);
    parama.c().setChecked(this.h);
    parama.o().setOnLongClickListener(new b(this, paramInt, locala, parama));
  }
  
  public a r(ViewGroup paramViewGroup, int paramInt)
  {
    r.f(paramViewGroup, "parent");
    paramViewGroup = LayoutInflater.from(paramViewGroup.getContext()).inflate(2131558458, paramViewGroup, false);
    r.e(paramViewGroup, "from(parent.context).inf…em_normal, parent, false)");
    return new a(paramViewGroup);
  }
  
  public final void v(g<e.a> paramg)
  {
    r.f(paramg, "onChoiceItemClickListener");
    this.f = paramg;
  }
  
  public final void w(boolean paramBoolean)
  {
    g localg = this.f;
    if (localg != null) {
      localg.b(getItemCount());
    }
    this.g = paramBoolean;
    notifyDataSetChanged();
  }
  
  public final void x()
  {
    g localg;
    if (l())
    {
      this.i.clear();
      localg = this.f;
      if (localg != null) {
        localg.c(false, null);
      }
    }
    else
    {
      this.i.addAll(this.b.e());
      localg = this.f;
      if (localg != null) {
        localg.c(true, this.b.e());
      }
    }
    notifyDataSetChanged();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ln1/c$a;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/view/View;", "itemRoot", "Landroid/view/View;", "l", "()Landroid/view/View;", "monthDivider", "m", "bottomDivider", "a", "setBottomDivider", "(Landroid/view/View;)V", "Landroid/widget/TextView;", "monthTitleText", "Landroid/widget/TextView;", "n", "()Landroid/widget/TextView;", "rowRoot", "o", "dateNum", "e", "dateWeekday", "f", "dayEmptyHint", "g", "dateContainer", "d", "eventContainer", "h", "eventTitle", "j", "eventDesc", "i", "Landroid/widget/ImageView;", "eventTypeImage", "Landroid/widget/ImageView;", "k", "()Landroid/widget/ImageView;", "topSpace", "p", "bottomSpace", "b", "Landroid/widget/CheckBox;", "checkBox", "Landroid/widget/CheckBox;", "c", "()Landroid/widget/CheckBox;", "itemView", "<init>", "(Ln1/c;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public final class a
    extends RecyclerView.c0
  {
    private final View a;
    private final View b;
    private View c;
    private final TextView d;
    private final View e;
    private final TextView f;
    private final TextView g;
    private final TextView h;
    private final View i;
    private final View j;
    private final TextView k;
    private final TextView l;
    private final ImageView m;
    private final View n;
    private final View o;
    private final CheckBox p;
    
    public a()
    {
      super();
      this$1 = localObject.findViewById(2131362641);
      r.e(c.this, "itemView.findViewById<an…iew.View>(R.id.item_root)");
      this.a = c.this;
      this$1 = localObject.findViewById(2131362804);
      r.e(c.this, "itemView.findViewById<an…View>(R.id.month_divider)");
      this.b = c.this;
      this$1 = localObject.findViewById(2131362048);
      r.e(c.this, "itemView.findViewById<an…iew>(R.id.bottom_divider)");
      this.c = c.this;
      this$1 = localObject.findViewById(2131362818);
      r.e(c.this, "itemView.findViewById<Te…w>(R.id.month_title_text)");
      this.d = ((TextView)c.this);
      this$1 = localObject.findViewById(2131363084);
      r.e(c.this, "itemView.findViewById<an…view.View>(R.id.row_root)");
      this.e = c.this;
      this$1 = localObject.findViewById(2131362262);
      r.e(c.this, "itemView.findViewById<TextView>(R.id.date_num)");
      this.f = ((TextView)c.this);
      this$1 = localObject.findViewById(2131362271);
      r.e(c.this, "itemView.findViewById<TextView>(R.id.date_weekday)");
      this.g = ((TextView)c.this);
      this$1 = localObject.findViewById(2131362312);
      r.e(c.this, "itemView.findViewById<Te…iew>(R.id.day_empty_hint)");
      this.h = ((TextView)c.this);
      this$1 = localObject.findViewById(2131362258);
      r.e(c.this, "itemView.findViewById<an…iew>(R.id.date_container)");
      this.i = c.this;
      this$1 = localObject.findViewById(2131362422);
      r.e(c.this, "itemView.findViewById<an…ew>(R.id.event_container)");
      this.j = c.this;
      this$1 = localObject.findViewById(2131362430);
      r.e(c.this, "itemView.findViewById<TextView>(R.id.event_title)");
      this.k = ((TextView)c.this);
      this$1 = localObject.findViewById(2131362423);
      r.e(c.this, "itemView.findViewById<TextView>(R.id.event_desc)");
      this.l = ((TextView)c.this);
      this$1 = localObject.findViewById(2131362431);
      r.e(c.this, "itemView.findViewById<an…ageView>(R.id.event_type)");
      this.m = ((ImageView)c.this);
      this$1 = localObject.findViewById(2131363405);
      r.e(c.this, "itemView.findViewById<an…iew.View>(R.id.top_space)");
      this.n = c.this;
      this$1 = localObject.findViewById(2131362050);
      r.e(c.this, "itemView.findViewById<an….View>(R.id.bottom_space)");
      this.o = c.this;
      this$1 = localObject.findViewById(16908289);
      r.e(c.this, "itemView.findViewById<an…x>(android.R.id.checkbox)");
      this.p = ((CheckBox)c.this);
    }
    
    public final View a()
    {
      return this.c;
    }
    
    public final View b()
    {
      return this.o;
    }
    
    public final CheckBox c()
    {
      return this.p;
    }
    
    public final View d()
    {
      return this.i;
    }
    
    public final TextView e()
    {
      return this.f;
    }
    
    public final TextView f()
    {
      return this.g;
    }
    
    public final TextView g()
    {
      return this.h;
    }
    
    public final View h()
    {
      return this.j;
    }
    
    public final TextView i()
    {
      return this.l;
    }
    
    public final TextView j()
    {
      return this.k;
    }
    
    public final ImageView k()
    {
      return this.m;
    }
    
    public final View l()
    {
      return this.a;
    }
    
    public final View m()
    {
      return this.b;
    }
    
    public final TextView n()
    {
      return this.d;
    }
    
    public final View o()
    {
      return this.e;
    }
    
    public final View p()
    {
      return this.n;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ln1/c$b;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n1.c
 * JD-Core Version:    0.7.0.1
 */