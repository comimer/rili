package n6;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BaseBundle;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.view.View;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import m6.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class o
  extends m6.b
{
  private a a;
  
  public String getName()
  {
    return "listenInboxSms";
  }
  
  public d invoke(com.xiaomi.passport.webview.a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    String str = getParamsStringFieldOrThrow(paramJSONObject, "callbackId");
    paramJSONObject = parama.getContext();
    if ((paramJSONObject.checkSelfPermission("android.permission.RECEIVE_SMS") != 0) && ((paramJSONObject instanceof Activity))) {
      ((Activity)paramJSONObject).requestPermissions(new String[] { "android.permission.RECEIVE_SMS" }, 0);
    }
    if (this.a == null) {
      this.a = new a(paramJSONObject.getApplicationContext());
    }
    this.a.b(str, parama);
    return new d(true);
  }
  
  public void release(com.xiaomi.passport.webview.a parama)
  {
    parama = this.a;
    if (parama != null) {
      parama.c();
    }
  }
  
  private static class a
    extends BroadcastReceiver
  {
    private Context a;
    private boolean b = false;
    private Map<String, com.xiaomi.passport.webview.a> c = new HashMap();
    
    public a(Context paramContext)
    {
      this.a = paramContext;
    }
    
    JSONObject a(Intent paramIntent)
    {
      if ((paramIntent != null) && (paramIntent.getExtras() != null))
      {
        Object localObject = paramIntent.getExtras();
        paramIntent = new JSONObject();
        Object[] arrayOfObject = (Object[])((BaseBundle)localObject).get("pdus");
        localObject = Integer.toString(((BaseBundle)localObject).getInt("subscription_id"));
        try
        {
          paramIntent.put("subId", localObject);
          JSONArray localJSONArray = new JSONArray();
          int i = arrayOfObject.length;
          for (int j = 0; j < i; j++)
          {
            String str = SmsMessage.createFromPdu((byte[])arrayOfObject[j]).getMessageBody();
            if (!TextUtils.isEmpty(str))
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("receive sms body=");
              ((StringBuilder)localObject).append(str);
              com.xiaomi.accountsdk.utils.b.g("JsbListenInboxSms", ((StringBuilder)localObject).toString());
              localJSONArray.put(str);
            }
          }
          try
          {
            paramIntent.put("inboxSms", localJSONArray);
            return paramIntent;
          }
          catch (JSONException paramIntent)
          {
            throw new IllegalStateException("should never happen", paramIntent);
          }
          com.xiaomi.accountsdk.utils.b.g("JsbListenInboxSms", "bundle is null");
        }
        catch (JSONException paramIntent)
        {
          throw new IllegalStateException("should never happen", paramIntent);
        }
      }
      return null;
    }
    
    public void b(String paramString, com.xiaomi.passport.webview.a parama)
    {
      this.c.put(paramString, parama);
      if (this.b) {
        return;
      }
      paramString = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
      k6.a.a(this.a, this, paramString, true);
      this.b = true;
    }
    
    public void c()
    {
      if (this.b) {
        this.a.unregisterReceiver(this);
      }
      this.b = false;
    }
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      JSONObject localJSONObject = a(paramIntent);
      if (localJSONObject == null)
      {
        com.xiaomi.accountsdk.utils.b.g("JsbListenInboxSms", "null message");
        return;
      }
      paramContext = this.c.keySet().iterator();
      while (paramContext.hasNext())
      {
        paramIntent = (String)paramContext.next();
        m6.a.b((com.xiaomi.passport.webview.a)this.c.get(paramIntent), paramIntent, localJSONObject);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.o
 * JD-Core Version:    0.7.0.1
 */