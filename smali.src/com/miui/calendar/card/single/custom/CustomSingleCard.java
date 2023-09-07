package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonElement;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.v;
import com.miui.calendar.util.w;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.DynamicLinearLayout.b;
import com.miui.calendar.view.OnlineImageView;
import com.miui.calendar.view.i;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import s3.a.a;

public abstract class CustomSingleCard
  extends s3.a
{
  protected CustomCardSchema l;
  public CustomCardSchema m;
  protected int n;
  protected CustomCardExtraSchema o;
  protected CustomCardExtraSchema p;
  protected List<CustomItemExtraSchema> q = new ArrayList();
  protected List<CustomItemExtraSchema> r = new ArrayList();
  
  public CustomSingleCard(Context paramContext, int paramInt, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, paramInt, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  public static String y(long paramLong)
  {
    return String.format("%d_%d", new Object[] { Integer.valueOf(83), Long.valueOf(paramLong) });
  }
  
  protected Class<? extends CustomItemExtraSchema> A()
  {
    return CustomItemExtraSchema.class;
  }
  
  protected int B()
  {
    CustomCardExtraSchema localCustomCardExtraSchema = this.p;
    if (localCustomCardExtraSchema != null)
    {
      int i = localCustomCardExtraSchema.itemNumPerPage;
      int j = i;
      if (i > 30) {
        j = 30;
      }
      return j;
    }
    return 0;
  }
  
  protected void C()
  {
    Object localObject1 = this.l;
    if (localObject1 == null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("cardId=");
      ((StringBuilder)localObject1).append(this.f);
      ((StringBuilder)localObject1).append(":prepareExtraData() mCard is null");
      z.m("Cal:D:CustomSingleCard", ((StringBuilder)localObject1).toString());
      return;
    }
    Object localObject3;
    try
    {
      this.o = ((CustomCardExtraSchema)x.a(((CustomCardSchema)localObject1).extra.toString(), z()));
    }
    catch (Exception localException1)
    {
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("cardId=");
      ((StringBuilder)localObject3).append(this.f);
      ((StringBuilder)localObject3).append(":prepareExtraData()");
      z.d("Cal:D:CustomSingleCard", ((StringBuilder)localObject3).toString(), localException1);
    }
    if (this.l.itemList == null)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("cardId=");
      ((StringBuilder)localObject2).append(this.f);
      ((StringBuilder)localObject2).append(":prepareExtraData() mCard.itemList is null");
      z.m("Cal:D:CustomSingleCard", ((StringBuilder)localObject2).toString());
      return;
    }
    Object localObject2 = new ArrayList();
    Object localObject4 = this.l.itemList.iterator();
    for (;;)
    {
      if (((Iterator)localObject4).hasNext())
      {
        localObject3 = (CustomCardItemSchema)((Iterator)localObject4).next();
        try
        {
          ((List)localObject2).add((CustomItemExtraSchema)x.a(((CustomCardItemSchema)localObject3).extra.toString(), A()));
        }
        catch (Exception localException2)
        {
          localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append("cardId=");
          ((StringBuilder)localObject4).append(this.f);
          ((StringBuilder)localObject4).append(":prepareExtraData()");
          z.d("Cal:D:CustomSingleCard", ((StringBuilder)localObject4).toString(), localException2);
        }
      }
    }
    this.q = ((List)localObject2);
  }
  
  public void a()
  {
    CustomCardSchema localCustomCardSchema = this.l;
    this.m = localCustomCardSchema;
    if (localCustomCardSchema != null) {
      this.g = localCustomCardSchema.sequence;
    }
    this.p = this.o;
    this.r = this.q;
    super.a();
  }
  
  public void e(b.b paramb) {}
  
  public void g(a.a parama, final int paramInt)
  {
    parama = (g)parama;
    Object localObject;
    if (parama.e != null)
    {
      localObject = this.p;
      if ((localObject != null) && (!TextUtils.isEmpty(((CustomCardExtraSchema)localObject).customTitle))) {
        parama.e.setText(this.p.customTitle);
      } else {
        parama.e.setText(this.m.title);
      }
    }
    if (parama.f != null)
    {
      localObject = this.m;
      if ((((CustomCardSchema)localObject).showChange > 0) && (((CustomCardSchema)localObject).itemList.size() >= B() * 2))
      {
        parama.f.setVisibility(0);
        parama.f.setOnClickListener(new a(paramInt));
        v.k(parama.f);
      }
      else
      {
        parama.f.setVisibility(8);
      }
    }
    if ((parama.g != null) && (parama.h != null)) {
      if (this.r.size() == 0)
      {
        parama.g.setVisibility(8);
        parama.h.setVisibility(8);
      }
      else
      {
        localObject = (CustomItemExtraSchema)this.r.get(0);
        ModuleSchema localModuleSchema = ((CustomItemExtraSchema)localObject).titleBanner;
        if ((localModuleSchema != null) && (!TextUtils.isEmpty(localModuleSchema.actionIcon)))
        {
          parama.g.setVisibility(8);
          parama.h.setVisibility(0);
          parama.h.a(((CustomItemExtraSchema)localObject).titleBanner.actionIcon, 0, 0);
          parama.h.setOnClickListener(new b((CustomItemExtraSchema)localObject, paramInt));
        }
        else
        {
          localModuleSchema = ((CustomItemExtraSchema)localObject).titleBanner;
          if ((localModuleSchema != null) && (!TextUtils.isEmpty(localModuleSchema.title)))
          {
            parama.h.setVisibility(8);
            parama.g.setVisibility(0);
            parama.g.setText(((CustomItemExtraSchema)localObject).titleBanner.title);
            parama.g.setOnClickListener(new c((CustomItemExtraSchema)localObject, paramInt));
          }
          else
          {
            parama.h.setVisibility(8);
            parama.g.setVisibility(8);
          }
        }
      }
    }
    if (parama.i != null) {
      if (TextUtils.isEmpty(this.m.actionText))
      {
        parama.i.setVisibility(8);
      }
      else
      {
        parama.i.setVisibility(0);
        parama.i.setText(this.m.actionText);
        parama.i.setTextColor(this.a.getResources().getColor(2131099816));
        parama.i.setOnClickListener(new d(paramInt));
        v.k(parama.i);
      }
    }
    if (parama.j != null) {
      if ((this.r.size() != 0) && (((CustomItemExtraSchema)this.r.get(0)).actions != null) && (((CustomItemExtraSchema)this.r.get(0)).actions.length != 0))
      {
        parama.j.setVisibility(0);
        parama.j.setAdapter(new f(((CustomItemExtraSchema)this.r.get(0)).actions));
        parama.j.setOnItemClickListener(new e(paramInt));
      }
      else
      {
        parama.j.setVisibility(8);
      }
    }
  }
  
  protected void k(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    l(paramString1, paramInt1, paramInt2, paramString2, null);
  }
  
  protected void l(String paramString1, int paramInt1, int paramInt2, String paramString2, Map<String, Object> paramMap)
  {
    Object localObject = this.p;
    if ((localObject != null) && (!TextUtils.isEmpty(((CustomCardExtraSchema)localObject).suffix))) {
      localObject = this.p.suffix;
    } else {
      localObject = "";
    }
    super.m((String)localObject, paramString1, paramInt1, paramInt2, paramString2, paramMap);
  }
  
  public void x(CustomCardSchema paramCustomCardSchema)
  {
    this.l = paramCustomCardSchema;
    this.f = y(paramCustomCardSchema.id);
    C();
    paramCustomCardSchema = this.o;
    if ((paramCustomCardSchema != null) && (paramCustomCardSchema.changeData > 0))
    {
      paramCustomCardSchema = this.a;
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("card_enter_cached_position");
      ((StringBuilder)localObject).append(this.l.id);
      int i = b2.a.a(paramCustomCardSchema, ((StringBuilder)localObject).toString(), -1);
      if (i >= 0)
      {
        if (B() + i > this.l.itemList.size()) {
          this.n = 0;
        } else {
          this.n = i;
        }
        localObject = this.a;
        paramCustomCardSchema = new StringBuilder();
        paramCustomCardSchema.append("card_enter_cached_position");
        paramCustomCardSchema.append(this.l.id);
        b2.a.i((Context)localObject, paramCustomCardSchema.toString(), -1);
      }
    }
  }
  
  protected Class<? extends CustomCardExtraSchema> z()
  {
    return CustomCardExtraSchema.class;
  }
  
  @Keep
  public static class CustomCardExtraSchema
  {
    int changeData;
    String customTitle;
    int itemNumPerPage;
    String suffix;
  }
  
  @Keep
  public static class CustomItemExtraSchema
  {
    public ModuleSchema[] actions;
    ModuleSchema titleBanner;
  }
  
  class a
    implements View.OnClickListener
  {
    a(int paramInt) {}
    
    public void onClick(View paramView)
    {
      paramView = CustomSingleCard.this;
      paramView.n = ((paramView.n + paramView.B()) % CustomSingleCard.this.m.itemList.size());
      paramView = CustomSingleCard.this;
      if (paramView.n + paramView.B() > CustomSingleCard.this.m.itemList.size()) {
        CustomSingleCard.this.n = 0;
      }
      CustomSingleCard.o(CustomSingleCard.this).notifyDataSetChanged();
      CustomSingleCard.this.k("card_change_clicked", paramInt, -1, null);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(CustomSingleCard.CustomItemExtraSchema paramCustomItemExtraSchema, int paramInt) {}
    
    public void onClick(View paramView)
    {
      this.a.titleBanner.sendIntentForDeepLink(CustomSingleCard.p(CustomSingleCard.this));
      CustomSingleCard.this.k("card_banner_clicked", paramInt, -1, null);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(CustomSingleCard.CustomItemExtraSchema paramCustomItemExtraSchema, int paramInt) {}
    
    public void onClick(View paramView)
    {
      this.a.titleBanner.sendIntentForDeepLink(CustomSingleCard.q(CustomSingleCard.this));
      CustomSingleCard.this.k("card_banner_clicked", paramInt, -1, null);
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d(int paramInt) {}
    
    public void onClick(View paramView)
    {
      CustomSingleCard localCustomSingleCard = CustomSingleCard.this;
      paramView = localCustomSingleCard.m.action;
      if (paramView != null) {
        paramView.sendIntent(CustomSingleCard.r(localCustomSingleCard));
      }
      CustomSingleCard.this.k("card_more_clicked", paramInt, -1, null);
    }
  }
  
  class e
    implements DynamicLinearLayout.b
  {
    e(int paramInt) {}
    
    public void a(int paramInt)
    {
      ((CustomSingleCard.CustomItemExtraSchema)CustomSingleCard.this.r.get(0)).actions[paramInt].sendIntent(CustomSingleCard.s(CustomSingleCard.this));
      CustomSingleCard localCustomSingleCard = CustomSingleCard.this;
      localCustomSingleCard.k("card_button_clicked", paramInt, paramInt, ((CustomSingleCard.CustomItemExtraSchema)localCustomSingleCard.r.get(0)).actions[paramInt].title);
    }
  }
  
  private class f
    extends i
  {
    private ModuleSchema[] b;
    
    public f(ModuleSchema[] paramArrayOfModuleSchema)
    {
      this.b = paramArrayOfModuleSchema;
    }
    
    private TextView e(int paramInt)
    {
      TextView localTextView = new TextView(CustomSingleCard.u(CustomSingleCard.this));
      localTextView.setTextSize(0, CustomSingleCard.v(CustomSingleCard.this).getResources().getDimensionPixelSize(2131167309));
      localTextView.setTextColor(CustomSingleCard.w(CustomSingleCard.this).getResources().getColor(2131099778));
      localTextView.setTypeface(w.c());
      localTextView.setGravity(17);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0F);
      if (paramInt != 0) {
        localTextView.setCompoundDrawablesWithIntrinsicBounds(2131230988, 0, 0, 0);
      }
      localTextView.setLayoutParams(localLayoutParams);
      return localTextView;
    }
    
    public int a()
    {
      ModuleSchema[] arrayOfModuleSchema = this.b;
      if (arrayOfModuleSchema == null) {
        return 0;
      }
      return arrayOfModuleSchema.length;
    }
    
    public View b(int paramInt, View paramView)
    {
      Object localObject1;
      if (paramView == null)
      {
        localObject1 = e(paramInt);
        paramView = new a((View)localObject1);
        ((View)localObject1).setTag(paramView);
      }
      else
      {
        localObject2 = (a)paramView.getTag();
        localObject1 = paramView;
        paramView = (View)localObject2;
      }
      Object localObject2 = this.b[paramInt];
      paramView.a.setText(((ModuleSchema)localObject2).title);
      paramView.a.setTextColor(CustomSingleCard.t(CustomSingleCard.this).getResources().getColor(2131099816));
      if (paramInt == 0) {
        paramView.a.setBackgroundResource(2131232327);
      } else if (paramInt == a() - 1) {
        paramView.a.setBackgroundResource(2131232329);
      } else {
        paramView.a.setBackgroundResource(2131232330);
      }
      return localObject1;
    }
    
    private class a
    {
      public TextView a;
      
      public a(View paramView)
      {
        this.a = ((TextView)paramView);
      }
    }
  }
  
  protected class g
    extends a.a
  {
    public TextView e;
    View f;
    TextView g;
    OnlineImageView h;
    TextView i;
    DynamicLinearLayout j;
    
    public g(View paramView)
    {
      super(paramView);
      this.e = ((TextView)paramView.findViewById(2131363373));
      this.f = paramView.findViewById(2131362138);
      this.g = ((TextView)paramView.findViewById(2131363390));
      this.h = ((OnlineImageView)paramView.findViewById(2131363385));
      this.i = ((TextView)paramView.findViewById(2131362822));
      this.j = ((DynamicLinearLayout)paramView.findViewById(2131362080));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.CustomSingleCard
 * JD-Core Version:    0.7.0.1
 */