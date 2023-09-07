package com.miui.calendar.event.travel;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.event.schema.FlightSchema;
import com.android.calendar.common.event.schema.TrainEvent;
import com.android.calendar.common.event.schema.TravelEvent;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m4.j;
import m4.k;
import org.json.JSONObject;

public class a
{
  public static TrainEvent a(Intent paramIntent)
  {
    Object localObject1 = paramIntent.getStringExtra("extra_result");
    Object localObject2 = paramIntent.getStringExtra("extra_content");
    try
    {
      int i = Integer.parseInt(paramIntent.getStringExtra("extra_ontology_type"));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("handleSms(), ontologyType = ");
      localStringBuilder.append(i);
      z.h("Cal:D:TravelUtils", localStringBuilder.toString());
      localObject1 = SmartMessage.parse((String)localObject1, i);
      if (localObject1 == null)
      {
        z.n("Cal:D:TravelUtils", "handleSms(): smartMessage is NULL or INVALID, return");
        return null;
      }
      localObject1 = new j(CalendarApplication.e(), (SmartMessage)localObject1, (String)localObject2);
      localObject2 = new TrainEvent();
      ((TrainEvent)localObject2).fillEpInfo(((k)localObject1).i());
      try
      {
        localObject1 = paramIntent.getStringExtra("extra_arrive_info");
        paramIntent = new org/json/JSONObject;
        paramIntent.<init>((String)localObject1);
        ((TravelEvent)localObject2).setArrTime(paramIntent.optString("arriveTime"));
        ((TravelEvent)localObject2).setArrDate(paramIntent.optString("arriveDate"));
        ((TrainEvent)localObject2).setArrStation(paramIntent.optString("arriveDestName"));
        ((TrainEvent)localObject2).setArrStationCode(paramIntent.optString("arriveDestCode"));
      }
      catch (Exception paramIntent)
      {
        z.f("Cal:D:TravelUtils", "onEventIdNotFound destination error", paramIntent);
      }
      return localObject2;
    }
    catch (NumberFormatException paramIntent)
    {
      z.f("Cal:D:TravelUtils", "handleSms(): ontologyType is INVALID, return", paramIntent);
    }
    return null;
  }
  
  public static String b(String paramString)
  {
    Matcher localMatcher = Pattern.compile("(\\\\u(\\p{XDigit}{4}))").matcher(paramString);
    while (localMatcher.find())
    {
      char c = (char)Integer.parseInt(localMatcher.group(2), 16);
      String str = localMatcher.group(1);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(c);
      localStringBuilder.append("");
      paramString = paramString.replace(str, localStringBuilder.toString());
    }
    return paramString;
  }
  
  public static String c(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    paramContext = paramContext.getResources().getString(2131887741);
    try
    {
      SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
      localSimpleDateFormat.<init>("yyyy-MM-dd");
      Date localDate = localSimpleDateFormat.parse(paramString);
      localSimpleDateFormat = new java/text/SimpleDateFormat;
      localSimpleDateFormat.<init>(paramContext);
      paramContext = localSimpleDateFormat.format(localDate);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:TravelUtils", "train date invalid!", paramContext);
    }
    return paramString;
  }
  
  public static String d(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    paramContext = paramContext.getResources().getString(2131887747);
    try
    {
      Object localObject = new java/text/SimpleDateFormat;
      ((SimpleDateFormat)localObject).<init>("HH:mm");
      localObject = ((DateFormat)localObject).parse(paramString);
      SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
      localSimpleDateFormat.<init>(paramContext);
      paramContext = localSimpleDateFormat.format((Date)localObject);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:TravelUtils", "train time invalid!", paramContext);
    }
    return paramString;
  }
  
  public static int e(int paramInt, FlightSchema paramFlightSchema)
  {
    if (paramInt == 4) {
      return 0;
    }
    if (paramFlightSchema == null) {
      return -1;
    }
    return paramFlightSchema.getFlightArrType();
  }
  
  public static int f(int paramInt, FlightSchema paramFlightSchema)
  {
    if (paramInt == 4) {
      return 0;
    }
    if (paramFlightSchema == null) {
      return -1;
    }
    return paramFlightSchema.getFlightDepType();
  }
  
