package f2;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract;
import android.provider.CalendarContract.Events;
import com.android.calendar.common.Utils;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.homepage.AllInOneActivity;
import com.miui.calendar.util.z;

public class d
{
  public static Intent a(Context paramContext, long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("eventId : ");
    localStringBuilder.append(paramLong1);
    localStringBuilder.append(" eventType : ");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" start:");
    localStringBuilder.append(paramLong2);
    localStringBuilder.append(" end:");
    localStringBuilder.append(paramLong3);
    z.a("Cal:D:IntentUtil", localStringBuilder.toString());
    paramContext = l.a(paramContext, paramLong1, paramLong2, paramLong3, paramInt);
    paramContext.putExtra("extra_launch_from", 2);
    paramContext.addFlags(49152);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, AllInOneActivity.class);
    paramContext = new StringBuilder();
    paramContext.append("content://com.android.calendar/time/");
    paramContext.append(paramLong);
    localIntent.setData(Uri.parse(paramContext.toString()));
    localIntent.putExtra("START_BY_WIDGET", true);
    return localIntent;
  }
  
  public static Intent c(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setFlags(268484608);
    localIntent.setClass(paramContext, AllInOneActivity.class);
    localIntent.putExtra("START_BY_WIDGET", true);
    return localIntent;
  }
  
  public static Intent d()
  {
    Intent localIntent = new Intent("android.intent.action.INSERT");
    localIntent.setData(CalendarContract.Events.CONTENT_URI);
    localIntent.setPackage("com.android.calendar");
    localIntent.putExtra("extra_key_edit_type", 3);
    return localIntent;
  }
  
  public static PendingIntent e(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setFlags(268484608);
    localIntent.setClass(paramContext, AllInOneActivity.class);
    localIntent.putExtra("START_BY_WIDGET", true);
    return PendingIntent.getActivity(paramContext, 0, localIntent, 167772160);
  }
  
  public static Intent f(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("content://com.android.calendar/view/");
    ((StringBuilder)localObject).append(paramInt1);
    localObject = ((StringBuilder)localObject).toString();
    if (paramInt2 != -1)
    {
      localIntent.setFlags(268484608);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("/");
      localStringBuilder.append(paramInt2);
      localObject = localStringBuilder.toString();
      localIntent.setClass(paramContext, AllInOneActivity.class);
      localIntent.setAction("com.android.calendar.main.views");
      if ((paramInt1 == 4) && (paramBoolean)) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      localIntent.putExtra("key_collapse_panel", paramBoolean);
      paramContext = (Context)localObject;
    }
    else
    {
      localIntent.setClass(paramContext, AllInOneActivity.class);
      paramContext = (Context)localObject;
    }
    localIntent.setData(Uri.parse(paramContext));
    return localIntent;
  }
  
  public static PendingIntent g(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, EditEventActivity.class);
    localIntent.setFlags(268484608);
    Uri.Builder localBuilder = CalendarContract.CONTENT_URI.buildUpon();
    localBuilder.appendPath("events");
    localIntent.setData(localBuilder.build());
    return PendingIntent.getActivity(paramContext, 0, localIntent, 167772160);
  }
  
  public static PendingIntent h(Context paramContext, Class<?> paramClass)
  {
    paramClass = new Intent(paramContext, paramClass);
    paramClass.setAction(Utils.g0(paramContext));
    paramClass.setDataAndType(CalendarContract.CONTENT_URI, "vnd.android.data/update");
    return PendingIntent.getBroadcast(paramContext, 0, paramClass, 67108864);
  }
  
  public static PendingIntent i(Context paramContext)
  {
    Intent localIntent = new Intent(Utils.g0(paramContext));
    localIntent.setDataAndType(CalendarContract.CONTENT_URI, "vnd.android.data/update");
    return PendingIntent.getBroadcast(paramContext, 0, localIntent, 67108864);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.d
 * JD-Core Version:    0.7.0.1
 */