package com.android.calendar.cards;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.WrapperLinearLayoutManager;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.i;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import p4.a.b;

public class b2
  extends m1<c, List<r4.a>>
{
  private List<r4.a> b;
  private p4.a c;
  private a.b d;
  
  public b2(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  int c()
  {
    return 25;
  }
  
  int d()
  {
    return 3;
  }
  
  void f(List<r4.a> paramList)
  {
    this.b = paramList;
  }
  
  void g(c paramc, final Context paramContext)
  {
    if (i.d(this.b)) {
      return;
    }
    this.c = new p4.a(paramContext, this.a);
    this.d = new a2(this);
    c.a(paramc).setLayoutManager(new a(CalendarApplication.e(), 1, false));
    c.a(paramc).setAdapter(this.c);
    this.c.q(this.d);
    this.c.p(this.a);
    this.c.o(this.b, -1, true);
    if (this.b.size() > 3)
    {
      c.b(paramc).setVisibility(0);
      c.b(paramc).setText(paramContext.getResources().getQuantityString(2131755082, this.b.size() - 3, new Object[] { Integer.valueOf(this.b.size() - 3) }));
      c.b(paramc).setOnClickListener(new b(paramContext));
    }
    else
    {
      c.b(paramc).setVisibility(8);
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("todo_day_offset", Integer.valueOf(e0.d(this.a, Calendar.getInstance())));
    if (i.d(this.b)) {
      paramContext = "0";
    } else {
      paramContext = Integer.valueOf(this.b.size());
    }
    localHashMap.put("todo_item_count", paramContext);
    CardHelper.o("card_displayed", paramc.getAdapterPosition(), -1, null, localHashMap, "todo_card");
  }
  
  class a
    extends WrapperLinearLayoutManager
  {
    a(Context paramContext, int paramInt, boolean paramBoolean)
    {
      super(paramInt, paramBoolean);
    }
    
    public boolean canScrollVertically()
    {
      return false;
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(Context paramContext) {}
    
    public void onClick(View paramView)
    {
      try
      {
        paramView = new android/content/Intent;
        paramView.<init>("com.miui.todo.action.INSERT_OR_EDIT");
        paramView.setFlags(268435456);
        paramView.setPackage("com.miui.notes");
        paramContext.startActivity(paramView);
        g0.f("card_button_clicked", new String[] { "todo_item_click", "click" });
      }
      catch (Exception paramView)
      {
        z.d("Cal:D:TodoCard", "onItemClick(): jump to notes todo error. ", paramView);
      }
    }
  }
  
  public static class c
    extends RecyclerView.c0
  {
    private RecyclerView a;
    private TextView b;
    
    public c(View paramView)
    {
      super();
      this.a = ((RecyclerView)paramView.findViewById(2131363016));
      this.b = ((TextView)paramView.findViewById(2131363455));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.b2
 * JD-Core Version:    0.7.0.1
 */