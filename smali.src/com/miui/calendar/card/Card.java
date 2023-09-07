package com.miui.calendar.card;

import android.content.Context;
import android.widget.BaseAdapter;
import com.miui.calendar.card.schema.CustomCardSchema;
import java.util.Calendar;

public abstract class Card
{
  protected Context a;
  protected BaseAdapter b;
  public int c;
  protected ContainerType d;
  protected Calendar e;
  
  public Card(Context paramContext, int paramInt, ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    this.a = paramContext;
    this.c = paramInt;
    this.d = paramContainerType;
    f(paramCalendar);
    this.b = paramBaseAdapter;
  }
  
  public static String c(ContainerType paramContainerType)
  {
    int i = a.a[paramContainerType.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3) {
          return "unknown_container";
        }
        return "card_detail";
      }
      return "holiday";
    }
    return "homepage";
  }
  
  public abstract void a();
  
  public abstract void b();
  
  public boolean d(CustomCardSchema paramCustomCardSchema)
  {
    return this.c == paramCustomCardSchema.showType + 20;
  }
  
  public abstract void e(b.b paramb);
  
  public void f(Calendar paramCalendar)
  {
    Calendar localCalendar = Calendar.getInstance();
    this.e = localCalendar;
    localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
  }
  
  public static enum ContainerType
  {
    static
    {
      ContainerType localContainerType1 = new ContainerType("HOMEPAGE", 0);
      HOMEPAGE = localContainerType1;
      ContainerType localContainerType2 = new ContainerType("HOLIDAY", 1);
      HOLIDAY = localContainerType2;
      ContainerType localContainerType3 = new ContainerType("CARD_DETAIL", 2);
      CARD_DETAIL = localContainerType3;
      $VALUES = new ContainerType[] { localContainerType1, localContainerType2, localContainerType3 };
    }
    
    private ContainerType() {}
  }
  
  public static enum DisplayStatus
  {
    static
    {
      DisplayStatus localDisplayStatus1 = new DisplayStatus("HIDE", 0);
      HIDE = localDisplayStatus1;
      DisplayStatus localDisplayStatus2 = new DisplayStatus("DISPLAY", 1);
      DISPLAY = localDisplayStatus2;
      $VALUES = new DisplayStatus[] { localDisplayStatus1, localDisplayStatus2 };
    }
    
    private DisplayStatus() {}
  }
  
  public static class b
  {
    public static String a(int paramInt)
    {
      if ((paramInt != 1) && (paramInt != 6))
      {
        if (paramInt != 8)
        {
          if (paramInt != 12)
          {
            if (paramInt != 16)
            {
              if (paramInt != 19) {
                return c.a(paramInt);
              }
              return "todo_card";
            }
            return "agenda_group_card";
          }
          return "introduction_card";
        }
        return "holiday_card_v2";
      }
      return "summary_card";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.Card
 * JD-Core Version:    0.7.0.1
 */