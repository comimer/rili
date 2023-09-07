package q4;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l;
import java.util.Calendar;
import t1.b;

public class a
{
  private static a a;
  
  public static a a()
  {
    try
    {
      if (a == null)
      {
        locala = new q4/a;
        locala.<init>();
        a = locala;
      }
      a locala = a;
      return locala;
    }
    finally {}
  }
  
  private static Cursor c(Context paramContext, Calendar paramCalendar)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("remind_time");
    localStringBuilder.append(" BETWEEN ");
    localStringBuilder.append(l.b(paramCalendar));
    localStringBuilder.append(" AND ");
    localStringBuilder.append(l.a(paramCalendar));
    if (DeviceUtils.r(paramContext, "com.miui.notes") >= 90L)
    {
      localStringBuilder.append(" AND ");
      localStringBuilder.append("local_status");
      localStringBuilder.append("!=");
      localStringBuilder.append(3);
      localStringBuilder.append(" AND ");
      localStringBuilder.append("local_status");
      localStringBuilder.append("!=");
      localStringBuilder.append(3);
    }
    paramCalendar = null;
    try
    {
      paramContext = paramContext.getContentResolver().query(o4.a.b, o4.a.d, localStringBuilder.toString(), null, "is_finish ASC,remind_time ASC");
    }
    catch (Exception paramContext)
    {
      b.c("Cal:D:TodoLoader", "", paramContext);
      paramContext = paramCalendar;
    }
    return paramContext;
  }
  
  /* Error */
  public java.util.List<r4.a> b(Context paramContext, Calendar paramCalendar)
  {
    // Byte code:
    //   0: new 99	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 100	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_1
    //   9: ifnull +302 -> 311
    //   12: aload_2
    //   13: ifnonnull +6 -> 19
    //   16: goto +295 -> 311
    //   19: new 99	java/util/ArrayList
    //   22: dup
    //   23: invokespecial 100	java/util/ArrayList:<init>	()V
    //   26: astore 4
    //   28: aload_1
    //   29: aload_2
    //   30: invokestatic 102	q4/a:c	(Landroid/content/Context;Ljava/util/Calendar;)Landroid/database/Cursor;
    //   33: astore_1
    //   34: aload_1
    //   35: ifnull +254 -> 289
    //   38: aload_1
    //   39: iconst_m1
    //   40: invokeinterface 108 2 0
    //   45: pop
    //   46: aload_1
    //   47: invokeinterface 112 1 0
    //   52: ifeq +204 -> 256
    //   55: new 114	r4/a
    //   58: astore_2
    //   59: aload_2
    //   60: invokespecial 115	r4/a:<init>	()V
    //   63: aload_2
    //   64: aload_1
    //   65: aload_1
    //   66: ldc 117
    //   68: invokeinterface 121 2 0
    //   73: invokeinterface 125 2 0
    //   78: putfield 128	r4/a:a	J
    //   81: aload_2
    //   82: aload_1
    //   83: aload_1
    //   84: ldc 130
    //   86: invokeinterface 121 2 0
    //   91: invokeinterface 134 2 0
    //   96: putfield 137	r4/a:b	Ljava/lang/String;
    //   99: aload_2
    //   100: aload_1
    //   101: aload_1
    //   102: ldc 139
    //   104: invokeinterface 121 2 0
    //   109: invokeinterface 143 2 0
    //   114: putfield 146	r4/a:c	I
    //   117: aload_2
    //   118: aload_1
    //   119: aload_1
    //   120: ldc 24
    //   122: invokeinterface 121 2 0
    //   127: invokeinterface 125 2 0
    //   132: putfield 148	r4/a:d	J
    //   135: aload_2
    //   136: aload_1
    //   137: aload_1
    //   138: ldc 150
    //   140: invokeinterface 121 2 0
    //   145: invokeinterface 143 2 0
    //   150: putfield 153	r4/a:e	I
    //   153: aload_2
    //   154: aload_1
    //   155: aload_1
    //   156: ldc 155
    //   158: invokeinterface 121 2 0
    //   163: invokeinterface 143 2 0
    //   168: putfield 158	r4/a:f	I
    //   171: aload_2
    //   172: aload_1
    //   173: aload_1
    //   174: ldc 160
    //   176: invokeinterface 121 2 0
    //   181: invokeinterface 125 2 0
    //   186: putfield 163	r4/a:g	J
    //   189: aload_2
    //   190: aload_1
    //   191: aload_1
    //   192: ldc 165
    //   194: invokeinterface 121 2 0
    //   199: invokeinterface 125 2 0
    //   204: putfield 168	r4/a:h	J
    //   207: aload_2
    //   208: aload_1
    //   209: aload_1
    //   210: ldc 170
    //   212: invokeinterface 121 2 0
    //   217: invokeinterface 134 2 0
    //   222: putfield 173	r4/a:i	Ljava/lang/String;
    //   225: aload_2
    //   226: getfield 158	r4/a:f	I
    //   229: iconst_1
    //   230: if_icmpne +15 -> 245
    //   233: aload 4
    //   235: aload_2
    //   236: invokeinterface 179 2 0
    //   241: pop
    //   242: goto -196 -> 46
    //   245: aload_3
    //   246: aload_2
    //   247: invokeinterface 179 2 0
    //   252: pop
    //   253: goto -207 -> 46
    //   256: aload_1
    //   257: invokeinterface 182 1 0
    //   262: goto +27 -> 289
    //   265: astore_2
    //   266: goto +15 -> 281
    //   269: astore_2
    //   270: ldc 89
    //   272: ldc 184
    //   274: aload_2
    //   275: invokestatic 96	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   278: goto -22 -> 256
    //   281: aload_1
    //   282: invokeinterface 182 1 0
    //   287: aload_2
    //   288: athrow
    //   289: aload 4
    //   291: invokestatic 189	com/miui/calendar/util/i:d	(Ljava/util/List;)Z
    //   294: ifne +17 -> 311
    //   297: aload 4
    //   299: invokestatic 194	o4/b:e	(Ljava/util/List;)V
    //   302: aload_3
    //   303: aload 4
    //   305: invokeinterface 198 2 0
    //   310: pop
    //   311: aload_3
    //   312: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	313	0	this	a
    //   0	313	1	paramContext	Context
    //   0	313	2	paramCalendar	Calendar
    //   7	305	3	localArrayList1	java.util.ArrayList
    //   26	278	4	localArrayList2	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   38	46	265	finally
    //   46	242	265	finally
    //   245	253	265	finally
    //   270	278	265	finally
    //   38	46	269	java/lang/Exception
    //   46	242	269	java/lang/Exception
    //   245	253	269	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q4.a
 * JD-Core Version:    0.7.0.1
 */