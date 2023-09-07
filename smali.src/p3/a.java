package p3;

import android.content.Context;
import android.content.SharedPreferences;
import com.miui.calendar.util.z;
import com.xiaomi.settingsdk.backup.data.DataPackage;
import com.xiaomi.settingsdk.backup.data.SettingItem;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  implements l7.a
{
  private void d(Context paramContext, DataPackage paramDataPackage)
  {
    JSONObject localJSONObject = new JSONObject();
    paramContext = b2.a.f(paramContext);
    try
    {
      localJSONObject.put("preferences_week_start_day", paramContext.getString("preferences_week_start_day", "-1"));
      localJSONObject.put("preferences_credit_repayment", paramContext.getBoolean("preferences_credit_repayment", true));
      localJSONObject.put("preferences_travel", paramContext.getBoolean("preferences_travel", true));
      localJSONObject.put("preferences_movie", paramContext.getBoolean("preferences_movie", true));
      localJSONObject.put("preferences_electricity_bill", paramContext.getBoolean("preferences_electricity_bill", true));
      localJSONObject.put("preferences_gas_bill", paramContext.getBoolean("preferences_gas_bill", true));
      localJSONObject.put("preferences_hotel", paramContext.getBoolean("preferences_hotel", true));
      localJSONObject.put("preferences_loan", paramContext.getBoolean("preferences_loan", true));
      localJSONObject.put("key_import_todo", paramContext.getBoolean("key_import_todo", true));
      localJSONObject.put("key_chinese_almanac_pref", paramContext.getBoolean("key_chinese_almanac_pref", false));
      localJSONObject.put("key_holiday_display", paramContext.getBoolean("key_holiday_display", true));
      localJSONObject.put("key_weather_display", paramContext.getBoolean("key_weather_display", true));
      localJSONObject.put("key_subscription_display", paramContext.getBoolean("key_subscription_display", true));
      localJSONObject.put("key_ai_time_parse", paramContext.getBoolean("key_ai_time_parse", false));
      localJSONObject.put("preferences_alerts", paramContext.getBoolean("preferences_alerts", true));
      localJSONObject.put("key_alarm_default_event_credit", paramContext.getBoolean("key_alarm_default_event_credit", false));
      localJSONObject.put("key_alarm_default_event_train", paramContext.getBoolean("key_alarm_default_event_train", false));
      localJSONObject.put("key_alarm_default_event_flight", paramContext.getBoolean("key_alarm_default_event_flight", false));
      localJSONObject.put("key_alarm_default_event_movie", paramContext.getBoolean("key_alarm_default_event_movie", false));
      localJSONObject.put("key_alarm_default_event_electric", paramContext.getBoolean("key_alarm_default_event_electric", false));
      localJSONObject.put("key_alarm_default_event_gas", paramContext.getBoolean("key_alarm_default_event_gas", false));
      localJSONObject.put("key_alarm_default_event_hotel", paramContext.getBoolean("key_alarm_default_event_hotel", false));
      localJSONObject.put("key_alarm_default_event_loan", paramContext.getBoolean("key_alarm_default_event_loan", false));
      localJSONObject.put("preferences_default_reminder", paramContext.getString("preferences_default_reminder", "-1"));
      localJSONObject.put("preferences_default_allday_reminder_minute", paramContext.getInt("preferences_default_allday_reminder_minute", 480));
      localJSONObject.put("preferences_default_reminder_later_time", paramContext.getString("preferences_default_reminder_later_time", ""));
      localJSONObject.put("key_holiday_reminder", paramContext.getBoolean("key_holiday_reminder", true));
      localJSONObject.put("key_show_reject_agenda", paramContext.getBoolean("key_show_reject_agenda", true));
      paramContext = new java/lang/StringBuilder;
      paramContext.<init>();
      paramContext.append("backupSetting ");
      paramContext.append(localJSONObject);
      paramContext = paramContext.toString();
      try
      {
        z.a("Cal:D:CalendarCloudBackupImpl", paramContext);
        paramDataPackage.addKeyJson("json_key_calendar_settings", localJSONObject);
      }
      catch (JSONException paramContext) {}
      z.d("Cal:D:CalendarCloudBackupImpl", "backupConfig()", paramContext);
    }
    catch (JSONException paramContext) {}
  }
  
  private void e(Context paramContext, DataPackage paramDataPackage)
  {
    if ((paramDataPackage != null) && (paramDataPackage.get("json_key_calendar_settings") != null))
    {
      paramDataPackage = (JSONObject)paramDataPackage.get("json_key_calendar_settings").getValue();
      if (paramDataPackage != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("restoreSetting ");
        localStringBuilder.append(paramDataPackage);
        z.a("Cal:D:CalendarCloudBackupImpl", localStringBuilder.toString());
        b2.a.k(paramContext, "preferences_week_start_day", paramDataPackage.optString("preferences_week_start_day", "-1"));
        b2.a.l(paramContext, "preferences_credit_repayment", paramDataPackage.optBoolean("preferences_credit_repayment", true));
        b2.a.l(paramContext, "preferences_travel", paramDataPackage.optBoolean("preferences_travel", true));
        b2.a.l(paramContext, "preferences_movie", paramDataPackage.optBoolean("preferences_movie", true));
        b2.a.l(paramContext, "preferences_electricity_bill", paramDataPackage.optBoolean("preferences_electricity_bill", true));
        b2.a.l(paramContext, "preferences_gas_bill", paramDataPackage.optBoolean("preferences_gas_bill", true));
        b2.a.l(paramContext, "preferences_hotel", paramDataPackage.optBoolean("preferences_hotel", true));
        b2.a.l(paramContext, "preferences_loan", paramDataPackage.optBoolean("preferences_loan", true));
        b2.a.l(paramContext, "key_import_todo", paramDataPackage.optBoolean("key_import_todo", true));
        b2.a.l(paramContext, "key_chinese_almanac_pref", paramDataPackage.optBoolean("key_chinese_almanac_pref", false));
        b2.a.l(paramContext, "key_holiday_display", paramDataPackage.optBoolean("key_holiday_display", true));
        b2.a.l(paramContext, "key_weather_display", paramDataPackage.optBoolean("key_weather_display", true));
        b2.a.l(paramContext, "key_subscription_display", paramDataPackage.optBoolean("key_subscription_display", true));
        b2.a.l(paramContext, "key_ai_time_parse", paramDataPackage.optBoolean("key_ai_time_parse", false));
        b2.a.l(paramContext, "preferences_alerts", paramDataPackage.optBoolean("preferences_alerts", true));
        b2.a.l(paramContext, "key_alarm_default_event_credit", paramDataPackage.optBoolean("key_alarm_default_event_credit", false));
        b2.a.l(paramContext, "key_alarm_default_event_train", paramDataPackage.optBoolean("key_alarm_default_event_train", false));
        b2.a.l(paramContext, "key_alarm_default_event_flight", paramDataPackage.optBoolean("key_alarm_default_event_flight", false));
        b2.a.l(paramContext, "key_alarm_default_event_movie", paramDataPackage.optBoolean("key_alarm_default_event_movie", false));
        b2.a.l(paramContext, "key_alarm_default_event_electric", paramDataPackage.optBoolean("key_alarm_default_event_electric", false));
        b2.a.l(paramContext, "key_alarm_default_event_gas", paramDataPackage.optBoolean("key_alarm_default_event_gas", false));
        b2.a.l(paramContext, "key_alarm_default_event_hotel", paramDataPackage.optBoolean("key_alarm_default_event_hotel", false));
        b2.a.l(paramContext, "key_alarm_default_event_loan", paramDataPackage.optBoolean("key_alarm_default_event_loan", false));
        b2.a.k(paramContext, "preferences_default_reminder", paramDataPackage.optString("preferences_default_reminder", "-1"));
        b2.a.i(paramContext, "preferences_default_allday_reminder_minute", paramDataPackage.optInt("preferences_default_allday_reminder_minute", 480));
        b2.a.k(paramContext, "preferences_default_reminder_later_time", paramDataPackage.optString("preferences_default_reminder_later_time", ""));
        b2.a.l(paramContext, "key_holiday_reminder", paramDataPackage.optBoolean("key_holiday_reminder", true));
        b2.a.l(paramContext, "key_show_reject_agenda", paramDataPackage.optBoolean("key_show_reject_agenda", true));
      }
    }
  }
  
  public void a(Context paramContext, DataPackage paramDataPackage)
  {
    d(paramContext, paramDataPackage);
  }
  
  public void b(Context paramContext, DataPackage paramDataPackage, int paramInt)
  {
    e(paramContext, paramDataPackage);
  }
  
  public int c(Context paramContext)
  {
    return 1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p3.a
 * JD-Core Version:    0.7.0.1
 */