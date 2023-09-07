package com.android.calendar.cards;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.miui.calendar.holiday.model.HolidayBriefSchema;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.OnlineImageView;
import com.miui.calendar.view.i;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map<Ljava.lang.String;Ljava.lang.Object;>;

public class w0
  extends m1<d, x0.b>
{
  private final String b = "Cal:D:HolidaySingleCard";
  private List<HolidaySchema> c;
  private Map<String, HolidayBriefSchema> d;
  private boolean e;
  private int f;
  private int g;
  private int h;
  
  public w0(Calendar paramCalendar)
  {
    super(paramCalendar);
  }
  
  private Map<String, Object> n(Map<String, Object> paramMap, int paramInt)
  {
    Object localObject1;
    if (paramMap != null)
    {
      localObject1 = paramMap;
      if (paramMap.size() != 0) {}
    }
    else
    {
      localObject1 = new HashMap();
    }
    int i = 0;
    for (Object localObject2 = ""; i < this.c.size(); localObject2 = paramMap)
    {
      HolidaySchema localHolidaySchema = (HolidaySchema)this.c.get(i);
      paramMap = (Map<String, Object>)localObject2;
      if (localHolidaySchema != null)
      {
        String str = ",";
        if (paramInt == -1)
        {
          paramMap = new StringBuilder();
          paramMap.append((String)localObject2);
          if (TextUtils.isEmpty((CharSequence)localObject2)) {
            str = "";
          }
          paramMap.append(str);
          paramMap.append("_");
          paramMap.append(localHolidaySchema.name);
          paramMap.append("_");
          paramMap.append(localHolidaySchema.holidayId);
          paramMap = paramMap.toString();
        }
        else
        {
          paramMap = (Map<String, Object>)localObject2;
          if (localHolidaySchema.holidayId == paramInt)
          {
            paramMap = new StringBuilder();
            paramMap.append((String)localObject2);
            if (TextUtils.isEmpty((CharSequence)localObject2)) {
              str = "";
            }
            paramMap.append(str);
            paramMap.append("_");
            paramMap.append(localHolidaySchema.name);
            paramMap.append("_");
            paramMap.append(localHolidaySchema.holidayId);
            paramMap = paramMap.toString();
          }
        }
      }
      i++;
    }
    ((Map)localObject1).put("name", localObject2);
    return localObject1;
  }
  
  private int o(Context paramContext, HolidaySchema paramHolidaySchema, HolidayBriefSchema paramHolidayBriefSchema)
  {
    if ((!"NA".equals(DeviceUtils.p(paramContext))) && ((!this.e) || (paramHolidayBriefSchema != null)))
    {
      if (paramHolidayBriefSchema != null)
      {
        i = paramHolidayBriefSchema.categoryId;
        z.a("Cal:D:HolidaySingleCard", "getLayoutType(): load today data (holidayBrief), layoutType = $layoutType");
        break label76;
      }
      if (paramHolidaySchema != null)
      {
        i = paramHolidaySchema.categoryId;
        z.a("Cal:D:HolidaySingleCard", "getLayoutType(): load sync data (holiday), layoutType = $layoutType");
        break label76;
      }
    }
    else
    {
      z.a("Cal:D:HolidaySingleCard", "getLayoutType(): no network or load fail");
    }
    int i = 0;
    label76:
    if ((paramHolidaySchema != null) && (paramHolidayBriefSchema != null))
    {
      paramContext = new StringBuilder();
      paramContext.append("getLayoutType(): mDataQueried = ");
      paramContext.append(this.e);
      paramContext.append(", holiday.categoryId  = ");
      paramContext.append(paramHolidaySchema.categoryId);
      paramContext.append(", holidayBrief.categoryId  = ");
      paramContext.append(paramHolidayBriefSchema.categoryId);
      paramContext.append(", layoutType = ");
      paramContext.append(i);
      z.a("Cal:D:HolidaySingleCard", paramContext.toString());
    }
    return i;
  }
  
  int c()
  {
    return 99;
  }
  
  int d()
  {
    return 2;
  }
  
  void l(x0.b paramb)
  {
    this.c = paramb.a;
    this.d = paramb.b;
    this.e = paramb.c;
  }
  
  void m(d paramd, Context paramContext)
  {
    if ((this.c != null) && (this.d != null))
    {
      this.f = paramContext.getResources().getDimensionPixelOffset(2131165656);
      this.g = paramContext.getResources().getDimensionPixelOffset(2131165654);
      this.h = paramContext.getResources().getDimensionPixelOffset(2131166250);
      paramd.b.setAdapter(new b(paramContext));
      paramd.b.setOnItemTouchListener(new u0());
      paramd.b.setOnItemClickListener(new v0(this, paramContext, paramd));
      return;
    }
    z.m("Cal:D:HolidaySingleCard", "bindView(): no data or holder error!");
  }
  
  private class b
    extends i
  {
    private Context b;
    
    public b(Context paramContext)
    {
      this.b = paramContext;
    }
    
    private void e(w0.c paramc, HolidaySchema paramHolidaySchema, HolidayBriefSchema paramHolidayBriefSchema, int paramInt)
    {
      paramc.a.setVisibility(0);
      paramc.b.setText(paramHolidaySchema.name);
      if (paramHolidayBriefSchema != null)
      {
        if (!TextUtils.isEmpty(paramHolidayBriefSchema.description))
        {
          paramc.c.setVisibility(0);
          paramc.c.setText(paramHolidayBriefSchema.description);
        }
        else
        {
          paramc.c.setVisibility(8);
        }
        if (!TextUtils.isEmpty(paramHolidayBriefSchema.icon))
        {
          paramc.d.setVisibility(0);
          paramc.d.a(l0.e(paramHolidayBriefSchema.icon), 0, 0);
        }
        else
        {
          paramc.d.setVisibility(8);
        }
      }
      else
      {
        paramc.c.setVisibility(8);
        paramc.d.setVisibility(8);
      }
      int i = w0.i(w0.this);
      int j = w0.j(w0.this);
      int k = w0.k(w0.this);
      if ((paramInt == 0) && (w0.g(w0.this) != null) && (w0.g(w0.this).size() > 1))
      {
        paramc.a.setBackgroundResource(2131231044);
        j /= 2;
        paramInt = i;
      }
      else if (paramInt == 0)
      {
        paramc.a.setBackgroundResource(2131231037);
        paramInt = i;
      }
      else if ((w0.g(w0.this) != null) && (paramInt == w0.g(w0.this).size() - 1))
      {
        paramInt = i / 2;
        paramc.a.setBackgroundResource(2131231035);
      }
      else
      {
        paramc.a.setBackgroundResource(2131231040);
        paramInt = i;
      }
      paramc.a.setPadding(k, paramInt, k, j);
    }
    
    public int a()
    {
      if (w0.g(w0.this) != null) {
        return w0.g(w0.this).size();
      }
      return 0;
    }
    
    public View b(int paramInt, View paramView)
    {
      if (w0.g(w0.this) == null) {
        return null;
      }
      HolidaySchema localHolidaySchema = (HolidaySchema)w0.g(w0.this).get(paramInt);
      HolidayBriefSchema localHolidayBriefSchema;
      if (w0.h(w0.this) == null) {
        localHolidayBriefSchema = null;
      } else {
        localHolidayBriefSchema = (HolidayBriefSchema)w0.h(w0.this).get(localHolidaySchema.name);
      }
      w0.c localc;
      if (paramView == null)
      {
        paramView = LayoutInflater.from(this.b).inflate(2131558601, null);
        localc = new w0.c(paramView, null);
        paramView.setTag(localc);
      }
      else
      {
        localc = (w0.c)paramView.getTag();
      }
      e(localc, localHolidaySchema, localHolidayBriefSchema, paramInt);
      return paramView;
    }
  }
  
  private static class c
  {
    View a;
    TextView b;
    TextView c;
    OnlineImageView d;
    
    private c(View paramView)
    {
      this.a = paramView.findViewById(2131363078);
      this.b = ((TextView)paramView.findViewById(2131362984));
      this.c = ((TextView)paramView.findViewById(2131363121));
      this.d = ((OnlineImageView)paramView.findViewById(2131362537));
    }
  }
  
  public static class d
    extends RecyclerView.c0
  {
    LinearLayout a;
    DynamicLinearLayout b;
    
    public d(View paramView)
    {
      super();
      this.a = ((LinearLayout)paramView.findViewById(2131363074));
      this.b = ((DynamicLinearLayout)paramView.findViewById(2131362691));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.w0
 * JD-Core Version:    0.7.0.1
 */