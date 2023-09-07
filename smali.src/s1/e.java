package s1;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract.Instances;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.FlightEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;
import t1.b;

@Metadata(bv={}, d1={""}, d2={"Ls1/e;", "", "Landroid/content/Context;", "context", "", "startDay", "days", "eventType", "", "search", "", "Lcom/android/calendar/common/event/schema/Event;", "e", "", "begin", "end", "g", "event", "Lkotlin/u;", "i", "events", "j", "endDay", "", "eventTypes", "Landroid/database/Cursor;", "c", "cursor", "a", "b", "f", "<init>", "()V", "common_release"}, k=1, mv={1, 7, 1})
public final class e
{
  public static final e a = new e();
  private static final String[] b = { "title", "eventLocation", "allDay", "displayColor", "event_id", "begin", "end", "_id", "startDay", "endDay", "startMinute", "endMinute", "hasAlarm", "rrule", "selfAttendeeStatus", "organizer", "guestsCanModify", "account_name", "account_type", "calendar_displayName", "customAppPackage", "hasExtendedProperties", "description", "calendar_id" };
  private static final String[] c = { "agenda_info", "credit_info", "key_birthday_info", "key_anniversary_info", "key_countdown_info", "travel_info", "electricity_bill_info", "gas_bill_info", "hotel_info", "movie_info", "loan_info" };
  
