package com.android.calendar.cards;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.v;
import java.util.Calendar;

public class j1
  extends m1<a, l1.a>
{
  private CustomCardSchema b;
  private f4.a c;
  
  public j1(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  private void m(Context paramContext, a parama)
  {
    f4.a locala = this.c;
    if (locala == null) {
      return;
    }
    if (locala.a)
    {
      boolean bool = b2.a.d(paramContext, "preferences_menstruation_is_private", true);
      Object localObject1 = parama.b;
      int i;
      if (bool) {
        i = 2131231327;
      } else {
        i = 2131231326;
      }
      ((ImageView)localObject1).setImageResource(i);
      localObject1 = parama.b;
      Object localObject2 = paramContext.getResources();
      if (bool) {
        i = 2131887609;
      } else {
        i = 2131887608;
      }
      ((View)localObject1).setContentDescription(((Resources)localObject2).getString(i));
      localObject2 = parama.c;
      if (bool) {
        localObject1 = locala.b;
      } else {
        localObject1 = paramContext.getResources().getString(2131886883);
      }
      ((TextView)localObject2).setText((CharSequence)localObject1);
      parama = parama.d;
      if (bool) {
        paramContext = locala.c;
      } else {
        paramContext = paramContext.getResources().getString(2131886882);
      }
      parama.setText(paramContext);
    }
    else
    {
      parama.c.setText(locala.b);
      parama.d.setText(locala.c);
    }
  }
  
  int c()
  {
    CustomCardSchema localCustomCardSchema = this.b;
    int i;
    if (localCustomCardSchema != null) {
      i = localCustomCardSchema.sequence;
    } else {
      i = 107;
    }
    return i;
  }
  
  int d()
  {
    return 57;
  }
  
  void h(l1.a parama)
  {
    this.c = parama.b;
    this.b = parama.a;
  }
  
  void i(a parama, Context paramContext)
  {
    Object localObject = parama.a;
    if (localObject != null) {
      ((TextView)localObject).setText(paramContext.getResources().getString(2131886885));
    }
    parama.e.setOnClickListener(new g1(this, paramContext, parama));
    v.k(parama.e);
    f4.a locala = this.c;
    if (locala != null)
    {
      localObject = parama.b;
      int i;
      if (locala.a) {
        i = 0;
      } else {
        i = 8;
      }
      ((ImageView)localObject).setVisibility(i);
      parama.d.setVisibility(0);
      m(paramContext, parama);
      parama.b.setOnClickListener(new h1(this, paramContext, parama));
      v.k(parama.b);
    }
  }
  
  public static class a
    extends RecyclerView.c0
  {
    public TextView a;
    public ImageView b;
    public TextView c;
    public TextView d;
    public View e;
    
    public a(View paramView)
    {
      super();
      this.a = ((TextView)paramView.findViewById(2131363373));
      this.b = ((ImageView)paramView.findViewById(2131362646));
      this.c = ((TextView)paramView.findViewById(2131362984));
      this.d = ((TextView)paramView.findViewById(2131363121));
      this.e = paramView.findViewById(2131362221);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.j1
 * JD-Core Version:    0.7.0.1
 */