package com.android.calendar.cards;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.style.TypefaceSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.i;
import java.util.ArrayList;
import java.util.Calendar;

public class d0
  extends m1<b, ClassSchedulePresenter.b>
{
  private CustomCardSchema b;
  private ClassSchedulePresenter.ClassScheduleExtraSchema c;
  private int d;
  
  public d0(Calendar paramCalendar)
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
      i = 108;
    }
    return i;
  }
  
  int d()
  {
    return 58;
  }
  
  void j(ClassSchedulePresenter.b paramb)
  {
    this.b = paramb.a;
    this.c = paramb.b;
    this.d = paramb.c;
  }
  
  void k(b paramb, Context paramContext)
  {
    v.k(paramb.c);
    if (this.d == 0)
    {
      paramb.c.setVisibility(0);
      paramb.c.setOnClickListener(new y(this, paramContext));
      paramb.f.setVisibility(8);
      paramb.b.setVisibility(8);
      paramb.a.setVisibility(8);
      localObject = this.b.extra;
      if (localObject == null) {
        return;
      }
      localObject = ((JsonObject)localObject).get("infoGuideTitle");
      JsonElement localJsonElement = this.b.extra.get("infoGuideDescription");
      if ((localObject != null) && (localJsonElement != null))
      {
        if (((JsonElement)localObject).getAsString() != null) {
          localObject = ((JsonElement)localObject).getAsString();
        } else {
          localObject = paramContext.getString(2131886368);
        }
        paramb.d.setText((CharSequence)localObject);
        if (localJsonElement.getAsString() != null) {
          paramContext = localJsonElement.getAsString();
        } else {
          paramContext = paramContext.getString(2131886369);
        }
        paramb.d.setText(paramContext);
      }
      return;
    }
    Object localObject = this.c;
    if (localObject == null)
    {
      paramb.c.setVisibility(0);
      paramb.c.setOnClickListener(new z(this, paramContext));
      paramb.b.setVisibility(8);
      paramb.a.setVisibility(8);
      paramb.f.setVisibility(8);
      paramb.d.setText(paramContext.getString(2131886366));
      paramb.e.setText(paramContext.getString(2131886367));
      return;
    }
    int i = ((ClassSchedulePresenter.ClassScheduleExtraSchema)localObject).presentWeek;
    if (i > 0)
    {
      paramb.b.setVisibility(0);
      paramb.a.setVisibility(0);
      paramb.a.setText(paramContext.getString(2131886370, new Object[] { Integer.valueOf(i), s0.b(paramContext, this.a) }));
    }
    localObject = this.c.courses;
    if ((localObject != null) && (!((ArrayList)localObject).isEmpty()))
    {
      paramb.c.setVisibility(8);
      paramb.f.setVisibility(0);
      paramb.f.setAdapter(new a(paramContext, (ArrayList)localObject));
      paramb.f.setOnItemTouchListener(new b0());
      paramb.f.setOnItemClickListener(new c0(this, paramContext, (ArrayList)localObject));
      return;
    }
    paramb.c.setVisibility(0);
    paramb.c.setOnClickListener(new a0(this, paramContext));
    paramb.f.setVisibility(8);
    paramContext = this.c.coursesDesc;
    if (paramContext != null)
    {
      paramb.d.setText(paramContext.title);
      paramb.e.setText(this.c.coursesDesc.desc);
    }
  }
  
  private static class a
    extends i
  {
    ArrayList<ClassSchedulePresenter.ClassScheduleExtraSchema.Course> b;
    Context c;
    
    public a(Context paramContext, ArrayList<ClassSchedulePresenter.ClassScheduleExtraSchema.Course> paramArrayList)
    {
      this.c = paramContext;
      this.b = paramArrayList;
    }
    
    public int a()
    {
      return this.b.size();
    }
    
    public View b(int paramInt, View paramView)
    {
      Object localObject1 = null;
      a locala;
      if (paramView == null)
      {
        paramView = LayoutInflater.from(this.c).inflate(2131558506, null);
        paramView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        locala = new a(paramView);
        paramView.setTag(locala);
      }
      else
      {
        locala = new a(paramView);
        paramView.setTag(locala);
      }
      ClassSchedulePresenter.ClassScheduleExtraSchema.Course localCourse = (ClassSchedulePresenter.ClassScheduleExtraSchema.Course)this.b.get(paramInt);
      if (paramInt == this.b.size() - 1L) {
        locala.h.setBackgroundResource(2131231035);
      } else {
        locala.h.setBackgroundResource(2131231040);
      }
      int i = 0;
      if (localCourse != null)
      {
        Object localObject2 = localCourse.section;
        if (localObject2 != null) {
          localObject1 = ((ClassSchedulePresenter.ClassScheduleExtraSchema.Course.Section)localObject2).sectionTitle;
        }
        if ((!x0.p0()) && (localObject1 != null) && (!((String)localObject1).isEmpty()) && (((String)localObject1).length() >= 3))
        {
          localObject1 = new SpannableString((CharSequence)localObject1);
          ((SpannableString)localObject1).setSpan(new TypefaceSpan("mitype-semibold"), 1, ((SpannableString)localObject1).length() - 1, 33);
          locala.a.setText((CharSequence)localObject1);
        }
        else
        {
          locala.a.setText((CharSequence)localObject1);
        }
        localObject1 = localCourse.section;
        if (localObject1 != null) {
          locala.b.setText(((ClassSchedulePresenter.ClassScheduleExtraSchema.Course.Section)localObject1).timeDesc);
        }
        locala.c.setText(localCourse.name);
        localObject1 = (LinearLayout.LayoutParams)locala.c.getLayoutParams();
        localObject2 = localCourse.teacher;
        if ((localObject2 != null) && (!((String)localObject2).isEmpty()))
        {
          locala.d.setVisibility(0);
          ((LinearLayout.LayoutParams)localObject1).topMargin = 0;
          localObject1 = localCourse.position;
          if ((localObject1 != null) && (!((String)localObject1).isEmpty()))
          {
            locala.g.setVisibility(0);
            locala.e.setText(localCourse.position);
            locala.f.setText(localCourse.teacher);
          }
          else
          {
            locala.f.setText(localCourse.teacher);
            locala.g.setVisibility(8);
          }
        }
        else
        {
          localObject2 = localCourse.position;
          if ((localObject2 != null) && (!((String)localObject2).isEmpty()))
          {
            locala.d.setVisibility(0);
            locala.e.setText(localCourse.position);
            locala.g.setVisibility(8);
            ((LinearLayout.LayoutParams)localObject1).topMargin = 0;
          }
          else
          {
            locala.d.setVisibility(8);
            ((LinearLayout.LayoutParams)localObject1).topMargin = this.c.getResources().getDimensionPixelOffset(2131167088);
          }
        }
      }
      int j = this.c.getResources().getDimensionPixelOffset(2131166250);
      int k = this.c.getResources().getDimensionPixelOffset(2131166250);
      int m = this.c.getResources().getDimensionPixelOffset(2131167088);
      int n = this.c.getResources().getDimensionPixelOffset(2131167088);
      int i1 = this.c.getResources().getDimensionPixelOffset(2131165730);
      int i2 = this.c.getResources().getDimensionPixelOffset(2131166250);
      int i3 = i1;
      if (paramInt == 0)
      {
        i3 = i1 + m;
        i = m;
      }
      if (paramInt == this.b.size() - 1)
      {
        i3 += n;
        paramInt = n;
      }
      else
      {
        paramInt = i2;
      }
      paramView.setMinimumHeight(i3);
      paramView.setPadding(j, i, k, paramInt);
      return paramView;
    }
    
    private static class a
    {
      public TextView a;
      public TextView b;
      public TextView c;
      public LinearLayout d;
      public TextView e;
      public TextView f;
      public View g;
      public FrameLayout h;
      
      public a(View paramView)
      {
        this.a = ((TextView)paramView.findViewById(2131363128));
        this.b = ((TextView)paramView.findViewById(2131363359));
        this.c = ((TextView)paramView.findViewById(2131363132));
        this.d = ((LinearLayout)paramView.findViewById(2131363129));
        this.e = ((TextView)paramView.findViewById(2131362715));
        this.f = ((TextView)paramView.findViewById(2131363326));
        this.g = paramView.findViewById(2131362111);
        this.h = ((FrameLayout)paramView.findViewById(2131362221));
      }
    }
  }
  
  public static class b
    extends RecyclerView.c0
  {
    public TextView a;
    public View b;
    public View c;
    public TextView d;
    public TextView e;
    public DynamicLinearLayout f;
    
    public b(View paramView)
    {
      super();
      this.a = ((TextView)paramView.findViewById(2131362126));
      this.b = paramView.findViewById(2131362125);
      this.c = paramView.findViewById(2131362878);
      this.d = ((TextView)paramView.findViewById(2131362880));
      this.e = ((TextView)paramView.findViewById(2131362881));
      this.f = ((DynamicLinearLayout)paramView.findViewById(2131362175));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.d0
 * JD-Core Version:    0.7.0.1
 */