package com.android.calendar.settings;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import com.android.calendar.common.b;
import com.miui.calendar.sms.SmartMessage.OntologyType;
import miuix.appcompat.app.m;

public class SmsImportActionbarActivity
  extends b
{
  public static String Y(SmartMessage.OntologyType paramOntologyType)
  {
    switch (a.a[paramOntologyType.ordinal()])
    {
    default: 
      return null;
    case 8: 
      return "preferences_loan";
    case 7: 
      return "preferences_hotel";
    case 6: 
      return "preferences_gas_bill";
    case 5: 
      return "preferences_electricity_bill";
    case 4: 
      return "preferences_movie";
    case 2: 
    case 3: 
      return "preferences_travel";
    }
    return "preferences_credit_repayment";
  }
  
  private void Z()
  {
    getSupportFragmentManager().m().q(2131362740, new k()).i();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558494);
    Z();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.SmsImportActionbarActivity
 * JD-Core Version:    0.7.0.1
 */