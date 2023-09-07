package com.android.calendar.common;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityOptions;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.WindowManager;
import android.widget.TextView;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.android.calendar.homepage.AllInOneActivity;
import com.android.calendar.homepage.l0.l;
import com.android.calendar.selectcalendars.SelectVisibleCalendarsActivity;
import com.android.calendar.settings.CalendarActionbarSettingsActivity;
import com.miui.calendar.detail.CardDetailActivity;
import com.miui.calendar.huangli.HuangLiDetailActivity;
import com.miui.calendar.limit.LimitDetailActivity;
import com.miui.calendar.limit.LimitSettingsActivity;
import com.miui.calendar.shift.ShiftDetailActivity;
import com.miui.calendar.shift.ShiftSettingsActivity;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.HolidayPatch;
import com.miui.calendar.util.HolidayPatchItem;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.h;
import com.miui.calendar.util.h.a;
import com.miui.calendar.util.i;
import com.miui.calendar.util.j0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.ArrayList<Ljava.lang.String;>;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import miuix.core.util.e;
import miuix.core.util.e.e;
import org.json.JSONObject;
import z3.f;

public class Utils
{
  public static final SparseIntArray a;
  private static final char[] b;
  private static boolean c;
  private static Calendar d;
  private static Calendar e;
  private static Calendar f;
  private static Map<String, Integer> g;
  private static List<Integer> h;
  private static Map<String, Long> i = new HashMap();
  
