package com.android.calendar.cards;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.shift.ShiftReminderSchema.a;
import com.miui.calendar.shift.ShiftSchema;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import java.util.Calendar;

public class q1
  extends m1<a, ShiftPresenter.a>
{
  private CustomCardSchema b;
  private ShiftSchema c;
  
  public q1(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  int c()
  {
    CustomCardSchema localCustomCardSchema = this.b;
    int i;
    if (localCustomCardSchema != null) {
      i = localCustomCardSchema.sequence;
    } else {
      i = 105;
    }
    return i;
  }
  
  int d()
  {
    return 53;
  }
  
  void g(ShiftPresenter.a parama)
  {
    this.b = parama.a;
    this.c = parama.b;
  }
  
  void h(a parama, Context paramContext)
  {
    if (parama.a != null)
    {
      localObject = CardHelper.a;
      if ((localObject != null) && (!TextUtils.isEmpty(((CardHelper.CustomCardExtraSchema)localObject).customTitle))) {
        parama.a.setText(((CardHelper.CustomCardExtraSchema)localObject).customTitle);
      } else {
        parama.a.setText(this.b.title);
      }
    }
    Object localObject = this.c;
    if ((localObject != null) && (((ShiftSchema)localObject).isRemind))
    {
      parama.h.setVisibility(8);
      parama.c.setVisibility(0);
      long l = System.currentTimeMillis();
      if (this.c.isStartShift(l))
      {
        parama.b.setVisibility(0);
        parama.c.setText(paramContext.getString(2131887479, new Object[] { ShiftReminderSchema.a.a(paramContext, this.c.getShiftType(l)) }));
        parama.d.setVisibility(0);
        if (this.c.getShiftType(l) == 0)
        {
          parama.e.setVisibility(8);
          parama.f.setVisibility(8);
        }
        else
        {
          parama.e.setVisibility(0);
          parama.e.setText(s0.q(paramContext, this.c.getShiftReminderMinutes(l), true));
          parama.f.setVisibility(0);
        }
        parama.g.setText(paramContext.getString(2131887477, new Object[] { Integer.valueOf(this.c.getReminderIndex(System.currentTimeMillis()) + 1) }));
      }
      else
      {
        parama.b.setVisibility(0);
        parama.c.setText(paramContext.getString(2131887480, new Object[] { s0.g(paramContext, this.c.startTimeMillis) }));
        parama.d.setVisibility(8);
      }
    }
    else
    {
      parama.b.setVisibility(8);
      parama.h.setVisibility(0);
      parama.c.setVisibility(8);
      parama.d.setVisibility(8);
    }
    parama.b.setOnClickListener(new o1(this, paramContext, parama));
    v.k(parama.b);
    parama.i.setOnClickListener(new p1(this, paramContext, parama));
    v.k(parama.i);
  }
  
  public static class a
    extends RecyclerView.c0
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public View d;
    public TextView e;
    public View f;
    public TextView g;
    public View h;
    public View i;
    
    public a(View paramView)
    {
      super();
      this.a = ((TextView)paramView.findViewById(2131363373));
      this.b = ((TextView)paramView.findViewById(2131362396));
      this.c = ((TextView)paramView.findViewById(2131363159));
      this.d = paramView.findViewById(2131363025);
      this.e = ((TextView)paramView.findViewById(2131363030));
      this.f = paramView.findViewById(2131362368);
      this.g = ((TextView)paramView.findViewById(2131363023));
      this.h = paramView.findViewById(2131362877);
      this.i = paramView.findViewById(2131363158);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.q1
 * JD-Core Version:    0.7.0.1
 */