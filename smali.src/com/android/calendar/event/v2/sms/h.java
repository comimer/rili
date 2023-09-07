package com.android.calendar.event.v2.sms;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.event.schema.ElectricityBillEvent;
import com.android.calendar.common.event.schema.SmsEvent;
import com.android.calendar.event.v2.BaseEventInfoFragment;
import com.miui.calendar.util.s0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s1.g;
import w3.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/h;", "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;", "Lcom/android/calendar/common/event/schema/ElectricityBillEvent;", "Landroid/content/Intent;", "intent", "Lkotlin/u;", "h0", "Landroid/view/View;", "rootView", "d0", "", "eventId", "v0", "event", "w0", "s0", "", "U", "", "e0", "", "Lw3/b;", "items", "O", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "mBillName", "D", "mBillCost", "E", "mBillAmount", "F", "Lcom/android/calendar/common/event/schema/ElectricityBillEvent;", "mElectricityEvent", "", "V", "()Ljava/lang/String;", "deleteToast", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class h
  extends BaseSmsEventInfoFragment<ElectricityBillEvent>
{
  private TextView D;
  private TextView E;
  private ElectricityBillEvent F = new ElectricityBillEvent();
  public Map<Integer, View> G;
  private TextView z;
  
  public void O(List<b> paramList)
  {
    r.f(paramList, "items");
    if (!TextUtils.isEmpty(this.F.getAccount()))
    {
      localb = new b();
      localb.b = getString(2131886664);
      localb.d = this.F.getAccount();
      paramList.add(localb);
    }
    b localb = new b();
    localb.b = getString(2131886665);
    localb.d = s0.h(r().getApplicationContext(), this.F.getEventCreateTimeMillis(), 2131886416);
    paramList.add(localb);
    super.O(paramList);
  }
  
  protected int U()
  {
    return 2131558629;
  }
  
  protected String V()
  {
    String str = getString(2131886520);
    r.e(str, "getString(R.string.elect…vent_delete_successfully)");
    return str;
  }
  
  public void d0(View paramView)
  {
    r.f(paramView, "rootView");
    View localView = paramView.findViewById(2131362032);
    r.e(localView, "rootView.findViewById<TextView>(R.id.bill_name)");
    this.z = ((TextView)localView);
    localView = paramView.findViewById(2131362031);
    r.e(localView, "rootView.findViewById<TextView>(R.id.bill_cost)");
    this.D = ((TextView)localView);
    paramView = paramView.findViewById(2131362030);
    r.e(paramView, "rootView.findViewById<TextView>(R.id.bill_amount)");
    this.E = ((TextView)paramView);
  }
  
  protected boolean e0()
  {
    boolean bool;
    if (this.F.getEventCreateTimeMillis() + 86400000L < System.currentTimeMillis()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void h0(Intent paramIntent)
  {
    r.f(paramIntent, "intent");
    this.F.setCost(paramIntent.getStringExtra("cost"));
    this.F.setAccount(paramIntent.getStringExtra("account"));
    this.F.setAmount(paramIntent.getStringExtra("amount"));
    this.F.setInterval(paramIntent.getStringExtra("interval"));
  }
  
  public void i()
  {
    this.G.clear();
  }
  
  public void s0()
  {
    Object localObject1 = this.z;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mBillName");
      localObject3 = null;
    }
    ((TextView)localObject3).setText(getString(2131886518));
    localObject1 = this.D;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mBillCost");
      localObject3 = null;
    }
    localObject1 = this.F.getCost();
    int i = 1;
    if ((localObject1 != null) && (((CharSequence)localObject1).length() != 0)) {
      j = 0;
    } else {
      j = 1;
    }
    String str = "0";
    if (j == 0)
    {
      localObject1 = this.F.getCost();
      r.e(localObject1, "mElectricityEvent.cost");
      localObject1 = ((String)localObject1).substring(0, this.F.getCost().length() - 1);
      r.e(localObject1, "this as java.lang.String…ing(startIndex, endIndex)");
    }
    else
    {
      localObject1 = "0";
    }
    ((TextView)localObject3).setText((CharSequence)localObject1);
    localObject3 = this.E;
    if (localObject3 == null)
    {
      r.x("mBillAmount");
      localObject3 = localObject2;
    }
    localObject1 = this.F.getAmount();
    int j = i;
    if (localObject1 != null) {
      if (((CharSequence)localObject1).length() == 0) {
        j = i;
      } else {
        j = 0;
      }
    }
    localObject1 = str;
    if (j == 0) {
      localObject1 = this.F.getAmount();
    }
    ((TextView)localObject3).setText(getString(2131886517, new Object[] { localObject1 }));
  }
  
  protected ElectricityBillEvent v0(long paramLong)
  {
    return (ElectricityBillEvent)g.b(getContext(), paramLong, 13);
  }
  
  protected void w0(ElectricityBillEvent paramElectricityBillEvent)
  {
    r.f(paramElectricityBillEvent, "event");
    this.F = paramElectricityBillEvent;
    super.onEventLoad(paramElectricityBillEvent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.sms.h
 * JD-Core Version:    0.7.0.1
 */