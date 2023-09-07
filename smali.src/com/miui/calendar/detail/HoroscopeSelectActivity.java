package com.miui.calendar.detail;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.fragment.app.d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import b2.a;
import com.android.calendar.common.b;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.e0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.app.m;
import v3.e;
import v3.e.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/HoroscopeSelectActivity;", "Lcom/android/calendar/common/b;", "Lkotlin/u;", "c0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onResume", "onPause", "Landroid/content/Context;", "b", "Landroid/content/Context;", "mContext", "Lmiuix/recyclerview/widget/RecyclerView;", "c", "Lmiuix/recyclerview/widget/RecyclerView;", "mHoroscopeRv", "", "Lv3/e$a;", "Lv3/e;", "d", "Ljava/util/List;", "mHoroscopeInfo", "", "e", "Ljava/lang/String;", "mSelectedHoroscopeSimpleName", "Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;", "f", "Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;", "mAdapter", "<init>", "()V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class HoroscopeSelectActivity
  extends b
{
  private Context b;
  private miuix.recyclerview.widget.RecyclerView c;
  private List<? extends e.a> d;
  private String e;
  private a f;
  public Map<Integer, View> g;
  
  private final void c0() {}
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558613);
    this.b = this;
    c0();
    paramBundle = this.b;
    if (paramBundle != null) {
      paramBundle = paramBundle.getResources();
    } else {
      paramBundle = null;
    }
    this.d = e.e(paramBundle).d();
    this.e = a.c(this.b, "preferences_horoscope_selected", "aries");
    paramBundle = findViewById(2131362689);
    r.d(paramBundle, "null cannot be cast to non-null type miuix.recyclerview.widget.RecyclerView");
    this.c = ((miuix.recyclerview.widget.RecyclerView)paramBundle);
    this.f = new a();
    paramBundle = this.c;
    r.c(paramBundle);
    paramBundle.setAdapter(this.f);
    int i = 0;
    LinearLayoutManager localLinearLayoutManager = new LinearLayoutManager(this, 1, false);
    paramBundle = this.c;
    if (paramBundle != null) {
      paramBundle.setLayoutManager(localLinearLayoutManager);
    }
    paramBundle = this.d;
    r.c(paramBundle);
    int j = paramBundle.size();
    int m;
    for (int k = 0;; k++)
    {
      m = i;
      if (k >= j) {
        break;
      }
      paramBundle = this.d;
      r.c(paramBundle);
      if (r.a(((e.a)paramBundle.get(k)).a, this.e))
      {
        m = k;
        break;
      }
    }
    paramBundle = this.c;
    r.c(paramBundle);
    paramBundle.scrollToPosition(m);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;", "Landroidx/recyclerview/widget/RecyclerView$g;", "Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;", "Lcom/miui/calendar/detail/HoroscopeSelectActivity;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "i", "getItemCount", "holder", "position", "Lkotlin/u;", "g", "<init>", "(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class a
    extends RecyclerView.g<HoroscopeSelectActivity.b>
  {
    private static final void h(HoroscopeSelectActivity paramHoroscopeSelectActivity, int paramInt, View paramView)
    {
      r.f(paramHoroscopeSelectActivity, "this$0");
      paramView = HoroscopeSelectActivity.Z(paramHoroscopeSelectActivity);
      if (paramView != null)
      {
        paramView = (e.a)paramView.get(paramInt);
        if (paramView != null)
        {
          paramView = paramView.a;
          break label40;
        }
      }
      paramView = null;
      label40:
      HoroscopeSelectActivity.b0(paramHoroscopeSelectActivity, paramView);
      a.k(HoroscopeSelectActivity.Y(paramHoroscopeSelectActivity), "preferences_horoscope_selected", HoroscopeSelectActivity.a0(paramHoroscopeSelectActivity));
      g.c(new g.e0());
      paramHoroscopeSelectActivity.finish();
    }
    
    public void g(HoroscopeSelectActivity.b paramb, int paramInt)
    {
      r.f(paramb, "holder");
      Object localObject = HoroscopeSelectActivity.Z(this.a);
      r.c(localObject);
      localObject = (e.a)((List)localObject).get(paramInt);
      paramb.a().setImageDrawable(e.c(HoroscopeSelectActivity.Y(this.a), ((e.a)localObject).a));
      paramb.b().setText(((e.a)localObject).b);
      paramb.e().setText(((e.a)localObject).c);
      if (r.a(((e.a)localObject).a, HoroscopeSelectActivity.a0(this.a))) {
        paramb.c().setVisibility(0);
      } else {
        paramb.c().setVisibility(8);
      }
      paramb.d().setOnClickListener(new i(this.a, paramInt));
    }
    
    public int getItemCount()
    {
      int i;
      if (HoroscopeSelectActivity.Z(this.a) == null)
      {
        i = 0;
      }
      else
      {
        List localList = HoroscopeSelectActivity.Z(this.a);
        r.c(localList);
        i = localList.size();
      }
      return i;
    }
    
    public HoroscopeSelectActivity.b i(ViewGroup paramViewGroup, int paramInt)
    {
      r.f(paramViewGroup, "parent");
      HoroscopeSelectActivity localHoroscopeSelectActivity = this.a;
      paramViewGroup = LayoutInflater.from(HoroscopeSelectActivity.Y(localHoroscopeSelectActivity)).inflate(2131558612, paramViewGroup, false);
      r.e(paramViewGroup, "from(mContext).inflate(R…list_item, parent, false)");
      return new HoroscopeSelectActivity.b(localHoroscopeSelectActivity, paramViewGroup);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "()Landroid/widget/ImageView;", "setIconView", "(Landroid/widget/ImageView;)V", "iconView", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "()Landroid/widget/TextView;", "setPrimaryTextView", "(Landroid/widget/TextView;)V", "primaryTextView", "c", "e", "setSecondaryTextView", "secondaryTextView", "Landroid/widget/RadioButton;", "d", "Landroid/widget/RadioButton;", "()Landroid/widget/RadioButton;", "setRadioButton", "(Landroid/widget/RadioButton;)V", "radioButton", "Landroid/view/View;", "kotlin.jvm.PlatformType", "Landroid/view/View;", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "rootView", "itemView", "<init>", "(Lcom/miui/calendar/detail/HoroscopeSelectActivity;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends RecyclerView.c0
  {
    private ImageView a;
    private TextView b;
    private TextView c;
    private RadioButton d;
    private View e;
    
    public b()
    {
      super();
      this$1 = localObject.findViewById(2131362563);
      r.d(HoroscopeSelectActivity.this, "null cannot be cast to non-null type android.widget.ImageView");
      this.a = ((ImageView)HoroscopeSelectActivity.this);
      this$1 = localObject.findViewById(2131362984);
      r.d(HoroscopeSelectActivity.this, "null cannot be cast to non-null type android.widget.TextView");
      this.b = ((TextView)HoroscopeSelectActivity.this);
      this$1 = localObject.findViewById(2131363121);
      r.d(HoroscopeSelectActivity.this, "null cannot be cast to non-null type android.widget.TextView");
      this.c = ((TextView)HoroscopeSelectActivity.this);
      this$1 = localObject.findViewById(2131362141);
      r.d(HoroscopeSelectActivity.this, "null cannot be cast to non-null type android.widget.RadioButton");
      this.d = ((RadioButton)HoroscopeSelectActivity.this);
      this.e = localObject.findViewById(2131363074);
    }
    
    public final ImageView a()
    {
      return this.a;
    }
    
    public final TextView b()
    {
      return this.b;
    }
    
    public final RadioButton c()
    {
      return this.d;
    }
    
    public final View d()
    {
      return this.e;
    }
    
    public final TextView e()
    {
      return this.c;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.detail.HoroscopeSelectActivity
 * JD-Core Version:    0.7.0.1
 */