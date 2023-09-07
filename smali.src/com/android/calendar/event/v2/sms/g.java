package com.android.calendar.event.v2.sms;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import b2.a;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.event.v2.BaseEventInfoFragment;
import com.miui.calendar.util.s0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import w3.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/g;", "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;", "Lcom/android/calendar/common/event/schema/CreditEvent;", "Landroid/view/View$OnClickListener;", "Lkotlin/u;", "x0", "Landroid/content/Intent;", "intent", "h0", "Landroid/view/View;", "rootView", "d0", "v", "onClick", "", "e0", "", "Lw3/b;", "items", "O", "s0", "", "eventId", "v0", "event", "w0", "", "U", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "mBankName", "D", "mAmountTextView", "E", "mCardNumberTextView", "Landroid/widget/ImageView;", "F", "Landroid/widget/ImageView;", "mAmountVisible", "G", "mAmountUnit", "H", "mFakeAmount", "I", "Lcom/android/calendar/common/event/schema/CreditEvent;", "mCreditEvent", "J", "Z", "mShowAmount", "", "V", "()Ljava/lang/String;", "deleteToast", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class g
  extends BaseSmsEventInfoFragment<CreditEvent>
  implements View.OnClickListener
{
  private TextView D;
  private TextView E;
  private ImageView F;
  private TextView G;
  private ImageView H;
  private CreditEvent I = new CreditEvent();
  private boolean J = true;
  public Map<Integer, View> K;
  private TextView z;
  
  private final void x0()
  {
    Object localObject1 = this.F;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mAmountVisible");
      localObject3 = null;
    }
    if (this.J) {
      i = 2131231414;
    } else {
      i = 2131231403;
    }
    ((ImageView)localObject3).setImageResource(i);
    localObject1 = this.H;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mFakeAmount");
      localObject3 = null;
    }
    boolean bool = this.J;
    int j = 8;
    if (bool) {
      i = 8;
    } else {
      i = 0;
    }
    ((ImageView)localObject3).setVisibility(i);
    localObject1 = this.D;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mAmountTextView");
      localObject3 = null;
    }
    if (this.J) {
      i = 0;
    } else {
      i = 4;
    }
    ((View)localObject3).setVisibility(i);
    localObject3 = this.G;
    if (localObject3 == null)
    {
      r.x("mAmountUnit");
      localObject3 = localObject2;
    }
    int i = j;
    if (this.J) {
      i = 0;
    }
    ((View)localObject3).setVisibility(i);
  }
  
  public void O(List<b> paramList)
  {
    r.f(paramList, "items");
    if (this.I.getRepaymentTime() != 0L)
    {
      localb = new b();
      localb.b = r().getString(2131886268);
      localb.d = s0.h(r(), this.I.getRepaymentTime(), 2131886416);
      paramList.add(localb);
    }
    b localb = new b();
    localb.b = r().getString(2131886269);
    localb.d = s0.h(r(), System.currentTimeMillis(), 2131886416);
    paramList.add(localb);
    super.O(paramList);
  }
  
  protected int U()
  {
    return 2131558631;
  }
  
  protected String V()
  {
    String str = getString(2131886399);
    r.e(str, "getString(R.string.credi…vent_delete_successfully)");
    return str;
  }
  
  public void d0(View paramView)
  {
    r.f(paramView, "rootView");
    Object localObject = paramView.findViewById(2131362011);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.z = ((TextView)localObject);
    localObject = paramView.findViewById(2131361952);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.D = ((TextView)localObject);
    localObject = paramView.findViewById(2131362120);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.E = ((TextView)localObject);
    localObject = paramView.findViewById(2131361956);
    r.d(localObject, "null cannot be cast to non-null type android.widget.ImageView");
    ImageView localImageView = (ImageView)localObject;
    this.F = localImageView;
    localObject = localImageView;
    if (localImageView == null)
    {
      r.x("mAmountVisible");
      localObject = null;
    }
    ((View)localObject).setOnClickListener(this);
    localObject = paramView.findViewById(2131361955);
    r.e(localObject, "rootView.findViewById<TextView>(R.id.amount_unit)");
    this.G = ((TextView)localObject);
    paramView = paramView.findViewById(2131362445);
    r.d(paramView, "null cannot be cast to non-null type android.widget.ImageView");
    this.H = ((ImageView)paramView);
  }
  
  protected boolean e0()
  {
    boolean bool;
    if (this.I.getRepaymentTime() + 86400000L < System.currentTimeMillis()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void h0(Intent paramIntent)
  {
    r.f(paramIntent, "intent");
    this.I.setBankName(paramIntent.getStringExtra("bank_name"));
    this.I.setAmount(paramIntent.getStringExtra("amount"));
    this.I.setAccount(paramIntent.getStringExtra("card_number"));
    this.I.setRepaymentTime(paramIntent.getLongExtra("repayment_date", 0L));
  }
  
  public void i()
  {
    this.K.clear();
  }
  
  public void onClick(View paramView)
  {
    if ((paramView != null) && (paramView.getId() == 2131361956))
    {
      this.J ^= true;
      x0();
      a.l(r(), String.valueOf(this.I.getId()), this.J);
    }
  }
  
  public void s0()
  {
    Object localObject1 = this.I.getBankName();
    int i;
    if ((localObject1 != null) && (((CharSequence)localObject1).length() != 0)) {
      i = 0;
    } else {
      i = 1;
    }
    Object localObject2 = null;
    TextView localTextView1 = null;
    TextView localTextView2;
    if (i != 0)
    {
      localTextView2 = this.z;
      localObject1 = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mBankName");
        localObject1 = null;
      }
      ((View)localObject1).setVisibility(8);
    }
    else
    {
      localTextView2 = this.z;
      localObject1 = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mBankName");
        localObject1 = null;
      }
      ((View)localObject1).setVisibility(0);
      localTextView2 = this.z;
      localObject1 = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mBankName");
        localObject1 = null;
      }
      ((TextView)localObject1).setText(this.I.getBankName());
    }
    if (TextUtils.isEmpty(this.I.getAmount()))
    {
      localTextView2 = this.D;
      localObject1 = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mAmountTextView");
        localObject1 = null;
      }
      ((View)localObject1).setVisibility(8);
      localTextView2 = this.G;
      localObject1 = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mAmountUnit");
        localObject1 = null;
      }
      ((View)localObject1).setVisibility(8);
    }
    else
    {
      localTextView2 = this.D;
      localObject1 = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mAmountTextView");
        localObject1 = null;
      }
      ((TextView)localObject1).setText(this.I.getAmount());
    }
    if (TextUtils.isEmpty(this.I.getAccount()))
    {
      localObject1 = this.E;
      if (localObject1 == null)
      {
        r.x("mCardNumberTextView");
        localObject1 = localTextView1;
      }
      ((View)localObject1).setVisibility(8);
    }
    else
    {
      localTextView1 = this.E;
      localObject1 = localTextView1;
      if (localTextView1 == null)
      {
        r.x("mCardNumberTextView");
        localObject1 = null;
      }
      ((View)localObject1).setVisibility(0);
      localObject1 = this.E;
      if (localObject1 == null)
      {
        r.x("mCardNumberTextView");
        localObject1 = localObject2;
      }
      ((TextView)localObject1).setText(this.I.getAccount());
    }
    this.J = a.d(r(), String.valueOf(this.I.getId()), true);
    x0();
  }
  
  protected CreditEvent v0(long paramLong)
  {
    return (CreditEvent)s1.g.b(getContext(), paramLong, 3);
  }
  
  protected void w0(CreditEvent paramCreditEvent)
  {
    r.f(paramCreditEvent, "event");
    this.I = paramCreditEvent;
    super.onEventLoad(paramCreditEvent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.sms.g
 * JD-Core Version:    0.7.0.1
 */