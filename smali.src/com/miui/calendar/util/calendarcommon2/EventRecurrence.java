package com.miui.calendar.util.calendarcommon2;

import android.text.TextUtils;
import android.util.Log;
import com.miui.calendar.util.r0;
import java.util.HashMap;

public class EventRecurrence
{
  private static HashMap<String, p> A;
  private static final HashMap<String, Integer> B;
  private static final HashMap<String, Integer> C;
  private static String z = "EventRecur";
  public r0 a;
  public int b;
  public String c;
  public int d;
  public int e;
  public int f;
  public int[] g;
  public int h;
  public int[] i;
  public int j;
  public int[] k;
  public int l;
  public int[] m;
  public int[] n;
  public int o;
  public int[] p;
  public int q;
  public int[] r;
  public int s;
  public int[] t;
  public int u;
  public int[] v;
  public int w;
  public int[] x;
  public int y;
  
  static
  {
    HashMap localHashMap = new HashMap();
    A = localHashMap;
    localHashMap.put("FREQ", new l(null));
    A.put("UNTIL", new n(null));
    A.put("COUNT", new k(null));
    A.put("INTERVAL", new m(null));
    A.put("BYSECOND", new g(null));
    A.put("BYMINUTE", new d(null));
    A.put("BYHOUR", new c(null));
    A.put("BYDAY", new b(null));
    A.put("BYMONTHDAY", new f(null));
    A.put("BYYEARDAY", new j(null));
    A.put("BYWEEKNO", new i(null));
    A.put("BYMONTH", new e(null));
    A.put("BYSETPOS", new h(null));
    A.put("WKST", new o(null));
    localHashMap = new HashMap();
    B = localHashMap;
    localHashMap.put("SECONDLY", Integer.valueOf(1));
    localHashMap.put("MINUTELY", Integer.valueOf(2));
    localHashMap.put("HOURLY", Integer.valueOf(3));
    localHashMap.put("DAILY", Integer.valueOf(4));
    localHashMap.put("WEEKLY", Integer.valueOf(5));
    localHashMap.put("MONTHLY", Integer.valueOf(6));
    localHashMap.put("YEARLY", Integer.valueOf(7));
    localHashMap = new HashMap();
    C = localHashMap;
    localHashMap.put("SU", Integer.valueOf(65536));
    localHashMap.put("MO", Integer.valueOf(131072));
    localHashMap.put("TU", Integer.valueOf(262144));
    localHashMap.put("WE", Integer.valueOf(524288));
    localHashMap.put("TH", Integer.valueOf(1048576));
    localHashMap.put("FR", Integer.valueOf(2097152));
    localHashMap.put("SA", Integer.valueOf(4194304));
  }
  
  private void d(StringBuilder paramStringBuilder, int paramInt)
  {
    int i1 = this.n[paramInt];
    if (i1 != 0) {
      paramStringBuilder.append(i1);
    }
    paramStringBuilder.append(h(this.m[paramInt]));
  }
  
  private static void e(StringBuilder paramStringBuilder, String paramString, int paramInt, int[] paramArrayOfInt)
  {
    if (paramInt > 0)
    {
      paramStringBuilder.append(paramString);
      int i1 = paramInt - 1;
      for (paramInt = 0; paramInt < i1; paramInt++)
      {
        paramStringBuilder.append(paramArrayOfInt[paramInt]);
        paramStringBuilder.append(",");
      }
      paramStringBuilder.append(paramArrayOfInt[i1]);
    }
  }
  
  private static boolean f(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2)
  {
    if (paramInt1 != paramInt2) {
      return false;
    }
    for (paramInt2 = 0; paramInt2 < paramInt1; paramInt2++) {
      if (paramArrayOfInt1[paramInt2] != paramArrayOfInt2[paramInt2]) {
        return false;
      }
    }
    return true;
  }
  