  public static String g(String paramString1, String paramString2, String paramString3)
  {
    String str = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      str = "";
    }
    paramString1 = new StringBuilder(str);
    paramString1.append(paramString2);
    paramString1.append("\n");
    paramString1.append(paramString3);
    return paramString1.toString();
  }
  
  public static int h(List<TrainArriveStationSchema.StationSchema> paramList, String paramString)
  {
    int i = -1;
    int j = i;
    if (paramList != null)
    {
      j = i;
      if (!paramList.isEmpty()) {
        if (TextUtils.isEmpty(paramString)) {
          j = i;
        } else {
          for (int k = 0;; k++)
          {
            j = i;
            if (k >= paramList.size()) {
              break;
            }
            String str = ((TrainArriveStationSchema.StationSchema)paramList.get(k)).stationName;
            if ((str != null) && (o(str, paramString)))
            {
              j = k;
              break;
            }
          }
        }
      }
    }
    return j;
  }
  
  public static String i(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = new StringBuilder();
    if (!TextUtils.isEmpty(paramString1)) {
      paramContext.append(paramString1);
    }
    paramContext.append("\n");
    if (!TextUtils.isEmpty(paramString2)) {
      paramContext.append(paramString2);
    }
    paramContext.append("\n");
    if (!TextUtils.isEmpty(paramString3))
    {
      paramContext.append(" ");
      paramContext.append(paramString3);
    }
    return paramContext.toString();
  }
  
  public static String j(Context paramContext, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString1))
    {
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append(" ");
      }
      localStringBuilder.append(paramString1);
      localStringBuilder.append(paramContext.getResources().getString(2131887748));
      if (!TextUtils.isEmpty(paramString2))
      {
        localStringBuilder.append(paramString2);
        localStringBuilder.append(paramContext.getResources().getString(2131887764));
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String k(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(l0.e.hashCode());
    localStringBuilder.append("_");
    if (paramString1 == null) {
      paramString1 = "";
    } else {
      paramString1 = paramString1.toLowerCase();
    }
    localStringBuilder.append(paramString1);
    localStringBuilder.append("_");
    localStringBuilder.append(paramString2);
    return localStringBuilder.toString();
  }
  
  public static long[] l(String paramString1, String paramString2)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    long[] arrayOfLong = new long[3];
    try
    {
      paramString2 = localSimpleDateFormat.parse(paramString2);
      paramString1 = localSimpleDateFormat.parse(paramString1);
      long l1 = paramString2.getTime() - paramString1.getTime();
      long l2 = l1 / 86400000L;
      long l3 = l1 / 3600000L;
      long l4 = 24L * l2;
      l3 -= l4;
      l1 /= 60000L;
      arrayOfLong[0] = l2;
      arrayOfLong[1] = l3;
      arrayOfLong[2] = (l1 - l4 * 60L - 60L * l3);
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return arrayOfLong;
  }
  
  public static void m(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if ((paramContext != null) && (!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      try
      {
        Uri.Builder localBuilder = new android/net/Uri$Builder;
        localBuilder.<init>();
        paramString2 = localBuilder.scheme("https").authority("hapjs.org").path("app/com.hlth.gtgj.mini/MineJourney/TrainInfo").appendQueryParameter("trainNo", paramString1).appendQueryParameter("departDate", paramString2).appendQueryParameter("departCode", paramString3).appendQueryParameter("arriveCode", paramString4).build();
        paramString1 = new android/content/Intent;
        paramString1.<init>();
        paramString1.setAction("android.intent.action.VIEW");
        paramString1.setData(paramString2);
        paramString1.setFlags(268435456);
        paramContext.startActivity(paramString1);
      }
      catch (Exception paramString1)
      {
        z.d("Cal:D:TravelUtils", "open gaotieguanjia error", paramString1);
        t0.f(paramContext.getApplicationContext(), 2131887737);
      }
      return;
    }
    z.m("Cal:D:TravelUtils", "goToGtgj parameter invalid");
  }
  
  public static boolean n(String paramString1, String paramString2)
  {
    boolean bool1 = TextUtils.isEmpty(paramString1);
    boolean bool2 = true;
    boolean bool3 = bool2;
    if (!bool1) {
      if (TextUtils.isEmpty(paramString2))
      {
        bool3 = bool2;
      }
      else
      {
        Calendar localCalendar = Calendar.getInstance();
        long l = p(paramString1, paramString2);
        if (l == -1L) {
          return true;
        }
        if (l - localCalendar.getTimeInMillis() <= 0L) {
          bool3 = bool2;
        } else {
          bool3 = false;
        }
      }
    }
    return bool3;
  }
  
  public static boolean o(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null))
    {
      String str = paramString1;
      if (paramString1.endsWith("站")) {
        str = paramString1.substring(0, paramString1.length() - 1);
      }
      paramString1 = paramString2;
      if (paramString2.endsWith("站")) {
        paramString1 = paramString2.substring(0, paramString2.length() - 1);
      }
      return str.equals(paramString1);
    }
    return false;
  }
  
  public static long p(String paramString1, String paramString2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("parseDateTimeString(): dateString:");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(", timeString:");
    ((StringBuilder)localObject).append(paramString2);
    z.a("Cal:D:TravelUtils", ((StringBuilder)localObject).toString());
    if (TextUtils.isEmpty(paramString1)) {
      return -1L;
    }
    localObject = paramString2;
    if (TextUtils.isEmpty(paramString2)) {
      localObject = "00:00:00";
    }
    paramString2 = new StringBuilder();
    paramString2.append(paramString1);
    paramString2.append(" ");
    paramString2.append((String)localObject);
    paramString1 = paramString2.toString();
    try
    {
      paramString2 = new java/text/SimpleDateFormat;
      paramString2.<init>("yyyy-MM-dd HH:mm:ss");
      paramString2 = paramString2.parse(paramString1);
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTime(paramString2);
      long l = ((Calendar)localObject).getTimeInMillis();
      return l;
    }
    catch (ParseException paramString2)
    {
      z.d("Cal:D:TravelUtils", paramString1, paramString2);
    }
    return -1L;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.event.travel.a
 * JD-Core Version:    0.7.0.1
 */