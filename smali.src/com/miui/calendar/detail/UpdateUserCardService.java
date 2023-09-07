package com.miui.calendar.detail;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import b2.a;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.v;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import org.json.JSONObject;
import u1.b.a;

public class UpdateUserCardService
  extends IntentService
{
  public UpdateUserCardService()
  {
    super("SyncActivityService");
  }
  
  private void e(long paramLong, int paramInt, String paramString)
  {
    k3.d.g(new n(this, paramLong, paramInt, paramString));
  }
  
  public static void f(Context paramContext, long paramLong, int paramInt, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("updateUserCard() cardId=");
    ((StringBuilder)localObject).append(paramLong);
    ((StringBuilder)localObject).append(",userHide=");
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(",toastText=");
    ((StringBuilder)localObject).append(paramString);
    z.a("Cal:D:UpdateUserCardService", ((StringBuilder)localObject).toString());
    localObject = new Intent(paramContext, UpdateUserCardService.class);
    ((Intent)localObject).setAction("update_user_card");
    ((Intent)localObject).putExtra("card_id", paramLong);
    ((Intent)localObject).putExtra("user_hide", paramInt);
    ((Intent)localObject).putExtra("toast_text", paramString);
    paramContext.startService((Intent)localObject);
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      z.a("Cal:D:UpdateUserCardService", "intent == null");
      return;
    }
    String str = paramIntent.getAction();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onHandleIntent(): tid=");
    localStringBuilder.append(Thread.currentThread().getId());
    localStringBuilder.append(", action=");
    localStringBuilder.append(str);
    z.a("Cal:D:UpdateUserCardService", localStringBuilder.toString());
    if ("update_user_card".equals(str)) {
      e(paramIntent.getLongExtra("card_id", 0L), paramIntent.getIntExtra("user_hide", 0), paramIntent.getStringExtra("toast_text"));
    }
  }
  
  private class a
    implements b.a
  {
    private String a;
    private int b;
    
    public a(String paramString, int paramInt)
    {
      this.a = paramString;
      this.b = paramInt;
    }
    
    public void a(JSONObject paramJSONObject)
    {
      Object localObject1 = null;
      Object localObject2;
      try
      {
        localObject2 = l0.b(paramJSONObject.getString("data"));
        try
        {
          s4.d.c((String)localObject2);
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            paramJSONObject = new org/json/JSONObject;
            paramJSONObject.<init>((String)localObject2);
            int i = paramJSONObject.optInt("showType");
            int j = this.b;
            boolean bool;
            if (j <= 0) {
              bool = true;
            } else {
              bool = false;
            }
            j = i + 20;
            if (j != 47)
            {
              paramJSONObject = "subscribed";
              StringBuilder localStringBuilder;
              if (j != 52)
              {
                if (j != 53)
                {
                  if (j != 57)
                  {
                    if ((j == 58) && (!bool))
                    {
                      q.h(UpdateUserCardService.this, "class_schedule");
                      a.j(UpdateUserCardService.this, "key_subscribe_class_schedule", -1L);
                    }
                  }
                  else if (bool) {
                    a.j(UpdateUserCardService.this, "key_subscribe_menstruation", -1L);
                  }
                }
                else
                {
                  k4.d.k(UpdateUserCardService.this, bool);
                  localStringBuilder = new java/lang/StringBuilder;
                  localStringBuilder.<init>();
                  localStringBuilder.append("user has ");
                  if (!bool) {
                    paramJSONObject = "unsubscribed";
                  }
                  localStringBuilder.append(paramJSONObject);
                  localStringBuilder.append(" shift card");
                  z.a("Cal:D:UpdateUserCardService", localStringBuilder.toString());
                }
              }
              else
              {
                a.l(UpdateUserCardService.this, "preferences_limit_card_subscribed", bool);
                localStringBuilder = new java/lang/StringBuilder;
                localStringBuilder.<init>();
                localStringBuilder.append("user has ");
                if (!bool) {
                  paramJSONObject = "unsubscribed";
                }
                localStringBuilder.append(paramJSONObject);
                localStringBuilder.append(" limit card");
                z.a("Cal:D:UpdateUserCardService", localStringBuilder.toString());
              }
            }
            else if (!bool)
            {
              q.h(UpdateUserCardService.this, "class_schedule");
              q.h(UpdateUserCardService.this, "custom_cards");
              a.j(UpdateUserCardService.this, "key_subscribe_class_schedule", -1L);
            }
          }
          r3.a.g = false;
          com.android.calendar.cards.t.i = true;
          g.c(g.v.l(null));
          if (TextUtils.isEmpty(this.a)) {
            return;
          }
          t0.c(UpdateUserCardService.this, this.a);
        }
        catch (Exception localException1)
        {
          paramJSONObject = (JSONObject)localObject2;
        }
        localObject2 = new StringBuilder();
      }
      catch (Exception localException2)
      {
        paramJSONObject = localObject1;
      }
      ((StringBuilder)localObject2).append("data:");
      ((StringBuilder)localObject2).append(paramJSONObject);
      z.d("Cal:D:UpdateUserCardService", ((StringBuilder)localObject2).toString(), localException2);
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:UpdateUserCardService", "UpdateUserCardResponseListener:", paramException);
      g.c(g.v.l(null));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.detail.UpdateUserCardService
 * JD-Core Version:    0.7.0.1
 */