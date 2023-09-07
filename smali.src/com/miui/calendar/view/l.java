package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.SparseArray;

public class l
{
  static final SparseArray<l> h = new SparseArray(2);
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;
  private final int f;
  private final int g;
  
  private l(Context paramContext)
  {
    paramContext = paramContext.getResources();
    this.a = paramContext.getDimensionPixelSize(2131167431);
    this.b = paramContext.getDimensionPixelSize(2131167433);
    this.c = paramContext.getDimensionPixelSize(2131167432);
    this.d = paramContext.getDimensionPixelSize(2131167429);
    this.e = paramContext.getDimensionPixelSize(2131167430);
    this.f = paramContext.getInteger(2131427376);
    this.g = paramContext.getInteger(2131427377);
  }
  
  public static l a(Context paramContext)
  {
    int i = (int)(paramContext.getResources().getDisplayMetrics().density * 100.0F);
    SparseArray localSparseArray = h;
    l locall1 = (l)localSparseArray.get(i);
    l locall2 = locall1;
    if (locall1 == null)
    {
      locall2 = new l(paramContext);
      localSparseArray.put(i, locall2);
    }
    return locall2;
  }
  
  public int b()
  {
    return this.f;
  }
  
  public int c()
  {
    return this.a;
  }
  
  public int d()
  {
    return this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.l
 * JD-Core Version:    0.7.0.1
 */