  public static int g(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("bad day of week: ");
      localStringBuilder.append(paramInt);
      throw new RuntimeException(localStringBuilder.toString());
    case 7: 
      return 4194304;
    case 6: 
      return 2097152;
    case 5: 
      return 1048576;
    case 4: 
      return 524288;
    case 3: 
      return 262144;
    case 2: 
      return 131072;
    }
    return 65536;
  }
  
  private static String h(int paramInt)
  {
    if (paramInt != 65536)
    {
      if (paramInt != 131072)
      {
        if (paramInt != 262144)
        {
          if (paramInt != 524288)
          {
            if (paramInt != 1048576)
            {
              if (paramInt != 2097152)
              {
                if (paramInt == 4194304) {
                  return "SA";
                }
                StringBuilder localStringBuilder = new StringBuilder();
                localStringBuilder.append("bad day argument: ");
                localStringBuilder.append(paramInt);
                throw new IllegalArgumentException(localStringBuilder.toString());
              }
              return "FR";
            }
            return "TH";
          }
          return "WE";
        }
        return "TU";
      }
      return "MO";
    }
    return "SU";
  }
  
  public static int i(int paramInt)
  {
    if (paramInt != 65536)
    {
      if (paramInt != 131072)
      {
        if (paramInt != 262144)
        {
          if (paramInt != 524288)
          {
            if (paramInt != 1048576)
            {
              if (paramInt != 2097152)
              {
                if (paramInt == 4194304) {
                  return 6;
                }
                StringBuilder localStringBuilder = new StringBuilder();
                localStringBuilder.append("bad day of week: ");
                localStringBuilder.append(paramInt);
                throw new RuntimeException(localStringBuilder.toString());
              }
              return 5;
            }
            return 4;
          }
          return 3;
        }
        return 2;
      }
      return 1;
    }
    return 0;
  }
  
  private void m()
  {
    this.c = null;
    this.y = 0;
    this.w = 0;
    this.u = 0;
    this.s = 0;
    this.q = 0;
    this.o = 0;
    this.l = 0;
    this.j = 0;
    this.h = 0;
    this.e = 0;
    this.d = 0;
    this.b = 0;
  }
  
  public static int n(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("bad day of week: ");
      localStringBuilder.append(paramInt);
      throw new RuntimeException(localStringBuilder.toString());
    case 6: 
      return 4194304;
    case 5: 
      return 2097152;
    case 4: 
      return 1048576;
    case 3: 
      return 524288;
    case 2: 
      return 262144;
    case 1: 
      return 131072;
    }
    return 65536;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof EventRecurrence)) {
      return false;
    }
    paramObject = (EventRecurrence)paramObject;
    Object localObject = this.a;
    if ((localObject == null ? paramObject.a == null : r0.d((r0)localObject, paramObject.a) == 0) && (this.b == paramObject.b))
    {
      localObject = this.c;
      if ((localObject == null ? paramObject.c == null : ((String)localObject).equals(paramObject.c)) && (this.d == paramObject.d) && (this.e == paramObject.e) && (this.f == paramObject.f) && (f(this.g, this.h, paramObject.g, paramObject.h)) && (f(this.i, this.j, paramObject.i, paramObject.j)) && (f(this.k, this.l, paramObject.k, paramObject.l)) && (f(this.m, this.o, paramObject.m, paramObject.o)) && (f(this.n, this.o, paramObject.n, paramObject.o)) && (f(this.p, this.q, paramObject.p, paramObject.q)) && (f(this.r, this.s, paramObject.r, paramObject.s)) && (f(this.t, this.u, paramObject.t, paramObject.u)) && (f(this.v, this.w, paramObject.v, paramObject.w)) && (f(this.x, this.y, paramObject.x, paramObject.y))) {}
    }
    else
    {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    throw new UnsupportedOperationException();
  }
  
  public void j(String paramString)
  {
    m();
    String[] arrayOfString = paramString.toUpperCase().split(";");
    int i1 = arrayOfString.length;
    int i2 = 0;
    int i3 = i2;
    Object localObject1;
    Object localObject2;
    while (i2 < i1)
    {
      localObject1 = arrayOfString[i2];
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        int i4 = ((String)localObject1).indexOf('=');
        if (i4 <= 0) {
          break label267;
        }
        localObject2 = ((String)localObject1).substring(0, i4);
        String str = ((String)localObject1).substring(i4 + 1);
        if (str.length() == 0) {
          break label232;
        }
        localObject1 = (p)A.get(localObject2);
        if (localObject1 == null)
        {
          if (!((String)localObject2).startsWith("X-"))
          {
            paramString = new StringBuilder();
            paramString.append("Couldn't find parser for ");
            paramString.append((String)localObject2);
            throw new InvalidFormatException(paramString.toString());
          }
        }
        else
        {
          i4 = ((p)localObject1).c(str, this);
          if ((i3 & i4) != 0) {
            break label189;
          }
          i3 |= i4;
        }
      }
      i2++;
      continue;
      label189:
      paramString = new StringBuilder();
      paramString.append("Part ");
      paramString.append((String)localObject2);
      paramString.append(" was specified twice");
      throw new InvalidFormatException(paramString.toString());
      label232:
      paramString = new StringBuilder();
      paramString.append("Missing RHS in ");
      paramString.append((String)localObject1);
      throw new InvalidFormatException(paramString.toString());
      label267:
      paramString = new StringBuilder();
      paramString.append("Missing LHS in ");
      paramString.append((String)localObject1);
      throw new InvalidFormatException(paramString.toString());
    }
    if ((i3 & 0x2000) == 0) {
      this.f = 131072;
    }
    if ((i3 & 0x1) != 0)
    {
      if ((i3 & 0x6) == 6)
      {
        localObject1 = z;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Warning: rrule has both UNTIL and COUNT: ");
        ((StringBuilder)localObject2).append(paramString);
        Log.w((String)localObject1, ((StringBuilder)localObject2).toString());
      }
      return;
    }
    throw new InvalidFormatException("Must specify a FREQ value");
  }
  
  public boolean k()
  {
    if (this.b != 6) {
      return false;
    }
    if ((this.o == 1) && (this.q == 0)) {
      return this.n[0] > 0;
    }
    return false;
  }
  
  public boolean l()
  {
    if (this.b != 5) {
      return false;
    }
    int i1 = this.o;
    if (i1 != 5) {
      return false;
    }
    int i2 = 0;
    while (i2 < i1)
    {
      int i3 = this.m[i2];
      if ((i3 != 65536) && (i3 != 4194304)) {
        i2++;
      } else {
        return false;
      }
    }
    return true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FREQ=");
    switch (this.b)
    {
    default: 
      break;
    case 7: 
      localStringBuilder.append("YEARLY");
      break;
    case 6: 
      localStringBuilder.append("MONTHLY");
      break;
    case 5: 
      localStringBuilder.append("WEEKLY");
      break;
    case 4: 
      localStringBuilder.append("DAILY");
      break;
    case 3: 
      localStringBuilder.append("HOURLY");
      break;
    case 2: 
      localStringBuilder.append("MINUTELY");
      break;
    case 1: 
      localStringBuilder.append("SECONDLY");
    }
    if (!TextUtils.isEmpty(this.c))
    {
      localStringBuilder.append(";UNTIL=");
      localStringBuilder.append(this.c);
    }
    if (this.d != 0)
    {
      localStringBuilder.append(";COUNT=");
      localStringBuilder.append(this.d);
    }
    if (this.e != 0)
    {
      localStringBuilder.append(";INTERVAL=");
      localStringBuilder.append(this.e);
    }
    if (this.f != 0)
    {
      localStringBuilder.append(";WKST=");
      localStringBuilder.append(h(this.f));
    }
    e(localStringBuilder, ";BYSECOND=", this.h, this.g);
    e(localStringBuilder, ";BYMINUTE=", this.j, this.i);
    e(localStringBuilder, ";BYSECOND=", this.l, this.k);
    int i1 = this.o;
    if (i1 > 0)
    {
      localStringBuilder.append(";BYDAY=");
      int i2 = i1 - 1;
      for (i1 = 0; i1 < i2; i1++)
      {
        d(localStringBuilder, i1);
        localStringBuilder.append(",");
      }
      d(localStringBuilder, i2);
    }
    e(localStringBuilder, ";BYMONTHDAY=", this.q, this.p);
    e(localStringBuilder, ";BYYEARDAY=", this.s, this.r);
    e(localStringBuilder, ";BYWEEKNO=", this.u, this.t);
    e(localStringBuilder, ";BYMONTH=", this.w, this.v);
    e(localStringBuilder, ";BYSETPOS=", this.y, this.x);
    return localStringBuilder.toString();
  }
  
  public static class InvalidFormatException
    extends RuntimeException
  {
    InvalidFormatException(String paramString)
    {
      super();
    }
  }
  
  private static class b
    extends EventRecurrence.p
  {
    private static void d(String paramString, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
    {
      int i = paramString.length() - 2;
      if (i > 0)
      {
        paramArrayOfInt2[paramInt] = EventRecurrence.p.a(paramString.substring(0, i), -53, 53, false);
        paramArrayOfInt2 = paramString.substring(i);
      }
      else
      {
        paramArrayOfInt2 = paramString;
      }
      paramArrayOfInt2 = (Integer)EventRecurrence.c().get(paramArrayOfInt2);
      if (paramArrayOfInt2 != null)
      {
        paramArrayOfInt1[paramInt] = paramArrayOfInt2.intValue();
        return;
      }
      paramArrayOfInt1 = new StringBuilder();
      paramArrayOfInt1.append("Invalid BYDAY value: ");
      paramArrayOfInt1.append(paramString);
      throw new EventRecurrence.InvalidFormatException(paramArrayOfInt1.toString());
    }
    
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      int i = paramString.indexOf(",");
      int j = 0;
      int k = 1;
      int[] arrayOfInt1;
      int[] arrayOfInt2;
      if (i < 0)
      {
        arrayOfInt1 = new int[1];
        arrayOfInt2 = new int[1];
        d(paramString, arrayOfInt1, arrayOfInt2, 0);
        paramString = arrayOfInt1;
      }
      else
      {
        String[] arrayOfString = paramString.split(",");
        i = arrayOfString.length;
        int[] arrayOfInt3 = new int[i];
        arrayOfInt1 = new int[i];
        for (;;)
        {
          paramString = arrayOfInt3;
          arrayOfInt2 = arrayOfInt1;
          k = i;
          if (j >= i) {
            break;
          }
          d(arrayOfString[j], arrayOfInt3, arrayOfInt1, j);
          j++;
        }
      }
      paramEventRecurrence.m = paramString;
      paramEventRecurrence.n = arrayOfInt2;
      paramEventRecurrence.o = k;
      return 128;
    }
  }
  
  private static class c
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, 0, 23, true);
      paramEventRecurrence.k = paramString;
      paramEventRecurrence.l = paramString.length;
      return 64;
    }
  }
  
  private static class d
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, 0, 59, true);
      paramEventRecurrence.i = paramString;
      paramEventRecurrence.j = paramString.length;
      return 32;
    }
  }
  
  private static class e
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, 1, 12, false);
      paramEventRecurrence.v = paramString;
      paramEventRecurrence.w = paramString.length;
      return 2048;
    }
  }
  
  private static class f
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, -31, 31, false);
      paramEventRecurrence.p = paramString;
      paramEventRecurrence.q = paramString.length;
      return 256;
    }
  }
  
  private static class g
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, 0, 59, true);
      paramEventRecurrence.g = paramString;
      paramEventRecurrence.h = paramString.length;
      return 16;
    }
  }
  
  private static class h
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, -2147483648, 2147483647, true);
      paramEventRecurrence.x = paramString;
      paramEventRecurrence.y = paramString.length;
      return 4096;
    }
  }
  
  private static class i
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, -53, 53, false);
      paramEventRecurrence.t = paramString;
      paramEventRecurrence.u = paramString.length;
      return 1024;
    }
  }
  
  private static class j
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramString = EventRecurrence.p.b(paramString, -366, 366, false);
      paramEventRecurrence.r = paramString;
      paramEventRecurrence.s = paramString.length;
      return 512;
    }
  }
  
  private static class k
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      int i = EventRecurrence.p.a(paramString, -2147483648, 2147483647, true);
      paramEventRecurrence.d = i;
      if (i < 0)
      {
        String str = EventRecurrence.b();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid Count. Forcing COUNT to 1 from ");
        localStringBuilder.append(paramString);
        Log.d(str, localStringBuilder.toString());
        paramEventRecurrence.d = 1;
      }
      return 4;
    }
  }
  
  private static class l
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      Integer localInteger = (Integer)EventRecurrence.a().get(paramString);
      if (localInteger != null)
      {
        paramEventRecurrence.b = localInteger.intValue();
        return 1;
      }
      paramEventRecurrence = new StringBuilder();
      paramEventRecurrence.append("Invalid FREQ value: ");
      paramEventRecurrence.append(paramString);
      throw new EventRecurrence.InvalidFormatException(paramEventRecurrence.toString());
    }
  }
  
  private static class m
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      int i = EventRecurrence.p.a(paramString, -2147483648, 2147483647, true);
      paramEventRecurrence.e = i;
      if (i < 1)
      {
        String str = EventRecurrence.b();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid Interval. Forcing INTERVAL to 1 from ");
        localStringBuilder.append(paramString);
        Log.d(str, localStringBuilder.toString());
        paramEventRecurrence.e = 1;
      }
      return 8;
    }
  }
  
  private static class n
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      paramEventRecurrence.c = paramString;
      return 2;
    }
  }
  
  private static class o
    extends EventRecurrence.p
  {
    public int c(String paramString, EventRecurrence paramEventRecurrence)
    {
      Integer localInteger = (Integer)EventRecurrence.c().get(paramString);
      if (localInteger != null)
      {
        paramEventRecurrence.f = localInteger.intValue();
        return 8192;
      }
      paramEventRecurrence = new StringBuilder();
      paramEventRecurrence.append("Invalid WKST value: ");
      paramEventRecurrence.append(paramString);
      throw new EventRecurrence.InvalidFormatException(paramEventRecurrence.toString());
    }
  }
  
  static abstract class p
  {
    public static int a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      String str1 = paramString;
      String str2 = paramString;
      try
      {
        if (paramString.charAt(0) == '+')
        {
          str2 = paramString;
          str1 = paramString.substring(1);
        }
        str2 = str1;
        int i = Integer.parseInt(str1);
        if ((i >= paramInt1) && (i <= paramInt2) && ((i != 0) || (paramBoolean))) {
          return i;
        }
        str2 = str1;
        paramString = new com/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;
        str2 = str1;
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        str2 = str1;
        localStringBuilder.<init>();
        str2 = str1;
        localStringBuilder.append("Integer value out of range: ");
        str2 = str1;
        localStringBuilder.append(str1);
        str2 = str1;
        paramString.<init>(localStringBuilder.toString());
        str2 = str1;
        throw paramString;
      }
      catch (NumberFormatException paramString)
      {
        paramString = new StringBuilder();
        paramString.append("Invalid integer value: ");
        paramString.append(str2);
        throw new EventRecurrence.InvalidFormatException(paramString.toString());
      }
    }
    
    public static int[] b(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      int i = paramString.indexOf(",");
      int j = 0;
      Object localObject;
      if (i < 0)
      {
        localObject = new int[1];
        localObject[0] = a(paramString, paramInt1, paramInt2, paramBoolean);
        paramString = (String)localObject;
      }
      else
      {
        localObject = paramString.split(",");
        i = localObject.length;
        paramString = new int[i];
        while (j < i)
        {
          paramString[j] = a(localObject[j], paramInt1, paramInt2, paramBoolean);
          j++;
        }
      }
      return paramString;
    }
    
    public abstract int c(String paramString, EventRecurrence paramEventRecurrence);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.calendarcommon2.EventRecurrence
 * JD-Core Version:    0.7.0.1
 */