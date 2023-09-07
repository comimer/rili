package com.android.calendar.cards;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.q;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import okhttp3.b0;
import org.json.JSONObject;
import tc.a;
import u1.b.a;

public class ClassSchedulePresenter
  extends b<b>
{
  private static int k;
  private static b l;
  Context f;
  private int g = 1;
  private a<b0> h;
  private String i;
  private final String j;
  
  public ClassSchedulePresenter(t paramt)
  {
    super(paramt);
    paramt = new StringBuilder();
    paramt.append("disk_cache_key_class_schedule_data-");
    paramt.append(s0.m(this.d));
    this.j = paramt.toString();
    this.f = CalendarApplication.e();
  }
  
  int c()
  {
    return 58;
  }
  
  boolean e()
  {
    boolean bool;
    if ((com.miui.calendar.util.e0.v(Calendar.getInstance(), this.d)) && (l.a != null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  void h()
  {
    l = new b();
    Object localObject1 = CardHelper.b.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (CustomCardSchema)((Iterator)localObject1).next();
      if (((CustomCardSchema)localObject3).showType + 20 == 58) {
        l.a = ((CustomCardSchema)localObject3);
      }
    }
    localObject1 = q.d(this.f, this.j);
    this.i = ((String)localObject1);
    boolean bool = TextUtils.isEmpty((CharSequence)localObject1);
    Object localObject4 = null;
    localObject1 = null;
    Object localObject5 = null;
    if (!bool)
    {
      localObject3 = localObject4;
      try
      {
        localObject1 = this.i;
        localObject3 = localObject4;
        Object localObject6 = new com/android/calendar/cards/ClassSchedulePresenter$a;
        localObject3 = localObject4;
        ((a)localObject6).<init>(this);
        localObject3 = localObject4;
        localObject6 = (List)x.b((String)localObject1, ((TypeToken)localObject6).getType());
        localObject1 = localObject5;
        if (localObject6 != null)
        {
          localObject1 = localObject5;
          localObject3 = localObject4;
          if (!((List)localObject6).isEmpty())
          {
            localObject3 = localObject4;
            localObject1 = (ClassScheduleExtraSchema)((List)localObject6).get(0);
          }
        }
        localObject3 = localObject1;
        CardHelper.l(l.a);
      }
      catch (Exception localException)
      {
        z.d("Cal:D:ClassSchedulePresenter", "doInBackground() ", localException);
        localObject2 = localObject3;
      }
    }
    else
    {
      this.i = null;
    }
    Object localObject3 = l;
    ((b)localObject3).b = ((ClassScheduleExtraSchema)localObject2);
    Object localObject2 = ((b)localObject3).a;
    if (localObject2 != null)
    {
      localObject2 = ((CustomCardSchema)localObject2).extra;
      if ((localObject2 != null) && (((JsonObject)localObject2).get("classState") != null))
      {
        localObject2 = l;
        ((b)localObject2).c = ((b)localObject2).a.extra.get("classState").getAsInt();
      }
    }
    localObject2 = l;
    if (((b)localObject2).a != null)
    {
      if (((b)localObject2).c == k)
      {
        g();
        return;
      }
      k3.d.g(new e0(this));
    }
  }
  
  d0 q()
  {
    return new d0(this.d);
  }
  
  b r()
  {
    return l;
  }
  
  @Keep
  public static class ClassScheduleExtraSchema
  {
    int cardId = 0;
    ArrayList<Course> courses = null;
    CoursesDesc coursesDesc = null;
    int day = 0;
    int presentWeek = 0;
    int showType = 0;
    
    @Keep
    static class Course
    {
      ModuleSchema action = null;
      String courseId = null;
      String csId = null;
      int day = 0;
      String deviceId = null;
      String name = null;
      String position = null;
      Section section = null;
      String style = null;
      String teacher = null;
      String userId = null;
      ArrayList<Integer> weeks = null;
      
      @Keep
      static class Section
      {
        String endTime = null;
        ArrayList<Integer> section = null;
        String sectionTitle = null;
        String startTime = null;
        String timeDesc = null;
      }
    }
    
    @Keep
    static class CoursesDesc
    {
      String desc = null;
      String title = null;
    }
  }
  
  class a
    extends TypeToken<List<ClassSchedulePresenter.ClassScheduleExtraSchema>>
  {
    a() {}
  }
  
  public static class b
  {
    public CustomCardSchema a = null;
    public ClassSchedulePresenter.ClassScheduleExtraSchema b = null;
    public int c = ClassSchedulePresenter.p();
  }
  
  private static class c
    implements b.a
  {
    private final WeakReference<ClassSchedulePresenter> a;
    
    public c(ClassSchedulePresenter paramClassSchedulePresenter)
    {
      this.a = new WeakReference(paramClassSchedulePresenter);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      ClassSchedulePresenter localClassSchedulePresenter = (ClassSchedulePresenter)this.a.get();
      if (localClassSchedulePresenter == null) {
        return;
      }
      try
      {
        paramJSONObject = paramJSONObject.getString("data");
        try
        {
          s4.d.d(paramJSONObject);
          if (TextUtils.equals(ClassSchedulePresenter.l(localClassSchedulePresenter), paramJSONObject)) {
            break label236;
          }
          ClassSchedulePresenter.m(localClassSchedulePresenter, paramJSONObject);
          if (!TextUtils.isEmpty(paramJSONObject))
          {
            q.f(localClassSchedulePresenter.f, ClassSchedulePresenter.n(localClassSchedulePresenter), paramJSONObject);
            try
            {
              Object localObject = new com/android/calendar/cards/ClassSchedulePresenter$c$a;
              ((a)localObject).<init>(this);
              localObject = (List)x.b(paramJSONObject, ((TypeToken)localObject).getType());
              if ((localObject != null) && (!((List)localObject).isEmpty())) {
                ClassSchedulePresenter.o().b = ((ClassSchedulePresenter.ClassScheduleExtraSchema)((List)localObject).get(0));
              }
            }
            catch (Exception localException1)
            {
              z.d("Cal:D:ClassSchedulePresenter", "doInBackground() ", localException1);
              ClassSchedulePresenter.o().b = null;
            }
            CardHelper.l(ClassSchedulePresenter.o().a);
            ClassSchedulePresenter.o().c = ClassSchedulePresenter.o().a.extra.get("classState").getAsInt();
          }
          else
          {
            q.h(localClassSchedulePresenter.f, ClassSchedulePresenter.n(localClassSchedulePresenter));
            ClassSchedulePresenter.o().a.itemList = null;
          }
        }
        catch (Exception localException2) {}
        z.d("Cal:D:ClassSchedulePresenter", "ResponseListener: ", localException3);
      }
      catch (Exception localException3)
      {
        paramJSONObject = null;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("data: ");
      localStringBuilder.append(paramJSONObject);
      z.c("Cal:D:ClassSchedulePresenter", localStringBuilder.toString());
      label236:
      localClassSchedulePresenter.g();
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:ClassSchedulePresenter", "onErrorResponse", paramException);
    }
    
    class a
      extends TypeToken<List<ClassSchedulePresenter.ClassScheduleExtraSchema>>
    {
      a() {}
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.ClassSchedulePresenter
 * JD-Core Version:    0.7.0.1
 */