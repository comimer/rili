package com.miui.calendar.card.single.custom;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TypefaceSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.android.calendar.settings.j;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.account.mi.MiAccountSchema;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.DynamicLinearLayout;
import com.miui.calendar.view.i;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.jvm.internal.r;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import okhttp3.b0;
import org.json.JSONObject;
import s3.a.a;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Ljava/util/Calendar;", "desiredDay", "Lkotlin/u;", "f", "", "i", "Landroid/view/View;", "view", "Ls3/a$a;", "Ls3/a;", "h", "", "j", "b", "a", "Lcom/miui/calendar/card/b$b;", "listener", "e", "holder", "position", "g", "s", "I", "mItemPaddingTop", "t", "mItemPaddingStart", "u", "mItemPaddingEnd", "v", "mItemPaddingBottom", "w", "mFirstItemPaddingTop", "x", "mLastItemPaddingBottom", "y", "mItemHeight", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;", "z", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;", "mExtraSchema", "", "A", "Ljava/lang/String;", "mCacheData", "B", "mClassState", "D", "mCacheKey", "Landroid/content/Context;", "context", "Lcom/miui/calendar/card/Card$ContainerType;", "containerType", "Landroid/widget/BaseAdapter;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V", "E", "ClassScheduleExtraSchema", "c", "d", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class ClassScheduleSingleCard
  extends CustomSingleCard
{
  public static final c E = new c(null);
  private String A;
  private int B;
  private tc.a<b0> C;
  private String D;
  private final int s;
  private final int t;
  private final int u;
  private final int v;
  private final int w;
  private final int x;
  private final int y;
  private ClassScheduleExtraSchema z;
  
  public ClassScheduleSingleCard(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 58, paramContainerType, paramCalendar, paramBaseAdapter);
    this.t = paramContext.getResources().getDimensionPixelOffset(2131166250);
    this.u = paramContext.getResources().getDimensionPixelOffset(2131166250);
    this.w = paramContext.getResources().getDimensionPixelOffset(2131167088);
    this.x = paramContext.getResources().getDimensionPixelOffset(2131167088);
    this.y = paramContext.getResources().getDimensionPixelOffset(2131165730);
    paramContext = new StringBuilder();
    paramContext.append("disk_cache_key_class_schedule_data-");
    paramContext.append(s0.m(paramCalendar));
    this.D = paramContext.toString();
  }
  
  private static final void V(ClassScheduleSingleCard paramClassScheduleSingleCard, View paramView)
  {
    r.f(paramClassScheduleSingleCard, "this$0");
    if (!v3.d.c(paramClassScheduleSingleCard.a))
    {
      paramClassScheduleSingleCard = paramClassScheduleSingleCard.a;
      r.e(paramClassScheduleSingleCard, "mContext");
      v3.d.e(paramClassScheduleSingleCard);
    }
    else
    {
      paramClassScheduleSingleCard.m.action.sendIntent(paramClassScheduleSingleCard.a);
    }
  }
  
  private static final void W(ClassScheduleSingleCard paramClassScheduleSingleCard, View paramView)
  {
    r.f(paramClassScheduleSingleCard, "this$0");
    if (!v3.d.c(paramClassScheduleSingleCard.a))
    {
      paramClassScheduleSingleCard = paramClassScheduleSingleCard.a;
      r.e(paramClassScheduleSingleCard, "mContext");
      v3.d.e(paramClassScheduleSingleCard);
    }
    else
    {
      paramClassScheduleSingleCard.m.action.sendIntent(paramClassScheduleSingleCard.a);
    }
  }
  
  private static final void X(ClassScheduleSingleCard paramClassScheduleSingleCard, View paramView)
  {
    r.f(paramClassScheduleSingleCard, "this$0");
    if (!v3.d.c(paramClassScheduleSingleCard.a))
    {
      paramClassScheduleSingleCard = paramClassScheduleSingleCard.a;
      r.e(paramClassScheduleSingleCard, "mContext");
      v3.d.e(paramClassScheduleSingleCard);
    }
    else
    {
      paramClassScheduleSingleCard.m.action.sendIntent(paramClassScheduleSingleCard.a);
    }
  }
  
  private static final boolean Y(View paramView, MotionEvent paramMotionEvent)
  {
    r.f(paramView, "v");
    r.f(paramMotionEvent, "event");
    miuix.animation.a.y(new View[] { paramView }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      paramView.performClick();
    }
    return true;
  }
  
  private static final void Z(ClassScheduleSingleCard paramClassScheduleSingleCard, ArrayList paramArrayList, int paramInt)
  {
    r.f(paramClassScheduleSingleCard, "this$0");
    if (!v3.d.c(paramClassScheduleSingleCard.a))
    {
      paramClassScheduleSingleCard = paramClassScheduleSingleCard.a;
      r.e(paramClassScheduleSingleCard, "mContext");
      v3.d.e(paramClassScheduleSingleCard);
    }
    else
    {
      paramArrayList = (ClassScheduleSingleCard.ClassScheduleExtraSchema.Course)paramArrayList.get(paramInt);
      if (paramArrayList != null)
      {
        ModuleSchema localModuleSchema = paramArrayList.getAction();
        paramArrayList = localModuleSchema;
        if (localModuleSchema != null) {}
      }
      else
      {
        paramArrayList = paramClassScheduleSingleCard.m.action;
      }
      if (paramArrayList != null) {
        paramArrayList.sendIntent(paramClassScheduleSingleCard.a);
      }
    }
  }
  
  private static final void a0(ClassScheduleSingleCard paramClassScheduleSingleCard, b.b paramb, MiAccountSchema paramMiAccountSchema)
  {
    r.f(paramClassScheduleSingleCard, "this$0");
    if (paramMiAccountSchema == null) {
      return;
    }
    Object localObject1 = paramMiAccountSchema.authToken;
    paramMiAccountSchema = paramMiAccountSchema.userId;
    paramMiAccountSchema = u1.d.b(paramClassScheduleSingleCard.a, true, (String)localObject1, paramMiAccountSchema);
    Object localObject2 = new HashMap();
    ((Map)localObject2).put("cardIds", String.valueOf(paramClassScheduleSingleCard.m.id));
    ((Map)localObject2).put("targetTime", String.valueOf(paramClassScheduleSingleCard.e.getTimeInMillis()));
    localObject1 = paramClassScheduleSingleCard.a;
    r.e(localObject1, "mContext");
    DeviceUtils.d((Context)localObject1, m0.u((Map)localObject2));
    localObject1 = l0.a(paramClassScheduleSingleCard.a, (HashMap)localObject2);
    localObject2 = u1.d.f(null, 1, null);
    paramb = new d(paramb, paramClassScheduleSingleCard);
    z.a("Cal:D:ClassScheduleSingleCard", "start query class schedule card item");
    paramMiAccountSchema = ((u1.a)localObject2).q(paramMiAccountSchema, (Map)localObject1);
    paramClassScheduleSingleCard.C = paramMiAccountSchema;
    r.c(paramMiAccountSchema);
    paramMiAccountSchema.q(new u1.b(paramb));
  }
  
  public void a()
  {
    super.a();
    Object localObject = this.m;
    if (localObject != null)
    {
      localObject = ((CustomCardSchema)localObject).extra;
      if (localObject != null)
      {
        localObject = ((JsonObject)localObject).get("classState");
        if (localObject != null)
        {
          i = ((JsonElement)localObject).getAsInt();
          break label44;
        }
      }
      int i = 0;
      label44:
      this.B = i;
    }
  }
  
  public void b()
  {
    Object localObject1 = q.d(this.a, this.D);
    this.A = ((String)localObject1);
    boolean bool = TextUtils.isEmpty((CharSequence)localObject1);
    Object localObject3 = null;
    Object localObject4 = null;
    localObject1 = null;
    label124:
    Object localObject2;
    if (!bool)
    {
      localObject4 = localObject3;
      try
      {
        Object localObject5 = this.A;
        localObject4 = localObject3;
        Object localObject6 = new com/miui/calendar/card/single/custom/ClassScheduleSingleCard$e;
        localObject4 = localObject3;
        ((e)localObject6).<init>();
        localObject4 = localObject3;
        localObject6 = ((TypeToken)localObject6).getType();
        localObject4 = localObject3;
        r.e(localObject6, "object : TypeToken<List<…ExtraSchema?>?>() {}.type");
        localObject4 = localObject3;
        localObject5 = (List)x.b((String)localObject5, (Type)localObject6);
        if (localObject5 != null)
        {
          localObject4 = localObject3;
          if (!((Collection)localObject5).isEmpty())
          {
            i = 0;
            break label124;
          }
        }
        int i = 1;
        if (i == 0)
        {
          localObject4 = localObject3;
          localObject1 = (ClassScheduleExtraSchema)((List)localObject5).get(0);
        }
        localObject4 = localObject1;
        super.C();
      }
      catch (Exception localException)
      {
        z.d("Cal:D:ClassScheduleSingleCard", "doInBackground() ", localException);
        localObject2 = localObject4;
      }
    }
    else
    {
      this.A = null;
      localObject2 = localObject4;
    }
    this.z = localObject2;
    super.b();
  }
  
  public void e(b.b paramb)
  {
    if (this.m != null)
    {
      if (this.B == 0) {
        return;
      }
      k3.d.g(new f(this, paramb));
    }
    super.e(paramb);
  }
  
  public void f(Calendar paramCalendar)
  {
    super.f(paramCalendar);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("disk_cache_key_class_schedule_data-");
    localStringBuilder.append(s0.m(paramCalendar));
    this.D = localStringBuilder.toString();
  }
  
  public void g(a.a parama, int paramInt)
  {
    super.g(parama, paramInt);
    if ((parama != null) && (this.m != null))
    {
      Object localObject1 = (b)parama;
      v.k(((b)localObject1).f());
      Object localObject2;
      if (this.B == 0)
      {
        ((b)localObject1).f().setVisibility(0);
        ((b)localObject1).f().setOnClickListener(new a(this));
        ((b)localObject1).c().setVisibility(8);
        ((b)localObject1).a().setVisibility(8);
        ((b)localObject1).b().setVisibility(8);
        localObject2 = ((b)localObject1).d();
        parama = this.m.extra;
        if (parama != null)
        {
          parama = parama.get("infoGuideTitle");
          if (parama != null)
          {
            parama = parama.getAsString();
            if (parama != null) {
              break label142;
            }
          }
        }
        parama = this.a.getString(2131886368);
        label142:
        ((TextView)localObject2).setText(parama);
        localObject2 = ((b)localObject1).e();
        parama = this.m.extra;
        if (parama != null)
        {
          parama = parama.get("infoGuideDescription");
          if (parama != null)
          {
            parama = parama.getAsString();
            if (parama != null) {
              break label201;
            }
          }
        }
        parama = this.a.getString(2131886369);
        label201:
        ((TextView)localObject2).setText(parama);
        return;
      }
      Object localObject3 = this.z;
      if (localObject3 == null)
      {
        ((b)localObject1).f().setVisibility(0);
        ((b)localObject1).f().setOnClickListener(new b(this));
        ((b)localObject1).a().setVisibility(8);
        ((b)localObject1).b().setVisibility(8);
        ((b)localObject1).c().setVisibility(8);
        ((b)localObject1).d().setText(this.a.getString(2131886366));
        ((b)localObject1).e().setText(this.a.getString(2131886367));
        return;
      }
      parama = ((ClassScheduleExtraSchema)localObject3).getPresentWeek();
      int i = 1;
      TextView localTextView;
      if ((parama != null) && (parama.intValue() > 0))
      {
        ((b)localObject1).a().setVisibility(0);
        ((b)localObject1).b().setVisibility(0);
        localTextView = ((b)localObject1).b();
        localObject2 = this.a;
        localTextView.setText(((Context)localObject2).getString(2131886370, new Object[] { parama, s0.b((Context)localObject2, this.e) }));
      }
      parama = ((ClassScheduleExtraSchema)localObject3).getCourses();
      paramInt = i;
      if (parama != null) {
        if (parama.isEmpty()) {
          paramInt = i;
        } else {
          paramInt = 0;
        }
      }
      if (paramInt != 0)
      {
        ((b)localObject1).f().setVisibility(0);
        ((b)localObject1).f().setOnClickListener(new c(this));
        ((b)localObject1).c().setVisibility(8);
        localTextView = ((b)localObject1).d();
        parama = ((ClassScheduleExtraSchema)localObject3).getCoursesDesc();
        localObject2 = null;
        if (parama != null) {
          parama = parama.getTitle();
        } else {
          parama = null;
        }
        localTextView.setText(parama);
        localObject1 = ((b)localObject1).e();
        localObject3 = ((ClassScheduleExtraSchema)localObject3).getCoursesDesc();
        parama = (a.a)localObject2;
        if (localObject3 != null) {
          parama = ((ClassScheduleSingleCard.ClassScheduleExtraSchema.CoursesDesc)localObject3).getDesc();
        }
        ((TextView)localObject1).setText(parama);
        return;
      }
      ((b)localObject1).f().setVisibility(8);
      ((b)localObject1).c().setVisibility(0);
      ((b)localObject1).c().setAdapter(new a(parama));
      ((b)localObject1).c().setOnItemTouchListener(new d());
      ((b)localObject1).c().setOnItemClickListener(new e(this, parama));
    }
  }
  
  public a.a h(View paramView)
  {
    r.f(paramView, "view");
    return new b(paramView);
  }
  
  public int i()
  {
    return 2131558505;
  }
  
  public boolean j()
  {
    return j.q(this.a);
  }
  
  @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;", "", "()V", "cardId", "", "getCardId", "()Ljava/lang/Integer;", "setCardId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "courses", "Ljava/util/ArrayList;", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;", "getCourses", "()Ljava/util/ArrayList;", "setCourses", "(Ljava/util/ArrayList;)V", "coursesDesc", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;", "getCoursesDesc", "()Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;", "setCoursesDesc", "(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;)V", "day", "getDay", "setDay", "presentWeek", "getPresentWeek", "setPresentWeek", "showType", "getShowType", "setShowType", "Course", "CoursesDesc", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  private static final class ClassScheduleExtraSchema
  {
    private Integer cardId;
    private ArrayList<Course> courses;
    private CoursesDesc coursesDesc;
    private Integer day;
    private Integer presentWeek;
    private Integer showType;
    
    public ClassScheduleExtraSchema()
    {
      Integer localInteger = Integer.valueOf(0);
      this.cardId = localInteger;
      this.showType = localInteger;
      this.presentWeek = localInteger;
      this.day = localInteger;
    }
    
    public final Integer getCardId()
    {
      return this.cardId;
    }
    
    public final ArrayList<Course> getCourses()
    {
      return this.courses;
    }
    
    public final CoursesDesc getCoursesDesc()
    {
      return this.coursesDesc;
    }
    
    public final Integer getDay()
    {
      return this.day;
    }
    
    public final Integer getPresentWeek()
    {
      return this.presentWeek;
    }
    
    public final Integer getShowType()
    {
      return this.showType;
    }
    
    public final void setCardId(Integer paramInteger)
    {
      this.cardId = paramInteger;
    }
    
    public final void setCourses(ArrayList<Course> paramArrayList)
    {
      this.courses = paramArrayList;
    }
    
    public final void setCoursesDesc(CoursesDesc paramCoursesDesc)
    {
      this.coursesDesc = paramCoursesDesc;
    }
    
    public final void setDay(Integer paramInteger)
    {
      this.day = paramInteger;
    }
    
    public final void setPresentWeek(Integer paramInteger)
    {
      this.presentWeek = paramInteger;
    }
    
    public final void setShowType(Integer paramInteger)
    {
      this.showType = paramInteger;
    }
    
    @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;", "", "()V", "action", "Lcom/android/calendar/common/ModuleSchema;", "getAction", "()Lcom/android/calendar/common/ModuleSchema;", "setAction", "(Lcom/android/calendar/common/ModuleSchema;)V", "courseId", "", "getCourseId", "()Ljava/lang/String;", "setCourseId", "(Ljava/lang/String;)V", "csId", "getCsId", "setCsId", "day", "", "getDay", "()Ljava/lang/Integer;", "setDay", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "deviceId", "getDeviceId", "setDeviceId", "name", "getName", "setName", "position", "getPosition", "setPosition", "section", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;", "getSection", "()Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;", "setSection", "(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;)V", "style", "getStyle", "setStyle", "teacher", "getTeacher", "setTeacher", "userId", "getUserId", "setUserId", "weeks", "Ljava/util/ArrayList;", "getWeeks", "()Ljava/util/ArrayList;", "setWeeks", "(Ljava/util/ArrayList;)V", "Section", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
    @Keep
    public static final class Course
    {
      private ModuleSchema action;
      private String courseId;
      private String csId;
      private Integer day = Integer.valueOf(0);
      private String deviceId;
      private String name;
      private String position;
      private Section section;
      private String style;
      private String teacher;
      private String userId;
      private ArrayList<Integer> weeks;
      
      public final ModuleSchema getAction()
      {
        return this.action;
      }
      
      public final String getCourseId()
      {
        return this.courseId;
      }
      
      public final String getCsId()
      {
        return this.csId;
      }
      
      public final Integer getDay()
      {
        return this.day;
      }
      
      public final String getDeviceId()
      {
        return this.deviceId;
      }
      
      public final String getName()
      {
        return this.name;
      }
      
      public final String getPosition()
      {
        return this.position;
      }
      
      public final Section getSection()
      {
        return this.section;
      }
      
      public final String getStyle()
      {
        return this.style;
      }
      
      public final String getTeacher()
      {
        return this.teacher;
      }
      
      public final String getUserId()
      {
        return this.userId;
      }
      
      public final ArrayList<Integer> getWeeks()
      {
        return this.weeks;
      }
      
      public final void setAction(ModuleSchema paramModuleSchema)
      {
        this.action = paramModuleSchema;
      }
      
      public final void setCourseId(String paramString)
      {
        this.courseId = paramString;
      }
      
      public final void setCsId(String paramString)
      {
        this.csId = paramString;
      }
      
      public final void setDay(Integer paramInteger)
      {
        this.day = paramInteger;
      }
      
      public final void setDeviceId(String paramString)
      {
        this.deviceId = paramString;
      }
      
      public final void setName(String paramString)
      {
        this.name = paramString;
      }
      
      public final void setPosition(String paramString)
      {
        this.position = paramString;
      }
      
      public final void setSection(Section paramSection)
      {
        this.section = paramSection;
      }
      
      public final void setStyle(String paramString)
      {
        this.style = paramString;
      }
      
      public final void setTeacher(String paramString)
      {
        this.teacher = paramString;
      }
      
      public final void setUserId(String paramString)
      {
        this.userId = paramString;
      }
      
      public final void setWeeks(ArrayList<Integer> paramArrayList)
      {
        this.weeks = paramArrayList;
      }
      
      @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;", "", "()V", "endTime", "", "getEndTime", "()Ljava/lang/String;", "setEndTime", "(Ljava/lang/String;)V", "section", "Ljava/util/ArrayList;", "", "getSection", "()Ljava/util/ArrayList;", "setSection", "(Ljava/util/ArrayList;)V", "sectionTitle", "getSectionTitle", "setSectionTitle", "startTime", "getStartTime", "setStartTime", "timeDesc", "getTimeDesc", "setTimeDesc", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
      @Keep
      public static final class Section
      {
        private String endTime;
        private ArrayList<Integer> section;
        private String sectionTitle;
        private String startTime;
        private String timeDesc;
        
        public final String getEndTime()
        {
          return this.endTime;
        }
        
        public final ArrayList<Integer> getSection()
        {
          return this.section;
        }
        
        public final String getSectionTitle()
        {
          return this.sectionTitle;
        }
        
        public final String getStartTime()
        {
          return this.startTime;
        }
        
        public final String getTimeDesc()
        {
          return this.timeDesc;
        }
        
        public final void setEndTime(String paramString)
        {
          this.endTime = paramString;
        }
        
        public final void setSection(ArrayList<Integer> paramArrayList)
        {
          this.section = paramArrayList;
        }
        
        public final void setSectionTitle(String paramString)
        {
          this.sectionTitle = paramString;
        }
        
        public final void setStartTime(String paramString)
        {
          this.startTime = paramString;
        }
        
        public final void setTimeDesc(String paramString)
        {
          this.timeDesc = paramString;
        }
      }
    }
    
    @Metadata(d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$CoursesDesc;", "", "()V", "desc", "", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "title", "getTitle", "setTitle", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
    @Keep
    public static final class CoursesDesc
    {
      private String desc;
      private String title;
      
      public final String getDesc()
      {
        return this.desc;
      }
      
      public final String getTitle()
      {
        return this.title;
      }
      
      public final void setDesc(String paramString)
      {
        this.desc = paramString;
      }
      
      public final void setTitle(String paramString)
      {
        this.title = paramString;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;", "Lcom/miui/calendar/view/i;", "", "position", "Landroid/view/View;", "convertView", "b", "a", "", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;", "Ljava/util/List;", "getCourses", "()Ljava/util/List;", "courses", "<init>", "(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class a
    extends i
  {
    private final List<ClassScheduleSingleCard.ClassScheduleExtraSchema.Course> b;
    
    public a()
    {
      this.b = localObject;
    }
    
    public int a()
    {
      return this.b.size();
    }
    
    public View b(int paramInt, View paramView)
    {
      String str = null;
      Object localObject1;
      Object localObject2;
      if (paramView == null)
      {
        paramView = LayoutInflater.from(ClassScheduleSingleCard.L(ClassScheduleSingleCard.this));
        r.c(paramView);
        localObject1 = paramView.inflate(2131558506, null);
        r.e(localObject1, "from(mContext)!!.inflate…schedule_card_item, null)");
        ((View)localObject1).setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        paramView = new a((View)localObject1);
        ((View)localObject1).setTag(paramView);
      }
      else
      {
        localObject1 = paramView.getTag();
        r.d(localObject1, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.ClassScheduleSingleCard.ClassScheduleListAdapter.ClassScheduleItemViewHolder");
        localObject2 = (a)localObject1;
        localObject1 = paramView;
        paramView = (View)localObject2;
      }
      ClassScheduleSingleCard.ClassScheduleExtraSchema.Course localCourse = (ClassScheduleSingleCard.ClassScheduleExtraSchema.Course)this.b.get(paramInt);
      if (paramInt == this.b.size() - 1) {
        paramView.b().setBackgroundResource(2131231035);
      } else {
        paramView.b().setBackgroundResource(2131231040);
      }
      if (localCourse != null)
      {
        localObject2 = localCourse.getSection();
        if (localObject2 != null) {
          localObject2 = ((ClassScheduleSingleCard.ClassScheduleExtraSchema.Course.Section)localObject2).getSectionTitle();
        } else {
          localObject2 = null;
        }
        if (!x0.p0())
        {
          if ((localObject2 != null) && (((CharSequence)localObject2).length() != 0)) {
            i = 0;
          } else {
            i = 1;
          }
          if ((i == 0) && (((String)localObject2).length() >= 3))
          {
            localObject2 = new SpannableString((CharSequence)localObject2);
            ((SpannableString)localObject2).setSpan(new TypefaceSpan("mitype-semibold"), 1, ((SpannableString)localObject2).length() - 1, 33);
            paramView.d().setText((CharSequence)localObject2);
            break label285;
          }
        }
        paramView.d().setText((CharSequence)localObject2);
        label285:
        TextView localTextView = paramView.h();
        ClassScheduleSingleCard.ClassScheduleExtraSchema.Course.Section localSection = localCourse.getSection();
        localObject2 = str;
        if (localSection != null) {
          localObject2 = localSection.getTimeDesc();
        }
        localTextView.setText((CharSequence)localObject2);
        paramView.f().setText(localCourse.getName());
        localObject2 = paramView.f().getLayoutParams();
        r.d(localObject2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        localObject2 = (LinearLayout.LayoutParams)localObject2;
        str = localCourse.getTeacher();
        if ((str != null) && (str.length() != 0)) {
          i = 0;
        } else {
          i = 1;
        }
        if (i != 0)
        {
          str = localCourse.getPosition();
          if ((str != null) && (str.length() != 0)) {
            i = 0;
          } else {
            i = 1;
          }
          if (i != 0)
          {
            paramView.e().setVisibility(8);
            ((LinearLayout.LayoutParams)localObject2).topMargin = ClassScheduleSingleCard.L(ClassScheduleSingleCard.this).getResources().getDimensionPixelOffset(2131167088);
          }
          else
          {
            paramView.e().setVisibility(0);
            paramView.c().setText(localCourse.getPosition());
            paramView.a().setVisibility(8);
            ((LinearLayout.LayoutParams)localObject2).topMargin = 0;
          }
        }
        else
        {
          paramView.e().setVisibility(0);
          ((LinearLayout.LayoutParams)localObject2).topMargin = 0;
          localObject2 = localCourse.getPosition();
          if ((localObject2 != null) && (((CharSequence)localObject2).length() != 0)) {
            i = 0;
          } else {
            i = 1;
          }
          if (i != 0)
          {
            paramView.g().setText(localCourse.getTeacher());
            paramView.a().setVisibility(8);
          }
          else
          {
            paramView.a().setVisibility(0);
            paramView.c().setText(localCourse.getPosition());
            paramView.g().setText(localCourse.getTeacher());
          }
        }
      }
      int j = ClassScheduleSingleCard.R(ClassScheduleSingleCard.this);
      int k = ClassScheduleSingleCard.O(ClassScheduleSingleCard.this);
      int m = ClassScheduleSingleCard.N(ClassScheduleSingleCard.this);
      int i = m;
      if (paramInt == 0)
      {
        j = ClassScheduleSingleCard.M(ClassScheduleSingleCard.this);
        i = m + ClassScheduleSingleCard.M(ClassScheduleSingleCard.this);
      }
      m = i;
      if (paramInt == this.b.size() - 1)
      {
        k = ClassScheduleSingleCard.S(ClassScheduleSingleCard.this);
        m = i + ClassScheduleSingleCard.S(ClassScheduleSingleCard.this);
      }
      ((View)localObject1).setMinimumHeight(m);
      ((View)localObject1).setPadding(ClassScheduleSingleCard.Q(ClassScheduleSingleCard.this), j, ClassScheduleSingleCard.P(ClassScheduleSingleCard.this), k);
      return localObject1;
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;", "", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "d", "()Landroid/widget/TextView;", "section", "b", "h", "time", "c", "f", "sectionName", "Landroid/widget/LinearLayout;", "Landroid/widget/LinearLayout;", "e", "()Landroid/widget/LinearLayout;", "sectionContainer", "locationName", "g", "teacherName", "Landroid/view/View;", "Landroid/view/View;", "()Landroid/view/View;", "cardDivider", "Landroid/widget/FrameLayout;", "Landroid/widget/FrameLayout;", "()Landroid/widget/FrameLayout;", "contentRoot", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    public final class a
    {
      private final TextView a;
      private final TextView b;
      private final TextView c;
      private final LinearLayout d;
      private final TextView e;
      private final TextView f;
      private final View g;
      private final FrameLayout h;
      
      public a()
      {
        this$1 = localObject.findViewById(2131363128);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.section)");
        this.a = ((TextView)ClassScheduleSingleCard.a.this);
        this$1 = localObject.findViewById(2131363359);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.time)");
        this.b = ((TextView)ClassScheduleSingleCard.a.this);
        this$1 = localObject.findViewById(2131363132);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.section_name)");
        this.c = ((TextView)ClassScheduleSingleCard.a.this);
        this$1 = localObject.findViewById(2131363129);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.section_container)");
        this.d = ((LinearLayout)ClassScheduleSingleCard.a.this);
        this$1 = localObject.findViewById(2131362715);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.location_description)");
        this.e = ((TextView)ClassScheduleSingleCard.a.this);
        this$1 = localObject.findViewById(2131363326);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.teacher_description)");
        this.f = ((TextView)ClassScheduleSingleCard.a.this);
        this$1 = localObject.findViewById(2131362111);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.card_divider)");
        this.g = ClassScheduleSingleCard.a.this;
        this$1 = localObject.findViewById(2131362221);
        r.e(ClassScheduleSingleCard.a.this, "view.findViewById(R.id.content_root)");
        this.h = ((FrameLayout)ClassScheduleSingleCard.a.this);
      }
      
      public final View a()
      {
        return this.g;
      }
      
      public final FrameLayout b()
      {
        return this.h;
      }
      
      public final TextView c()
      {
        return this.e;
      }
      
      public final TextView d()
      {
        return this.a;
      }
      
      public final LinearLayout e()
      {
        return this.d;
      }
      
      public final TextView f()
      {
        return this.c;
      }
      
      public final TextView g()
      {
        return this.f;
      }
      
      public final TextView h()
      {
        return this.b;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$b;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;", "Lcom/miui/calendar/card/single/custom/CustomSingleCard;", "Landroid/widget/TextView;", "l", "Landroid/widget/TextView;", "b", "()Landroid/widget/TextView;", "cardTitleWeekDay", "Landroid/view/View;", "m", "Landroid/view/View;", "a", "()Landroid/view/View;", "cardTitleDivider", "n", "f", "noDataView", "o", "d", "noDataPrimary", "p", "e", "noDataSecondary", "Lcom/miui/calendar/view/DynamicLinearLayout;", "q", "Lcom/miui/calendar/view/DynamicLinearLayout;", "c", "()Lcom/miui/calendar/view/DynamicLinearLayout;", "classList", "view", "<init>", "(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;Landroid/view/View;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    extends CustomSingleCard.g
  {
    private final TextView l;
    private final View m;
    private final View n;
    private final TextView o;
    private final TextView p;
    private final DynamicLinearLayout q;
    
    public b()
    {
      super(localObject);
      this$1 = localObject.findViewById(2131362126);
      r.e(ClassScheduleSingleCard.this, "view.findViewById(R.id.card_title_week_day)");
      this.l = ((TextView)ClassScheduleSingleCard.this);
      this$1 = localObject.findViewById(2131362125);
      r.e(ClassScheduleSingleCard.this, "view.findViewById(R.id.card_title_divider)");
      this.m = ClassScheduleSingleCard.this;
      this$1 = localObject.findViewById(2131362878);
      r.e(ClassScheduleSingleCard.this, "view.findViewById(R.id.no_data_container)");
      this.n = ClassScheduleSingleCard.this;
      this$1 = localObject.findViewById(2131362880);
      r.e(ClassScheduleSingleCard.this, "view.findViewById(R.id.no_data_primary)");
      this.o = ((TextView)ClassScheduleSingleCard.this);
      this$1 = localObject.findViewById(2131362881);
      r.e(ClassScheduleSingleCard.this, "view.findViewById(R.id.no_data_secondary)");
      this.p = ((TextView)ClassScheduleSingleCard.this);
      this$1 = localObject.findViewById(2131362175);
      r.e(ClassScheduleSingleCard.this, "view.findViewById(R.id.class_list)");
      this.q = ((DynamicLinearLayout)ClassScheduleSingleCard.this);
    }
    
    public final View a()
    {
      return this.m;
    }
    
    public final TextView b()
    {
      return this.l;
    }
    
    public final DynamicLinearLayout c()
    {
      return this.q;
    }
    
    public final TextView d()
    {
      return this.o;
    }
    
    public final TextView e()
    {
      return this.p;
    }
    
    public final View f()
    {
      return this.n;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$c;", "", "", "CLASS_STATUS_OFF", "I", "CLASS_STATUS_ON", "", "DISK_CACHE_KEY_CLASS_SCHEDULE_DATA", "Ljava/lang/String;", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$d;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/miui/calendar/card/b$b;", "Ljava/lang/ref/WeakReference;", "getListenerReference", "()Ljava/lang/ref/WeakReference;", "listenerReference", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;", "kotlin.jvm.PlatformType", "getCardReference", "cardReference", "listener", "card", "<init>", "(Lcom/miui/calendar/card/b$b;Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class d
    implements b.a
  {
    private final WeakReference<b.b> a;
    private final WeakReference<ClassScheduleSingleCard> b;
    
    public d(b.b paramb, ClassScheduleSingleCard paramClassScheduleSingleCard)
    {
      this.a = new WeakReference(paramb);
      this.b = new WeakReference(paramClassScheduleSingleCard);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      ClassScheduleSingleCard localClassScheduleSingleCard = (ClassScheduleSingleCard)this.b.get();
      if (localClassScheduleSingleCard == null) {
        return;
      }
      Object localObject = null;
      if (paramJSONObject != null) {
        try
        {
          paramJSONObject = paramJSONObject.getString("data");
        }
        catch (Exception localException1)
        {
          paramJSONObject = (JSONObject)localObject;
          break label223;
        }
      } else {
        paramJSONObject = null;
      }
      try
      {
        s4.d.d(paramJSONObject);
        if (TextUtils.equals(ClassScheduleSingleCard.J(localException1), paramJSONObject)) {
          return;
        }
        ClassScheduleSingleCard.T(localException1, paramJSONObject);
        if (!TextUtils.isEmpty(paramJSONObject))
        {
          q.f(ClassScheduleSingleCard.L(localException1), ClassScheduleSingleCard.K(localException1), paramJSONObject);
          try
          {
            localObject = new com/miui/calendar/card/single/custom/ClassScheduleSingleCard$d$a;
            ((a)localObject).<init>();
            localObject = ((TypeToken)localObject).getType();
            r.e(localObject, "object : TypeToken<List<…ExtraSchema?>?>() {}.type");
            localObject = (List)x.b(paramJSONObject, (Type)localObject);
            int i;
            if ((localObject != null) && (!((Collection)localObject).isEmpty())) {
              i = 0;
            } else {
              i = 1;
            }
            if (i == 0) {
              ClassScheduleSingleCard.U(localException1, (ClassScheduleSingleCard.ClassScheduleExtraSchema)((List)localObject).get(0));
            }
          }
          catch (Exception localException3)
          {
            z.d("Cal:D:ClassScheduleSingleCard", "doInBackground() ", localException3);
            ClassScheduleSingleCard.U(localException1, null);
          }
          localException1.C();
          localException1.a();
        }
        else
        {
          q.h(ClassScheduleSingleCard.L(localException1), ClassScheduleSingleCard.K(localException1));
          localException1.m.itemList = null;
        }
        b.b localb = (b.b)this.a.get();
        if (localb == null) {
          return;
        }
        localb.a();
      }
      catch (Exception localException2) {}
      label223:
      z.d("Cal:D:ClassScheduleSingleCard", "ResponseListener:", localException2);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("data:");
      localStringBuilder.append(paramJSONObject);
      z.c("Cal:D:ClassScheduleSingleCard", localStringBuilder.toString());
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:ClassScheduleSingleCard", "onErrorResponse", paramException);
    }
    
    @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/card/single/custom/ClassScheduleSingleCard$d$a", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    public static final class a
      extends TypeToken<List<? extends ClassScheduleSingleCard.ClassScheduleExtraSchema>>
    {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/card/single/custom/ClassScheduleSingleCard$e", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema;", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class e
    extends TypeToken<List<? extends ClassScheduleSingleCard.ClassScheduleExtraSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.custom.ClassScheduleSingleCard
 * JD-Core Version:    0.7.0.1
 */