  private final List<Event> a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramCursor == null)
    {
      b.f("Cal:D:EventLoader", "buildEventsFromCursor() cursor is null, return");
      return localArrayList;
    }
    if (paramCursor.getCount() == 0) {
      return localArrayList;
    }
    paramCursor.moveToPosition(-1);
    while (paramCursor.moveToNext())
    {
      Event localEvent = b(paramCursor);
      if (localEvent != null) {
        localArrayList.add(localEvent);
      }
    }
    return localArrayList;
  }
  
  private final Event b(Cursor paramCursor)
  {
    Event localEvent = Event.createEventByHasEP(paramCursor.getInt(21));
    if (localEvent == null)
    {
      b.f("Cal:D:EventLoader", "generateEventFromCursor() invalid event");
      return null;
    }
    localEvent.setId(paramCursor.getLong(4));
    boolean bool1 = false;
    localEvent.setTitle(paramCursor.getString(0));
    localEvent.setLocation(paramCursor.getString(1));
    if (paramCursor.getInt(2) != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localEvent.setAllDay(bool2);
    if (TextUtils.isEmpty(localEvent.getTitle())) {
      localEvent.setTitle("");
    }
    localEvent.setDescription(paramCursor.getString(22));
    localEvent.setStartTimeMillis(paramCursor.getLong(5));
    localEvent.setEndTimeMillis(paramCursor.getLong(6));
    if (!paramCursor.isNull(3)) {
      localEvent.setColor(t1.e.a(paramCursor.getInt(3)));
    }
    EventEx localEventEx = localEvent.getEx();
    localEventEx.setOrganizer(paramCursor.getString(15));
    if (paramCursor.getInt(16) != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localEventEx.setGuestsCanModify(bool2);
    localEventEx.setCalendarId(paramCursor.getLong(23));
    localEventEx.setStartJulianDay(paramCursor.getInt(8));
    localEventEx.setEndJulianDay(paramCursor.getInt(9));
    localEventEx.setStartMinute(paramCursor.getInt(10));
    localEventEx.setEndMinute(paramCursor.getInt(11));
    boolean bool2 = bool1;
    if (paramCursor.getInt(12) != 0) {
      bool2 = true;
    }
    localEventEx.setHasAlarm(bool2);
    localEventEx.setSelfAttendeeStatus(paramCursor.getInt(14));
    localEventEx.setAccountName(paramCursor.getString(17));
    localEventEx.setAccountType(paramCursor.getString(18));
    localEventEx.setCalendarDisplayName(paramCursor.getString(19));
    localEventEx.setCustomAppPackage(paramCursor.getString(20));
    localEventEx.setSolarRepeating(TextUtils.isEmpty(paramCursor.getString(13)) ^ true);
    return localEvent;
  }
  
  @TargetApi(14)
  private final Cursor c(Context paramContext, int paramInt1, int paramInt2, int[] paramArrayOfInt, String paramString)
  {
    Uri.Builder localBuilder = CalendarContract.Instances.CONTENT_SEARCH_BY_DAY_URI.buildUpon();
    ContentUris.appendId(localBuilder, paramInt1);
    ContentUris.appendId(localBuilder, paramInt2);
    Object localObject = paramString;
    if (TextUtils.isEmpty(paramString)) {
      localObject = " ";
    }
    localBuilder.appendPath((String)localObject);
    if (paramArrayOfInt != null)
    {
      paramInt1 = paramArrayOfInt.length;
      paramInt2 = 0;
      if (paramInt1 == 0) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
      if ((paramInt1 ^ 0x1) != 0)
      {
        paramString = z.a;
        paramString = String.format(Locale.ENGLISH, "visible=1 AND (hasExtendedProperties&255 IN %s)", Arrays.copyOf(new Object[] { d.a(paramArrayOfInt.length) }, 1));
        r.e(paramString, "format(locale, format, *args)");
        localObject = new String[paramArrayOfInt.length];
        int i = paramArrayOfInt.length;
        for (paramInt1 = paramInt2; paramInt1 < i; paramInt1++) {
          localObject[paramInt1] = String.valueOf(paramArrayOfInt[paramInt1]);
        }
        paramArrayOfInt = (int[])localObject;
        break label171;
      }
    }
    paramArrayOfInt = null;
    paramString = "visible=1";
    label171:
    return paramContext.getContentResolver().query(localBuilder.build(), b, paramString, paramArrayOfInt, "begin ASC, end DESC, title ASC");
  }
  
  public static final List<Event> d(Context paramContext, int paramInt1, int paramInt2)
  {
    r.f(paramContext, "context");
    return h(paramContext, paramInt1, paramInt2, 0, null, 24, null);
  }
  
  public static final List<Event> e(Context paramContext, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    r.f(paramContext, "context");
    e locale = a;
    int[] arrayOfInt;
    if (paramInt3 >= 0) {
      arrayOfInt = new int[] { paramInt3 };
    } else {
      arrayOfInt = null;
    }
    return locale.f(paramContext, paramInt1, paramInt2, arrayOfInt, paramString);
  }
  
  /* Error */
  @TargetApi(14)
  public static final List<Event> g(Context paramContext, long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 365
    //   4: invokestatic 367	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   7: aconst_null
    //   8: astore 5
    //   10: aconst_null
    //   11: astore 6
    //   13: aload_0
    //   14: invokevirtual 349	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   17: getstatic 96	s1/e:b	[Ljava/lang/String;
    //   20: lload_1
    //   21: lload_3
    //   22: ldc_w 298
    //   25: invokestatic 383	android/provider/CalendarContract$Instances:query	(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;)Landroid/database/Cursor;
    //   28: astore_0
    //   29: aload_0
    //   30: astore 6
    //   32: aload_0
    //   33: astore 5
    //   35: getstatic 48	s1/e:a	Ls1/e;
    //   38: aload_0
    //   39: invokespecial 385	s1/e:a	(Landroid/database/Cursor;)Ljava/util/List;
    //   42: astore 7
    //   44: aload_0
    //   45: astore 6
    //   47: aload_0
    //   48: astore 5
    //   50: new 387	java/lang/StringBuilder
    //   53: astore 8
    //   55: aload_0
    //   56: astore 6
    //   58: aload_0
    //   59: astore 5
    //   61: aload 8
    //   63: invokespecial 388	java/lang/StringBuilder:<init>	()V
    //   66: aload_0
    //   67: astore 6
    //   69: aload_0
    //   70: astore 5
    //   72: aload 8
    //   74: ldc_w 390
    //   77: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload_0
    //   82: astore 6
    //   84: aload_0
    //   85: astore 5
    //   87: aload 8
    //   89: lload_1
    //   90: invokevirtual 397	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   93: pop
    //   94: aload_0
    //   95: astore 6
    //   97: aload_0
    //   98: astore 5
    //   100: aload 8
    //   102: ldc_w 399
    //   105: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload_0
    //   110: astore 6
    //   112: aload_0
    //   113: astore 5
    //   115: aload 8
    //   117: lload_3
    //   118: invokevirtual 397	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   121: pop
    //   122: aload_0
    //   123: astore 6
    //   125: aload_0
    //   126: astore 5
    //   128: aload 8
    //   130: ldc_w 401
    //   133: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: pop
    //   137: aload_0
    //   138: astore 6
    //   140: aload_0
    //   141: astore 5
    //   143: aload 8
    //   145: aload 7
    //   147: invokeinterface 404 1 0
    //   152: invokevirtual 407	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   155: pop
    //   156: aload_0
    //   157: astore 6
    //   159: aload_0
    //   160: astore 5
    //   162: ldc 128
    //   164: aload 8
    //   166: invokevirtual 410	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 412	t1/b:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   172: aload 7
    //   174: astore 6
    //   176: aload_0
    //   177: ifnull +64 -> 241
    //   180: aload 7
    //   182: astore 6
    //   184: aload_0
    //   185: astore 5
    //   187: aload 5
    //   189: invokeinterface 415 1 0
    //   194: goto +47 -> 241
    //   197: astore_0
    //   198: goto +46 -> 244
    //   201: astore_0
    //   202: aload 5
    //   204: astore 6
    //   206: ldc 128
    //   208: ldc_w 417
    //   211: aload_0
    //   212: invokestatic 420	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   215: aload 5
    //   217: astore 6
    //   219: new 125	java/util/ArrayList
    //   222: dup
    //   223: invokespecial 126	java/util/ArrayList:<init>	()V
    //   226: astore_0
    //   227: aload_0
    //   228: astore 6
    //   230: aload 5
    //   232: ifnull +9 -> 241
    //   235: aload_0
    //   236: astore 6
    //   238: goto -51 -> 187
    //   241: aload 6
    //   243: areturn
    //   244: aload 6
    //   246: ifnull +10 -> 256
    //   249: aload 6
    //   251: invokeinterface 415 1 0
    //   256: aload_0
    //   257: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	258	0	paramContext	Context
    //   0	258	1	paramLong1	long
    //   0	258	3	paramLong2	long
    //   8	223	5	localContext	Context
    //   11	239	6	localObject	Object
    //   42	139	7	localList	List
    //   53	112	8	localStringBuilder	java.lang.StringBuilder
    // Exception table:
    //   from	to	target	type
    //   13	29	197	finally
    //   35	44	197	finally
    //   50	55	197	finally
    //   61	66	197	finally
    //   72	81	197	finally
    //   87	94	197	finally
    //   100	109	197	finally
    //   115	122	197	finally
    //   128	137	197	finally
    //   143	156	197	finally
    //   162	172	197	finally
    //   206	215	197	finally
    //   219	227	197	finally
    //   13	29	201	java/lang/Exception
    //   35	44	201	java/lang/Exception
    //   50	55	201	java/lang/Exception
    //   61	66	201	java/lang/Exception
    //   72	81	201	java/lang/Exception
    //   87	94	201	java/lang/Exception
    //   100	109	201	java/lang/Exception
    //   115	122	201	java/lang/Exception
    //   128	137	201	java/lang/Exception
    //   143	156	201	java/lang/Exception
    //   162	172	201	java/lang/Exception
  }
  
  public static final void i(Context paramContext, Event paramEvent)
  {
    r.f(paramEvent, "event");
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramEvent);
    j(paramContext, localArrayList);
  }
  
  public static final void j(Context paramContext, List<? extends Event> paramList)
  {
    if ((paramList != null) && (paramList.size() != 0))
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      Object localObject1 = paramList.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Event)((Iterator)localObject1).next();
        localArrayList1.add(Long.valueOf(((Event)localObject2).getId()));
        if (((Event)localObject2).getEventType() == 11) {
          localArrayList2.add(Long.valueOf(((Event)localObject2).getId()));
        }
      }
      Object localObject2 = d.d(paramContext, localArrayList1, c);
      localObject1 = new HashMap();
      if (localArrayList2.size() > 0)
      {
        localObject1 = d.c(paramContext, localArrayList1, "flight_info");
        r.e(localObject1, "loadEPInfoStrings(contex…PERTIES_NAME_FLIGHT_INFO)");
      }
      paramContext = paramList.iterator();
      while (paramContext.hasNext())
      {
        paramList = (Event)paramContext.next();
        int i = paramList.getEventType();
        if ((i != 0) && (i != 3)) {}
        switch (i)
        {
        default: 
          break;
        case 11: 
          r.d(paramList, "null cannot be cast to non-null type com.android.calendar.common.event.schema.FlightEvent");
          ((FlightEvent)paramList).fillEpInfo((String)((HashMap)localObject2).get(Long.valueOf(paramList.getId())), (String)((HashMap)localObject1).get(Long.valueOf(paramList.getId())));
          break;
        case 6: 
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
        case 16: 
        case 17: 
          paramList.fillEpInfo((String)((HashMap)localObject2).get(Long.valueOf(paramList.getId())));
        }
      }
    }
  }
  
  /* Error */
  public final List<Event> f(Context paramContext, int paramInt1, int paramInt2, int[] paramArrayOfInt, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 365
    //   4: invokestatic 367	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   7: aconst_null
    //   8: astore 6
    //   10: aconst_null
    //   11: astore 7
    //   13: aload 7
    //   15: astore 8
    //   17: aload 6
    //   19: astore 9
    //   21: aload_1
    //   22: invokevirtual 488	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   25: astore_1
    //   26: aload 7
    //   28: astore 8
    //   30: aload 6
    //   32: astore 9
    //   34: aload_1
    //   35: ldc_w 490
    //   38: invokestatic 338	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   41: aload 7
    //   43: astore 8
    //   45: aload 6
    //   47: astore 9
    //   49: aload_0
    //   50: aload_1
    //   51: iload_2
    //   52: iload_2
    //   53: iload_3
    //   54: iadd
    //   55: iconst_1
    //   56: isub
    //   57: aload 4
    //   59: aload 5
    //   61: invokespecial 492	s1/e:c	(Landroid/content/Context;II[ILjava/lang/String;)Landroid/database/Cursor;
    //   64: astore_1
    //   65: aload_1
    //   66: astore 8
    //   68: aload_1
    //   69: astore 9
    //   71: aload_0
    //   72: aload_1
    //   73: invokespecial 385	s1/e:a	(Landroid/database/Cursor;)Ljava/util/List;
    //   76: astore 7
    //   78: aload_1
    //   79: astore 8
    //   81: aload_1
    //   82: astore 9
    //   84: new 387	java/lang/StringBuilder
    //   87: astore 6
    //   89: aload_1
    //   90: astore 8
    //   92: aload_1
    //   93: astore 9
    //   95: aload 6
    //   97: invokespecial 388	java/lang/StringBuilder:<init>	()V
    //   100: aload_1
    //   101: astore 8
    //   103: aload_1
    //   104: astore 9
    //   106: aload 6
    //   108: ldc_w 494
    //   111: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: aload_1
    //   116: astore 8
    //   118: aload_1
    //   119: astore 9
    //   121: aload 6
    //   123: iload_2
    //   124: invokevirtual 407	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   127: pop
    //   128: aload_1
    //   129: astore 8
    //   131: aload_1
    //   132: astore 9
    //   134: aload 6
    //   136: ldc_w 496
    //   139: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: pop
    //   143: aload_1
    //   144: astore 8
    //   146: aload_1
    //   147: astore 9
    //   149: aload 6
    //   151: iload_3
    //   152: invokevirtual 407	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   155: pop
    //   156: aload_1
    //   157: astore 8
    //   159: aload_1
    //   160: astore 9
    //   162: aload 6
    //   164: ldc_w 498
    //   167: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: aload_1
    //   172: astore 8
    //   174: aload_1
    //   175: astore 9
    //   177: aload 6
    //   179: aload 4
    //   181: invokevirtual 501	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   184: pop
    //   185: aload_1
    //   186: astore 8
    //   188: aload_1
    //   189: astore 9
    //   191: aload 6
    //   193: ldc_w 503
    //   196: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: pop
    //   200: aload_1
    //   201: astore 8
    //   203: aload_1
    //   204: astore 9
    //   206: aload 6
    //   208: aload 5
    //   210: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: pop
    //   214: aload_1
    //   215: astore 8
    //   217: aload_1
    //   218: astore 9
    //   220: aload 6
    //   222: ldc_w 401
    //   225: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: pop
    //   229: aload_1
    //   230: astore 8
    //   232: aload_1
    //   233: astore 9
    //   235: aload 6
    //   237: aload 7
    //   239: invokeinterface 404 1 0
    //   244: invokevirtual 407	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   247: pop
    //   248: aload_1
    //   249: astore 8
    //   251: aload_1
    //   252: astore 9
    //   254: ldc 128
    //   256: aload 6
    //   258: invokevirtual 410	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: invokestatic 412	t1/b:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   264: aload 7
    //   266: astore 4
    //   268: aload_1
    //   269: ifnull +64 -> 333
    //   272: aload 7
    //   274: astore 4
    //   276: aload_1
    //   277: astore 9
    //   279: aload 9
    //   281: invokeinterface 415 1 0
    //   286: goto +47 -> 333
    //   289: astore_1
    //   290: goto +46 -> 336
    //   293: astore_1
    //   294: aload 9
    //   296: astore 8
    //   298: ldc 128
    //   300: ldc_w 417
    //   303: aload_1
    //   304: invokestatic 420	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   307: aload 9
    //   309: astore 8
    //   311: new 125	java/util/ArrayList
    //   314: dup
    //   315: invokespecial 126	java/util/ArrayList:<init>	()V
    //   318: astore_1
    //   319: aload_1
    //   320: astore 4
    //   322: aload 9
    //   324: ifnull +9 -> 333
    //   327: aload_1
    //   328: astore 4
    //   330: goto -51 -> 279
    //   333: aload 4
    //   335: areturn
    //   336: aload 8
    //   338: ifnull +10 -> 348
    //   341: aload 8
    //   343: invokeinterface 415 1 0
    //   348: aload_1
    //   349: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	350	0	this	e
    //   0	350	1	paramContext	Context
    //   0	350	2	paramInt1	int
    //   0	350	3	paramInt2	int
    //   0	350	4	paramArrayOfInt	int[]
    //   0	350	5	paramString	String
    //   8	249	6	localStringBuilder	java.lang.StringBuilder
    //   11	262	7	localList	List
    //   15	327	8	localObject1	Object
    //   19	304	9	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   21	26	289	finally
    //   34	41	289	finally
    //   49	65	289	finally
    //   71	78	289	finally
    //   84	89	289	finally
    //   95	100	289	finally
    //   106	115	289	finally
    //   121	128	289	finally
    //   134	143	289	finally
    //   149	156	289	finally
    //   162	171	289	finally
    //   177	185	289	finally
    //   191	200	289	finally
    //   206	214	289	finally
    //   220	229	289	finally
    //   235	248	289	finally
    //   254	264	289	finally
    //   298	307	289	finally
    //   311	319	289	finally
    //   21	26	293	java/lang/Exception
    //   34	41	293	java/lang/Exception
    //   49	65	293	java/lang/Exception
    //   71	78	293	java/lang/Exception
    //   84	89	293	java/lang/Exception
    //   95	100	293	java/lang/Exception
    //   106	115	293	java/lang/Exception
    //   121	128	293	java/lang/Exception
    //   134	143	293	java/lang/Exception
    //   149	156	293	java/lang/Exception
    //   162	171	293	java/lang/Exception
    //   177	185	293	java/lang/Exception
    //   191	200	293	java/lang/Exception
    //   206	214	293	java/lang/Exception
    //   220	229	293	java/lang/Exception
    //   235	248	293	java/lang/Exception
    //   254	264	293	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.e
 * JD-Core Version:    0.7.0.1
 */