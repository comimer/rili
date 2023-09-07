package x3;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.z;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import u1.b;
import u1.b.a;
import u1.d;

public class c
{
  public static Intent a(JSONArray paramJSONArray)
  {
    if ((paramJSONArray != null) && (paramJSONArray.length() != 0)) {
      try
      {
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>("productid://");
        for (int i = 0; i < paramJSONArray.length(); i++)
        {
          if (i > 0) {
            localStringBuilder.append("-");
          }
          localStringBuilder.append(paramJSONArray.getJSONObject(i).get("productId"));
        }
        paramJSONArray = new android/content/Intent;
        paramJSONArray.<init>("com.miui.virtualsim.action.PURCHASE");
        paramJSONArray.setData(Uri.parse(localStringBuilder.toString()));
        paramJSONArray.putExtra("launchfrom", "virtualsim_channel_cal");
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("getVirtualSimIntent(): ");
        localStringBuilder.append(paramJSONArray);
        z.a("Cal:D:ThirdPartyUtils", localStringBuilder.toString());
        return paramJSONArray;
      }
      catch (Exception paramJSONArray)
      {
        z.d("Cal:D:ThirdPartyUtils", "getVirtualSimIntent", paramJSONArray);
        return null;
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getVirtualSimIntent(): return, dataArray:");
    localStringBuilder.append(paramJSONArray);
    z.a("Cal:D:ThirdPartyUtils", localStringBuilder.toString());
    return null;
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2, b.a parama)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("date", paramString1);
    localHashMap.put("fnum", paramString2);
    paramContext = l0.g(paramContext, "https://api.comm.miui.com/calendar/api/flight", localHashMap);
    d.d().e(paramContext).q(new b(parama));
  }
  
  public static void c(Context paramContext, String paramString, b.a parama)
  {
    paramContext = new StringBuilder();
    paramContext.append("requestVirtualSimInfo(): flightCode:");
    paramContext.append(paramString);
    z.a("Cal:D:ThirdPartyUtils", paramContext.toString());
    paramContext = Uri.parse("https://netroam.mihome.xiaomi.net/simProduct/getAvailableProducts").buildUpon().appendQueryParameter("flightCode", paramString).build().toString();
    d.d().E(paramContext).q(new b(parama));
  }
  
  public static void d(Context paramContext, long paramLong, String paramString)
  {
    paramContext.startActivity(Utils.G(paramContext, null, String.format("https://www.variflight.com/h5checkin/?AE71649A58c77=&id=10144&eventid=%s&ciphertext=%s", new Object[] { String.valueOf(paramLong), paramString }), "com.android.browser", 268435456), ActivityOptions.makeCustomAnimation(paramContext, 2130771988, 2130771989).toBundle());
  }
  
  public static void e(Context paramContext, long paramLong, String paramString)
  {
    paramContext.startActivity(Utils.G(paramContext, null, String.format("https://www.variflight.com/h5checkin/?AE71649A58c77=&id=10144&eventid=%s&aircode=%s", new Object[] { String.valueOf(paramLong), paramString }), "com.android.browser", 268435456), ActivityOptions.makeCustomAnimation(paramContext, 2130771988, 2130771989).toBundle());
  }
  
  public static void f(Context paramContext, String paramString1, String paramString2)
  {
    paramContext.startActivity(Utils.G(paramContext, null, String.format("https://www.variflight.com/h5/details?AE71649A58c77&fnum=%s&n_calendar=%s&token=002f6ec989336670489509475ebf1e3b", new Object[] { paramString1, paramString2 }), "com.android.browser", 268435456), ActivityOptions.makeCustomAnimation(paramContext, 2130771988, 2130771989).toBundle());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x3.c
 * JD-Core Version:    0.7.0.1
 */