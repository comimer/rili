package z3;

import android.content.Context;
import android.text.TextUtils;
import b2.a;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g.d0;
import com.miui.calendar.util.s;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;
import l3.b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pc.c;

public class d
{
  private static d f;
  private long a = -1L;
  private String b;
  private ArrayList<HolidaySchema> c = new ArrayList();
  private ArrayList<HolidaySchema> d = new ArrayList();
  private boolean e = false;
  
  private d(Context paramContext)
  {
    l(paramContext);
  }
  
  /* Error */
  private String d(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 47	com/miui/calendar/util/y:i	(Landroid/content/Context;)Z
    //   4: istore_2
    //   5: ldc 49
    //   7: astore_3
    //   8: iload_2
    //   9: ifeq +6 -> 15
    //   12: ldc 49
    //   14: areturn
    //   15: aload_1
    //   16: invokevirtual 55	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   19: ldc 56
    //   21: invokevirtual 62	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   24: astore 4
    //   26: aload 4
    //   28: invokevirtual 68	java/io/InputStream:available	()I
    //   31: newarray byte
    //   33: astore 5
    //   35: aload 4
    //   37: aload 5
    //   39: invokevirtual 72	java/io/InputStream:read	([B)I
    //   42: pop
    //   43: new 74	java/lang/String
    //   46: astore_1
    //   47: aload_1
    //   48: aload 5
    //   50: invokespecial 77	java/lang/String:<init>	([B)V
    //   53: aload 4
    //   55: invokevirtual 80	java/io/InputStream:close	()V
    //   58: goto +12 -> 70
    //   61: astore_3
    //   62: ldc 82
    //   64: ldc 84
    //   66: aload_3
    //   67: invokestatic 89	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   70: goto +37 -> 107
    //   73: astore_1
    //   74: goto +65 -> 139
    //   77: astore_1
    //   78: ldc 82
    //   80: ldc 84
    //   82: aload_1
    //   83: invokestatic 89	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: aload 4
    //   88: invokevirtual 80	java/io/InputStream:close	()V
    //   91: aload_3
    //   92: astore_1
    //   93: goto +14 -> 107
    //   96: astore_1
    //   97: ldc 82
    //   99: ldc 84
    //   101: aload_1
    //   102: invokestatic 89	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   105: aload_3
    //   106: astore_1
    //   107: new 91	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   114: astore_3
    //   115: aload_3
    //   116: ldc 94
    //   118: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: pop
    //   122: aload_3
    //   123: aload_1
    //   124: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: pop
    //   128: ldc 82
    //   130: aload_3
    //   131: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   134: invokestatic 105	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   137: aload_1
    //   138: areturn
    //   139: aload 4
    //   141: invokevirtual 80	java/io/InputStream:close	()V
    //   144: goto +12 -> 156
    //   147: astore_3
    //   148: ldc 82
    //   150: ldc 84
    //   152: aload_3
    //   153: invokestatic 89	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   156: aload_1
    //   157: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	158	0	this	d
    //   0	158	1	paramContext	Context
    //   4	5	2	bool	boolean
    //   7	1	3	str	String
    //   61	45	3	localIOException1	java.io.IOException
    //   114	17	3	localStringBuilder	StringBuilder
    //   147	6	3	localIOException2	java.io.IOException
    //   24	116	4	localInputStream	java.io.InputStream
    //   33	16	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   53	58	61	java/io/IOException
    //   26	53	73	finally
    //   78	86	73	finally
    //   26	53	77	java/io/IOException
    //   86	91	96	java/io/IOException
    //   139	144	147	java/io/IOException
  }
  
  private String e(Context paramContext)
  {
    if (!y.d(paramContext, "holiday_data_language")) {
      return new JSONObject().toString();
    }
    String str = s.c(paramContext, "calendar_holiday_config.json");
    paramContext = str;
    if (TextUtils.isEmpty(str)) {
      paramContext = new JSONObject().toString();
    }
    return paramContext;
  }
  
  private String f(Context paramContext)
  {
    String str = s.c(paramContext, "calendar_holiday_reminder.json");
    paramContext = str;
    if (TextUtils.isEmpty(str)) {
      paramContext = new JSONObject().toString();
    }
    return paramContext;
  }
  
