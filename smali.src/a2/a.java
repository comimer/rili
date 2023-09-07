package a2;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AgendaEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONObject;
import s1.d;
import t1.b;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "", "eventId", "startMillis", "endMillis", "Lcom/android/calendar/common/event/schema/AgendaEvent;", "d", "(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/android/calendar/common/event/schema/AgendaEvent;", "agendaEvent", "Lkotlin/u;", "g", "Landroid/database/MatrixCursor;", "eventCursor", "c", "a", "b", "e", "", "f", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class a
{
  private static final String[] a = { "_id", "title", "rrule", "allDay", "calendar_id", "dtstart", "_sync_id", "eventTimezone", "description", "eventLocation", "calendar_access_level", "displayColor", "hasAttendeeData", "organizer", "hasAlarm", "maxReminders", "allowedReminders", "customAppPackage", "customAppUri", "original_sync_id", "account_name", "account_type", "calendar_displayName", "ownerAccount", "rdate", "sync_data1", "sync_data2", "sync_data3", "sync_data6", "hasExtendedProperties", "_sync_id", "duration", "availability", "guestsCanModify", "original_id", "eventStatus", "dtend" };
  private static final String[] b = { "_id", "attendeeName", "attendeeEmail", "attendeeRelationship", "attendeeStatus", "attendeeIdentity", "attendeeIdNamespace" };
  private static final String[] c = { "_id", "minutes", "method" };
  private static final String[] d = { "_id", "calendar_displayName", "ownerAccount", "canOrganizerRespond", "account_name", "account_type", "calendar_color" };
  
  public static final MatrixCursor a(Context paramContext)
  {
    kotlin.jvm.internal.r.f(paramContext, "context");
    localObject = null;
    try
    {
      paramContext = paramContext.getContentResolver();
      if (paramContext != null) {
        paramContext = paramContext.query(CalendarContract.Calendars.CONTENT_URI, d, "calendar_access_level>=200 AND visible=1", null, null);
      } else {
        paramContext = null;
      }
      paramContext = Utils.Q0(paramContext);
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext = localObject;
      }
    }
    return paramContext;
  }
  
  public static final MatrixCursor b(Context paramContext)
  {
    kotlin.jvm.internal.r.f(paramContext, "context");
    localObject = null;
    try
    {
      paramContext = paramContext.getContentResolver();
      if (paramContext != null) {
        paramContext = paramContext.query(CalendarContract.Calendars.CONTENT_URI, d, "calendar_access_level>=500 AND visible=1", null, null);
      } else {
        paramContext = null;
      }
      paramContext = Utils.Q0(paramContext);
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext = localObject;
      }
    }
    return paramContext;
  }
  
  /* Error */
  public static final void c(Context paramContext, MatrixCursor paramMatrixCursor, AgendaEvent paramAgendaEvent)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 144
    //   3: invokestatic 149	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   6: aload_1
    //   7: ldc 179
    //   9: invokestatic 149	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   12: aload_2
    //   13: ldc 180
    //   15: invokestatic 149	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   18: ldc 182
    //   20: ldc 184
    //   22: invokestatic 189	t1/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: aconst_null
    //   26: astore_3
    //   27: aconst_null
    //   28: astore 4
    //   30: aload 4
    //   32: astore 5
    //   34: aload_3
    //   35: astore 6
    //   37: aload_2
    //   38: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   41: invokevirtual 201	com/android/calendar/common/event/schema/EventEx:getCalendarAccessLevel	()I
    //   44: sipush 500
    //   47: if_icmplt +9 -> 56
    //   50: iconst_1
    //   51: istore 7
    //   53: goto +6 -> 59
    //   56: iconst_0
    //   57: istore 7
    //   59: iload 7
    //   61: ifeq +18 -> 79
    //   64: aload 4
    //   66: astore 5
    //   68: aload_3
    //   69: astore 6
    //   71: aload_0
    //   72: invokestatic 203	a2/a:b	(Landroid/content/Context;)Landroid/database/MatrixCursor;
    //   75: astore_0
    //   76: goto +15 -> 91
    //   79: aload 4
    //   81: astore 5
    //   83: aload_3
    //   84: astore 6
    //   86: aload_0
    //   87: invokestatic 205	a2/a:a	(Landroid/content/Context;)Landroid/database/MatrixCursor;
    //   90: astore_0
    //   91: aload_0
    //   92: astore 5
    //   94: aload_0
    //   95: astore 6
    //   97: new 207	java/util/ArrayList
    //   100: astore 8
    //   102: aload_0
    //   103: astore 5
    //   105: aload_0
    //   106: astore 6
    //   108: aload 8
    //   110: invokespecial 210	java/util/ArrayList:<init>	()V
    //   113: aload_0
    //   114: ifnull +496 -> 610
    //   117: aload_0
    //   118: astore 5
    //   120: aload_0
    //   121: astore 6
    //   123: aload_0
    //   124: invokevirtual 216	android/database/AbstractCursor:moveToNext	()Z
    //   127: ifeq +283 -> 410
    //   130: aload_0
    //   131: astore 5
    //   133: aload_0
    //   134: astore 6
    //   136: aload_0
    //   137: iconst_2
    //   138: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   141: astore 4
    //   143: aload 4
    //   145: ifnonnull +10 -> 155
    //   148: ldc 223
    //   150: astore 4
    //   152: goto +16 -> 168
    //   155: aload_0
    //   156: astore 5
    //   158: aload_0
    //   159: astore 6
    //   161: aload 4
    //   163: ldc 225
    //   165: invokestatic 227	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   168: aload_0
    //   169: astore 5
    //   171: aload_0
    //   172: astore 6
    //   174: aload_0
    //   175: iconst_3
    //   176: invokevirtual 231	android/database/MatrixCursor:getInt	(I)I
    //   179: ifeq +9 -> 188
    //   182: iconst_1
    //   183: istore 9
    //   185: goto +6 -> 191
    //   188: iconst_0
    //   189: istore 9
    //   191: aload_0
    //   192: astore 5
    //   194: aload_0
    //   195: astore 6
    //   197: aload_0
    //   198: iconst_4
    //   199: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   202: astore_3
    //   203: aload_3
    //   204: ifnonnull +9 -> 213
    //   207: ldc 223
    //   209: astore_3
    //   210: goto +15 -> 225
    //   213: aload_0
    //   214: astore 5
    //   216: aload_0
    //   217: astore 6
    //   219: aload_3
    //   220: ldc 233
    //   222: invokestatic 227	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   225: aload_0
    //   226: astore 5
    //   228: aload_0
    //   229: astore 6
    //   231: aload_0
    //   232: iconst_1
    //   233: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   236: astore 10
    //   238: aload 10
    //   240: ifnonnull +10 -> 250
    //   243: ldc 223
    //   245: astore 10
    //   247: goto +16 -> 263
    //   250: aload_0
    //   251: astore 5
    //   253: aload_0
    //   254: astore 6
    //   256: aload 10
    //   258: ldc 235
    //   260: invokestatic 227	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   263: aload_0
    //   264: astore 5
    //   266: aload_0
    //   267: astore 6
    //   269: new 237	com/android/calendar/common/event/schema/AgendaEvent$Calendar
    //   272: astore 11
    //   274: aload_0
    //   275: astore 5
    //   277: aload_0
    //   278: astore 6
    //   280: aload_0
    //   281: iconst_0
    //   282: invokevirtual 241	android/database/MatrixCursor:getLong	(I)J
    //   285: lstore 12
    //   287: aload_0
    //   288: astore 5
    //   290: aload_0
    //   291: astore 6
    //   293: aload_0
    //   294: iconst_2
    //   295: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   298: astore 14
    //   300: aload_0
    //   301: astore 5
    //   303: aload_0
    //   304: astore 6
    //   306: aload 14
    //   308: ldc 243
    //   310: invokestatic 227	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   313: aload_0
    //   314: astore 5
    //   316: aload_0
    //   317: astore 6
    //   319: aload_0
    //   320: iconst_4
    //   321: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   324: astore 15
    //   326: aload_0
    //   327: astore 5
    //   329: aload_0
    //   330: astore 6
    //   332: aload 15
    //   334: ldc 245
    //   336: invokestatic 227	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   339: aload_0
    //   340: astore 5
    //   342: aload_0
    //   343: astore 6
    //   345: aload_0
    //   346: iconst_5
    //   347: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   350: astore 16
    //   352: aload_0
    //   353: astore 5
    //   355: aload_0
    //   356: astore 6
    //   358: aload 16
    //   360: ldc 247
    //   362: invokestatic 227	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   365: aload_0
    //   366: astore 5
    //   368: aload_0
    //   369: astore 6
    //   371: aload 11
    //   373: lload 12
    //   375: aload 4
    //   377: iload 9
    //   379: aload_3
    //   380: aload 10
    //   382: aload 14
    //   384: aload 15
    //   386: aload 16
    //   388: invokespecial 250	com/android/calendar/common/event/schema/AgendaEvent$Calendar:<init>	(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   391: aload_0
    //   392: astore 5
    //   394: aload_0
    //   395: astore 6
    //   397: aload 8
    //   399: aload 11
    //   401: invokeinterface 256 2 0
    //   406: pop
    //   407: goto -290 -> 117
    //   410: aload_0
    //   411: astore 5
    //   413: aload_0
    //   414: astore 6
    //   416: aload_2
    //   417: aload_0
    //   418: aload_1
    //   419: iconst_4
    //   420: invokevirtual 241	android/database/MatrixCursor:getLong	(I)J
    //   423: invokestatic 260	com/android/calendar/common/Utils:n	(Landroid/database/Cursor;J)I
    //   426: invokevirtual 266	com/android/calendar/common/event/schema/AgendaEvent:setCalendarPosition	(I)V
    //   429: aload_0
    //   430: astore 5
    //   432: aload_0
    //   433: astore 6
    //   435: aload_2
    //   436: aload 8
    //   438: invokevirtual 270	com/android/calendar/common/event/schema/AgendaEvent:setCalendars	(Ljava/util/List;)V
    //   441: aload_0
    //   442: astore 5
    //   444: aload_0
    //   445: astore 6
    //   447: aload 8
    //   449: aload_2
    //   450: invokevirtual 273	com/android/calendar/common/event/schema/AgendaEvent:getCalendarPosition	()I
    //   453: invokeinterface 277 2 0
    //   458: checkcast 237	com/android/calendar/common/event/schema/AgendaEvent$Calendar
    //   461: astore_1
    //   462: aload_0
    //   463: astore 5
    //   465: aload_0
    //   466: astore 6
    //   468: aload_2
    //   469: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   472: aload_1
    //   473: invokevirtual 281	com/android/calendar/common/event/schema/AgendaEvent$Calendar:getOwnerAccount	()Ljava/lang/String;
    //   476: aload_2
    //   477: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   480: invokevirtual 284	com/android/calendar/common/event/schema/EventEx:getOrganizer	()Ljava/lang/String;
    //   483: iconst_1
    //   484: invokestatic 290	kotlin/text/k:p	(Ljava/lang/String;Ljava/lang/String;Z)Z
    //   487: invokevirtual 294	com/android/calendar/common/event/schema/EventEx:setIsOrganizer	(Z)V
    //   490: aload_0
    //   491: astore 5
    //   493: aload_0
    //   494: astore 6
    //   496: aload_2
    //   497: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   500: aload_1
    //   501: invokevirtual 297	com/android/calendar/common/event/schema/AgendaEvent$Calendar:getOwnerCanRespond	()Z
    //   504: invokevirtual 300	com/android/calendar/common/event/schema/EventEx:setOrganizerCanRespond	(Z)V
    //   507: aload_0
    //   508: astore 5
    //   510: aload_0
    //   511: astore 6
    //   513: aload_2
    //   514: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   517: aload_1
    //   518: invokevirtual 303	com/android/calendar/common/event/schema/AgendaEvent$Calendar:getDisplayName	()Ljava/lang/String;
    //   521: invokevirtual 307	com/android/calendar/common/event/schema/EventEx:setCalendarDisplayName	(Ljava/lang/String;)V
    //   524: aload_0
    //   525: astore 5
    //   527: aload_0
    //   528: astore 6
    //   530: aload_2
    //   531: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   534: aload_1
    //   535: invokevirtual 310	com/android/calendar/common/event/schema/AgendaEvent$Calendar:getAccountName	()Ljava/lang/String;
    //   538: invokevirtual 313	com/android/calendar/common/event/schema/EventEx:setAccountName	(Ljava/lang/String;)V
    //   541: aload_0
    //   542: astore 5
    //   544: aload_0
    //   545: astore 6
    //   547: aload_2
    //   548: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   551: aload_1
    //   552: invokevirtual 316	com/android/calendar/common/event/schema/AgendaEvent$Calendar:getAccountType	()Ljava/lang/String;
    //   555: invokevirtual 319	com/android/calendar/common/event/schema/EventEx:setAccountType	(Ljava/lang/String;)V
    //   558: aload_0
    //   559: astore 5
    //   561: aload_0
    //   562: astore 6
    //   564: aload_2
    //   565: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   568: aload_1
    //   569: invokevirtual 323	com/android/calendar/common/event/schema/AgendaEvent$Calendar:getCalendarId	()J
    //   572: invokevirtual 327	com/android/calendar/common/event/schema/EventEx:setCalendarId	(J)V
    //   575: aload_0
    //   576: astore 5
    //   578: aload_0
    //   579: astore 6
    //   581: aload_2
    //   582: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   585: aload_1
    //   586: invokevirtual 328	com/android/calendar/common/event/schema/AgendaEvent$Calendar:getOrganizer	()Ljava/lang/String;
    //   589: invokevirtual 331	com/android/calendar/common/event/schema/EventEx:setOrganizer	(Ljava/lang/String;)V
    //   592: aload_0
    //   593: astore 5
    //   595: aload_0
    //   596: astore 6
    //   598: aload_2
    //   599: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   602: aload_0
    //   603: iconst_2
    //   604: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   607: invokevirtual 334	com/android/calendar/common/event/schema/EventEx:setOwnerAccount	(Ljava/lang/String;)V
    //   610: aload_0
    //   611: ifnull +39 -> 650
    //   614: aload_0
    //   615: invokevirtual 337	android/database/AbstractCursor:close	()V
    //   618: goto +32 -> 650
    //   621: astore_0
    //   622: goto +29 -> 651
    //   625: astore_0
    //   626: aload 6
    //   628: astore 5
    //   630: ldc 182
    //   632: ldc_w 339
    //   635: aload_0
    //   636: invokestatic 342	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   639: aload 6
    //   641: ifnull +9 -> 650
    //   644: aload 6
    //   646: astore_0
    //   647: goto -33 -> 614
    //   650: return
    //   651: aload 5
    //   653: ifnull +8 -> 661
    //   656: aload 5
    //   658: invokevirtual 337	android/database/AbstractCursor:close	()V
    //   661: aload_0
    //   662: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	663	0	paramContext	Context
    //   0	663	1	paramMatrixCursor	MatrixCursor
    //   0	663	2	paramAgendaEvent	AgendaEvent
    //   26	354	3	str1	String
    //   28	348	4	str2	String
    //   32	625	5	localObject1	Object
    //   35	610	6	localObject2	Object
    //   51	9	7	i	int
    //   100	348	8	localArrayList	java.util.ArrayList
    //   183	195	9	bool	boolean
    //   236	145	10	str3	String
    //   272	128	11	localCalendar	com.android.calendar.common.event.schema.AgendaEvent.Calendar
    //   285	89	12	l	long
    //   298	85	14	str4	String
    //   324	61	15	str5	String
    //   350	37	16	str6	String
    // Exception table:
    //   from	to	target	type
    //   37	50	621	finally
    //   71	76	621	finally
    //   86	91	621	finally
    //   97	102	621	finally
    //   108	113	621	finally
    //   123	130	621	finally
    //   136	143	621	finally
    //   161	168	621	finally
    //   174	182	621	finally
    //   197	203	621	finally
    //   219	225	621	finally
    //   231	238	621	finally
    //   256	263	621	finally
    //   269	274	621	finally
    //   280	287	621	finally
    //   293	300	621	finally
    //   306	313	621	finally
    //   319	326	621	finally
    //   332	339	621	finally
    //   345	352	621	finally
    //   358	365	621	finally
    //   371	391	621	finally
    //   397	407	621	finally
    //   416	429	621	finally
    //   435	441	621	finally
    //   447	462	621	finally
    //   468	490	621	finally
    //   496	507	621	finally
    //   513	524	621	finally
    //   530	541	621	finally
    //   547	558	621	finally
    //   564	575	621	finally
    //   581	592	621	finally
    //   598	610	621	finally
    //   630	639	621	finally
    //   37	50	625	java/lang/Exception
    //   71	76	625	java/lang/Exception
    //   86	91	625	java/lang/Exception
    //   97	102	625	java/lang/Exception
    //   108	113	625	java/lang/Exception
    //   123	130	625	java/lang/Exception
    //   136	143	625	java/lang/Exception
    //   161	168	625	java/lang/Exception
    //   174	182	625	java/lang/Exception
    //   197	203	625	java/lang/Exception
    //   219	225	625	java/lang/Exception
    //   231	238	625	java/lang/Exception
    //   256	263	625	java/lang/Exception
    //   269	274	625	java/lang/Exception
    //   280	287	625	java/lang/Exception
    //   293	300	625	java/lang/Exception
    //   306	313	625	java/lang/Exception
    //   319	326	625	java/lang/Exception
    //   332	339	625	java/lang/Exception
    //   345	352	625	java/lang/Exception
    //   358	365	625	java/lang/Exception
    //   371	391	625	java/lang/Exception
    //   397	407	625	java/lang/Exception
    //   416	429	625	java/lang/Exception
    //   435	441	625	java/lang/Exception
    //   447	462	625	java/lang/Exception
    //   468	490	625	java/lang/Exception
    //   496	507	625	java/lang/Exception
    //   513	524	625	java/lang/Exception
    //   530	541	625	java/lang/Exception
    //   547	558	625	java/lang/Exception
    //   564	575	625	java/lang/Exception
    //   581	592	625	java/lang/Exception
    //   598	610	625	java/lang/Exception
  }
  
  public static final AgendaEvent d(Context paramContext, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (paramContext != null) {
      if (paramLong1 == null)
      {
        localObject2 = localObject1;
      }
      else
      {
        Object localObject3 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramLong1.longValue());
        kotlin.jvm.internal.r.e(localObject3, "withAppendedId(Events.CONTENT_URI, eventId)");
        localObject2 = paramContext.getContentResolver();
        if (localObject2 != null) {
          localObject2 = ((ContentResolver)localObject2).query((Uri)localObject3, a, null, null, null);
        } else {
          localObject2 = null;
        }
        localObject3 = Utils.Q0((Cursor)localObject2);
        localObject2 = localObject1;
        if (localObject3 != null) {
          if (((MatrixCursor)localObject3).getCount() == 0)
          {
            localObject2 = localObject1;
          }
          else
          {
            localObject2 = new AgendaEvent();
            ((AbstractCursor)localObject3).moveToFirst();
            boolean bool1 = false;
            ((Event)localObject2).setId(((MatrixCursor)localObject3).getLong(0));
            long l1 = 0L;
            if (paramLong2 != null) {
              l2 = paramLong2.longValue();
            } else {
              l2 = 0L;
            }
            ((Event)localObject2).setStartTimeMillis(l2);
            long l2 = l1;
            if (paramLong3 != null) {
              l2 = paramLong3.longValue();
            }
            ((Event)localObject2).setEndTimeMillis(l2);
            ((AgendaEvent)localObject2).setCalendarAllowedReminder(((MatrixCursor)localObject3).getString(16));
            ((Event)localObject2).setTitle(((MatrixCursor)localObject3).getString(1));
            if (TextUtils.isEmpty(((Event)localObject2).getTitle())) {
              ((Event)localObject2).setTitle(paramContext.getString(2131887044));
            }
            if (((MatrixCursor)localObject3).getInt(3) != 0) {
              bool2 = true;
            } else {
              bool2 = false;
            }
            ((Event)localObject2).setAllDay(bool2);
            ((Event)localObject2).setEventType(((MatrixCursor)localObject3).getInt(29));
            ((Event)localObject2).setDescription(((MatrixCursor)localObject3).getString(8));
            ((Event)localObject2).setLocation(((MatrixCursor)localObject3).getString(9));
            ((Event)localObject2).getEx().setUri(ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramLong1.longValue()).toString());
            paramLong1 = ((Event)localObject2).getEx();
            if (((MatrixCursor)localObject3).getInt(14) == 1) {
              bool2 = true;
            } else {
              bool2 = false;
            }
            paramLong1.setHasAlarm(bool2);
            ((Event)localObject2).getEx().setStart(((MatrixCursor)localObject3).getLong(5));
            ((Event)localObject2).getEx().setAccountName(((MatrixCursor)localObject3).getString(20));
            ((Event)localObject2).getEx().setAccountType(((MatrixCursor)localObject3).getString(21));
            paramLong1 = ((Event)localObject2).getEx();
            if (((MatrixCursor)localObject3).getInt(14) != 0) {
              bool2 = true;
            } else {
              bool2 = false;
            }
            paramLong1.setHasAlarm(bool2);
            ((Event)localObject2).getEx().setCalendarId(((MatrixCursor)localObject3).getLong(4));
            paramLong1 = ((MatrixCursor)localObject3).getString(7);
            if (!TextUtils.isEmpty(paramLong1)) {
              ((Event)localObject2).getEx().setTimezone(paramLong1);
            }
            ((Event)localObject2).getEx().setRrule(((MatrixCursor)localObject3).getString(2));
            ((Event)localObject2).getEx().setRdate(((MatrixCursor)localObject3).getString(24));
            ((Event)localObject2).getEx().setSyncId(((MatrixCursor)localObject3).getString(30));
            ((Event)localObject2).getEx().setOwnerAccount(((MatrixCursor)localObject3).getString(23));
            paramLong1 = ((Event)localObject2).getEx();
            if (((MatrixCursor)localObject3).getInt(12) != 0) {
              bool2 = true;
            } else {
              bool2 = false;
            }
            paramLong1.setHasAttendeeData(bool2);
            ((Event)localObject2).getEx().setOriginalSyncId(((MatrixCursor)localObject3).getString(19));
            ((Event)localObject2).getEx().setOriginalId(((MatrixCursor)localObject3).getLong(34));
            ((Event)localObject2).getEx().setOrganizer(((MatrixCursor)localObject3).getString(13));
            paramLong1 = ((Event)localObject2).getEx();
            boolean bool2 = bool1;
            if (((MatrixCursor)localObject3).getInt(33) != 0) {
              bool2 = true;
            }
            paramLong1.setGuestsCanModify(bool2);
            ((Event)localObject2).getEx().setHasExtendedProperties(((MatrixCursor)localObject3).getInt(29));
            ((Event)localObject2).getEx().setEventStatus(((MatrixCursor)localObject3).getInt(35));
            if ((TextUtils.isEmpty(((Event)localObject2).getEx().getRrule()) ^ true)) {
              ((Event)localObject2).getEx().setDuration(((MatrixCursor)localObject3).getString(31));
            } else {
              ((Event)localObject2).getEx().setEnd(((MatrixCursor)localObject3).getLong(36));
            }
            ((Event)localObject2).getEx().setModelUpdatedWithEventCursor(true);
            ((Event)localObject2).getEx().setOriginalStart(((Event)localObject2).getStartTimeMillis());
            ((Event)localObject2).getEx().setOriginalEnd(((Event)localObject2).getEndTimeMillis());
            ((Event)localObject2).getEx().setCalendarMaxReminders(((MatrixCursor)localObject3).getInt(15));
            ((Event)localObject2).getEx().setOrganizerDisplayName(((MatrixCursor)localObject3).getString(22));
            ((Event)localObject2).getEx().setCalendarAccessLevel(((MatrixCursor)localObject3).getInt(10));
            ((Event)localObject2).getEx().setModelUpdatedWithEventCursor(true);
            if (((Event)localObject2).getEventType() == 6)
            {
              ((AgendaEvent)localObject2).setUrl(((MatrixCursor)localObject3).getString(25));
              ((AgendaEvent)localObject2).setUrlText(((MatrixCursor)localObject3).getString(26));
              ((AgendaEvent)localObject2).setPackageName(((MatrixCursor)localObject3).getString(27));
            }
            g(paramContext, (AgendaEvent)localObject2);
            c(paramContext, (MatrixCursor)localObject3, (AgendaEvent)localObject2);
            if (!((AgendaEvent)localObject2).isBusyFreeCalendar()) {
              e(paramContext, (AgendaEvent)localObject2);
            }
            f(paramContext, (AgendaEvent)localObject2);
          }
        }
      }
    }
    return localObject2;
  }
  
  /* Error */
  public static final void e(Context paramContext, AgendaEvent paramAgendaEvent)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 144
    //   3: invokestatic 149	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   6: aload_1
    //   7: ldc 180
    //   9: invokestatic 149	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   12: aconst_null
    //   13: astore_2
    //   14: aconst_null
    //   15: astore_3
    //   16: aconst_null
    //   17: astore 4
    //   19: aconst_null
    //   20: astore 5
    //   22: aload_0
    //   23: invokevirtual 155	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   26: astore_0
    //   27: aload_0
    //   28: ifnull +37 -> 65
    //   31: aload_0
    //   32: getstatic 508	android/provider/CalendarContract$Attendees:CONTENT_URI	Landroid/net/Uri;
    //   35: getstatic 127	a2/a:b	[Ljava/lang/String;
    //   38: ldc_w 510
    //   41: iconst_1
    //   42: anewarray 39	java/lang/String
    //   45: dup
    //   46: iconst_0
    //   47: aload_1
    //   48: invokevirtual 513	com/android/calendar/common/event/schema/Event:getId	()J
    //   51: invokestatic 517	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   54: aastore
    //   55: ldc_w 519
    //   58: invokevirtual 169	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore_0
    //   62: goto +5 -> 67
    //   65: aconst_null
    //   66: astore_0
    //   67: aload 5
    //   69: astore 4
    //   71: aload_2
    //   72: astore_3
    //   73: aload_0
    //   74: invokestatic 175	com/android/calendar/common/Utils:Q0	(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    //   77: astore_2
    //   78: aload_2
    //   79: astore 4
    //   81: aload_2
    //   82: astore_3
    //   83: new 207	java/util/ArrayList
    //   86: astore 6
    //   88: aload_2
    //   89: astore 4
    //   91: aload_2
    //   92: astore_3
    //   93: aload 6
    //   95: invokespecial 210	java/util/ArrayList:<init>	()V
    //   98: aload_2
    //   99: astore 4
    //   101: aload_2
    //   102: astore_3
    //   103: new 207	java/util/ArrayList
    //   106: astore 7
    //   108: aload_2
    //   109: astore 4
    //   111: aload_2
    //   112: astore_3
    //   113: aload 7
    //   115: invokespecial 210	java/util/ArrayList:<init>	()V
    //   118: aload_2
    //   119: astore 4
    //   121: aload_2
    //   122: astore_3
    //   123: new 207	java/util/ArrayList
    //   126: astore 8
    //   128: aload_2
    //   129: astore 4
    //   131: aload_2
    //   132: astore_3
    //   133: aload 8
    //   135: invokespecial 210	java/util/ArrayList:<init>	()V
    //   138: aload_2
    //   139: astore 4
    //   141: aload_2
    //   142: astore_3
    //   143: new 207	java/util/ArrayList
    //   146: astore 5
    //   148: aload_2
    //   149: astore 4
    //   151: aload_2
    //   152: astore_3
    //   153: aload 5
    //   155: invokespecial 210	java/util/ArrayList:<init>	()V
    //   158: aload_2
    //   159: astore 4
    //   161: aload_2
    //   162: astore_3
    //   163: aload_2
    //   164: invokevirtual 216	android/database/AbstractCursor:moveToNext	()Z
    //   167: ifeq +248 -> 415
    //   170: aload_2
    //   171: astore 4
    //   173: aload_2
    //   174: astore_3
    //   175: aload_2
    //   176: iconst_4
    //   177: invokevirtual 231	android/database/MatrixCursor:getInt	(I)I
    //   180: istore 9
    //   182: aload_2
    //   183: astore 4
    //   185: aload_2
    //   186: astore_3
    //   187: aload_2
    //   188: iconst_1
    //   189: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   192: astore 10
    //   194: aload_2
    //   195: astore 4
    //   197: aload_2
    //   198: astore_3
    //   199: aload_2
    //   200: iconst_2
    //   201: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   204: astore 11
    //   206: aload_2
    //   207: astore 4
    //   209: aload_2
    //   210: astore_3
    //   211: aload_2
    //   212: iconst_5
    //   213: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   216: astore 12
    //   218: aload_2
    //   219: astore 4
    //   221: aload_2
    //   222: astore_3
    //   223: aload_2
    //   224: bipush 6
    //   226: invokevirtual 222	android/database/MatrixCursor:getString	(I)Ljava/lang/String;
    //   229: astore 13
    //   231: aload_2
    //   232: astore 4
    //   234: aload_2
    //   235: astore_3
    //   236: new 521	com/android/calendar/common/event/schema/Attendee
    //   239: astore 14
    //   241: aload_2
    //   242: astore 4
    //   244: aload_2
    //   245: astore_3
    //   246: aload 14
    //   248: aload 10
    //   250: aload 11
    //   252: iconst_1
    //   253: aload 12
    //   255: aload 13
    //   257: invokespecial 524	com/android/calendar/common/event/schema/Attendee:<init>	(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    //   260: aload_2
    //   261: astore 4
    //   263: aload_2
    //   264: astore_3
    //   265: aload_1
    //   266: invokevirtual 527	com/android/calendar/common/event/schema/AgendaEvent:getCalendarOwnerAttendeeId	()J
    //   269: ldc2_w 528
    //   272: lcmp
    //   273: ifne +52 -> 325
    //   276: aload_2
    //   277: astore 4
    //   279: aload_2
    //   280: astore_3
    //   281: aload_1
    //   282: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   285: invokevirtual 530	com/android/calendar/common/event/schema/EventEx:getOwnerAccount	()Ljava/lang/String;
    //   288: aload 11
    //   290: iconst_1
    //   291: invokestatic 290	kotlin/text/k:p	(Ljava/lang/String;Ljava/lang/String;Z)Z
    //   294: ifeq +31 -> 325
    //   297: aload_2
    //   298: astore 4
    //   300: aload_2
    //   301: astore_3
    //   302: aload_1
    //   303: aload_2
    //   304: iconst_0
    //   305: invokevirtual 241	android/database/MatrixCursor:getLong	(I)J
    //   308: invokevirtual 533	com/android/calendar/common/event/schema/AgendaEvent:setCalendarOwnerAttendeeId	(J)V
    //   311: aload_2
    //   312: astore 4
    //   314: aload_2
    //   315: astore_3
    //   316: aload_1
    //   317: iload 9
    //   319: invokevirtual 536	com/android/calendar/common/event/schema/AgendaEvent:setAttendeeResponse	(I)V
    //   322: goto -164 -> 158
    //   325: iload 9
    //   327: iconst_1
    //   328: if_icmpeq +69 -> 397
    //   331: iload 9
    //   333: iconst_2
    //   334: if_icmpeq +45 -> 379
    //   337: iload 9
    //   339: iconst_4
    //   340: if_icmpeq +21 -> 361
    //   343: aload_2
    //   344: astore 4
    //   346: aload_2
    //   347: astore_3
    //   348: aload 5
    //   350: aload 14
    //   352: invokeinterface 256 2 0
    //   357: pop
    //   358: goto -200 -> 158
    //   361: aload_2
    //   362: astore 4
    //   364: aload_2
    //   365: astore_3
    //   366: aload 8
    //   368: aload 14
    //   370: invokeinterface 256 2 0
    //   375: pop
    //   376: goto -218 -> 158
    //   379: aload_2
    //   380: astore 4
    //   382: aload_2
    //   383: astore_3
    //   384: aload 7
    //   386: aload 14
    //   388: invokeinterface 256 2 0
    //   393: pop
    //   394: goto -236 -> 158
    //   397: aload_2
    //   398: astore 4
    //   400: aload_2
    //   401: astore_3
    //   402: aload 6
    //   404: aload 14
    //   406: invokeinterface 256 2 0
    //   411: pop
    //   412: goto -254 -> 158
    //   415: aload_2
    //   416: astore 4
    //   418: aload_2
    //   419: astore_3
    //   420: aload_1
    //   421: aload 6
    //   423: invokevirtual 539	com/android/calendar/common/event/schema/AgendaEvent:setAcceptedAttendees	(Ljava/util/List;)V
    //   426: aload_2
    //   427: astore 4
    //   429: aload_2
    //   430: astore_3
    //   431: aload_1
    //   432: aload 7
    //   434: invokevirtual 542	com/android/calendar/common/event/schema/AgendaEvent:setDeclinedAttendees	(Ljava/util/List;)V
    //   437: aload_2
    //   438: astore 4
    //   440: aload_2
    //   441: astore_3
    //   442: aload_1
    //   443: aload 8
    //   445: invokevirtual 545	com/android/calendar/common/event/schema/AgendaEvent:setTentativeAttendees	(Ljava/util/List;)V
    //   448: aload_2
    //   449: astore 4
    //   451: aload_2
    //   452: astore_3
    //   453: aload_1
    //   454: aload 5
    //   456: invokevirtual 548	com/android/calendar/common/event/schema/AgendaEvent:setNoResponseAttendees	(Ljava/util/List;)V
    //   459: aload_0
    //   460: ifnull +9 -> 469
    //   463: aload_0
    //   464: invokeinterface 551 1 0
    //   469: aload_2
    //   470: ifnull +77 -> 547
    //   473: aload_2
    //   474: invokeinterface 551 1 0
    //   479: goto +68 -> 547
    //   482: astore_1
    //   483: aload_0
    //   484: astore_3
    //   485: aload_1
    //   486: astore_0
    //   487: aload_3
    //   488: astore_1
    //   489: goto +67 -> 556
    //   492: astore 4
    //   494: aload_3
    //   495: astore_1
    //   496: goto +21 -> 517
    //   499: astore_0
    //   500: aconst_null
    //   501: astore_3
    //   502: aload 4
    //   504: astore_1
    //   505: aload_3
    //   506: astore 4
    //   508: goto +48 -> 556
    //   511: astore 4
    //   513: aconst_null
    //   514: astore_1
    //   515: aload_3
    //   516: astore_0
    //   517: ldc 182
    //   519: ldc_w 553
    //   522: aload 4
    //   524: invokestatic 342	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   527: aload_0
    //   528: ifnull +9 -> 537
    //   531: aload_0
    //   532: invokeinterface 551 1 0
    //   537: aload_1
    //   538: ifnull +9 -> 547
    //   541: aload_1
    //   542: invokeinterface 551 1 0
    //   547: return
    //   548: astore_3
    //   549: aload_1
    //   550: astore 4
    //   552: aload_0
    //   553: astore_1
    //   554: aload_3
    //   555: astore_0
    //   556: aload_1
    //   557: ifnull +9 -> 566
    //   560: aload_1
    //   561: invokeinterface 551 1 0
    //   566: aload 4
    //   568: ifnull +10 -> 578
    //   571: aload 4
    //   573: invokeinterface 551 1 0
    //   578: aload_0
    //   579: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	580	0	paramContext	Context
    //   0	580	1	paramAgendaEvent	AgendaEvent
    //   13	461	2	localMatrixCursor	MatrixCursor
    //   15	501	3	localObject1	Object
    //   548	7	3	localObject2	Object
    //   17	433	4	localObject3	Object
    //   492	11	4	localException1	Exception
    //   506	1	4	localObject4	Object
    //   511	12	4	localException2	Exception
    //   550	22	4	localAgendaEvent	AgendaEvent
    //   20	435	5	localArrayList1	java.util.ArrayList
    //   86	336	6	localArrayList2	java.util.ArrayList
    //   106	327	7	localArrayList3	java.util.ArrayList
    //   126	318	8	localArrayList4	java.util.ArrayList
    //   180	161	9	i	int
    //   192	57	10	str1	String
    //   204	85	11	str2	String
    //   216	38	12	str3	String
    //   229	27	13	str4	String
    //   239	166	14	localAttendee	com.android.calendar.common.event.schema.Attendee
    // Exception table:
    //   from	to	target	type
    //   73	78	482	finally
    //   83	88	482	finally
    //   93	98	482	finally
    //   103	108	482	finally
    //   113	118	482	finally
    //   123	128	482	finally
    //   133	138	482	finally
    //   143	148	482	finally
    //   153	158	482	finally
    //   163	170	482	finally
    //   175	182	482	finally
    //   187	194	482	finally
    //   199	206	482	finally
    //   211	218	482	finally
    //   223	231	482	finally
    //   236	241	482	finally
    //   246	260	482	finally
    //   265	276	482	finally
    //   281	297	482	finally
    //   302	311	482	finally
    //   316	322	482	finally
    //   348	358	482	finally
    //   366	376	482	finally
    //   384	394	482	finally
    //   402	412	482	finally
    //   420	426	482	finally
    //   431	437	482	finally
    //   442	448	482	finally
    //   453	459	482	finally
    //   73	78	492	java/lang/Exception
    //   83	88	492	java/lang/Exception
    //   93	98	492	java/lang/Exception
    //   103	108	492	java/lang/Exception
    //   113	118	492	java/lang/Exception
    //   123	128	492	java/lang/Exception
    //   133	138	492	java/lang/Exception
    //   143	148	492	java/lang/Exception
    //   153	158	492	java/lang/Exception
    //   163	170	492	java/lang/Exception
    //   175	182	492	java/lang/Exception
    //   187	194	492	java/lang/Exception
    //   199	206	492	java/lang/Exception
    //   211	218	492	java/lang/Exception
    //   223	231	492	java/lang/Exception
    //   236	241	492	java/lang/Exception
    //   246	260	492	java/lang/Exception
    //   265	276	492	java/lang/Exception
    //   281	297	492	java/lang/Exception
    //   302	311	492	java/lang/Exception
    //   316	322	492	java/lang/Exception
    //   348	358	492	java/lang/Exception
    //   366	376	492	java/lang/Exception
    //   384	394	492	java/lang/Exception
    //   402	412	492	java/lang/Exception
    //   420	426	492	java/lang/Exception
    //   431	437	492	java/lang/Exception
    //   442	448	492	java/lang/Exception
    //   453	459	492	java/lang/Exception
    //   22	27	499	finally
    //   31	62	499	finally
    //   22	27	511	java/lang/Exception
    //   31	62	511	java/lang/Exception
    //   517	527	548	finally
  }
  
  public static final Object f(Context paramContext, AgendaEvent paramAgendaEvent)
  {
    kotlin.jvm.internal.r.f(paramContext, "context");
    if (paramAgendaEvent == null) {
      return null;
    }
    long l = paramAgendaEvent.getId();
    int i = paramAgendaEvent.getEventType();
    try
    {
      JSONObject localJSONObject = d.e(paramContext, paramAgendaEvent.getId(), "email_info");
      if (localJSONObject != null) {
        try
        {
          Object localObject = new org/json/JSONObject;
          ((JSONObject)localObject).<init>(localJSONObject.getString("value"));
          paramAgendaEvent.setEmailMessageId(((JSONObject)localObject).getLong("emailMessageId"));
          paramAgendaEvent.setEmailMessageTimeStamp(((JSONObject)localObject).getLong("emailMessageTimeStamp"));
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("email info: mEmailMessageId=");
          ((StringBuilder)localObject).append(paramAgendaEvent.getEmailMessageId());
          ((StringBuilder)localObject).append(", mEmailMessageTimeStamp=");
          ((StringBuilder)localObject).append(paramAgendaEvent.getEmailMessageTimeStamp());
          b.a("Cal:D:AgendaEventLoader", ((StringBuilder)localObject).toString());
          if ((paramAgendaEvent.getEmailMessageId() != 0L) && (paramAgendaEvent.getEmailMessageTimeStamp() != 0L))
          {
            paramAgendaEvent.setEmailExist(com.miui.calendar.util.r.d(paramContext, paramAgendaEvent.getEmailMessageId(), paramAgendaEvent.getEmailMessageTimeStamp()));
            localObject = new java/lang/StringBuilder;
            ((StringBuilder)localObject).<init>();
            ((StringBuilder)localObject).append("mEmailExist= ");
            ((StringBuilder)localObject).append(paramAgendaEvent.getEmailExist());
            b.a("Cal:D:AgendaEventLoader", ((StringBuilder)localObject).toString());
          }
        }
        catch (Exception localException)
        {
          b.c("Cal:D:AgendaEventLoader", "parse email info error:", localException);
        }
      }
      if (i == 10)
      {
        HashMap localHashMap = d.g(paramContext, l);
        kotlin.jvm.internal.r.e(localHashMap, "loadEPMap(context, eventId)");
        paramAgendaEvent.setThirdPartyEPText((String)localHashMap.get("thirdPartyIntentText"));
        paramAgendaEvent.setThirdPartyEPData((String)localHashMap.get("thirdPartyIntentData"));
        paramAgendaEvent.setThirdPartyEPData2((String)localHashMap.get("thirdPartyIntentData2"));
        paramAgendaEvent.setThirdPartyEPAction((String)localHashMap.get("thirdPartyIntentAction"));
        paramAgendaEvent.setThirdPartyEPPackageName((String)localHashMap.get("thirdPartyIntentPackageName"));
      }
      paramAgendaEvent.setActionEPJson(d.e(paramContext, l, "map_key_event_action"));
      paramAgendaEvent.setTitleEPJson(d.e(paramContext, l, "map_key_event_action_title"));
      paramAgendaEvent.fillEpInfo(d.f(paramContext, paramAgendaEvent.getId(), "agenda_info"));
    }
    catch (Exception paramContext)
    {
      b.c("Cal:D:AgendaEventLoader", "loadEPData failed.", paramContext);
    }
    return null;
  }
  
  /* Error */
  public static final void g(Context paramContext, AgendaEvent paramAgendaEvent)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 144
    //   3: invokestatic 149	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   6: aload_1
    //   7: ldc 180
    //   9: invokestatic 149	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   12: new 207	java/util/ArrayList
    //   15: dup
    //   16: invokespecial 210	java/util/ArrayList:<init>	()V
    //   19: astore_2
    //   20: aconst_null
    //   21: astore_3
    //   22: aconst_null
    //   23: astore 4
    //   25: aconst_null
    //   26: astore 5
    //   28: aload_3
    //   29: astore 6
    //   31: aload 4
    //   33: astore 7
    //   35: aload_0
    //   36: invokevirtual 155	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   39: astore 8
    //   41: aload 5
    //   43: astore_0
    //   44: aload 8
    //   46: ifnull +40 -> 86
    //   49: aload_3
    //   50: astore 6
    //   52: aload 4
    //   54: astore 7
    //   56: aload 8
    //   58: getstatic 680	android/provider/CalendarContract$Reminders:CONTENT_URI	Landroid/net/Uri;
    //   61: getstatic 133	a2/a:c	[Ljava/lang/String;
    //   64: ldc_w 510
    //   67: iconst_1
    //   68: anewarray 39	java/lang/String
    //   71: dup
    //   72: iconst_0
    //   73: aload_1
    //   74: invokevirtual 513	com/android/calendar/common/event/schema/Event:getId	()J
    //   77: invokestatic 517	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   80: aastore
    //   81: aconst_null
    //   82: invokevirtual 169	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   85: astore_0
    //   86: aload_0
    //   87: ifnull +49 -> 136
    //   90: aload_0
    //   91: astore 6
    //   93: aload_0
    //   94: astore 7
    //   96: aload_0
    //   97: invokeinterface 681 1 0
    //   102: ifeq +34 -> 136
    //   105: aload_0
    //   106: astore 6
    //   108: aload_0
    //   109: astore 7
    //   111: aload_2
    //   112: aload_0
    //   113: iconst_1
    //   114: invokeinterface 682 2 0
    //   119: aload_0
    //   120: iconst_2
    //   121: invokeinterface 682 2 0
    //   126: invokestatic 687	com/android/calendar/common/event/schema/Reminder:valueOf	(II)Lcom/android/calendar/common/event/schema/Reminder;
    //   129: invokevirtual 688	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   132: pop
    //   133: goto -43 -> 90
    //   136: aload_0
    //   137: ifnull +41 -> 178
    //   140: aload_0
    //   141: invokeinterface 551 1 0
    //   146: goto +32 -> 178
    //   149: astore_0
    //   150: goto +41 -> 191
    //   153: astore_0
    //   154: aload 7
    //   156: astore 6
    //   158: ldc 182
    //   160: ldc_w 690
    //   163: aload_0
    //   164: invokestatic 342	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   167: aload 7
    //   169: ifnull +9 -> 178
    //   172: aload 7
    //   174: astore_0
    //   175: goto -35 -> 140
    //   178: aload_2
    //   179: invokestatic 695	kotlin/collections/t:y	(Ljava/util/List;)V
    //   182: aload_1
    //   183: invokevirtual 195	com/android/calendar/common/event/schema/Event:getEx	()Lcom/android/calendar/common/event/schema/EventEx;
    //   186: aload_2
    //   187: invokevirtual 699	com/android/calendar/common/event/schema/EventEx:setReminders	(Ljava/util/ArrayList;)V
    //   190: return
    //   191: aload 6
    //   193: ifnull +10 -> 203
    //   196: aload 6
    //   198: invokeinterface 551 1 0
    //   203: aload_0
    //   204: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	paramContext	Context
    //   0	205	1	paramAgendaEvent	AgendaEvent
    //   19	168	2	localArrayList	java.util.ArrayList
    //   21	29	3	localObject1	Object
    //   23	30	4	localObject2	Object
    //   26	16	5	localObject3	Object
    //   29	168	6	localObject4	Object
    //   33	140	7	localObject5	Object
    //   39	18	8	localContentResolver	ContentResolver
    // Exception table:
    //   from	to	target	type
    //   35	41	149	finally
    //   56	86	149	finally
    //   96	105	149	finally
    //   111	133	149	finally
    //   158	167	149	finally
    //   35	41	153	java/lang/Exception
    //   56	86	153	java/lang/Exception
    //   96	105	153	java/lang/Exception
    //   111	133	153	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a2.a
 * JD-Core Version:    0.7.0.1
 */