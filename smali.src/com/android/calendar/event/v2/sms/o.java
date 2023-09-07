package com.android.calendar.event.v2.sms;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.HotelEvent;
import com.android.calendar.event.v2.BaseEventInfoFragment;
import com.miui.calendar.util.s0;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s1.g;
import w3.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/o;", "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;", "Lcom/android/calendar/common/event/schema/HotelEvent;", "Landroid/content/Intent;", "intent", "Lkotlin/u;", "h0", "Landroid/view/View;", "rootView", "d0", "", "eventId", "v0", "event", "w0", "s0", "", "U", "", "e0", "", "Lw3/b;", "items", "O", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "mTitleName", "D", "mHotelName", "E", "mCheckInDate", "F", "mHotelLoc", "G", "Lcom/android/calendar/common/event/schema/HotelEvent;", "mHotelEvent", "", "V", "()Ljava/lang/String;", "deleteToast", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class o
  extends BaseSmsEventInfoFragment<HotelEvent>
{
  private TextView D;
  private TextView E;
  private TextView F;
  private HotelEvent G = new HotelEvent();
  public Map<Integer, View> H;
  private TextView z;
  
  public void O(List<b> paramList)
  {
    r.f(paramList, "items");
    if (!TextUtils.isEmpty(this.G.getPhoneNum()))
    {
      b localb = new b();
      localb.b = getString(2131887257);
      localb.d = this.G.getPhoneNum();
      paramList.add(localb);
    }
    super.O(paramList);
  }
  
  protected int U()
  {
    return 2131558634;
  }
  
  protected String V()
  {
    String str = getString(2131886718);
    r.e(str, "getString(R.string.hotel…vent_delete_successfully)");
    return str;
  }
  
  public void d0(View paramView)
  {
    r.f(paramView, "rootView");
    Object localObject = paramView.findViewById(2131362119);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.z = ((TextView)localObject);
    localObject = paramView.findViewById(2131362547);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.D = ((TextView)localObject);
    localObject = paramView.findViewById(2131362142);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.E = ((TextView)localObject);
    paramView = paramView.findViewById(2131362546);
    r.d(paramView, "null cannot be cast to non-null type android.widget.TextView");
    this.F = ((TextView)paramView);
    localObject = this.D;
    paramView = (View)localObject;
    if (localObject == null)
    {
      r.x("mHotelName");
      paramView = null;
    }
    paramView.setSelected(true);
  }
  
  protected boolean e0()
  {
    long l = this.G.getCheckInTimeMillis();
    if (this.G.getCheckOutTimeMillis() > 0L) {
      l = this.G.getCheckOutTimeMillis();
    }
    boolean bool;
    if (l + 86400000L < System.currentTimeMillis()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void h0(Intent paramIntent)
  {
    r.f(paramIntent, "intent");
    this.G.setHotelName(paramIntent.getStringExtra("hotel_name"));
    this.G.setCheckInDate(paramIntent.getStringExtra("check_in_date"));
    this.G.setCheckOutDate(paramIntent.getStringExtra("check_out_date"));
    this.G.setAddress(paramIntent.getStringExtra("address"));
    this.G.setRoomType(paramIntent.getStringExtra("room_type"));
    this.G.setPhoneNum(paramIntent.getStringExtra("phone_Num"));
  }
  
  public void i()
  {
    this.H.clear();
  }
  
  public void s0()
  {
    Object localObject1 = this.z;
    String str1 = null;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      r.x("mTitleName");
      localObject2 = null;
    }
    ((TextView)localObject2).setText(getString(2131886717));
    localObject1 = this.D;
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      r.x("mHotelName");
      localObject2 = null;
    }
    localObject1 = this.G.getHotelName();
    String str2 = "";
    if (localObject1 == null) {
      localObject1 = "";
    }
    ((TextView)localObject2).setText((CharSequence)localObject1);
    if (TextUtils.isEmpty(this.G.getCheckInDate()))
    {
      localObject1 = this.E;
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        r.x("mCheckInDate");
        localObject2 = null;
      }
      ((View)localObject2).setVisibility(8);
    }
    else
    {
      localObject1 = this.E;
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        r.x("mCheckInDate");
        localObject2 = null;
      }
      ((View)localObject2).setVisibility(0);
      String str3 = s0.h(r(), Utils.h(this.G.getCheckInDate(), "yyyy-MM-dd", TimeZone.getDefault()), 2131886416);
      if (!TextUtils.isEmpty(this.G.getCheckOutDate()))
      {
        localObject2 = s0.h(r(), Utils.h(this.G.getCheckOutDate(), "yyyy-MM-dd", TimeZone.getDefault()), 2131886416);
        r.e(localObject2, "getDateFormatStr(mActivi…tring.date_pattern_mm_dd)");
      }
      else
      {
        localObject2 = "";
      }
      if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (!TextUtils.equals(str3, (CharSequence)localObject2)))
      {
        Object localObject3 = this.E;
        localObject1 = localObject3;
        if (localObject3 == null)
        {
          r.x("mCheckInDate");
          localObject1 = null;
        }
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append(str3);
        ((StringBuilder)localObject3).append('-');
        ((StringBuilder)localObject3).append((String)localObject2);
        ((TextView)localObject1).setText(((StringBuilder)localObject3).toString());
      }
      else
      {
        localObject1 = this.E;
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          r.x("mCheckInDate");
          localObject2 = null;
        }
        ((TextView)localObject2).setText(str3);
      }
    }
    localObject2 = this.F;
    if (localObject2 == null)
    {
      r.x("mHotelLoc");
      localObject2 = str1;
    }
    str1 = this.G.getAddress();
    localObject1 = str2;
    if (str1 != null) {
      localObject1 = str1;
    }
    ((TextView)localObject2).setText((CharSequence)localObject1);
  }
  
  protected HotelEvent v0(long paramLong)
  {
    return (HotelEvent)g.b(getContext(), paramLong, 15);
  }
  
  protected void w0(HotelEvent paramHotelEvent)
  {
    r.f(paramHotelEvent, "event");
    this.G = paramHotelEvent;
    super.onEventLoad(paramHotelEvent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.sms.o
 * JD-Core Version:    0.7.0.1
 */