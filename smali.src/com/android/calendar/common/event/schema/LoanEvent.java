package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class LoanEvent
  extends SmsEvent
{
  public static final String JSON_KEY_ACCOUNT = "account";
  public static final String JSON_KEY_AMOUNT = "amount";
  public static final String JSON_KEY_BANK_NAME = "bankName";
  public static final String JSON_KEY_CURRENCY = "currency";
  public static final String JSON_KEY_PLATFORM = "platform";
  public static final String JSON_KEY_REPAYMENT_DATE = "repaymentDate";
  public static final String JSON_KEY_REPAYMENT_TIME_MILLIS = "repaymentTimeMillis";
  private static final String TAG = "Cal:D:LoanEvent";
  protected String mAccount;
  protected String mAmount;
  protected String mBankName;
  protected String mCurrency;
  protected String mPlatform;
  protected String mRepaymentDate;
  protected long mRepaymentTimeMillis = -1L;
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof LoanEvent))
      {
        paramObject = (LoanEvent)paramObject;
        bool2 = bool1;
        if (TextUtils.equals(this.mAccount, paramObject.getAccount()))
        {
          bool2 = bool1;
          if (TextUtils.equals(this.mCurrency, paramObject.getCurrency()))
          {
            bool2 = bool1;
            if (TextUtils.equals(this.mAmount, paramObject.getAmount()))
            {
              bool2 = bool1;
              if (TextUtils.equals(this.mBankName, paramObject.getBankName()))
              {
                bool2 = bool1;
                if (this.mRepaymentTimeMillis == paramObject.getRepaymentTimeMillis()) {
                  bool2 = true;
                }
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
    this.mAccount = paramJSONObject.optString("account");
    this.mCurrency = paramJSONObject.optString("currency");
    this.mAmount = paramJSONObject.optString("amount");
    this.mRepaymentDate = paramJSONObject.optString("repaymentDate");
    this.mBankName = paramJSONObject.optString("bankName");
    this.mPlatform = paramJSONObject.optString("platform");
    this.mRepaymentTimeMillis = paramJSONObject.optLong("repaymentTimeMillis", -1L);
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("account", this.mAccount);
    paramJSONObject.put("currency", this.mCurrency);
    paramJSONObject.put("amount", this.mAmount);
    paramJSONObject.put("repaymentDate", this.mRepaymentDate);
    paramJSONObject.put("bankName", this.mBankName);
    paramJSONObject.put("platform", this.mPlatform);
    paramJSONObject.put("repaymentTimeMillis", this.mRepaymentTimeMillis);
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
  
  public String getCurrency()
  {
    return this.mCurrency;
  }
  
  public String getEpName()
  {
    return "loan_info";
  }
  
  public int getEventType()
  {
    return 16;
  }
  
  public String getPlatform()
  {
    return this.mPlatform;
  }
  
  public String getRepaymentDate()
  {
    return this.mRepaymentDate;
  }
  
  public long getRepaymentTimeMillis()
  {
    return this.mRepaymentTimeMillis;
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
  
  public void setCurrency(String paramString)
  {
    this.mCurrency = paramString;
  }
  
  public void setPlatform(String paramString)
  {
    this.mPlatform = paramString;
  }
  
  public void setRepaymentDate(String paramString)
  {
    this.mRepaymentDate = paramString;
  }
  
  public void setRepaymentTimeMillis(long paramLong)
  {
    this.mRepaymentTimeMillis = paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.LoanEvent
 * JD-Core Version:    0.7.0.1
 */