package com.miui.calendar.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.AbsListView.MultiChoiceModeListener;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.event.b;
import com.miui.calendar.util.g.x;
import com.miui.calendar.util.x0;
import com.miui.calendar.view.RefreshLoadRecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import n1.e.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/f;", "Landroid/widget/AbsListView$MultiChoiceModeListener;", "Landroid/view/ActionMode;", "actionMode", "", "checkItemCount", "Lkotlin/u;", "r", "", "isAllChecked", "Lmiuix/view/e;", "editActionMode", "q", "Landroid/view/Menu;", "menu", "s", "itemId", "enabled", "l", "i", "f", "e", "c", "Ln1/c;", "agendaAdapter", "k", "o", "isChecked", "Ln1/e$a;", "t", "j", "count", "n", "", "list", "p", "mode", "onCreateActionMode", "onPrepareActionMode", "Landroid/view/MenuItem;", "item", "onActionItemClicked", "onDestroyActionMode", "position", "", "id", "checked", "onItemCheckedStateChanged", "h", "Lcom/miui/calendar/search/h;", "onEventItemChangeListener", "m", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Landroidx/fragment/app/Fragment;", "b", "Landroidx/fragment/app/Fragment;", "getFragment", "()Landroidx/fragment/app/Fragment;", "fragment", "Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "getRv", "()Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "rv", "d", "Ljava/util/List;", "mSelectedList", "I", "mItemTotalCount", "Z", "mIsActionMode", "Landroid/view/ActionMode;", "mActionMode", "Lcom/miui/calendar/search/h;", "mOnEventItemChangeListener", "mBatchTimes", "<init>", "(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/miui/calendar/view/RefreshLoadRecyclerView;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class f
  implements AbsListView.MultiChoiceModeListener
{
  public static final a k = new a(null);
  private final Context a;
  private final Fragment b;
  private final RefreshLoadRecyclerView c;
  private final List<e.a> d;
  private int e;
  private boolean f;
  private n1.c g;
  private ActionMode h;
  private h i;
  private volatile int j;
  
  public f(Context paramContext, Fragment paramFragment, RefreshLoadRecyclerView paramRefreshLoadRecyclerView)
  {
    this.a = paramContext;
    this.b = paramFragment;
    this.c = paramRefreshLoadRecyclerView;
    this.d = new ArrayList();
  }
  
  private final void c()
  {
    Object localObject1 = this.a;
    Object localObject2 = this.b.getActivity();
    int m = 0;
    b localb = new b((Context)localObject1, (Activity)localObject2, false);
    localObject2 = new ArrayList();
    pc.c.c().k(new g.x(true));
    int n = (this.d.size() + 150 - 1) / 150;
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("batchDelEvents upSize:");
    ((StringBuilder)localObject1).append(n);
    com.miui.calendar.util.z.a("Cal:D:BaseMultiChoiceModeListener", ((StringBuilder)localObject1).toString());
    int i1 = this.d.size();
    while (m < i1)
    {
      localb.q((ArrayList)localObject2, ((e.a)this.d.get(m)).f.getId());
      if (m != this.d.size() - 1)
      {
        localObject1 = localObject2;
        if (((ArrayList)localObject2).size() < 150) {}
      }
      else
      {
        localb.v((ArrayList)localObject2, new e(this, n));
        localObject1 = new ArrayList();
      }
      m++;
      localObject2 = localObject1;
    }
  }
  
  private static final void d(f paramf, int paramInt)
  {
    r.f(paramf, "this$0");
    paramf.j += 1;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("batchDelEvents batchTimes:");
    ((StringBuilder)localObject).append(paramf.j);
    com.miui.calendar.util.z.a("Cal:D:BaseMultiChoiceModeListener", ((StringBuilder)localObject).toString());
    if (paramf.j >= paramInt)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("finish batch del batchTimes:");
      ((StringBuilder)localObject).append(paramf.j);
      com.miui.calendar.util.z.a("Cal:D:BaseMultiChoiceModeListener", ((StringBuilder)localObject).toString());
      localObject = paramf.i;
      if (localObject != null) {
        ((h)localObject).onChange();
      }
      pc.c.c().k(new g.x(false));
      paramf.h();
    }
  }
  
  private final boolean e()
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext()) {
      if (((e.a)localIterator.next()).f.getEx().isSolarRepeating()) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  @SuppressLint({"ResourceType"})
  private final void f()
  {
    l locall;
    if (!e())
    {
      locall = new l.b(this.a).F(2131886533).n(this.a.getResources().getQuantityString(2131755065, this.d.size(), new Object[] { Integer.valueOf(this.d.size()) })).j(16843605).r(17039360, null).a();
      r.e(locall, "{\n            AlertDialo…null).create()\n\n        }");
    }
    else
    {
      locall = new l.b(this.a).F(2131886533).n(this.a.getResources().getQuantityString(2131755064, this.d.size(), new Object[] { Integer.valueOf(this.d.size()) })).j(16843605).r(17039360, null).a();
      r.e(locall, "{\n            AlertDialo…null).create()\n\n        }");
    }
    locall.l(-1, this.a.getText(2131886533), new d(this));
    locall.show();
  }
  
  private static final void g(f paramf, DialogInterface paramDialogInterface, int paramInt)
  {
    r.f(paramf, "this$0");
    paramf.c();
  }
  
  private final boolean i()
  {
    boolean bool;
    if (this.e == this.d.size()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private final void l(Menu paramMenu, int paramInt, boolean paramBoolean)
  {
    paramMenu = paramMenu.findItem(paramInt);
    if (paramMenu != null) {
      paramMenu.setEnabled(paramBoolean);
    }
  }
  
  private final void q(boolean paramBoolean, miuix.view.e parame)
  {
    int m;
    if (x0.s0(this.a)) {
      m = 2131231698;
    } else {
      m = 2131231701;
    }
    int n;
    if (paramBoolean)
    {
      if (x0.s0(this.a)) {
        n = 2131231716;
      } else {
        n = 2131231719;
      }
    }
    else if (x0.s0(this.a)) {
      n = 2131231722;
    } else {
      n = 2131231725;
    }
    parame.c(16908314, "", "", n);
    parame.c(16908313, "", "", m);
  }
  
  private final void r(ActionMode paramActionMode, int paramInt)
  {
    if (paramActionMode != null)
    {
      Object localObject = this.a.getResources();
      r.e(localObject, "context.resources");
      if (paramInt == 0)
      {
        paramActionMode.setTitle(((Resources)localObject).getString(2131886907));
      }
      else
      {
        localObject = ((Resources)localObject).getQuantityString(2131755074, paramInt);
        r.e(localObject, "r.getQuantityString(R.pl…selected, checkItemCount)");
        kotlin.jvm.internal.z localz = kotlin.jvm.internal.z.a;
        localObject = String.format((String)localObject, Arrays.copyOf(new Object[] { Integer.valueOf(paramInt) }, 1));
        r.e(localObject, "format(format, *args)");
        paramActionMode.setTitle((CharSequence)localObject);
      }
    }
  }
  
  private final void s(Menu paramMenu)
  {
    l(paramMenu, 2131361887, this.d.isEmpty() ^ true);
  }
  
  public final void h()
  {
    if (this.f)
    {
      ActionMode localActionMode = this.h;
      if (localActionMode != null) {
        localActionMode.finish();
      }
    }
  }
  
  public final void j(boolean paramBoolean, e.a parama)
  {
    r.f(parama, "t");
    if (paramBoolean) {
      this.d.add(parama);
    } else if (this.d.contains(parama)) {
      this.d.remove(parama);
    }
    parama = this.h;
    if (parama != null) {
      parama.invalidate();
    }
  }
  
  public final void k(n1.c paramc)
  {
    this.g = paramc;
  }
  
  public final void m(h paramh)
  {
    this.i = paramh;
  }
  
  public final void n(int paramInt)
  {
    this.e = paramInt;
  }
  
  public final void o()
  {
    Object localObject = this.b.getActivity();
    if (localObject != null) {
      localObject = ((Activity)localObject).startActionMode(this);
    } else {
      localObject = null;
    }
    this.h = ((ActionMode)localObject);
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    r.f(paramMenuItem, "item");
    paramActionMode = new StringBuilder();
    paramActionMode.append("onActionItemClicked item:");
    paramActionMode.append(paramMenuItem.getTitle());
    com.miui.calendar.util.z.a("Cal:D:BaseMultiChoiceModeListener", paramActionMode.toString());
    switch (paramMenuItem.getItemId())
    {
    default: 
      break;
    case 2131361887: 
      com.miui.calendar.util.z.a("Cal:D:BaseMultiChoiceModeListener", "action_delete");
      f();
      break;
    case 16908314: 
      paramActionMode = this.g;
      if (paramActionMode != null) {
        paramActionMode.x();
      }
      break;
    case 16908313: 
      h();
    }
    return true;
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    r.f(paramMenu, "menu");
    this.c.setEnablePullLoad(false);
    this.c.setEnablePullRefresh(false);
    this.f = true;
    paramActionMode = this.b.getActivity();
    if (paramActionMode != null) {
      paramActionMode = paramActionMode.getMenuInflater();
    } else {
      paramActionMode = null;
    }
    if (paramActionMode != null) {
      paramActionMode.inflate(2131623938, paramMenu);
    }
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    com.miui.calendar.util.z.a("Cal:D:BaseMultiChoiceModeListener", "onDestroyActionMode");
    this.h = null;
    this.c.setEnablePullLoad(true);
    this.c.setEnablePullRefresh(true);
    paramActionMode = this.g;
    if (paramActionMode != null) {
      paramActionMode.i();
    }
    this.d.clear();
    this.f = false;
  }
  
  public void onItemCheckedStateChanged(ActionMode paramActionMode, int paramInt, long paramLong, boolean paramBoolean)
  {
    paramActionMode = new StringBuilder();
    paramActionMode.append("onItemCheckedStateChanged pos:");
    paramActionMode.append(paramInt);
    com.miui.calendar.util.z.a("Cal:D:BaseMultiChoiceModeListener", paramActionMode.toString());
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    r.f(paramMenu, "menu");
    r(paramActionMode, this.d.size());
    boolean bool = i();
    r.d(paramActionMode, "null cannot be cast to non-null type miuix.view.EditActionMode");
    q(bool, (miuix.view.e)paramActionMode);
    s(paramMenu);
    return false;
  }
  
  public final void p(boolean paramBoolean, List<e.a> paramList)
  {
    this.d.clear();
    if (paramBoolean)
    {
      List localList = this.d;
      r.c(paramList);
      localList.addAll(paramList);
    }
    paramList = this.h;
    if (paramList != null) {
      paramList.invalidate();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/f$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.search.f
 * JD-Core Version:    0.7.0.1
 */