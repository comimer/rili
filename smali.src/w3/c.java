package w3;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.calendar.util.x0;
import com.miui.calendar.view.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.widget.Spinner;
import miuix.slidingwidget.widget.SlidingButton;

@Metadata(bv={}, d1={""}, d2={"Lw3/c;", "Lcom/miui/calendar/view/i;", "", "Lw3/b;", "items", "Lkotlin/u;", "f", "", "position", "", "e", "a", "Landroid/view/View;", "convertView", "b", "Landroid/content/Context;", "mContext", "<init>", "(Landroid/content/Context;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class c
  extends i
{
  private final Context b;
  private List<? extends b> c;
  
  public c(Context paramContext)
  {
    this.b = paramContext;
  }
  
  public int a()
  {
    List localList = this.c;
    int i;
    if (localList == null)
    {
      i = 0;
    }
    else
    {
      r.c(localList);
      i = localList.size();
    }
    return i;
  }
  
  public View b(int paramInt, View paramView)
  {
    Object localObject1;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.b).inflate(2131558545, null);
      localObject1 = new a(paramView);
      paramView.setTag(localObject1);
    }
    else
    {
      localObject1 = paramView.getTag();
      r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.event.DetailInfoItemAdapter.DetailInfoItemViewHolder");
      localObject1 = (a)localObject1;
    }
    Object localObject2 = this.c;
    r.c(localObject2);
    localObject2 = (b)((List)localObject2).get(paramInt);
    int i = this.b.getResources().getDimensionPixelOffset(2131167315);
    if (((b)localObject2).a == 0)
    {
      ((a)localObject1).b().setVisibility(8);
      ((a)localObject1).h().setPadding(this.b.getResources().getDimensionPixelOffset(2131165907), i, i, i);
    }
    else
    {
      ((a)localObject1).b().setVisibility(0);
      ((a)localObject1).b().setImageResource(((b)localObject2).a);
      ((a)localObject1).h().setPadding(i, i, i, i);
    }
    x0.f(((a)localObject1).c(), ((b)localObject2).b);
    x0.f(((a)localObject1).f(), ((b)localObject2).c);
    x0.f(((a)localObject1).e(), ((b)localObject2).d);
    Object localObject3 = ((a)localObject1).d();
    if (((b)localObject2).e) {
      i = 0;
    } else {
      i = 8;
    }
    ((View)localObject3).setVisibility(i);
    localObject3 = this.c;
    r.c(localObject3);
    if (paramInt == ((List)localObject3).size() - 1)
    {
      ((a)localObject1).a().setVisibility(0);
    }
    else
    {
      long l = ((b)localObject2).f;
      localObject3 = this.c;
      r.c(localObject3);
      if (l == ((b)((List)localObject3).get(paramInt + 1)).f) {
        ((a)localObject1).a().setVisibility(8);
      } else {
        ((a)localObject1).a().setVisibility(0);
      }
    }
    if ((localObject2 instanceof d))
    {
      ((a)localObject1).h().setMinimumHeight(this.b.getResources().getDimensionPixelOffset(2131165856));
      localObject2 = (d)localObject2;
      if (((d)localObject2).h)
      {
        ((a)localObject1).g().setVisibility(0);
        ((a)localObject1).g().setPrompt(((d)localObject2).i);
        ((a)localObject1).g().setAdapter(((d)localObject2).j);
        ((a)localObject1).g().setSelection(((d)localObject2).k);
        ((a)localObject1).g().setOnItemSelectedListener(((d)localObject2).l);
      }
      else
      {
        ((a)localObject1).g().setVisibility(8);
      }
      ((a)localObject1).i().setVisibility(8);
    }
    else if ((localObject2 instanceof a))
    {
      ((a)localObject1).i().setVisibility(0);
      localObject3 = ((a)localObject1).i();
      localObject2 = (a)localObject2;
      ((SlidingButton)localObject3).setChecked(((a)localObject2).h);
      ((a)localObject1).i().setOnCheckedChangeListener(((a)localObject2).i);
    }
    else
    {
      ((a)localObject1).h().setMinimumHeight(this.b.getResources().getDimensionPixelOffset(2131165855));
      ((a)localObject1).g().setVisibility(8);
      ((a)localObject1).i().setVisibility(8);
    }
    r.c(paramView);
    return paramView;
  }
  
  public Object e(int paramInt)
  {
    List localList = this.c;
    r.c(localList);
    return localList.get(paramInt);
  }
  
  public final void f(List<? extends b> paramList)
  {
    r.f(paramList, "items");
    this.c = paramList;
    c();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lw3/c$a;", "", "Landroid/widget/ImageView;", "iconView", "Landroid/widget/ImageView;", "b", "()Landroid/widget/ImageView;", "Landroid/view/View;", "titleRootView", "Landroid/view/View;", "h", "()Landroid/view/View;", "Landroid/widget/TextView;", "primaryTitleView", "Landroid/widget/TextView;", "c", "()Landroid/widget/TextView;", "secondaryTitleView", "f", "rightText", "e", "Lmiuix/appcompat/widget/Spinner;", "spinnerView", "Lmiuix/appcompat/widget/Spinner;", "g", "()Lmiuix/appcompat/widget/Spinner;", "rightArrowView", "d", "groupDividerView", "a", "Lmiuix/slidingwidget/widget/SlidingButton;", "isAlarmCheckbox", "Lmiuix/slidingwidget/widget/SlidingButton;", "i", "()Lmiuix/slidingwidget/widget/SlidingButton;", "view", "<init>", "(Lw3/c;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class a
  {
    private final View a;
    private final ImageView b;
    private final View c;
    private final TextView d;
    private final TextView e;
    private final TextView f;
    private final Spinner g;
    private final View h;
    private final View i;
    private final SlidingButton j;
    
    public a()
    {
      this$1 = localObject.findViewById(2131362618);
      r.e(c.this, "view.findViewById(R.id.info_item_container)");
      this.a = c.this;
      this$1 = localObject.findViewById(2131362563);
      r.e(c.this, "view.findViewById(R.id.icon)");
      this.b = ((ImageView)c.this);
      this$1 = localObject.findViewById(2131363388);
      r.e(c.this, "view.findViewById(R.id.title_root)");
      this.c = c.this;
      this$1 = localObject.findViewById(2131362984);
      r.e(c.this, "view.findViewById(R.id.primary)");
      this.d = ((TextView)c.this);
      this$1 = localObject.findViewById(2131363121);
      r.e(c.this, "view.findViewById(R.id.secondary)");
      this.e = ((TextView)c.this);
      this$1 = localObject.findViewById(2131363072);
      r.e(c.this, "view.findViewById(R.id.right_text)");
      this.f = ((TextView)c.this);
      this$1 = localObject.findViewById(2131363218);
      r.e(c.this, "view.findViewById(R.id.spinner)");
      this.g = ((Spinner)c.this);
      this$1 = localObject.findViewById(2131363064);
      r.e(c.this, "view.findViewById(R.id.right_arrow)");
      this.h = c.this;
      this$1 = localObject.findViewById(2131362505);
      r.e(c.this, "view.findViewById(R.id.group_divider)");
      this.i = c.this;
      this$1 = localObject.findViewById(2131362629);
      r.e(c.this, "view.findViewById(R.id.is_alarm)");
      this.j = ((SlidingButton)c.this);
    }
    
    public final View a()
    {
      return this.i;
    }
    
    public final ImageView b()
    {
      return this.b;
    }
    
    public final TextView c()
    {
      return this.d;
    }
    
    public final View d()
    {
      return this.h;
    }
    
    public final TextView e()
    {
      return this.f;
    }
    
    public final TextView f()
    {
      return this.e;
    }
    
    public final Spinner g()
    {
      return this.g;
    }
    
    public final View h()
    {
      return this.c;
    }
    
    public final SlidingButton i()
    {
      return this.j;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w3.c
 * JD-Core Version:    0.7.0.1
 */