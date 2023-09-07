package t4;

import android.util.SparseBooleanArray;
import android.view.View;
import androidx.recyclerview.widget.SpringRecyclerView;
import com.miui.calendar.util.z;
import kb.b;
import kb.c;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.recyclerview.widget.RecyclerView;
import miuix.springback.view.SpringBackLayout;

@Metadata(bv={}, d1={""}, d2={"Lt4/a;", "", "Lkotlin/u;", "g", "Lkb/a$a;", "action", "c", "d", "Lmiuix/springback/view/SpringBackLayout;", "springBackLayout", "e", "Lt4/a$d;", "pullListener", "o", "l", "j", "k", "f", "", "index", "", "string", "h", "i", "", "enableLoadMore", "m", "enablePullRefresh", "n", "Lmiuix/recyclerview/widget/RecyclerView;", "mRecyclerView", "mPullListener", "<init>", "(Lmiuix/recyclerview/widget/RecyclerView;Lt4/a$d;)V", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class a
{
  public static final a h = new a(null);
  private d a;
  private c b;
  private final b c;
  private final c d;
  private boolean e;
  private boolean f;
  private final SparseBooleanArray g;
  
  public a(RecyclerView paramRecyclerView, d paramd)
  {
    this.a = paramd;
    this.e = true;
    this.f = true;
    this.g = new SparseBooleanArray();
    this.b = new c(paramRecyclerView.getContext());
    paramRecyclerView.setSpringEnabled(false);
    this.c = new b(0, new int[] { 2131887334, 2131887337, 2131887336, 2131887335 });
    this.d = new c(250, new int[] { 2131886833, 2131886917, 2131887039, 2131886915 });
  }
  
  private final void c(kb.a.a parama)
  {
    if (parama == null) {
      return;
    }
    if (!this.b.f(parama)) {
      this.b.e(parama);
    }
  }
  
  private final void d()
  {
    if (this.g.size() == 0) {
      return;
    }
    if (this.g.get(1))
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "checkPendingTask remove LoadAction");
      this.b.k(this.c);
    }
    if (this.g.get(2))
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "checkPendingTask remove LoadUpAction ");
      this.b.k(this.d);
    }
  }
  
  private final void g()
  {
    d locald = this.a;
    if ((locald != null) && (locald != null)) {
      locald.a();
    }
  }
  
  public final void e(SpringBackLayout paramSpringBackLayout)
  {
    if (this.f) {
      c(this.c);
    }
    if (this.e) {
      c(this.d);
    }
    this.b.P(paramSpringBackLayout);
  }
  
  public final void f()
  {
    d locald = this.a;
    if ((locald != null) && (locald != null)) {
      locald.b();
    }
  }
  
  public final void h(int paramInt, String paramString)
  {
    r.f(paramString, "string");
    b localb = this.c;
    if (localb != null) {
      localb.m(paramInt, paramString);
    }
  }
  
  public final void i(int paramInt, String paramString)
  {
    r.f(paramString, "string");
    c localc = this.d;
    if (localc != null) {
      localc.p(paramInt, paramString);
    }
  }
  
  public final void j()
  {
    c localc = this.d;
    if (localc != null) {
      localc.o();
    }
  }
  
  public final void k()
  {
    c localc = this.d;
    if (localc != null) {
      localc.n();
    }
  }
  
  public final void l()
  {
    b localb = this.c;
    if (localb != null) {
      localb.l();
    }
  }
  
  public final void m(boolean paramBoolean)
  {
    this.e = paramBoolean;
    if (this.b.f(this.d))
    {
      if (!this.e)
      {
        if (this.b.j())
        {
          this.g.put(2, true);
          z.g("Cal:D:MiuiPullRecyclerViewHelper", "setEnableLoadMore false isActionRunning, addTo PendingTask");
        }
        else
        {
          this.b.k(this.d);
        }
      }
      else
      {
        z.g("Cal:D:MiuiPullRecyclerViewHelper", "setEnableLoadMore contain, enable, clear loadMore");
        this.g.delete(2);
      }
    }
    else if (this.e)
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "setEnableLoadMore addAction");
      c(this.d);
    }
  }
  
  public final void n(boolean paramBoolean)
  {
    this.f = paramBoolean;
    if (this.b.f(this.c))
    {
      if (!this.f)
      {
        if (this.b.j()) {
          this.g.put(1, true);
        } else {
          this.b.k(this.c);
        }
      }
      else
      {
        z.g("Cal:D:MiuiPullRecyclerViewHelper", "setEnablePullRefresh contain, enable, clear refresh");
        this.g.delete(1);
      }
    }
    else if (this.f)
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "setEnablePullRefresh addAction");
      c(this.c);
    }
  }
  
  public final void o(d paramd)
  {
    this.a = paramd;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lt4/a$a;", "", "", "ACTION_REMOVE_LOAD", "I", "ACTION_REMOVE_REFRESH", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lt4/a$b;", "Lkb/a$b;", "Lkotlin/u;", "k", "h", "i", "f", "j", "", "offsetPoint", "", "triggerTextIDs", "<init>", "(Lt4/a;I[I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends kb.a.b
  {
    public b(int[] paramArrayOfInt)
    {
      super(localObject);
    }
    
    protected void f()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadAction_onActivated");
    }
    
    protected void h()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadAction_onEntered");
    }
    
    protected void i()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadAction_onExit");
    }
    
    protected void j()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadAction_onFinish");
      a.a(a.this);
    }
    
    protected void k()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadAction_onTriggered");
      a.b(a.this);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lt4/a$c;", "Lkb/a$c;", "Lkotlin/u;", "k", "h", "i", "f", "j", "", "offsetPoint", "", "triggerTextIDs", "<init>", "(Lt4/a;I[I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class c
    extends kb.a.c
  {
    public c(int[] paramArrayOfInt)
    {
      super(localObject);
    }
    
    protected void f()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadUpAction_onActivated");
    }
    
    protected void h()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadUpAction_onEntered");
    }
    
    protected void i()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadUpAction_onExit");
    }
    
    protected void j()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadUpAction_onFinish");
      a.a(a.this);
    }
    
    protected void k()
    {
      z.g("Cal:D:MiuiPullRecyclerViewHelper", "LoadUpAction_onTriggered");
      a.this.f();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lt4/a$d;", "", "Lkotlin/u;", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static abstract interface d
  {
    public abstract void a();
    
    public abstract void b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t4.a
 * JD-Core Version:    0.7.0.1
 */