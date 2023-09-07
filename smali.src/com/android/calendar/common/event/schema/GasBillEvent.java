package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class GasBillEvent
  extends SmsEvent
{
  public static final String JSON_KEY_ACCOUNT = "account";
  public static final String JSON_KEY_AMOUNT = "amount";
  public static final String JSON_KEY_COST = "cost";
  public static final String JSON_KEY_INTERVAL = "interval";
  private static final String TAG = "Cal:D:GasBillEvent";
  protected String mAccount;
  protected String mAmount;
  protected String mCost;
  protected String mInterval;
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof GasBillEvent))
      {
        paramObject = (GasBillEvent)paramObject;
        bool2 = bool1;
        if (TextUtils.equals(this.mCost, paramObject.getCost()))
        {
          bool2 = bool1;
          if (TextUtils.equals(this.mAccount, paramObject.getAccount()))
          {
            bool2 = bool1;
            if (TextUtils.equals(this.mAmount, paramObject.getAmount()))
            {
              bool2 = bool1;
              if (TextUtils.equals(this.mInterval, paramObject.getInterval())) {
                bool2 = true;
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mCost = paramJSONObject.optString("cost");
    this.mAccount = paramJSONObject.optString("account");
    this.mAmount = paramJSONObject.optString("amount");
    this.mInterval = paramJSONObject.optString("interval");
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("cost", this.mCost);
    paramJSONObject.put("account", this.mAccount);
    paramJSONObject.put("amount", this.mAmount);
    paramJSONObject.put("interval", this.mInterval);
  }
  
  public String getAccount()
  {
    return this.mAccount;
  }
  
  public String getAmount()
  {
    return this.mAmount;
  }
  
  public String getCost()
  {
    return this.mCost;
  }
  
  public String getEpName()
  {
    return "gas_bill_info";
  }
  
  public int getEventType()
  {
    return 14;
  }
  
  public String getInterval()
  {
    return this.mInterval;
  }
  
  public void setAccount(String paramString)
  {
    this.mAccount = paramString;
  }
  
  public void setAmount(String paramString)
  {
    this.mAmount = paramString;
  }
  
  public void setCost(String paramString)
  {
    this.mCost = paramString;
  }
  
  public void setInterval(String paramString)
  {
    this.mInterval = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.GasBillEvent
 * JD-Core Version:    0.7.0.1
 */