  static
  {
    Object localObject = new SparseIntArray();
    a = (SparseIntArray)localObject;
    b = new char[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
    c = false;
    d = Calendar.getInstance();
    e = Calendar.getInstance();
    f = Calendar.getInstance();
    ((SparseIntArray)localObject).put(4, 0);
    ((SparseIntArray)localObject).put(3, 1);
    ((SparseIntArray)localObject).put(2, 2);
    ((SparseIntArray)localObject).put(1, 3);
    g = new HashMap(0);
    localObject = new ArrayList(4);
    h = (List)localObject;
    ((List)localObject).add(Integer.valueOf(2130903042));
    h.add(Integer.valueOf(2130903043));
    h.add(Integer.valueOf(2130903044));
    h.add(Integer.valueOf(2130903045));
  }
  
  public static int A(Resources paramResources, Event paramEvent, DisplayType paramDisplayType)
  {
    return B(paramResources, paramEvent.getEx().getAccountName(), paramEvent.getEx().getAccountType(), paramEvent.getEx().getCalendarDisplayName(), paramEvent.getColor())[paramDisplayType.ordinal()];
  }
  
  public static void A0(Context paramContext, boolean paramBoolean)
  {
    z0(paramContext, -1L, paramBoolean);
  }
  
  private static int[] B(Resources paramResources, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    return new int[] { paramInt, z(paramInt, DisplayType.BORDER), z(paramInt, DisplayType.FILL), z(paramInt, DisplayType.TEXT) };
  }
  
  public static void B0(Context paramContext, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    D0(paramContext, paramLong1, paramLong2, paramBoolean, "");
  }
  
  public static int C(Context paramContext)
  {
    paramContext = b2.a.c(paramContext, "preferences_week_start_day", "-1");
    int j = Calendar.getInstance().getFirstDayOfWeek();
    int k = j;
    if (!"-1".equals(paramContext)) {
      try
      {
        k = Integer.parseInt(paramContext);
      }
      catch (Exception paramContext)
      {
        com.miui.calendar.util.z.d("Cal:D:Utils", "getFirstDayOfWeek()", paramContext);
        k = j;
      }
    }
    return k;
  }
  
  public static void C0(Context paramContext, long paramLong1, long paramLong2, boolean paramBoolean, ActivityOptions paramActivityOptions)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, EditEventActivity.class);
    localIntent.putExtra("beginTime", paramLong1);
    localIntent.putExtra("endTime", paramLong2);
    localIntent.putExtra("allDay", paramBoolean);
    if (!(paramContext instanceof Activity)) {
      localIntent.setFlags(268435456);
    }
    if (paramContext.getResources().getConfiguration().orientation == 1) {
      paramContext.startActivity(localIntent, paramActivityOptions.toBundle());
    } else {
      paramContext.startActivity(localIntent);
    }
  }
  
  public static CharSequence[] D(Context paramContext)
  {
    paramContext = paramContext.getResources().getStringArray(2130903046);
    paramContext[1] = String.format(paramContext[1], new Object[] { Integer.valueOf(15) });
    paramContext[3] = String.format(paramContext[3], new Object[] { Integer.valueOf(4) });
    paramContext[4] = String.format(paramContext[4], new Object[] { Integer.valueOf(12) });
    return paramContext;
  }
  
  public static void D0(Context paramContext, long paramLong1, long paramLong2, boolean paramBoolean, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, EditEventActivity.class);
    localIntent.putExtra("beginTime", paramLong1);
    localIntent.putExtra("endTime", paramLong2);
    localIntent.putExtra("allDay", paramBoolean);
    if (!TextUtils.isEmpty(paramString)) {
      localIntent.putExtra("key_clip_text", paramString);
    }
    paramContext.startActivity(localIntent);
  }
  
  public static boolean E(Context paramContext)
  {
    return b2.a.f(paramContext).getBoolean("preferences_hide_declined", false);
  }
  
  public static void E0(Context paramContext, boolean paramBoolean1, String paramString1, long paramLong1, long paramLong2, boolean paramBoolean2, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, HashMap<String, String> paramHashMap)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, EditEventActivity.class);
    localIntent.putExtra("beginTime", paramLong1);
    localIntent.putExtra("endTime", paramLong2);
    localIntent.putExtra("allDay", paramBoolean2);
    localIntent.putExtra("use_miui_calendar", paramBoolean1);
    localIntent.putExtra("reminder_state", paramInt1);
    localIntent.putExtra("reminder", paramInt2);
    if (!TextUtils.isEmpty(paramString1)) {
      localIntent.putExtra("title", paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localIntent.putExtra("rrule", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      localIntent.putExtra("location", paramString3);
    }
    if (!TextUtils.isEmpty(paramString4)) {
      localIntent.putExtra("description", paramString4);
    }
    if ((paramHashMap != null) && (paramHashMap.size() > 0)) {
      localIntent.putExtra("ep", paramHashMap);
    }
    localIntent.putExtra("extra_key_edit_type", 0);
    paramContext.startActivity(localIntent);
  }
  
  /* Error */
  public static Bitmap F(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 242	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   4: invokevirtual 341	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   7: astore_2
    //   8: aconst_null
    //   9: astore_3
    //   10: aconst_null
    //   11: astore 4
    //   13: aconst_null
    //   14: astore 5
    //   16: aload_1
    //   17: astore 6
    //   19: aload_0
    //   20: invokestatic 346	com/miui/calendar/util/x0:s0	(Landroid/content/Context;)Z
    //   23: ifeq +31 -> 54
    //   26: new 348	java/lang/StringBuilder
    //   29: astore_0
    //   30: aload_0
    //   31: invokespecial 349	java/lang/StringBuilder:<init>	()V
    //   34: aload_0
    //   35: ldc_w 351
    //   38: invokevirtual 355	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 355	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: aload_0
    //   49: invokevirtual 358	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: astore 6
    //   54: aload_2
    //   55: aload 6
    //   57: invokevirtual 364	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   60: astore_0
    //   61: aload_0
    //   62: invokestatic 370	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   65: astore 6
    //   67: aload 6
    //   69: astore_1
    //   70: aload_0
    //   71: ifnull +67 -> 138
    //   74: aload 6
    //   76: astore_1
    //   77: aload_0
    //   78: invokevirtual 375	java/io/InputStream:close	()V
    //   81: aload 6
    //   83: astore_1
    //   84: goto +54 -> 138
    //   87: astore_0
    //   88: aload_0
    //   89: invokevirtual 380	java/lang/Throwable:printStackTrace	()V
    //   92: goto +46 -> 138
    //   95: astore 6
    //   97: aload_0
    //   98: astore_1
    //   99: aload 6
    //   101: astore_0
    //   102: goto +45 -> 147
    //   105: astore_1
    //   106: goto +13 -> 119
    //   109: astore_0
    //   110: aload 4
    //   112: astore_1
    //   113: goto +34 -> 147
    //   116: astore_1
    //   117: aconst_null
    //   118: astore_0
    //   119: aload_1
    //   120: invokevirtual 380	java/lang/Throwable:printStackTrace	()V
    //   123: aload_3
    //   124: astore_1
    //   125: aload_0
    //   126: ifnull +12 -> 138
    //   129: aload 5
    //   131: astore_1
    //   132: aload_0
    //   133: invokevirtual 375	java/io/InputStream:close	()V
    //   136: aload_3
    //   137: astore_1
    //   138: aload_1
    //   139: areturn
    //   140: astore 6
    //   142: aload_0
    //   143: astore_1
    //   144: aload 6
    //   146: astore_0
    //   147: aload_1
    //   148: ifnull +15 -> 163
    //   151: aload_1
    //   152: invokevirtual 375	java/io/InputStream:close	()V
    //   155: goto +8 -> 163
    //   158: astore_1
    //   159: aload_1
    //   160: invokevirtual 380	java/lang/Throwable:printStackTrace	()V
    //   163: aload_0
    //   164: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	paramContext	Context
    //   0	165	1	paramString	String
    //   7	48	2	localAssetManager	android.content.res.AssetManager
    //   9	128	3	localObject1	Object
    //   11	100	4	localObject2	Object
    //   14	116	5	localObject3	Object
    //   17	65	6	localObject4	Object
    //   95	5	6	localObject5	Object
    //   140	5	6	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   77	81	87	java/io/IOException
    //   132	136	87	java/io/IOException
    //   61	67	95	finally
    //   61	67	105	java/io/IOException
    //   19	54	109	finally
    //   54	61	109	finally
    //   19	54	116	java/io/IOException
    //   54	61	116	java/io/IOException
    //   119	123	140	finally
    //   151	155	158	java/io/IOException
  }
  
  public static void F0(Context paramContext, long paramLong1, long paramLong2, long paramLong3)
  {
    Intent localIntent = new Intent("android.intent.action.EDIT", ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramLong1));
    localIntent.putExtra("beginTime", paramLong2);
    localIntent.putExtra("endTime", paramLong3);
    localIntent.putExtra("extra_key_edit_type", -1);
    localIntent.setClass(paramContext, EditEventActivity.class);
    paramContext.startActivity(localIntent);
  }
  
  public static Intent G(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      com.miui.calendar.util.z.m("Cal:D:Utils", "getJumpToUrlIntent(): url is NULL");
      return null;
    }
    Object localObject = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      localObject = "android.intent.action.VIEW";
    }
    localObject = new Intent((String)localObject);
    paramString1 = paramString3;
    if (TextUtils.isEmpty(paramString3)) {
      paramString1 = "com.android.browser";
    }
    ((Intent)localObject).setPackage(paramString1);
    ((Intent)localObject).setData(Uri.parse(paramString2));
    if (paramInt != 0) {
      ((Intent)localObject).setFlags(paramInt);
    }
    if (i.c(paramContext, (Intent)localObject)) {
      return localObject;
    }
    return null;
  }
  
  public static void G0(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, SelectVisibleCalendarsActivity.class);
    localIntent.setFlags(537001984);
    localIntent.putExtra("intent_key_from_setting", false);
    paramContext.startActivity(localIntent);
  }
  
  public static Calendar H()
  {
    return f;
  }
  
  public static void H0(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, SelectVisibleCalendarsActivity.class);
    localIntent.setFlags(537001984);
    localIntent.putExtra("intent_key_from_setting", paramBoolean);
    paramContext.startActivity(localIntent);
  }
  
  public static long I()
  {
    return f.getTimeInMillis();
  }
  
  public static void I0(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, CalendarActionbarSettingsActivity.class);
    localIntent.setFlags(537001984);
    paramContext.startActivity(localIntent);
  }
  
  public static String J(Context paramContext, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    int[] arrayOfInt = a0.d(paramInt1, paramInt2, paramInt3);
    String str = a0.z(paramContext.getResources(), paramInt1, paramInt2, paramInt3);
    if (paramBoolean1)
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(paramInt1, paramInt2, paramInt3);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(arrayOfInt[0]);
      localStringBuilder.append(paramContext.getString(2131887622));
      localStringBuilder.append(str);
      if (paramBoolean2) {
        paramContext = DateUtils.formatDateTime(paramContext, localCalendar.getTimeInMillis(), 2);
      } else {
        paramContext = "";
      }
      localStringBuilder.append(paramContext);
      return localStringBuilder.toString();
    }
    return str;
  }
  
  public static void J0(Context paramContext, long paramLong, Calendar paramCalendar)
  {
    try
    {
      paramContext.startActivity(p1.b.a(paramContext, paramLong, paramCalendar));
    }
    catch (Exception paramContext)
    {
      com.miui.calendar.util.z.d("Cal:D:Utils", "launchViewAnniversary()", paramContext);
    }
  }
  
  public static String K(Context paramContext, Calendar paramCalendar, boolean paramBoolean)
  {
    if (paramBoolean) {
      return a0.z(paramContext.getResources(), paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
    }
    return DateUtils.formatDateTime(paramContext, paramCalendar.getTimeInMillis(), 24);
  }
  
  public static void K0(Context paramContext, long paramLong, Calendar paramCalendar)
  {
    try
    {
      paramContext.startActivity(w1.b.a(paramContext, paramLong, paramCalendar));
    }
    catch (Exception paramContext)
    {
      com.miui.calendar.util.z.d("Cal:D:Utils", "launchViewCountDown()", paramContext);
    }
  }
  
  public static Calendar L()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1, V().get(1));
    localCalendar.set(6, V().get(6));
    return localCalendar;
  }
  
  public static void L0(Context paramContext, long paramLong1, long paramLong2, long paramLong3)
  {
    M0(paramContext, paramLong1, paramLong2, paramLong3, j.d(j.a(0, false)));
  }
  
  public static String M(Context paramContext, int paramInt)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext == null) {
      return null;
    }
    Iterator localIterator = paramContext.iterator();
    while (localIterator.hasNext())
    {
      paramContext = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      if (paramContext.pid == paramInt) {
        return paramContext.processName;
      }
    }
    return null;
  }
  
  public static void M0(Context paramContext, long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    try
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>("android.intent.action.VIEW");
      Uri localUri = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramLong1);
      localIntent.setPackage(paramContext.getPackageName());
      localIntent.setData(localUri);
      localIntent.putExtra("beginTime", paramLong2);
      localIntent.putExtra("endTime", paramLong3);
      localIntent.putExtra("attendeeStatus", paramInt);
      localIntent.setFlags(67108864);
      paramContext.startActivity(localIntent);
    }
    catch (Exception paramContext)
    {
      com.miui.calendar.util.z.d("Cal:D:Utils", "launchViewEvent()", paramContext);
    }
  }
  
  public static int N(int paramInt)
  {
    switch (paramInt)
    {
    case 2131363055: 
    case 2131363056: 
    default: 
      paramInt = 0;
      break;
    case 2131363057: 
      paramInt = 1;
      break;
    case 2131363054: 
      paramInt = 2;
      break;
    case 2131363053: 
      paramInt = 4;
    }
    return paramInt;
  }
  
  public static void N0(Context paramContext, Event paramEvent, Calendar paramCalendar, int paramInt1, int paramInt2)
  {
    if (paramEvent == null) {
      return;
    }
    int j = paramEvent.getEventType();
    if (j == 9) {
      K0(paramContext, paramEvent.getId(), paramCalendar);
    } else if (j == 8) {
      J0(paramContext, paramEvent.getId(), paramCalendar);
    } else if ((j != 12) && (j != 11) && (j != 7) && (j != 3) && (j != 17) && (j != 15) && (j != 13) && (j != 14) && (j != 16)) {
      M0(paramContext, paramEvent.getId(), paramEvent.getStartTimeMillis(), paramEvent.getEndTimeMillis(), paramInt1);
    } else {
      t1.a.n(paramContext, paramEvent, paramInt2);
    }
  }
  
  public static float O(Context paramContext)
  {
    WindowManager localWindowManager = (WindowManager)paramContext.getSystemService("window");
    paramContext = new Point();
    localWindowManager.getDefaultDisplay().getRealSize(paramContext);
    return paramContext.y;
  }
  
  public static void O0(Context paramContext, Event paramEvent, List<l0.l> paramList, Calendar paramCalendar)
  {
    Intent localIntent = new Intent(paramContext, EventInfoActivity.class);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    int j = 0;
    while (localIterator.hasNext())
    {
      l0.l locall = (l0.l)localIterator.next();
      Event localEvent = locall.a;
      localArrayList.add(new EventInfoActivity.EventInfo(localEvent.getId(), localEvent.getEventType(), localEvent.getStartTimeMillis(), localEvent.getEndTimeMillis(), 0, paramCalendar));
      if (locall.a.getId() != paramEvent.getId()) {
        j++;
      }
    }
    localIntent.putExtra("extra_key_event_id", paramEvent.getId());
    localIntent.putParcelableArrayListExtra("EXTRA_EVENT_INFO_LIST", new ArrayList(localArrayList.subList(Math.max(0, j - 50), Math.min(j + 50, paramList.size()))));
    paramContext.startActivity(localIntent);
  }
  
  public static String P(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getPackageName());
    localStringBuilder.append(".CalendarRecentSuggestionsProvider");
    return localStringBuilder.toString();
  }
  
  public static ArrayList<Integer> P0(Resources paramResources, int paramInt)
  {
    paramResources = paramResources.getIntArray(paramInt);
    int j = paramResources.length;
    ArrayList localArrayList = new ArrayList(j);
    for (paramInt = 0; paramInt < j; paramInt++) {
      localArrayList.add(Integer.valueOf(paramResources[paramInt]));
    }
    return localArrayList;
  }
  
  public static String Q(Context paramContext, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(paramInt1, paramInt2, paramInt3);
    return R(paramContext, localCalendar.getTimeInMillis(), paramBoolean1, paramBoolean2);
  }
  
  public static MatrixCursor Q0(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    String[] arrayOfString = paramCursor.getColumnNames();
    Object localObject = arrayOfString;
    if (arrayOfString == null) {
      localObject = new String[0];
    }
    localObject = new MatrixCursor((String[])localObject);
    int j = paramCursor.getColumnCount();
    arrayOfString = new String[j];
    paramCursor.moveToPosition(-1);
    while (paramCursor.moveToNext())
    {
      for (int k = 0; k < j; k++) {
        arrayOfString[k] = paramCursor.getString(k);
      }
      ((MatrixCursor)localObject).addRow(arrayOfString);
    }
    return localObject;
  }
  
  public static String R(Context paramContext, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j;
    if (paramBoolean1)
    {
      if (paramBoolean2) {
        j = 2;
      } else {
        j = 0;
      }
      j |= 0x4;
    }
    else
    {
      j = 8;
    }
    String str = DateUtils.formatDateTime(paramContext, paramLong, j | 0x10);
    paramContext = str;
    if (Locale.getDefault().equals(Locale.CHINA)) {
      paramContext = str.replaceAll(" ", "");
    }
    return paramContext;
  }
  
  public static void R0(Context paramContext)
  {
    paramContext = AccountManager.get(paramContext).getAccounts();
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("Refreshing ");
    ((StringBuilder)localObject1).append(paramContext.length);
    ((StringBuilder)localObject1).append(" accounts");
    Log.d("Cal:D:Utils", ((StringBuilder)localObject1).toString());
    localObject1 = CalendarContract.Calendars.CONTENT_URI.getAuthority();
    for (int j = 0; j < paramContext.length; j++)
    {
      if (Log.isLoggable("Cal:D:Utils", 3))
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Refreshing calendars for: ");
        ((StringBuilder)localObject2).append(paramContext[j]);
        Log.d("Cal:D:Utils", ((StringBuilder)localObject2).toString());
      }
      Object localObject2 = new Bundle();
      ((BaseBundle)localObject2).putBoolean("force", true);
      ContentResolver.requestSync(paramContext[j], (String)localObject1, (Bundle)localObject2);
    }
  }
  
  /* Error */
  public static String S(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 242	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   4: iload_1
    //   5: invokevirtual 766	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   8: astore_2
    //   9: aload_2
    //   10: invokevirtual 769	java/io/InputStream:available	()I
    //   13: newarray byte
    //   15: astore_3
    //   16: aload_2
    //   17: aload_3
    //   18: invokevirtual 773	java/io/InputStream:read	([B)I
    //   21: pop
    //   22: new 185	java/lang/String
    //   25: astore_0
    //   26: aload_0
    //   27: aload_3
    //   28: invokespecial 776	java/lang/String:<init>	([B)V
    //   31: aload_2
    //   32: invokevirtual 375	java/io/InputStream:close	()V
    //   35: goto +50 -> 85
    //   38: astore_2
    //   39: ldc 194
    //   41: ldc_w 778
    //   44: aload_2
    //   45: invokestatic 201	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   48: goto +37 -> 85
    //   51: astore_0
    //   52: goto +35 -> 87
    //   55: astore_0
    //   56: ldc 194
    //   58: ldc_w 778
    //   61: aload_0
    //   62: invokestatic 201	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   65: aload_2
    //   66: invokevirtual 375	java/io/InputStream:close	()V
    //   69: goto +13 -> 82
    //   72: astore_0
    //   73: ldc 194
    //   75: ldc_w 778
    //   78: aload_0
    //   79: invokestatic 201	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   82: ldc 163
    //   84: astore_0
    //   85: aload_0
    //   86: areturn
    //   87: aload_2
    //   88: invokevirtual 375	java/io/InputStream:close	()V
    //   91: goto +13 -> 104
    //   94: astore_2
    //   95: ldc 194
    //   97: ldc_w 778
    //   100: aload_2
    //   101: invokestatic 201	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   104: aload_0
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	paramContext	Context
    //   0	106	1	paramInt	int
    //   8	24	2	localInputStream	InputStream
    //   38	50	2	localIOException1	IOException
    //   94	7	2	localIOException2	IOException
    //   15	13	3	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   31	35	38	java/io/IOException
    //   9	31	51	finally
    //   56	65	51	finally
    //   9	31	55	java/io/IOException
    //   65	69	72	java/io/IOException
    //   87	91	94	java/io/IOException
  }
  
  public static void S0(Context paramContext)
  {
    if (p0(paramContext)) {
      return;
    }
    b5.a.a(paramContext, new z(paramContext));
  }
  
  public static String T(long paramLong)
  {
    Date localDate = new Date(paramLong);
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate);
  }
  
  public static void T0(Handler paramHandler, Runnable paramRunnable)
  {
    if ((paramHandler != null) && (paramRunnable != null)) {
      paramHandler.removeCallbacks(paramRunnable);
    }
  }
  
  public static String U(Context paramContext)
  {
    return h.a.h("com.android.calendar_preferences").i(paramContext);
  }
  
  public static String U0(String paramString)
  {
    Object localObject = paramString;
    if (!TextUtils.isEmpty(paramString)) {
      if (!paramString.contains("@"))
      {
        localObject = paramString;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("*");
        ((StringBuilder)localObject).append(paramString.substring(paramString.indexOf("@"), paramString.length()));
        localObject = ((StringBuilder)localObject).toString();
      }
    }
    return localObject;
  }
  
  public static Calendar V()
  {
    return e;
  }
  
  /* Error */
  public static boolean V0(Bitmap paramBitmap, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 348	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 349	java/lang/StringBuilder:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: aload_1
    //   10: invokevirtual 355	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: pop
    //   14: aload_3
    //   15: aload_2
    //   16: invokevirtual 355	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: pop
    //   20: aload_3
    //   21: invokevirtual 358	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: astore 4
    //   26: new 849	java/io/File
    //   29: dup
    //   30: aload_1
    //   31: invokespecial 850	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: astore_1
    //   35: aload_1
    //   36: invokevirtual 853	java/io/File:exists	()Z
    //   39: ifne +8 -> 47
    //   42: aload_1
    //   43: invokevirtual 856	java/io/File:mkdirs	()Z
    //   46: pop
    //   47: aload_0
    //   48: ifnonnull +5 -> 53
    //   51: iconst_0
    //   52: ireturn
    //   53: aconst_null
    //   54: astore_2
    //   55: aconst_null
    //   56: astore_3
    //   57: new 858	java/io/FileOutputStream
    //   60: astore_1
    //   61: aload_1
    //   62: aload 4
    //   64: invokespecial 859	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   67: aload_0
    //   68: getstatic 865	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   71: bipush 100
    //   73: aload_1
    //   74: invokevirtual 871	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   77: pop
    //   78: aload_1
    //   79: invokevirtual 872	java/io/FileOutputStream:close	()V
    //   82: aload_0
    //   83: invokevirtual 875	android/graphics/Bitmap:recycle	()V
    //   86: iconst_1
    //   87: ireturn
    //   88: astore_2
    //   89: aload_1
    //   90: astore_3
    //   91: aload_2
    //   92: astore_1
    //   93: goto +8 -> 101
    //   96: astore_2
    //   97: goto +18 -> 115
    //   100: astore_1
    //   101: aload_3
    //   102: ifnull +7 -> 109
    //   105: aload_3
    //   106: invokevirtual 872	java/io/FileOutputStream:close	()V
    //   109: aload_0
    //   110: invokevirtual 875	android/graphics/Bitmap:recycle	()V
    //   113: aload_1
    //   114: athrow
    //   115: aload_1
    //   116: ifnull +7 -> 123
    //   119: aload_1
    //   120: invokevirtual 872	java/io/FileOutputStream:close	()V
    //   123: aload_0
    //   124: invokevirtual 875	android/graphics/Bitmap:recycle	()V
    //   127: iconst_0
    //   128: ireturn
    //   129: astore_1
    //   130: aload_2
    //   131: astore_1
    //   132: goto -17 -> 115
    //   135: astore_1
    //   136: goto -54 -> 82
    //   139: astore_2
    //   140: goto -31 -> 109
    //   143: astore_1
    //   144: goto -21 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	paramBitmap	Bitmap
    //   0	147	1	paramString1	String
    //   0	147	2	paramString2	String
    //   7	99	3	localObject	Object
    //   24	39	4	str	String
    // Exception table:
    //   from	to	target	type
    //   67	78	88	finally
    //   67	78	96	java/lang/Exception
    //   57	67	100	finally
    //   57	67	129	java/lang/Exception
    //   78	82	135	java/io/IOException
    //   105	109	139	java/io/IOException
    //   119	123	143	java/io/IOException
  }
  
  public static long W()
  {
    return e.getTimeInMillis();
  }
  
  public static void W0(Context paramContext, long paramLong, String paramString1, String paramString2)
  {
    JSONObject localJSONObject = s1.d.e(paramContext, paramLong, paramString1);
    if (localJSONObject != null) {}
    try
    {
      String str = localJSONObject.getString("value");
      break label29;
      str = null;
      label29:
      ContentValues localContentValues = new android/content/ContentValues;
      localContentValues.<init>();
      localContentValues.put("event_id", Long.valueOf(paramLong));
      localContentValues.put("name", paramString1);
      localContentValues.put("value", paramString2);
      if (str == null)
      {
        com.miui.calendar.util.z.a("Cal:D:Utils", "saveEPInfo(): insert");
        paramContext.getContentResolver().insert(x3.a.a, localContentValues);
      }
      else
      {
        com.miui.calendar.util.z.a("Cal:D:Utils", "saveEPInfo(): update");
        paramString1 = Uri.withAppendedPath(x3.a.a, String.valueOf(localJSONObject.optLong("_id")));
        paramContext.getContentResolver().update(paramString1, localContentValues, null, null);
      }
    }
    catch (Exception paramContext)
    {
      com.miui.calendar.util.z.d("Cal:D:Utils", "saveEPInfo()", paramContext);
    }
  }
  
  public static Calendar X()
  {
    return d;
  }
  
  public static void X0(Context paramContext)
  {
    paramContext = ((AccountManager)paramContext.getSystemService("account")).getAccountsByType("com.google");
    if ((paramContext != null) && (paramContext.length != 0))
    {
      int j = paramContext.length;
      for (int k = 0; k < j; k++)
      {
        Account localAccount = paramContext[k];
        if (ContentResolver.getIsSyncable(localAccount, "com.android.calendar") != 1)
        {
          com.miui.calendar.util.z.h("Cal:D:Utils", "setGoogleAccountsSyncable(): NOT syncable before, set it syncable");
          ContentResolver.setIsSyncable(localAccount, "com.android.calendar", 1);
        }
      }
    }
  }
  
  public static long Y()
  {
    return d.getTimeInMillis();
  }
  
  public static void Y0(long paramLong)
  {
    f.setTimeInMillis(paramLong);
  }
  
  public static Intent Z(Context paramContext, CreditEvent paramCreditEvent)
  {
    if ((paramCreditEvent != null) && (paramCreditEvent.getId() != 0L))
    {
      paramContext = new Intent(paramContext, EventInfoActivity.class);
      paramContext.putExtra("_id", paramCreditEvent.getId());
      if (!TextUtils.isEmpty(paramCreditEvent.getBankName())) {
        paramContext.putExtra("bank_name", paramCreditEvent.getBankName());
      }
      if (!TextUtils.isEmpty(paramCreditEvent.getAmount())) {
        paramContext.putExtra("amount", paramCreditEvent.getAmount());
      }
      if (!TextUtils.isEmpty(paramCreditEvent.getAccount())) {
        paramContext.putExtra("card_number", paramCreditEvent.getAccount());
      }
      paramContext.putExtra("repayment_date", paramCreditEvent.getRepaymentTime());
      return paramContext;
    }
    com.miui.calendar.util.z.m("Cal:D:Utils", "getViewCreditEventDetailIntent() invalid credit schema, return");
    return null;
  }
  
  public static void Z0(Handler paramHandler, Runnable paramRunnable, String paramString)
  {
    if ((paramHandler != null) && (paramRunnable != null) && (paramString != null))
    {
      long l = System.currentTimeMillis();
      paramString = new r0(paramString);
      paramString.D(l);
      l = (86400 - paramString.m() * 3600 - paramString.o() * 60 - paramString.r() + 1) * 1000;
      paramHandler.removeCallbacks(paramRunnable);
      paramHandler.postDelayed(paramRunnable, l);
    }
  }
  
  public static Intent a0(Context paramContext, j paramj, int paramInt1, int paramInt2)
  {
    paramContext = y(paramContext, paramj, paramInt1);
    if ((paramContext != null) && (paramInt2 != 0)) {
      paramContext.setFlags(paramInt2);
    }
    return paramContext;
  }
  
  public static void a1(String paramString, long paramLong)
  {
    i.put(paramString, Long.valueOf(paramLong));
  }
  
  public static void b(Context paramContext, TextView paramTextView, String paramString1, String paramString2, ArrayList<String> paramArrayList, String paramString3, String paramString4, Calendar paramCalendar)
  {
    c(paramContext, paramTextView, paramString1, paramString2, paramArrayList, paramString3, paramString4, paramCalendar, false, false);
  }
  
  public static Intent b0(Context paramContext, Event paramEvent)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramEvent.getId()));
    localIntent.setClass(paramContext, EventInfoActivity.class);
    localIntent.setFlags(537001984);
    localIntent.putExtra("beginTime", paramEvent.getStartTimeMillis());
    localIntent.putExtra("endTime", paramEvent.getEndTimeMillis());
    return localIntent;
  }
  
  public static void b1(Context paramContext, int paramInt)
  {
    int j = paramInt;
    if (paramInt == 0) {
      j = 4;
    }
    b2.a.i(paramContext, "preferred_startView_temp", j);
  }
  
  public static void c(Context paramContext, TextView paramTextView, String paramString1, String paramString2, ArrayList<String> paramArrayList, String paramString3, String paramString4, Calendar paramCalendar, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = TextUtils.isEmpty(paramString2);
    Object localObject1 = "";
    Object localObject2 = localObject1;
    if (!bool)
    {
      if (!TextUtils.isEmpty(""))
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("");
        ((StringBuilder)localObject2).append(" | ");
        localObject1 = ((StringBuilder)localObject2).toString();
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(paramString2);
      localObject2 = ((StringBuilder)localObject2).toString();
    }
    if (paramArrayList == null) {
      localObject1 = new ArrayList();
    } else {
      localObject1 = paramArrayList;
    }
    if ((!TextUtils.isEmpty(paramString4)) && (!((ArrayList)localObject1).contains(paramString4))) {
      ((ArrayList)localObject1).add(paramString4);
    }
    paramArrayList = (ArrayList<String>)localObject1;
    if (((ArrayList)localObject1).size() > 1) {
      paramArrayList = f.f((ArrayList)localObject1);
    }
    if ((!TextUtils.isEmpty(paramString1)) && (!paramArrayList.contains(paramString1))) {
      paramArrayList.add(0, paramString1);
    }
    paramString4 = paramArrayList;
    int k;
    if (!paramBoolean2)
    {
      j = j0.c(paramContext);
      localObject1 = null;
      if (j > 0) {
        localObject1 = j0.a(paramContext);
      }
      paramString4 = paramArrayList;
      if (localObject1 != null)
      {
        paramString4 = paramArrayList;
        if (((HolidayPatch)localObject1).getHolidays() != null)
        {
          paramString4 = paramArrayList;
          if (((HolidayPatch)localObject1).getHolidays().size() > 0)
          {
            k = paramCalendar.get(1);
            int m = paramCalendar.get(2);
            j = paramCalendar.get(5);
            localObject1 = ((HolidayPatch)localObject1).getHolidays().iterator();
            while (((Iterator)localObject1).hasNext())
            {
              HolidayPatchItem localHolidayPatchItem = (HolidayPatchItem)((Iterator)localObject1).next();
              if (localHolidayPatchItem != null)
              {
                paramString4 = paramArrayList;
                if (k == localHolidayPatchItem.getYear())
                {
                  paramString4 = paramArrayList;
                  if ((m + 1) * 100 + j == localHolidayPatchItem.getDay()) {
                    paramString4 = (ArrayList)localHolidayPatchItem.getHolidays();
                  }
                }
                paramArrayList = paramString4;
              }
            }
            paramString4 = paramArrayList;
            if (paramArrayList == null) {
              paramString4 = new ArrayList();
            }
          }
        }
      }
    }
    paramArrayList = (ArrayList<String>)localObject2;
    if (paramString4.size() > 0) {
      for (j = 0;; j++)
      {
        paramArrayList = (ArrayList<String>)localObject2;
        if (j >= paramString4.size()) {
          break;
        }
        if (j == 2)
        {
          paramArrayList = (ArrayList<String>)localObject2;
          break;
        }
        localObject1 = (String)paramString4.get(j);
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          paramArrayList = (ArrayList<String>)localObject2;
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            paramArrayList = new StringBuilder();
            paramArrayList.append((String)localObject2);
            paramArrayList.append(" | ");
            paramArrayList = paramArrayList.toString();
          }
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(paramArrayList);
          ((StringBuilder)localObject2).append((String)localObject1);
          localObject2 = ((StringBuilder)localObject2).toString();
        }
      }
    }
    localObject2 = paramArrayList;
    if (!TextUtils.isEmpty(paramString3))
    {
      localObject2 = paramArrayList;
      if (!TextUtils.isEmpty(paramArrayList))
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(paramArrayList);
        ((StringBuilder)localObject2).append(" | ");
        localObject2 = ((StringBuilder)localObject2).toString();
      }
      paramArrayList = new StringBuilder();
      paramArrayList.append((String)localObject2);
      paramArrayList.append(paramString3);
      localObject2 = paramArrayList.toString();
    }
    paramArrayList = (ArrayList<String>)localObject2;
    if (TextUtils.isEmpty(paramString1))
    {
      paramArrayList = (ArrayList<String>)localObject2;
      if (!TextUtils.isEmpty(paramString2))
      {
        paramArrayList = (ArrayList<String>)localObject2;
        if (paramString4.size() == 0)
        {
          paramArrayList = (ArrayList<String>)localObject2;
          if (TextUtils.isEmpty(paramString3))
          {
            paramString1 = new StringBuilder();
            paramString1.append((String)localObject2);
            paramString1.append(" | ");
            paramString1 = paramString1.toString();
            j = DaysOffUtils.g(paramContext).e(paramCalendar.get(1), paramCalendar.get(6));
            if (j == 1)
            {
              paramArrayList = new StringBuilder();
              paramArrayList.append(paramString1);
              paramArrayList.append(paramContext.getResources().getString(2131886654));
              paramArrayList = paramArrayList.toString();
            }
            else
            {
              paramArrayList = paramString1;
              if (j == 2)
              {
                paramArrayList = new StringBuilder();
                paramArrayList.append(paramString1);
                paramArrayList.append(paramContext.getResources().getString(2131887852));
                paramArrayList = paramArrayList.toString();
              }
            }
          }
        }
      }
    }
    paramString1 = new SpannableString(paramArrayList);
    if (!TextUtils.isEmpty(paramString2))
    {
      j = paramArrayList.indexOf(paramString2);
      paramString1.setSpan(new ForegroundColorSpan(u(paramContext, paramCalendar)), j, j + 1, 33);
    }
    if (!TextUtils.isEmpty(paramString3))
    {
      k = paramArrayList.indexOf(paramString3);
      paramString2 = paramContext.getResources();
      if (paramBoolean1) {
        j = 2131100015;
      } else {
        j = 2131100014;
      }
      paramString1.setSpan(new ForegroundColorSpan(paramString2.getColor(j)), k, paramString3.length() + k, 33);
    }
    for (int j = paramArrayList.indexOf("|"); j >= 0; j = paramArrayList.indexOf("|", k))
    {
      paramString2 = new ForegroundColorSpan(paramContext.getResources().getColor(2131099978));
      k = j + 1;
      paramString1.setSpan(paramString2, j, k, 33);
    }
    paramTextView.setText(paramString1);
  }
  
  public static Intent c0(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, LimitDetailActivity.class);
    paramContext.putExtra("from", paramString);
    return paramContext;
  }
  
  public static BroadcastReceiver c1(Context paramContext, Runnable paramRunnable)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.TIME_SET");
    localIntentFilter.addAction("android.intent.action.DATE_CHANGED");
    localIntentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
    localIntentFilter.addAction("android.intent.action.LOCALE_CHANGED");
    paramRunnable = new a(paramRunnable);
    paramContext.registerReceiver(paramRunnable, localIntentFilter);
    return paramRunnable;
  }
  
  public static void d(Context paramContext, BroadcastReceiver paramBroadcastReceiver)
  {
    paramContext.unregisterReceiver(paramBroadcastReceiver);
  }
  
  public static Intent d0(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ShiftDetailActivity.class);
    paramContext.putExtra("from", paramString);
    paramContext.addFlags(268435456);
    return paramContext;
  }
  
  public static void d1(Context paramContext, String paramString)
  {
    h.a.h("com.android.calendar_preferences").j(paramContext, paramString);
    t1.d.a = TimeZone.getDefault().getID();
  }
  
  public static long e(r0 paramr0, long paramLong, String paramString)
  {
    r0 localr0 = paramr0;
    if (paramr0 == null) {
      localr0 = new r0();
    }
    localr0.L(paramString);
    localr0.D(paramLong);
    localr0.L("UTC");
    return localr0.y(true);
  }
  
  public static int e0(int paramInt)
  {
    SparseIntArray localSparseIntArray = a;
    paramInt = localSparseIntArray.indexOfValue(paramInt);
    if (paramInt >= 0) {
      paramInt = localSparseIntArray.keyAt(paramInt);
    } else {
      paramInt = 4;
    }
    return paramInt;
  }
  
  public static void e1(long paramLong)
  {
    e.setTimeInMillis(paramLong);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setToDate(): ");
    localStringBuilder.append(e0.a(e));
    com.miui.calendar.util.z.a("Cal:D:Utils", localStringBuilder.toString());
  }
  
  public static long f(r0 paramr0, long paramLong, String paramString)
  {
    r0 localr0 = paramr0;
    if (paramr0 == null) {
      localr0 = new r0();
    }
    localr0.L("UTC");
    localr0.D(paramLong);
    localr0.L(paramString);
    return localr0.y(true);
  }
  
  public static SpannableString f0(Context paramContext, r0 paramr0)
  {
    long l = paramr0.P(true);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(l);
    Object localObject1 = new ArrayList();
    boolean bool = y.q(paramContext);
    String str1 = "";
    Object localObject2;
    if (bool)
    {
      paramr0 = a4.d.g(localCalendar);
      localObject2 = a4.d.l(paramContext, localCalendar);
    }
    else
    {
      paramr0 = "";
      localObject2 = paramr0;
    }
    String str2;
    if (y.t(paramContext)) {
      str2 = v(paramContext, localCalendar);
    } else {
      str2 = "";
    }
    if (y.s(paramContext)) {
      localObject1 = f.a(paramContext, l);
    }
    Object localObject3 = localObject1;
    if (localObject1 == null) {
      localObject3 = new ArrayList();
    }
    localObject1 = paramr0;
    if (!TextUtils.isEmpty(str2))
    {
      localObject1 = paramr0;
      if (!TextUtils.isEmpty(paramr0))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(paramr0);
        ((StringBuilder)localObject1).append(" | ");
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      paramr0 = new StringBuilder();
      paramr0.append((String)localObject1);
      paramr0.append(str2);
      localObject1 = paramr0.toString();
    }
    paramr0 = str1;
    if (y.r(paramContext)) {
      paramr0 = f.d(l);
    }
    if ((!TextUtils.isEmpty(paramr0)) && (!((ArrayList)localObject3).contains(paramr0))) {
      ((ArrayList)localObject3).add(paramr0);
    }
    paramr0 = (r0)localObject3;
    if (((ArrayList)localObject3).size() > 1) {
      paramr0 = f.f((ArrayList)localObject3);
    }
    bool = TextUtils.isEmpty((CharSequence)localObject2);
    int j = 0;
    if ((!bool) && (!paramr0.contains(localObject2))) {
      paramr0.add(0, localObject2);
    }
    localObject3 = localObject1;
    if (paramr0.size() > 0) {
      for (;;)
      {
        localObject3 = localObject1;
        if (j >= paramr0.size()) {
          break;
        }
        if (j == 2)
        {
          localObject3 = localObject1;
          break;
        }
        localObject2 = (String)paramr0.get(j);
        if (!TextUtils.isEmpty((CharSequence)localObject2))
        {
          localObject3 = localObject1;
          if (!TextUtils.isEmpty((CharSequence)localObject1))
          {
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append((String)localObject1);
            ((StringBuilder)localObject3).append(" | ");
            localObject3 = ((StringBuilder)localObject3).toString();
          }
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append((String)localObject3);
          ((StringBuilder)localObject1).append((String)localObject2);
          localObject1 = ((StringBuilder)localObject1).toString();
        }
        j++;
      }
    }
    paramr0 = new SpannableString((CharSequence)localObject3);
    if (!TextUtils.isEmpty(str2))
    {
      j = ((String)localObject3).indexOf(str2);
      paramr0.setSpan(new ForegroundColorSpan(u(paramContext, localCalendar)), j, j + 1, 33);
    }
    return paramr0;
  }
  
  public static void f1(long paramLong)
  {
    d.setTimeInMillis(paramLong);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setToday(): ");
    localStringBuilder.append(e0.a(d));
    com.miui.calendar.util.z.a("Cal:D:Utils", localStringBuilder.toString());
  }
  
  public static long g(String paramString1, String paramString2)
  {
    return h(paramString1, paramString2, TimeZone.getTimeZone("GMT"));
  }
  
  public static String g0(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getPackageName());
    localStringBuilder.append(".APPWIDGET_SCHEDULED_UPDATE");
    return localStringBuilder.toString();
  }
  
  public static void g1(Context paramContext, int paramInt)
  {
    int j = paramInt;
    if (paramInt == 0) {
      j = 4;
    }
    b2.a.i(paramContext, "preferred_startView", j);
  }
  
  public static long h(String paramString1, String paramString2, TimeZone paramTimeZone)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return -1L;
    }
    try
    {
      SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
      localSimpleDateFormat.<init>(paramString2);
      localSimpleDateFormat.setTimeZone(paramTimeZone);
      paramTimeZone = localSimpleDateFormat.parse(paramString1);
      paramString2 = Calendar.getInstance();
      paramString2.setTime(paramTimeZone);
      long l = paramString2.getTimeInMillis();
      return l;
    }
    catch (ParseException paramString2)
    {
      com.miui.calendar.util.z.d("Cal:D:Utils", paramString1, paramString2);
    }
    return -1L;
  }
  
  public static String h0(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getPackageName());
    localStringBuilder.append(".APPWIDGET_UPDATE");
    return localStringBuilder.toString();
  }
  
  public static void h1(Resources paramResources, Event paramEvent, Paint paramPaint, DisplayType paramDisplayType)
  {
    DisplayType localDisplayType = DisplayType.BORDER;
    if (localDisplayType == paramDisplayType)
    {
      paramPaint.setColor(A(paramResources, paramEvent, localDisplayType));
    }
    else
    {
      localDisplayType = DisplayType.FILL;
      if (localDisplayType == paramDisplayType)
      {
        paramPaint.setColor(A(paramResources, paramEvent, localDisplayType));
      }
      else
      {
        localDisplayType = DisplayType.TEXT;
        if (localDisplayType == paramDisplayType) {
          paramPaint.setColor(A(paramResources, paramEvent, localDisplayType));
        } else {
          paramPaint.setColor(A(paramResources, paramEvent, DisplayType.ACCOUNT));
        }
      }
    }
    if (paramEvent.getEx().getSelfAttendeeStatus() != 2)
    {
      paramPaint.setFlags(paramPaint.getFlags() & 0xFFFFFFEF);
    }
    else
    {
      paramPaint.setAlpha(192);
      paramPaint.setFlags(17);
    }
  }
  
  public static Intent i(Resources paramResources, String paramString1, String paramString2, List<String> paramList1, List<String> paramList2, String paramString3)
  {
    int j = paramList1.size();
    Object localObject = null;
    List<String> localList = paramList2;
    if (j <= 0) {
      if (paramList2.size() > 0)
      {
        paramList1 = paramList2;
        localList = null;
      }
      else
      {
        throw new IllegalArgumentException("Both toEmails and ccEmails are empty.");
      }
    }
    paramList2 = localObject;
    if (paramString1 != null)
    {
      paramList2 = new StringBuilder();
      paramList2.append(paramResources.getString(2131886524));
      paramList2.append(paramString1);
      paramList2 = paramList2.toString();
    }
    paramString1 = new Uri.Builder();
    paramString1.scheme("mailto");
    int k = paramList1.size();
    j = 1;
    if (k > 1) {
      while (j < paramList1.size())
      {
        paramString1.appendQueryParameter("to", (String)paramList1.get(j));
        j++;
      }
    }
    if (paramList2 != null) {
      paramString1.appendQueryParameter("subject", paramList2);
    }
    if (paramString2 != null) {
      paramString1.appendQueryParameter("body", paramString2);
    }
    if ((localList != null) && (localList.size() > 0))
    {
      paramString2 = localList.iterator();
      while (paramString2.hasNext()) {
        paramString1.appendQueryParameter("cc", (String)paramString2.next());
      }
    }
    paramString2 = paramString1.toString();
    paramString1 = paramString2;
    if (paramString2.startsWith("mailto:"))
    {
      paramString1 = new StringBuilder(paramString2);
      paramString1.insert(7, Uri.encode((String)paramList1.get(0)));
      paramString1 = paramString1.toString();
    }
    paramString1 = new Intent("android.intent.action.SENDTO", Uri.parse(paramString1));
    paramString1.putExtra("fromAccountString", paramString3);
    return Intent.createChooser(paramString1, paramResources.getString(2131886523));
  }
  
  public static boolean i0(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext = null;
    }
    if (paramContext != null) {
      bool = true;
    }
    return bool;
  }
  
  public static void i1(Context paramContext, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setClass(paramContext, CardDetailActivity.class);
    localIntent.setData(Uri.parse("http://calendar.miui.com/card/detail").buildUpon().appendQueryParameter("cardId", String.valueOf(paramLong)).build());
    paramContext.startActivity(localIntent);
  }
  
  public static void j(Context paramContext, Calendar paramCalendar)
  {
    l(paramContext, paramCalendar, "");
  }
  
  public static boolean j0(String paramString1, String paramString2)
  {
    boolean bool;
    if ((u0(paramString1)) && (!paramString1.equals(paramString2))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void j1(Context paramContext, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setClass(paramContext, HuangLiDetailActivity.class);
    localIntent.setData(Uri.parse("http://calendar.miui.com/huangli/detail").buildUpon().appendQueryParameter("timeInMillis", String.valueOf(paramLong)).build());
    paramContext.startActivity(localIntent);
  }
  
  public static void k(Context paramContext, Calendar paramCalendar, ActivityOptions paramActivityOptions)
  {
    paramCalendar = (Calendar)paramCalendar.clone();
    if (s0.A(paramCalendar))
    {
      int j = paramCalendar.get(12);
      if (j > 30)
      {
        paramCalendar.add(11, 1);
        paramCalendar.set(12, 0);
      }
      else if ((j > 0) && (j < 30))
      {
        paramCalendar.set(12, 30);
      }
    }
    C0(paramContext, paramCalendar.getTimeInMillis(), 0L, false, paramActivityOptions);
  }
  
  public static boolean k0(long paramLong1, long paramLong2)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong1);
    int j = localCalendar.get(6);
    int k = localCalendar.get(5);
    int m = localCalendar.get(7);
    localCalendar.setTimeInMillis(paramLong2);
    int n = localCalendar.get(6);
    int i1 = localCalendar.get(5);
    int i2 = localCalendar.get(7);
    boolean bool;
    if ((j == n) && (k == i1) && (m == i2)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean k1(long paramLong1, long paramLong2, long paramLong3)
  {
    boolean bool = true;
    if (paramLong1 == paramLong2) {
      return true;
    }
    if (r0.n(paramLong1, paramLong3) != r0.n(paramLong2 - 1L, paramLong3)) {
      bool = false;
    }
    return bool;
  }
  
  public static void l(Context paramContext, Calendar paramCalendar, String paramString)
  {
    paramCalendar = (Calendar)paramCalendar.clone();
    if (s0.A(paramCalendar))
    {
      int j = paramCalendar.get(12);
      if (j > 30)
      {
        paramCalendar.add(11, 1);
        paramCalendar.set(12, 0);
      }
      else if ((j > 0) && (j < 30))
      {
        paramCalendar.set(12, 30);
      }
    }
    D0(paramContext, paramCalendar.getTimeInMillis(), 0L, false, paramString);
  }
  
  public static boolean l0()
  {
    return c;
  }
  
  public static final long l1(Intent paramIntent)
  {
    Uri localUri = paramIntent.getData();
    long l1 = paramIntent.getLongExtra("beginTime", -1L);
    long l2 = l1;
    if (l1 == -1L)
    {
      l2 = l1;
      if (localUri != null)
      {
        l2 = l1;
        if (localUri.isHierarchical())
        {
          List localList = localUri.getPathSegments();
          l2 = l1;
          if (localList.size() == 2)
          {
            l2 = l1;
            if (((String)localList.get(0)).equals("time")) {
              try
              {
                l2 = Long.valueOf(localUri.getLastPathSegment()).longValue();
              }
              catch (NumberFormatException localNumberFormatException)
              {
                Log.i("Calendar", "timeFromIntentInMillis: Data existed but no valid time found. Using current time.");
                l2 = l1;
              }
            }
          }
        }
      }
    }
    if (l2 <= 0L)
    {
      l1 = System.currentTimeMillis();
    }
    else
    {
      l1 = l2;
      if (paramIntent.getBooleanExtra("BIRTHDAY_QUERY", false)) {
        l1 = r1.a.l(l2);
      }
    }
    return l1;
  }
  
  public static int m(int paramInt)
  {
    if (paramInt != 1)
    {
      if (paramInt != 2)
      {
        if (paramInt != 4) {
          paramInt = -1;
        } else {
          paramInt = 2131363053;
        }
      }
      else {
        paramInt = 2131363054;
      }
    }
    else {
      paramInt = 2131363057;
    }
    return paramInt;
  }
  
  public static boolean m0(Context paramContext)
  {
    paramContext = (KeyguardManager)paramContext.getSystemService("keyguard");
    if (paramContext == null) {
      return false;
    }
    return paramContext.isKeyguardLocked();
  }
  
  public static String m1(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = (StringBuilder)e.c().b();
    n1(paramArrayOfByte, localStringBuilder);
    paramArrayOfByte = localStringBuilder.toString();
    e.c().a(localStringBuilder);
    return paramArrayOfByte;
  }
  
  public static int n(Cursor paramCursor, long paramLong)
  {
    if (paramCursor != null)
    {
      int j = paramCursor.getColumnIndexOrThrow("_id");
      paramCursor.moveToPosition(-1);
      while (paramCursor.moveToNext()) {
        if (paramLong == paramCursor.getLong(j)) {
          return paramCursor.getPosition();
        }
      }
    }
    return 0;
  }
  
  public static boolean n0(Context paramContext)
  {
    boolean bool = false;
    if (paramContext == null) {
      return false;
    }
    if (paramContext.getResources().getConfiguration().orientation == 2) {
      bool = true;
    }
    return bool;
  }
  
  public static void n1(byte[] paramArrayOfByte, Appendable paramAppendable)
  {
    if (paramArrayOfByte != null) {
      try
      {
        int j = paramArrayOfByte.length;
        for (int k = 0; k < j; k++)
        {
          int m = paramArrayOfByte[k];
          int n = m;
          if (m < 0) {
            n = m + 256;
          }
          char[] arrayOfChar = b;
          paramAppendable.append(arrayOfChar[(n >> 4)]).append(arrayOfChar[(n & 0xF)]);
        }
        return;
      }
      catch (IOException paramArrayOfByte)
      {
        throw new RuntimeException("Exception throw during when append", paramArrayOfByte);
      }
    }
  }
  
  public static int o(Context paramContext, Cursor paramCursor)
  {
    if (paramCursor.getCount() <= 0) {
      return -1;
    }
    long l = b2.a.b(paramContext, "preference_defaultCalendarId", 0L);
    Object localObject = b2.a.c(paramContext, "preference_defaultCalendar", null);
    boolean bool1 = TextUtils.isEmpty((CharSequence)localObject);
    int j = 1;
    if ((!TextUtils.equals("owner_account_local", (CharSequence)localObject)) || (paramCursor.getCount() <= 1)) {
      j = 0;
    }
    boolean bool2 = b2.a.d(paramContext, "preference_defaultCalendar_migrated", false);
    if (((bool1 ^ true)) && ((j == 0) || (bool2))) {
      return n(paramCursor, l);
    }
    j = paramCursor.getColumnIndexOrThrow("account_type");
    paramContext = new HashMap();
    paramCursor.moveToPosition(-1);
    while (paramCursor.moveToNext()) {
      paramContext.put(paramCursor.getString(j), Integer.valueOf(paramCursor.getPosition()));
    }
    if (paramContext.containsKey("com.android.exchange")) {
      return ((Integer)paramContext.get("com.android.exchange")).intValue();
    }
    if (paramContext.containsKey("com.google")) {
      return ((Integer)paramContext.get("com.google")).intValue();
    }
    localObject = paramContext.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      paramCursor = (String)((Iterator)localObject).next();
      if (!h.c(paramCursor)) {
        return ((Integer)paramContext.get(paramCursor)).intValue();
      }
    }
    return 0;
  }
  
  public static boolean o0(Context paramContext)
  {
    boolean bool;
    if ((t(paramContext) == 3) && (!DeviceUtils.O(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static String o1(Resources paramResources, String paramString)
  {
    if ("calendar_displayname_local".equals(paramString)) {
      return paramResources.getString(2131886841);
    }
    if ("calendar_displayname_birthday".equals(paramString)) {
      return paramResources.getString(2131886217);
    }
    if ("calendar_displayname_xiaomi".equals(paramString)) {
      return paramResources.getString(2131887856);
    }
    return paramString;
  }
  
  public static String p(Context paramContext, long paramLong1, long paramLong2, int paramInt)
  {
    return h.a.h("com.android.calendar_preferences").g(paramContext, paramLong1, paramLong2, paramInt);
  }
  
  public static boolean p0(Context paramContext)
  {
    boolean bool1 = false;
    boolean bool2;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo("com.lbe.security.miui", 128).metaData;
      bool2 = bool1;
      if (paramContext != null) {
        bool2 = paramContext.getBoolean("miui.supportForceAutoStart");
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      com.miui.calendar.util.z.c("Cal:D:Utils", "get metaData fail");
      bool2 = bool1;
    }
    paramContext = new StringBuilder();
    paramContext.append("isSupport :");
    paramContext.append(bool2);
    com.miui.calendar.util.z.a("Cal:D:Utils", paramContext.toString());
    return bool2;
  }
  
  public static String p1(Resources paramResources, String paramString)
  {
    if ("owner_account_local".equals(paramString)) {
      return paramResources.getString(2131886842);
    }
    if ((!TextUtils.isEmpty(paramString)) && (paramString.endsWith("calendar.google.com"))) {
      return paramResources.getString(2131886658);
    }
    return paramString;
  }
  
  public static Bitmap q(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = localObject1;
    try
    {
      Object localObject3 = new java/net/URL;
      localObject2 = localObject1;
      ((URL)localObject3).<init>(paramString);
      localObject2 = localObject1;
      paramString = ((URL)localObject3).openConnection();
      localObject2 = localObject1;
      int j = ((HttpURLConnection)paramString).getContentLength();
      localObject2 = localObject1;
      paramString.connect();
      localObject2 = localObject1;
      InputStream localInputStream = paramString.getInputStream();
      localObject2 = localObject1;
      localObject3 = new java/io/BufferedInputStream;
      localObject2 = localObject1;
      ((BufferedInputStream)localObject3).<init>(localInputStream, j);
      localObject2 = localObject1;
      paramString = BitmapFactory.decodeStream((InputStream)localObject3);
      localObject2 = paramString;
      ((BufferedInputStream)localObject3).close();
      localObject2 = paramString;
      localInputStream.close();
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      paramString = (String)localObject2;
    }
    return paramString;
  }
  
  public static boolean q0(String paramString)
  {
    long l1 = System.currentTimeMillis();
    long l2;
    if (i.containsKey(paramString)) {
      l2 = ((Long)i.get(paramString)).longValue();
    } else {
      l2 = 0L;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("isOperationTooQuickly(): now:");
    localStringBuilder.append(l1);
    localStringBuilder.append(", lastTime: ");
    localStringBuilder.append(l2);
    com.miui.calendar.util.z.a("Cal:D:Utils", localStringBuilder.toString());
    if ((l1 > l2) && (l1 - l2 < 1000L)) {
      return true;
    }
    i.put(paramString, Long.valueOf(l1));
    return false;
  }
  
  public static void q1(Context paramContext, String paramString)
  {
    paramString = c0(paramContext, paramString);
    paramString.addFlags(268435456);
    paramContext.startActivity(paramString);
  }
  
  public static int r(Context paramContext)
  {
    int j = t(paramContext);
    return a.get(j, 0);
  }
  
  public static boolean r0(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt2 == 0)
    {
      bool2 = bool1;
      if (paramInt1 == 6) {}
    }
    else if (paramInt2 == 1)
    {
      bool2 = bool1;
      if (paramInt1 == 5) {}
    }
    else if ((paramInt2 == 6) && (paramInt1 == 0))
    {
      bool2 = bool1;
    }
    else
    {
      bool2 = false;
    }
    return bool2;
  }
  
  public static void r1(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, LimitSettingsActivity.class);
    localIntent.putExtra("from", paramString);
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public static int s(Context paramContext)
  {
    return b2.a.a(paramContext, "preferred_startView_temp", -1);
  }
  
  public static boolean s0(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt2 == 0)
    {
      bool2 = bool1;
      if (paramInt1 == 0) {}
    }
    else if (paramInt2 == 1)
    {
      bool2 = bool1;
      if (paramInt1 == 6) {}
    }
    else if ((paramInt2 == 6) && (paramInt1 == 1))
    {
      bool2 = bool1;
    }
    else
    {
      bool2 = false;
    }
    return bool2;
  }
  
  public static void s1(Context paramContext, String paramString)
  {
    paramString = d0(paramContext, paramString);
    paramString.addFlags(268435456);
    paramContext.startActivity(paramString);
  }
  
  public static int t(Context paramContext)
  {
    return b2.a.a(paramContext, "preferred_startView", 4);
  }
  
  private static int t0(Resources paramResources, long paramLong1, long paramLong2, long paramLong3)
  {
    int j = r0.n(paramLong1, paramLong3) - r0.n(paramLong2, paramLong3);
    if (j == 1) {
      return 2;
    }
    if (j == 0) {
      return 1;
    }
    return 0;
  }
  
  public static void t1(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, ShiftSettingsActivity.class);
    localIntent.putExtra("from", paramString);
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public static int u(Context paramContext, Calendar paramCalendar)
  {
    int j;
    if (y.t(paramContext)) {
      j = DaysOffUtils.g(paramContext).e(paramCalendar.get(1), paramCalendar.get(6));
    } else {
      j = 0;
    }
    if (j == 1) {
      return paramContext.getResources().getColor(2131100690);
    }
    if (j == 2) {
      return paramContext.getResources().getColor(2131100698);
    }
    return 0;
  }
  
  public static boolean u0(String paramString)
  {
    boolean bool;
    if ((paramString != null) && (!paramString.endsWith("calendar.google.com"))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static String v(Context paramContext, Calendar paramCalendar)
  {
    int j;
    if (y.t(paramContext)) {
      j = DaysOffUtils.g(paramContext).e(paramCalendar.get(1), paramCalendar.get(6));
    } else {
      j = 0;
    }
    if (j == 1) {
      return paramContext.getString(2131887397);
    }
    if (j == 2) {
      return paramContext.getString(2131887853);
    }
    return "";
  }
  
  public static String v0(List<?> paramList, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramList.iterator();
    int j = 1;
    while (localIterator.hasNext())
    {
      paramList = localIterator.next();
      if (j != 0) {
        j = 0;
      } else {
        localStringBuilder.append(paramString);
      }
      localStringBuilder.append(paramList.toString());
    }
    return localStringBuilder.toString();
  }
  
  public static String w(long paramLong1, long paramLong2, long paramLong3, String paramString, boolean paramBoolean, Context paramContext, int paramInt)
  {
    if (paramContext == null)
    {
      com.miui.calendar.util.z.c("Cal:D:Utils", "getDisplayedDatetime context is null");
      return "";
    }
    int j;
    if (android.text.format.DateFormat.is24HourFormat(paramContext)) {
      j = 129;
    } else {
      j = 1;
    }
    r0 localr0 = new r0(paramString);
    localr0.D(paramLong3);
    Object localObject = TimeZone.getTimeZone(paramString);
    Calendar localCalendar1 = Calendar.getInstance((TimeZone)localObject);
    localCalendar1.setTimeInMillis(paramLong1);
    Calendar localCalendar2 = Calendar.getInstance((TimeZone)localObject);
    localCalendar2.setTimeInMillis(paramLong2);
    Resources localResources = paramContext.getResources();
    if (paramBoolean)
    {
      localObject = null;
      long l1 = f(null, paramLong1, paramString);
      long l2 = f(null, paramLong2, paramString);
      if (k1(l1, l2, localr0.l()))
      {
        j = t0(paramContext.getResources(), l1, paramLong3, localr0.l());
        if (1 == j) {
          localObject = localResources.getString(2131887712);
        } else if (2 == j) {
          localObject = localResources.getString(2131887723);
        }
      }
      paramString = (String)localObject;
      if (localObject == null) {
        if (paramInt == 0)
        {
          paramString = DateUtils.formatDateRange(paramContext, new Formatter(new StringBuilder(50), Locale.getDefault()), paramLong1, paramLong2, 18, "UTC").toString();
        }
        else
        {
          paramContext = a0.z(localResources, localCalendar1.get(1), localCalendar1.get(2), localCalendar1.get(5));
          paramString = paramContext;
          if (!k1(l1, l2, localr0.l()))
          {
            paramString = new StringBuilder();
            paramString.append(paramContext);
            paramString.append(" - ");
            paramString.append(a0.z(localResources, localCalendar2.get(1), localCalendar2.get(2), localCalendar2.get(5)));
            paramString = paramString.toString();
          }
        }
      }
    }
    else
    {
      if (k1(paramLong1, paramLong2, localr0.l()))
      {
        paramString = p(paramContext, paramLong1, paramLong2, j);
        j = t0(paramContext.getResources(), paramLong1, paramLong3, localr0.l());
        if (1 == j) {
          paramString = localResources.getString(2131887713, new Object[] { paramString });
        }
        for (;;)
        {
          break;
          if (2 == j)
          {
            paramString = localResources.getString(2131887724, new Object[] { paramString });
          }
          else if (paramInt == 0)
          {
            paramString = localResources.getString(2131886421, new Object[] { p(paramContext, paramLong1, paramLong2, 18), paramString });
          }
          else
          {
            paramContext = a0.z(localResources, localCalendar1.get(1), localCalendar1.get(2), localCalendar1.get(5));
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(paramContext);
            ((StringBuilder)localObject).append(" ");
            ((StringBuilder)localObject).append(paramString);
            paramString = ((StringBuilder)localObject).toString();
          }
        }
      }
      if (paramInt == 0)
      {
        paramString = p(paramContext, paramLong1, paramLong2, j | 0x12 | 0x10000 | 0x8000);
      }
      else
      {
        paramString = a0.z(localResources, localCalendar1.get(1), localCalendar1.get(2), localCalendar1.get(5));
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(p(paramContext, paramLong1, paramLong1, j));
        localObject = ((StringBuilder)localObject).toString();
        paramString = new StringBuilder();
        paramString.append((String)localObject);
        paramString.append(" - ");
        paramString.append(a0.z(localResources, localCalendar2.get(1), localCalendar2.get(2), localCalendar2.get(5)));
        localObject = paramString.toString();
        paramString = new StringBuilder();
        paramString.append((String)localObject);
        paramString.append(" ");
        paramString.append(p(paramContext, paramLong2, paramLong2, j));
        paramString = paramString.toString();
      }
    }
    return paramString;
  }
  
  public static int x(Resources paramResources, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    return B(paramResources, paramString1, paramString2, paramString3, paramInt)[DisplayType.ACCOUNT.ordinal()];
  }
  
  public static void x0(Context paramContext)
  {
    A0(paramContext, false);
  }
  
  public static Intent y(Context paramContext, j paramj, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setData(ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramj.a));
    localIntent.setClass(paramContext, EventInfoActivity.class);
    localIntent.putExtra("extra_key_event_type", paramInt);
    paramContext = paramj.b;
    long l1 = -1L;
    if (paramContext != null) {
      l2 = paramContext.getTimeInMillis();
    } else {
      l2 = -1L;
    }
    localIntent.putExtra("beginTime", l2);
    paramContext = paramj.c;
    long l2 = l1;
    if (paramContext != null) {
      l2 = paramContext.getTimeInMillis();
    }
    localIntent.putExtra("endTime", l2);
    localIntent.putExtra("attendeeStatus", paramj.c());
    return localIntent;
  }
  
  public static void y0(Context paramContext, long paramLong, int paramInt, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, AllInOneActivity.class);
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setFlags(67108864);
    if (paramLong != -1L) {
      localIntent.putExtra("beginTime", paramLong);
    }
    if (paramInt > 0) {
      localIntent.putExtra("extra_view_type", paramInt);
    }
    localIntent.putExtra("key_collapse_panel", paramBoolean);
    paramContext.startActivity(localIntent, ActivityOptions.makeCustomAnimation(paramContext, 2130771986, 2130771987).toBundle());
  }
  
  public static int z(int paramInt, DisplayType paramDisplayType)
  {
    if (DisplayType.ACCOUNT == paramDisplayType) {
      return paramInt;
    }
    boolean bool = x0.s0(CalendarApplication.e());
    float[] arrayOfFloat = new float[3];
    Color.colorToHSV(paramInt, arrayOfFloat);
    if (DisplayType.BORDER == paramDisplayType)
    {
      arrayOfFloat[1] = 0.4F;
      arrayOfFloat[2] = 0.8F;
    }
    else if (DisplayType.FILL == paramDisplayType)
    {
      float f1;
      if (bool) {
        f1 = 0.5F;
      } else {
        f1 = 0.04F;
      }
      arrayOfFloat[1] = f1;
      if (bool) {
        f1 = 0.25F;
      } else {
        f1 = 0.95F;
      }
      arrayOfFloat[2] = f1;
    }
    else if (DisplayType.TEXT == paramDisplayType)
    {
      arrayOfFloat[1] = 0.85F;
    }
    return Color.HSVToColor(arrayOfFloat);
  }
  
  public static void z0(Context paramContext, long paramLong, boolean paramBoolean)
  {
    y0(paramContext, paramLong, 4, paramBoolean);
  }
  
  public static enum DisplayType
  {
    static
    {
      DisplayType localDisplayType1 = new DisplayType("ACCOUNT", 0);
      ACCOUNT = localDisplayType1;
      DisplayType localDisplayType2 = new DisplayType("BORDER", 1);
      BORDER = localDisplayType2;
      DisplayType localDisplayType3 = new DisplayType("FILL", 2);
      FILL = localDisplayType3;
      DisplayType localDisplayType4 = new DisplayType("TEXT", 3);
      TEXT = localDisplayType4;
      $VALUES = new DisplayType[] { localDisplayType1, localDisplayType2, localDisplayType3, localDisplayType4 };
    }
    
    private DisplayType() {}
  }
  
  private static class a
    extends BroadcastReceiver
  {
    Runnable a;
    
    public a(Runnable paramRunnable)
    {
      this.a = paramRunnable;
    }
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (("android.intent.action.DATE_CHANGED".equals(paramIntent.getAction())) || ("android.intent.action.TIME_SET".equals(paramIntent.getAction())) || ("android.intent.action.LOCALE_CHANGED".equals(paramIntent.getAction())) || ("android.intent.action.TIMEZONE_CHANGED".equals(paramIntent.getAction())))
      {
        paramContext = this.a;
        if (paramContext != null) {
          paramContext.run();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.Utils
 * JD-Core Version:    0.7.0.1
 */