  public static d h(Context paramContext)
  {
    try
    {
      if (f == null)
      {
        d locald = new z3/d;
        locald.<init>(paramContext);
        f = locald;
      }
      paramContext = f;
      return paramContext;
    }
    finally {}
  }
  
  public static String i()
  {
    return "holiday_data_language";
  }
  
  private void l(Context paramContext)
  {
    m(paramContext, e(paramContext));
    n(paramContext, f(paramContext));
  }
  
  private void m(Context paramContext, String paramString)
  {
    Object localObject = paramString;
    try
    {
      if (TextUtils.isEmpty(paramString)) {
        localObject = d(paramContext);
      }
      paramString = new org/json/JSONObject;
      paramString.<init>((String)localObject);
      if (paramString.has("holidays"))
      {
        localObject = (ArrayList)x.b(paramString.getJSONArray("holidays").toString(), HolidaySchema.getListType());
        this.c = ((ArrayList)localObject);
        if ((localObject != null) && (!((ArrayList)localObject).isEmpty()))
        {
          if (paramString.has("version"))
          {
            long l = paramString.optLong("version");
            paramString = new java/lang/StringBuilder;
            paramString.<init>();
            paramString.append("loadData version : ");
            paramString.append(l);
            z.a("Cal:D:HolidayConfig", paramString.toString());
            a.j(paramContext, "key_holiday_server_festival_version", l);
          }
          paramContext = this.c.iterator();
          while (paramContext.hasNext()) {
            ((HolidaySchema)paramContext.next()).adjustHolidayMillis();
          }
          if (this.e)
          {
            paramContext = c.c();
            paramString = new com/miui/calendar/util/g$d0;
            paramString.<init>();
            paramContext.k(paramString);
          }
        }
        else {}
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:HolidayConfig", "loadData()", paramContext);
    }
  }
  
  private void n(Context paramContext, String paramString)
  {
    try
    {
      Object localObject = new org/json/JSONObject;
      ((JSONObject)localObject).<init>(paramString);
      long l1 = ((JSONObject)localObject).optLong("reminderSecond", -1L);
      boolean bool = l1 < -1L;
      if (!bool) {
        this.a = a(paramContext, 28800L, 39600L);
      } else {
        this.a = l1;
      }
      if (((JSONObject)localObject).has("holidays"))
      {
        paramString = (ArrayList)x.b(((JSONObject)localObject).getJSONArray("holidays").toString(), HolidaySchema.getListType());
        this.d = paramString;
        if (paramString == null) {
          return;
        }
        long l2 = e0.q(System.currentTimeMillis()) / 1000L;
        paramString = this.d.iterator();
        while (paramString.hasNext())
        {
          localObject = (HolidaySchema)paramString.next();
          if (!bool)
          {
            if ((((HolidaySchema)localObject).holidayMillis >= l2) && (((HolidaySchema)localObject).getNotifyStartTime() > 0L) && (((HolidaySchema)localObject).getNotifyEndTime() > 0L) && (((HolidaySchema)localObject).getNotifyStartTime() < 86400L) && (((HolidaySchema)localObject).getNotifyEndTime() < 86400L) && (((HolidaySchema)localObject).getNotifyStartTime() <= ((HolidaySchema)localObject).getNotifyEndTime()))
            {
              long l3 = ((HolidaySchema)localObject).getNotifyStartTime();
              long l4 = ((HolidaySchema)localObject).getNotifyEndTime();
              StringBuilder localStringBuilder = new java/lang/StringBuilder;
              localStringBuilder.<init>();
              localStringBuilder.append("reminder time : ");
              localStringBuilder.append(((HolidaySchema)localObject).name);
              localStringBuilder.append(", startTime=");
              localStringBuilder.append(l3);
              localStringBuilder.append(", endTime=");
              localStringBuilder.append(l4);
              z.h("Cal:D:HolidayConfig", localStringBuilder.toString());
              l3 = a(paramContext, l3, l4);
              ((HolidaySchema)localObject).adjustHolidayMillis();
              if (l3 <= 0L) {
                l3 = this.a;
              }
              ((HolidaySchema)localObject).setReminderSecond(l3);
            }
            else
            {
              ((HolidaySchema)localObject).adjustHolidayMillis();
              ((HolidaySchema)localObject).setReminderSecond(this.a);
            }
          }
          else
          {
            ((HolidaySchema)localObject).adjustHolidayMillis();
            ((HolidaySchema)localObject).setReminderSecond(l1);
          }
        }
      }
      return;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:HolidayConfig", "loadData()", paramContext);
    }
  }
  
  public long a(Context paramContext, long paramLong1, long paramLong2)
  {
    if (TextUtils.isEmpty(this.b)) {
      this.b = DeviceUtils.i(paramContext);
    }
    double d1 = Math.abs(this.b.hashCode() / 2147483647.0D);
    return paramLong1 + ((paramLong2 - paramLong1) * d1);
  }
  
  public ArrayList<HolidaySchema> b()
  {
    return this.c;
  }
  
  public ArrayList<HolidaySchema> c()
  {
    return this.d;
  }
  
  public ArrayList<HolidaySchema> g(long paramLong)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getHolidaysByDay(): millis:");
    ((StringBuilder)localObject).append(paramLong);
    z.a("Cal:D:HolidayConfig", ((StringBuilder)localObject).toString());
    paramLong = e0.q(paramLong);
    ArrayList localArrayList = new ArrayList();
    if (this.c.isEmpty())
    {
      this.e = true;
    }
    else
    {
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        localObject = (HolidaySchema)localIterator.next();
        if ((((HolidaySchema)localObject).isValid()) && (((HolidaySchema)localObject).holidayMillis == paramLong))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("getHolidaysByDay(): holiday:");
          localStringBuilder.append(localObject);
          z.b("Cal:D:HolidayConfig", localStringBuilder.toString());
          localArrayList.add(localObject);
        }
      }
      this.e = false;
    }
    return localArrayList;
  }
  
  public ArrayList<HolidaySchema> j(long paramLong)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("getReminderByDay(): millis:");
    ((StringBuilder)localObject1).append(paramLong);
    z.a("Cal:D:HolidayConfig", ((StringBuilder)localObject1).toString());
    paramLong = e0.q(paramLong);
    localObject1 = new ArrayList();
    if ((!this.c.isEmpty()) && (!this.d.isEmpty())) {
      for (int i = 0; i < this.d.size(); i++)
      {
        Object localObject2 = (HolidaySchema)this.d.get(i);
        for (int j = 0; j < this.c.size(); j++)
        {
          HolidaySchema localHolidaySchema = (HolidaySchema)this.c.get(j);
          if ((localHolidaySchema.isValid()) && (localHolidaySchema.holidayMillis == paramLong) && (localHolidaySchema.holidayId == ((HolidaySchema)localObject2).holidayId))
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("getReminderByDay(): holiday:");
            ((StringBuilder)localObject2).append(localHolidaySchema);
            z.b("Cal:D:HolidayConfig", ((StringBuilder)localObject2).toString());
            ((ArrayList)localObject1).add(localHolidaySchema);
            break;
          }
        }
      }
    }
    return localObject1;
  }
  
  public ArrayList<HolidaySchema> k()
  {
    return j(System.currentTimeMillis());
  }
  
  public void o(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public void p(Context paramContext, String paramString)
  {
    z.a("Cal:D:HolidayConfig", "updateConfig()");
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString);
      if (localJSONObject.has("holidays"))
      {
        if (s.f(paramContext, "calendar_holiday_config.json", paramString)) {
          y.k(paramContext, "holiday_data_language");
        }
        m(paramContext, paramString);
      }
    }
    catch (JSONException paramContext)
    {
      z.c("Cal:D:HolidayConfig", "updateConfig parse json error");
    }
  }
  
  public void q(Context paramContext, String paramString)
  {
    z.a("Cal:D:HolidayConfig", "updateConfig()");
    if (!paramString.isEmpty())
    {
      s.f(paramContext, "calendar_holiday_reminder.json", paramString);
      n(paramContext, paramString);
    }
    b.a(paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.d
 * JD-Core Version:    0.7.0.1
 */