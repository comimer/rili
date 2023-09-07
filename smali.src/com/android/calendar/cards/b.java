package com.android.calendar.cards;

import android.os.Handler;
import androidx.recyclerview.widget.RecyclerView.c0;
import java.util.Calendar;

public abstract class b<T>
{
  private m1<RecyclerView.c0, T> a = null;
  private boolean b = false;
  private t c;
  protected Calendar d;
  public boolean e = false;
  
  public b(t paramt)
  {
    this.c = paramt;
    this.d = paramt.t();
  }
  
  abstract m1 b();
  
  abstract int c();
  
  abstract T d();
  
  abstract boolean e();
  
  public void g()
  {
    CardHelper.d.post(new a(this));
  }
  
  abstract void h();
  
  public void i()
  {
    this.b = true;
    this.c = null;
    this.a = null;
  }
  
  public void j()
  {
    this.e = true;
    h();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.b
 * JD-Core Version:    0.7.0.1
 */