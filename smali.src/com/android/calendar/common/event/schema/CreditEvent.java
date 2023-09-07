package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class CreditEvent
  extends SmsEvent
{
  private static final String JSON_KEY_ACCOUNT = "account";
  private static final String JSON_KEY_AMOUNT = "amount";
  private static final String JSON_KEY_BANK_NAME = "bankName";
  private static final String JSON_KEY_REPAYMENT_TIME = "repaymentTime";
  private static final String TAG = "Cal:D:CreditEvent";
  protected String mAccount;
  protected String mAmount;
  protected String mBankName;
  protected long mRepaymentTime = -1L;
  
  public boolean equals(Object paramObject)
  {
    bool1 = false;
    bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof CreditEvent)) {
        paramObject = (CreditEvent)paramObject;
      }
    }
    try
    {
      float f1 = Float.parseFloat(this.mAmount);
      float f2 = Float.parseFloat(paramObject.getAmount());
      bool2 = bool1;
      if (TextUtils.equals(this.mBankName, paramObject.getBankName()))
      {
        bool2 = bool1;
        if (TextUtils.equals(this.mAccount, paramObject.getAccount()))
        {
          bool2 = bool1;
          if (f1 == f2)
          {
            bool2 = bool1;
            if (this.mRepaymentTime == paramObject.getRepaymentTime()) {
              bool2 = true;
            }
          }
        }
      }
    }
    catch (Exception paramObject)
    {
      for (;;)
      {
        bool2 = bool1;
      }
    }
    return bool2;
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mBankName = paramJSONObject.optString("bankName");
    this.mRepaymentTime = paramJSONObject.optLong("repaymentTime", -1L);
    this.mAccount = paramJSONObject.optString("account");
    this.mAmount = paramJSONObject.optString("amount");
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("bankName", this.mBankName);
    paramJSONObject.put("repaymentTime", this.mRepaymentTime);
    paramJSONObject.put("account", this.mAccount);
    paramJSONObject.put("amount", this.mAmount);
  }
  
  public String getAccount()
  {
    return this.mAccount;
  }
  
  public String getAmount()
  {
    return this.mAmount;
  }
  
  public String getBankName()
  {
    return this.mBankName;
  }
  
  public String getEpName()
  {
    return "credit_info";
  }
  
  public int getEventType()
  {
    return 3;
  }
  
  public long getRepaymentTime()
  {
    return this.mRepaymentTime;
  }
  
  public void setAccount(String paramString)
  {
    this.mAccount = paramString;
  }
  
  public void setAmount(String paramString)
  {
    this.mAmount = paramString;
  }
  
  public void setBankName(String paramString)
  {
    this.mBankName = paramString;
  }
  
  public void setRepaymentTime(long paramLong)
  {
    this.mRepaymentTime = paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.CreditEvent
 * JD-Core Version:    0.7.0.1
 */