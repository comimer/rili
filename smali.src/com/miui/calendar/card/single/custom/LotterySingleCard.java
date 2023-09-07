package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.DynamicLinearLayout.b;
import com.miui.calendar.view.i;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.animation.a;
import miuix.animation.d;
import s3.a.a;

public class LotterySingleCard
  extends CustomSingleCard
{
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  
  public LotterySingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 29, paramContainerType, paramCalendar, paramBaseAdapter);
    paramContext = paramContext.getResources();
    this.s = paramContext.getDimensionPixelOffset(2131166250);
    this.t = paramContext.getDimensionPixelOffset(2131165669);
    this.u = paramContext.getDimensionPixelOffset(2131165667);
    this.v = paramContext.getDimensionPixelOffset(2131165668);
    this.w = paramContext.getDimensionPixelOffset(2131167088);
  }
  
  public Class<? extends CustomSingleCard.CustomItemExtraSchema> A()
  {
    return LotteryItemExtraSchema.class;
  }
  
  public int B()
  {
    return 1;
  }
  
  public void g(a.a parama, final int paramInt)
  {
    if (!(parama instanceof e))
    {
      z.m("Cal:D:LotterySingleCard", "bindView(): no data or holder error!");
      return;
    }
    super.g(parama, paramInt);
    e locale = (e)parama;
    parama = this.m.imageAction;
    if ((parama != null) && (!TextUtils.isEmpty(parama.title)))
    {
      locale.l.setText(this.m.imageAction.title);
      locale.l.setOnClickListener(new a(paramInt));
      v.k(locale.l);
    }
    else
    {
      locale.l.setVisibility(8);
    }
    locale.m.setAdapter(new d(null));
    locale.m.setOnItemClickListener(new b(paramInt));
    locale.m.setOnItemTouchListener(new c());
  }
  
  public a.a h(View paramView)
  {
    return new e(paramView);
  }
  
  public int i()
  {
    return 2131558668;
  }
  
  public boolean j()
  {
    Object localObject = this.m;
    if (localObject != null)
    {
      localObject = ((CustomCardSchema)localObject).itemList;
      if ((localObject != null) && (((List)localObject).size() > 0)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  @Keep
  private class LotteryItemExtraSchema
    extends CustomSingleCard.CustomItemExtraSchema
  {
    String issue_code;
    
    private LotteryItemExtraSchema() {}
  }
  
  class a
    implements View.OnClickListener
  {
    a(int paramInt) {}
    
    public void onClick(View paramView)
    {
      paramView = LotterySingleCard.this;
      paramView.m.imageAction.sendIntent(LotterySingleCard.D(paramView));
      LotterySingleCard.this.k("card_change_clicked", paramInt, -1, null);
    }
  }
  
  class b
    implements DynamicLinearLayout.b
  {
    b(int paramInt) {}
    
    public void a(int paramInt)
    {
      CustomCardItemSchema localCustomCardItemSchema = (CustomCardItemSchema)LotterySingleCard.this.m.itemList.get(paramInt);
      ModuleSchema localModuleSchema = localCustomCardItemSchema.action;
      if (localModuleSchema != null) {
        localModuleSchema.sendIntent(LotterySingleCard.K(LotterySingleCard.this));
      }
      LotterySingleCard.this.k("card_item_clicked", paramInt, paramInt, localCustomCardItemSchema.title);
    }
  }
  
  class c
    implements View.OnTouchListener
  {
    c() {}
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      a.y(new View[] { paramView }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
      if (paramMotionEvent.getAction() == 1) {
        paramView.performClick();
      }
      return true;
    }
  }
  
  private class d
    extends i
  {
    private d() {}
    
    private List<a> e(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        z.m("Cal:D:LotterySingleCard", "ballStr is empty");
      }
      ArrayList localArrayList = new ArrayList();
      String[] arrayOfString = paramString.split("\\|");
      int i = arrayOfString.length;
      int j = 0;
      int k;
      if ((i > 0) && (!TextUtils.isEmpty(arrayOfString[0])))
      {
        paramString = arrayOfString[0].split(",");
        k = paramString.length;
        for (i = 0; i < k; i++) {
          localArrayList.add(new a(paramString[i], 0));
        }
      }
      if ((arrayOfString.length > 1) && (!TextUtils.isEmpty(arrayOfString[1])))
      {
        paramString = arrayOfString[1].split(",");
        k = paramString.length;
        for (i = j; i < k; i++) {
          localArrayList.add(new a(paramString[i], 1));
        }
      }
      return localArrayList;
    }
    
    public int a()
    {
      return LotterySingleCard.this.m.itemList.size();
    }
    
    public View b(int paramInt, View paramView)
    {
      View localView;
      if (paramView == null)
      {
        localView = LayoutInflater.from(LotterySingleCard.L(LotterySingleCard.this)).inflate(2131558669, null);
        paramView = new c(localView);
        localView.setTag(paramView);
      }
      else
      {
        localObject = (c)paramView.getTag();
        localView = paramView;
        paramView = (View)localObject;
      }
      Object localObject = (CustomCardItemSchema)LotterySingleCard.this.m.itemList.get(paramInt);
      paramView.b.setText(((CustomCardItemSchema)localObject).title);
      if (paramInt < LotterySingleCard.this.r.size())
      {
        LotterySingleCard.LotteryItemExtraSchema localLotteryItemExtraSchema = (LotterySingleCard.LotteryItemExtraSchema)LotterySingleCard.this.r.get(paramInt);
        paramView.c.setText(LotterySingleCard.M(LotterySingleCard.this).getString(2131887681, new Object[] { localLotteryItemExtraSchema.issue_code }));
      }
      else
      {
        z.m("Cal:D:LotterySingleCard", "getView() wrong extra data");
      }
      int i = LotterySingleCard.N(LotterySingleCard.this);
      int j = LotterySingleCard.O(LotterySingleCard.this);
      if (paramInt == LotterySingleCard.this.m.itemList.size() - 1)
      {
        paramView.a.setBackgroundResource(2131231035);
        paramInt = LotterySingleCard.P(LotterySingleCard.this);
      }
      else
      {
        paramView.a.setBackgroundResource(2131231040);
        paramInt = j;
      }
      paramView.a.setPadding(LotterySingleCard.Q(LotterySingleCard.this), i, LotterySingleCard.Q(LotterySingleCard.this), paramInt);
      localObject = e(((CustomCardItemSchema)localObject).description);
      paramView.d.setAdapter(new b((List)localObject));
      return localView;
    }
    
    private class a
    {
      String a;
      int b;
      
      a(String paramString, int paramInt)
      {
        this.a = paramString;
        this.b = paramInt;
      }
    }
    
    private class b
      extends i
    {
      private List<LotterySingleCard.d.a> b;
      
      b()
      {
        Object localObject;
        this.b = localObject;
      }
      
      private TextView e()
      {
        TextView localTextView = new TextView(LotterySingleCard.F(LotterySingleCard.this));
        localTextView.setTextSize(0, LotterySingleCard.G(LotterySingleCard.this).getResources().getDimensionPixelSize(2131166270));
        localTextView.setTextColor(LotterySingleCard.H(LotterySingleCard.this).getResources().getColor(2131100020));
        localTextView.setGravity(17);
        int i = LotterySingleCard.I(LotterySingleCard.this).getResources().getDimensionPixelSize(2131166268);
        int j = LotterySingleCard.J(LotterySingleCard.this).getResources().getDimensionPixelSize(2131166269);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(j, j);
        localLayoutParams.rightMargin = i;
        localTextView.setLayoutParams(localLayoutParams);
        return localTextView;
      }
      
      public int a()
      {
        List localList = this.b;
        if (localList == null) {
          return 0;
        }
        return localList.size();
      }
      
      public View b(int paramInt, View paramView)
      {
        Object localObject;
        if (paramView == null)
        {
          paramView = e();
          localObject = new a(paramView);
          paramView.setTag(localObject);
        }
        else
        {
          localObject = (a)paramView.getTag();
        }
        LotterySingleCard.d.a locala = (LotterySingleCard.d.a)this.b.get(paramInt);
        ((a)localObject).a.setText(locala.a);
        StringBuilder localStringBuilder;
        if (locala.b == 0)
        {
          ((a)localObject).a.setBackgroundResource(2131231436);
          localObject = ((a)localObject).a;
          localStringBuilder = new StringBuilder();
          localStringBuilder.append(LotterySingleCard.R(LotterySingleCard.this).getString(2131886847));
          localStringBuilder.append(locala.a);
          ((View)localObject).setContentDescription(localStringBuilder.toString());
        }
        else
        {
          ((a)localObject).a.setBackgroundResource(2131231435);
          localObject = ((a)localObject).a;
          localStringBuilder = new StringBuilder();
          localStringBuilder.append(LotterySingleCard.E(LotterySingleCard.this).getString(2131886846));
          localStringBuilder.append(locala.a);
          ((View)localObject).setContentDescription(localStringBuilder.toString());
        }
        return paramView;
      }
      
      private class a
      {
        public TextView a;
        
        a(View paramView)
        {
          this.a = ((TextView)paramView);
        }
      }
    }
    
    private class c
    {
      public View a;
      public TextView b;
      public TextView c;
      public DynamicLinearLayout d;
      
      c(View paramView)
      {
        this.a = paramView.findViewById(2131363074);
        this.b = ((TextView)paramView.findViewById(2131362984));
        this.c = ((TextView)paramView.findViewById(2131363121));
        this.d = ((DynamicLinearLayout)paramView.findViewById(2131362207));
      }
    }
  }
  
  private class e
    extends CustomSingleCard.g
  {
    TextView l;
    public DynamicLinearLayout m;
    
    e(View paramView)
    {
      super(paramView);
      this.l = ((TextView)paramView.findViewById(2131362140));
      this.m = ((DynamicLinearLayout)paramView.findViewById(2131362207));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.LotterySingleCard
 * JD-Core Version:    0.7.0.1
 */