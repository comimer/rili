package com.android.calendar.cards;

import android.content.Context;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.e0;
import f4.a;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public class l1
  extends b<a>
{
  Context f = CalendarApplication.e();
  private boolean g;
  private a h;
  
  public l1(t paramt)
  {
    super(paramt);
  }
  
  private void n()
  {
    f4.b.c(this.f, new k1(this));
  }
  
  int c()
  {
    return 57;
  }
  
  boolean e()
  {
    boolean bool;
    if ((e0.v(Calendar.getInstance(), this.d)) && (this.h.b != null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  void h()
  {
    this.h = new a();
    Object localObject = CardHelper.b.iterator();
    while (((Iterator)localObject).hasNext())
    {
      CustomCardSchema localCustomCardSchema = (CustomCardSchema)((Iterator)localObject).next();
      if (localCustomCardSchema.showType + 20 == 57) {
        this.h.a = localCustomCardSchema;
      }
    }
    localObject = f4.b.d(this.f);
    if (localObject == null)
    {
      this.g = true;
      localObject = f4.b.b(this.f);
    }
    else
    {
      this.g = false;
    }
    this.h.b = ((a)localObject);
    n();
  }
  
  j1 l()
  {
    return new j1(this.d);
  }
  
  a m()
  {
    return this.h;
  }
  
  public static class a
  {
    public CustomCardSchema a = null;
    public a b = null;
  }
  
  public static abstract interface b
  {
    public abstract void a(a parama);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.l1
 * JD-Core Version:    0.7.0.1
 */