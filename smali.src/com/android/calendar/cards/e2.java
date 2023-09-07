package com.android.calendar.cards;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.settings.j;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class e2
  extends b<List<r4.a>>
{
  Context f = CalendarApplication.e();
  private List<r4.a> g;
  private final ContentObserver h = new a(null);
  
  public e2(t paramt)
  {
    super(paramt);
    CardHelper.c.execute(new c2(this));
  }
  
  int c()
  {
    return 3;
  }
  
  boolean e()
  {
    boolean bool;
    if (this.g.size() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void h()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = localArrayList;
    if (o4.b.d(this.f))
    {
      localObject = localArrayList;
      if (j.l(this.f)) {
        localObject = q4.a.a().b(this.f, this.d);
      }
    }
    this.g = ((List)localObject);
    g();
  }
  
  public void i()
  {
    if (this.h != null) {
      this.f.getContentResolver().unregisterContentObserver(this.h);
    }
    super.i();
  }
  
  b2 l()
  {
    return new b2(this.d);
  }
  
  List<r4.a> m()
  {
    return this.g;
  }
  
  class a
    extends ContentObserver
  {
    a(Handler paramHandler)
    {
      super();
    }
    
    public void onChange(boolean paramBoolean)
    {
      super.onChange(paramBoolean);
      CardHelper.c.execute(new d2(e2.this));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.e2
 * JD-Core Version:    0.7.0.1
 */