package com.miui.calendar.util;

import com.android.calendar.common.event.schema.Reminder;
import com.miui.calendar.detail.SubscribeGroupActivity.SubscribeSchema;
import com.miui.calendar.repeats.RepeatEndSchema;
import com.miui.calendar.repeats.RepeatSchema;
import java.util.ArrayList;
import java.util.Calendar;
import pc.c;

public class g
{
  private static void a(j paramj)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("==>> post event: ");
    localStringBuilder.append(paramj);
    z.a("Cal:D:CalendarEvent", localStringBuilder.toString());
  }
  
  public static void b(j paramj, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<<== receive event: ");
    localStringBuilder.append(paramj);
    z.a(paramString, localStringBuilder.toString());
  }
  
  public static void c(j paramj)
  {
    d(paramj, true);
  }
  
  public static void d(j paramj, boolean paramBoolean)
  {
    if (paramj != null)
    {
      if (paramBoolean) {
        a(paramj);
      }
      c.c().k(paramj);
    }
  }
  
  public static class a
    extends g.j
  {}
  
  public static class a0
    extends g.j
  {
    public Calendar a;
    public long b = -1L;
    public boolean c = true;
    public int d = 0;
    public boolean e = false;
    public boolean f;
    public boolean g;
    public boolean h = false;
    
    public a0(Calendar paramCalendar)
    {
      this.a = paramCalendar;
    }
    
    public a0 a(boolean paramBoolean)
    {
      this.c = paramBoolean;
      return this;
    }
    
    public a0 b(boolean paramBoolean)
    {
      this.f = paramBoolean;
      return this;
    }
    
    public a0 c(int paramInt)
    {
      this.b = paramInt;
      return this;
    }
    
    public a0 d(boolean paramBoolean)
    {
      this.e = paramBoolean;
      return this;
    }
    
    public a0 e(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public a0 f(boolean paramBoolean)
    {
      this.g = paramBoolean;
      return this;
    }
  }
  
  public static class b
    extends g.j
  {}
  
  public static class b0
    extends g.j
  {}
  
  public static class c
    extends g.j
  {}
  
  public static class c0
    extends g.j
  {}
  
  public static class d
    extends g.j
  {}
  
  public static class d0
    extends g.j
  {}
  
  public static class e
    extends g.j
  {
    public boolean a = false;
  }
  
  public static class e0
    extends g.j
  {}
  
  public static class f
    extends g.j
  {}
  
  public static class f0
    extends g.j
  {}
  
  public static class g
    extends g.j
  {
    public int a;
    
    public g(int paramInt)
    {
      this.a = paramInt;
    }
  }
  
  public static class g0
    extends g.j
  {}
  
  public static class h
    extends g.j
  {}
  
  public static class h0
    extends g.j
  {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    
    public h0(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      this.a = paramBoolean1;
      this.b = paramBoolean2;
      this.c = paramBoolean3;
    }
  }
  
  public static class i
    extends g.j
  {
    public int a;
  }
  
  public static class i0
    extends g.j
  {}
  
  public static class j
  {
    public String toString()
    {
      return getClass().getSimpleName();
    }
  }
  
  public static class j0
    extends g.j
  {}
  
  public static class k
    extends g.j
  {
    public int a;
    public boolean b;
    public boolean c;
    
    public k(int paramInt, boolean paramBoolean)
    {
      this.a = paramInt;
      this.b = paramBoolean;
      this.c = false;
    }
    
    public k(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.a = paramInt;
      this.b = paramBoolean1;
      this.c = paramBoolean2;
    }
  }
  
  public static class k0
    extends g.j
  {}
  
  public static class l
    extends g.j
  {}
  
  public static class l0
    extends g.j
  {}
  
  public static class m
    extends g.j
  {
    public int a;
    public int b;
    public boolean c;
    public Calendar d;
    public boolean e;
    public boolean f = false;
    public boolean g = false;
    
    public m(int paramInt1, int paramInt2)
    {
      this.b = paramInt1;
      this.a = paramInt2;
    }
    
    public m a(boolean paramBoolean)
    {
      this.g = paramBoolean;
      return this;
    }
    
    public m b(boolean paramBoolean)
    {
      this.c = paramBoolean;
      return this;
    }
    
    public m c(boolean paramBoolean)
    {
      this.f = paramBoolean;
      return this;
    }
    
    public m d(Calendar paramCalendar)
    {
      this.d = paramCalendar;
      return this;
    }
  }
  
  public static class m0
    extends g.j
  {}
  
  public static class n
    extends g.j
  {
    public boolean a;
    
    public n(boolean paramBoolean)
    {
      this.a = paramBoolean;
    }
  }
  
  public static class n0
    extends g.j
  {
    public final RepeatSchema a;
    
    public n0(RepeatSchema paramRepeatSchema)
    {
      this.a = paramRepeatSchema;
    }
    
    public String toString()
    {
      return String.format("schema=%s", new Object[] { this.a });
    }
  }
  
  public static class o
    extends g.j
  {}
  
  public static class o0
    extends g.j
  {
    public final int a;
    public final RepeatSchema b;
    
    public o0(int paramInt, RepeatSchema paramRepeatSchema)
    {
      this.a = paramInt;
      this.b = paramRepeatSchema;
    }
    
    public String toString()
    {
      return String.format("index=%d schema=%s", new Object[] { Integer.valueOf(this.a), this.b });
    }
  }
  
  public static class p
    extends g.j
  {}
  
  public static class p0
    extends g.j
  {
    public final RepeatEndSchema a;
    
    public p0(RepeatEndSchema paramRepeatEndSchema)
    {
      this.a = paramRepeatEndSchema;
    }
  }
  
  public static class q
    extends g.j
  {
    public int a;
    public Calendar b;
    
    public q(int paramInt)
    {
      this.a = paramInt;
      this.b = null;
    }
    
    public q(int paramInt, Calendar paramCalendar)
    {
      this.a = paramInt;
      this.b = paramCalendar;
    }
  }
  
  public static class q0
    extends g.j
  {}
  
  public static class r
    extends g.j
  {
    public String a;
    public String b;
    public String c;
    
    public r(String paramString1, String paramString2, String paramString3)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramString3;
    }
  }
  
  public static class r0
    extends g.j
  {}
  
  public static class s
    extends g.j
  {
    public final ArrayList<Reminder> a;
    public final long b;
    
    public s(long paramLong, ArrayList<Reminder> paramArrayList)
    {
      this.a = paramArrayList;
      this.b = paramLong;
    }
    
    public s(ArrayList<Reminder> paramArrayList)
    {
      this.a = paramArrayList;
      this.b = -1L;
    }
  }
  
  public static class s0
    extends g.j
  {
    public int a;
    
    public s0(int paramInt)
    {
      this.a = paramInt;
    }
  }
  
  public static class t
    extends g.j
  {}
  
  public static class t0
    extends g.j
  {
    public String a;
    public boolean b;
    
    public t0(String paramString, boolean paramBoolean)
    {
      this.a = paramString;
      this.b = paramBoolean;
    }
  }
  
  public static class u
    extends g.j
  {}
  
  public static class u0
    extends g.j
  {}
  
  public static class v
  {
    public static g.j a()
    {
      return new g.f();
    }
    
    public static g.j b(int paramInt)
    {
      return new g.g(paramInt);
    }
    
    public static g.j c(String paramString1, String paramString2, String paramString3)
    {
      return new g.r(paramString1, paramString2, paramString3);
    }
    
    public static g.j d(long paramLong, ArrayList<Reminder> paramArrayList)
    {
      return new g.s(paramLong, paramArrayList);
    }
    
    public static g.j e(ArrayList<Reminder> paramArrayList)
    {
      return new g.s(paramArrayList);
    }
    
    public static g.j f(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      return new g.h0(paramBoolean1, paramBoolean2, paramBoolean3);
    }
    
    public static g.j g()
    {
      return new g.m0();
    }
    
    public static g.j h(RepeatSchema paramRepeatSchema)
    {
      return new g.n0(paramRepeatSchema);
    }
    
    public static g.j i(int paramInt, RepeatSchema paramRepeatSchema)
    {
      return new g.o0(paramInt, paramRepeatSchema);
    }
    
    public static g.j j(RepeatEndSchema paramRepeatEndSchema)
    {
      return new g.p0(paramRepeatEndSchema);
    }
    
    public static g.j k(String paramString, boolean paramBoolean)
    {
      return new g.t0(paramString, paramBoolean);
    }
    
    public static g.j l(SubscribeGroupActivity.SubscribeSchema paramSubscribeSchema)
    {
      return new g.v0(paramSubscribeSchema);
    }
  }
  
  public static class v0
    extends g.j
  {
    public final SubscribeGroupActivity.SubscribeSchema a;
    
    public v0(SubscribeGroupActivity.SubscribeSchema paramSubscribeSchema)
    {
      this.a = paramSubscribeSchema;
    }
  }
  
  public static class w
    extends g.j
  {
    public int a;
    
    public w(int paramInt)
    {
      this.a = paramInt;
    }
  }
  
  public static class w0
    extends g.j
  {}
  
  public static class x
    extends g.j
  {
    public boolean a;
    
    public x(boolean paramBoolean)
    {
      this.a = paramBoolean;
    }
  }
  
  public static class x0
    extends g.j
  {}
  
  public static class y
    extends g.j
  {
    public boolean a;
    
    public y()
    {
      this(false);
    }
    
    public y(boolean paramBoolean)
    {
      this.a = paramBoolean;
    }
  }
  
  public static class z
    extends g.j
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.g
 * JD-Core Version:    0.7.0.1
 */