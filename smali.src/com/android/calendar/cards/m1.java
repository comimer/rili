package com.android.calendar.cards;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView.c0;
import java.util.Calendar;

public abstract class m1<VH extends RecyclerView.c0, V>
{
  protected Calendar a;
  
  public m1(Calendar paramCalendar)
  {
    this.a = paramCalendar;
  }
  
  abstract void a(V paramV);
  
  abstract void b(VH paramVH, Context paramContext);
  
  abstract int c();
  
  abstract int d();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.m1
 * JD-Core Version:    0.7.0.1
 */