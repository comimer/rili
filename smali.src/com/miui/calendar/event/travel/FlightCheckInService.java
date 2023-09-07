package com.miui.calendar.event.travel;

import android.app.IntentService;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import org.json.JSONException;
import org.json.JSONObject;
import s1.d;
import t1.a;

public class FlightCheckInService
  extends IntentService
{
  private static final String[] a = { "passenger", "passenger_1", "passenger_2" };
  private static final String[] b = { "cipher_text", "cipher_text_1", "cipher_text_2" };
  private static final String[] c = { "seat_no", "seat_no_1", "seat_no_2" };
  private static final String[] d = { "status", "status_1", "status_2" };
  
  public FlightCheckInService()
  {
    super("FlightCheckInService");
  }
  
  private void a(long paramLong, String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("saveCheckInResult() eventId=");
    ((StringBuilder)localObject1).append(paramLong);
    ((StringBuilder)localObject1).append(",seatNo=");
    ((StringBuilder)localObject1).append(paramString2);
    ((StringBuilder)localObject1).append(",status=");
    ((StringBuilder)localObject1).append(paramInt1);
    ((StringBuilder)localObject1).append(",onlyBackground=");
    ((StringBuilder)localObject1).append(paramInt2);
    z.a("Cal:D:FlightCheckInService", ((StringBuilder)localObject1).toString());
    Object localObject2 = d.h(this, paramLong, "travel_info");
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      z.m("Cal:D:FlightCheckInService", "saveCheckInResult() no travel ep value");
      return;
    }
    try
    {
      localObject1 = new org/json/JSONObject;
      ((JSONObject)localObject1).<init>((String)localObject2);
      for (int i = 0;; i++)
      {
        localObject2 = a;
        if (i >= localObject2.length) {
          return;
        }
        localObject2 = ((JSONObject)localObject1).optString(localObject2[i]);
        if ((TextUtils.isEmpty((CharSequence)localObject2)) || (TextUtils.equals((CharSequence)localObject2, paramString3))) {
          break;
        }
      }
      b((JSONObject)localObject1, i, paramString1, paramString2, paramInt1, paramString3);
      Utils.W0(this, paramLong, "travel_info", ((JSONObject)localObject1).toString());
      if (paramInt2 <= 0) {
        a.m(this, paramLong, 11, 268435456);
      }
      g0.d("flight_check_in_result_saved");
    }
    catch (JSONException paramString1)
    {
      z.d("Cal:D:FlightCheckInService", "saveCheckInResult()", paramString1);
    }
  }
  
  private void b(JSONObject paramJSONObject, int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("updatePassenger() index=");
    localStringBuilder.append(paramInt1);
    z.a("Cal:D:FlightCheckInService", localStringBuilder.toString());
    try
    {
      paramJSONObject.put(a[paramInt1], paramString3);
      paramJSONObject.put(b[paramInt1], paramString1);
      paramJSONObject.put(c[paramInt1], paramString2);
      paramJSONObject.put(d[paramInt1], paramInt2);
    }
    catch (JSONException paramJSONObject)
    {
      z.d("Cal:D:FlightCheckInService", "updatePassenger()", paramJSONObject);
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.getData() != null))
    {
      Uri localUri = paramIntent.getData();
      z.a("Cal:D:FlightCheckInService", "onHandleIntent()");
      long l;
      try
      {
        l = Long.parseLong(localUri.getQueryParameter("eventid"));
      }
      catch (Exception paramIntent)
      {
        z.d("Cal:D:FlightCheckInService", "onHandleIntent()", paramIntent);
        l = 0L;
      }
      if (l <= 0L)
      {
        paramIntent = new StringBuilder();
        paramIntent.append("onHandleIntent() invalid event id:");
        paramIntent.append(l);
        z.m("Cal:D:FlightCheckInService", paramIntent.toString());
        return;
      }
      paramIntent = localUri.getQueryParameter("seatno");
      if (TextUtils.isEmpty(paramIntent))
      {
        z.m("Cal:D:FlightCheckInService", "onHandleIntent() no seat no");
        return;
      }
      localObject = localUri.getQueryParameter("cipherText");
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        z.m("Cal:D:FlightCheckInService", "onHandleIntent() no cipher text");
        return;
      }
      int i;
      try
      {
        i = Integer.parseInt(localUri.getQueryParameter("status"));
      }
      catch (Exception localException2)
      {
        z.d("Cal:D:FlightCheckInService", "onHandleIntent()", localException2);
        i = 0;
      }
      if (i <= 0)
      {
        paramIntent = new StringBuilder();
        paramIntent.append("onHandleIntent() invalid status:");
        paramIntent.append(i);
        z.m("Cal:D:FlightCheckInService", paramIntent.toString());
        return;
      }
      String str = localUri.getQueryParameter("userName");
      if (TextUtils.isEmpty(str))
      {
        z.m("Cal:D:FlightCheckInService", "onHandleIntent() no userName");
        return;
      }
      int j;
      try
      {
        j = Integer.parseInt(localUri.getQueryParameter("onlyBackground"));
      }
      catch (Exception localException1)
      {
        j = 0;
      }
      a(l, (String)localObject, paramIntent, i, str, j);
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onHandleIntent(): intent INVALID:");
    ((StringBuilder)localObject).append(paramIntent);
    z.m("Cal:D:FlightCheckInService", ((StringBuilder)localObject).toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.event.travel.FlightCheckInService
 * JD-Core Version:    0.7.0.1
 */