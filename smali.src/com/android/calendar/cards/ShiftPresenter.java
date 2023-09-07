package com.android.calendar.cards;

import android.content.Context;
import androidx.annotation.Keep;
import com.android.calendar.application.CalendarApplication;
import com.google.gson.JsonElement;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.shift.ShiftSchema;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.util.Iterator;
import java.util.List;
import k4.d;

public class ShiftPresenter
  extends b<a>
{
  Context f = CalendarApplication.e();
  private a g;
  private ShiftCardExtraSchema h;
  private String i = "Cal:D:ShiftPresenter";
  private boolean j = false;
  
  public ShiftPresenter(t paramt)
  {
    super(paramt);
  }
  
  int c()
  {
    return 53;
  }
  
  boolean e()
  {
    boolean bool;
    if (this.g.b == null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void h()
  {
    Object localObject1 = new a();
    this.g = ((a)localObject1);
    ((a)localObject1).b = d.c(this.f);
    Object localObject2 = CardHelper.b.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (CustomCardSchema)((Iterator)localObject2).next();
      if (((CustomCardSchema)localObject1).showType + 20 == 53)
      {
        this.g.a = ((CustomCardSchema)localObject1);
        this.h = ((ShiftCardExtraSchema)x.a(((CustomCardSchema)localObject1).extra.toString(), ShiftCardExtraSchema.class));
        d.k(this.f, true);
      }
    }
    long l = this.h.configVersion;
    if (!this.j)
    {
      localObject1 = this.g.b;
      if ((localObject1 != null) && (l > ((ShiftSchema)localObject1).version))
      {
        localObject2 = this.i;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("local config version is ");
        ((StringBuilder)localObject1).append(this.g.b.version);
        ((StringBuilder)localObject1).append(", server config version is ");
        ((StringBuilder)localObject1).append(l);
        ((StringBuilder)localObject1).append(", need sync");
        z.a((String)localObject2, ((StringBuilder)localObject1).toString());
        d.i(this.f, new r1(this));
        return;
      }
    }
    g();
  }
  
  q1 l()
  {
    return new q1(this.d);
  }
  
  a m()
  {
    return this.g;
  }
  
  @Keep
  static class ShiftCardExtraSchema
  {
    int changeData;
    long configVersion = 0L;
    String customTitle;
    int itemNumPerPage;
    String suffix;
  }
  
  public static class a
  {
    public CustomCardSchema a = null;
    public ShiftSchema b = null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.ShiftPresenter
 * JD-Core Version:    0.7.0.1
 */