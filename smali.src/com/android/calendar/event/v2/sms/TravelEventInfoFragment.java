package com.android.calendar.event.v2.sms;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.SpinnerAdapter;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.FlightEvent;
import com.android.calendar.common.event.schema.FlightSchema;
import com.android.calendar.common.event.schema.TravelEvent;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.v2.BaseEventInfoFragment;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.w0;
import org.json.JSONArray;
import org.json.JSONObject;
import u1.b.a;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;", "Lcom/android/calendar/common/event/schema/TravelEvent;", "T", "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;", "Lkotlin/u;", "D0", "", "city", "C0", "longitude", "latitude", "G0", "event", "onEventLoad", "(Lcom/android/calendar/common/event/schema/TravelEvent;)V", "", "Lw3/b;", "items", "H0", "Lcom/android/calendar/common/event/schema/FlightSchema;", "z", "Lcom/android/calendar/common/event/schema/FlightSchema;", "mFlightRemote", "", "D", "Z", "getMIsOverdue", "()Z", "setMIsOverdue", "(Z)V", "mIsOverdue", "", "E", "I", "getMDepType", "()I", "setMDepType", "(I)V", "mDepType", "F", "getMArrType", "setMArrType", "mArrType", "G", "Ljava/lang/String;", "B0", "()Ljava/lang/String;", "F0", "(Ljava/lang/String;)V", "mWeatherString", "Lorg/json/JSONArray;", "H", "Lorg/json/JSONArray;", "getMVirtualSimData", "()Lorg/json/JSONArray;", "E0", "(Lorg/json/JSONArray;)V", "mVirtualSimData", "<init>", "()V", "K", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public abstract class TravelEventInfoFragment<T extends TravelEvent>
  extends BaseSmsEventInfoFragment<T>
{
  public static final a K = new a(null);
  private boolean D;
  private int E = -1;
  private int F = -1;
  private String G;
  private JSONArray H;
  private final b.a I = new c(this);
  public Map<Integer, View> J;
  private FlightSchema z;
  
  private final void C0(String paramString)
  {
    String str = u1.d.c(r(), false, null, null, 14, null);
    HashMap localHashMap = new HashMap();
    localHashMap.put("name", paramString);
    paramString = com.miui.calendar.util.l0.a(r(), localHashMap);
    paramString = u1.d.f(null, 1, null).B(str, paramString);
    if (paramString != null) {
      paramString.q(new u1.b(new b(this)));
    }
  }
  
  private final void D0()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("requestData(): mIsOverdue:");
    ((StringBuilder)localObject1).append(this.D);
    z.a("Cal:D:TravelEventInfoFragment", ((StringBuilder)localObject1).toString());
    if (this.D)
    {
      z.a("Cal:D:TravelEventInfoFragment", "requestData(): Overdue travel");
      return;
    }
    if (this.F == 0)
    {
      localObject1 = ((TravelEvent)n()).getArrCity();
      r.e(localObject1, "event.arrCity");
      C0((String)localObject1);
    }
    int i = this.F;
    int j = 1;
    if (i == 1)
    {
      localObject1 = this.z;
      Object localObject2 = null;
      if (localObject1 != null) {
        localObject1 = ((FlightSchema)localObject1).FlightDepcode;
      } else {
        localObject1 = null;
      }
      i = j;
      if (localObject1 != null) {
        if (((CharSequence)localObject1).length() == 0) {
          i = j;
        } else {
          i = 0;
        }
      }
      if (i == 0)
      {
        EventInfoActivity localEventInfoActivity = r();
        FlightSchema localFlightSchema = this.z;
        localObject1 = localObject2;
        if (localFlightSchema != null) {
          localObject1 = localFlightSchema.FlightArrcode;
        }
        x3.c.c(localEventInfoActivity, (String)localObject1, this.I);
      }
    }
  }
  
  private final void G0(final String paramString1, final String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      h.d(kotlinx.coroutines.l0.a(w0.c()), null, null, new SuspendLambda(paramString2, paramString1)
      {
        Object L$0;
        int label;
        
        public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
        {
          return new 1(this.this$0, paramString2, paramString1, paramAnonymousc);
        }
        
        public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super kotlin.u> paramAnonymousc)
        {
          return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(kotlin.u.a);
        }
        
        public final Object invokeSuspend(Object paramAnonymousObject)
        {
          Object localObject1 = kotlin.coroutines.intrinsics.a.d();
          int i = this.label;
          Object localObject2;
          if (i != 0)
          {
            if (i == 1)
            {
              localObject1 = (TravelEventInfoFragment)this.L$0;
              kotlin.j.b(paramAnonymousObject);
              localObject2 = paramAnonymousObject;
            }
            else
            {
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          }
          else
          {
            kotlin.j.b(paramAnonymousObject);
            localObject2 = h.b(kotlinx.coroutines.l0.a(w0.b()), null, null, new SuspendLambda(this.this$0, paramString2)
            {
              int label;
              
              public final kotlin.coroutines.c<kotlin.u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
              {
                return new 1(this.this$0, this.$latitude, this.$longitude, paramAnonymous2c);
              }
              
              public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super String> paramAnonymous2c)
              {
                return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(kotlin.u.a);
              }
              
              public final Object invokeSuspend(Object paramAnonymous2Object)
              {
                kotlin.coroutines.intrinsics.a.d();
                if (this.label == 0)
                {
                  kotlin.j.b(paramAnonymous2Object);
                  paramAnonymous2Object = new StringBuilder();
                  paramAnonymous2Object.append("WeatherAsyncTask:doInBackground(): mArrDate:");
                  paramAnonymous2Object.append(TravelEventInfoFragment.y0(this.this$0).getArrDate());
                  paramAnonymous2Object.append(", mArrTime:");
                  paramAnonymous2Object.append(TravelEventInfoFragment.y0(this.this$0).getArrTime());
                  z.a("Cal:D:TravelEventInfoFragment", paramAnonymous2Object.toString());
                  long l;
                  if ((!TextUtils.isEmpty(TravelEventInfoFragment.y0(this.this$0).getArrDate())) && (!TextUtils.isEmpty(TravelEventInfoFragment.y0(this.this$0).getArrTime()))) {
                    l = com.miui.calendar.event.travel.a.p(TravelEventInfoFragment.y0(this.this$0).getArrDate(), TravelEventInfoFragment.y0(this.this$0).getArrTime());
                  } else if ((!TextUtils.isEmpty(TravelEventInfoFragment.y0(this.this$0).getDepDate())) && (!TextUtils.isEmpty(TravelEventInfoFragment.y0(this.this$0).getDepTime()))) {
                    l = com.miui.calendar.event.travel.a.p(TravelEventInfoFragment.y0(this.this$0).getDepDate(), TravelEventInfoFragment.y0(this.this$0).getDepTime());
                  } else {
                    l = 0L;
                  }
                  if ((l > 0L) && (!TextUtils.isEmpty(this.$latitude)) && (!TextUtils.isEmpty(this.$longitude))) {
                    paramAnonymous2Object = y4.c.d(TravelEventInfoFragment.z0(this.this$0), l, this.$longitude, this.$latitude);
                  } else {
                    paramAnonymous2Object = this.this$0.B0();
                  }
                  return paramAnonymous2Object;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
              }
            }, 3, null);
            paramAnonymousObject = this.this$0;
            this.L$0 = paramAnonymousObject;
            this.label = 1;
            localObject2 = ((p0)localObject2).E(this);
            if (localObject2 == localObject1) {
              return localObject1;
            }
            localObject1 = paramAnonymousObject;
          }
          ((TravelEventInfoFragment)localObject1).F0((String)localObject2);
          if (!TextUtils.isEmpty(this.this$0.B0()))
          {
            g0.d("travel_weather_response_ok");
            this.this$0.r0();
          }
          else
          {
            g0.d("travel_weather_response_error");
          }
          return kotlin.u.a;
        }
      }, 3, null);
    }
  }
  
  private static final void I0(TravelEventInfoFragment paramTravelEventInfoFragment, Intent paramIntent)
  {
    r.f(paramTravelEventInfoFragment, "this$0");
    try
    {
      paramTravelEventInfoFragment.startActivity(paramIntent);
      g0.d("travel_to_virtual_sim");
    }
    catch (Exception paramTravelEventInfoFragment)
    {
      z.d("Cal:D:TravelDetailFragment", "bindVirtualSimView()", paramTravelEventInfoFragment);
    }
  }
  
  private static final void J0() {}
  
  private static final void K0(TravelEventInfoFragment paramTravelEventInfoFragment, final CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    r.f(paramTravelEventInfoFragment, "this$0");
    if (((TravelEvent)paramTravelEventInfoFragment.n()).isNeedAlarm() != paramBoolean)
    {
      if ((paramBoolean) && (!com.android.calendar.settings.j.p(paramTravelEventInfoFragment.r(), ((TravelEvent)paramTravelEventInfoFragment.n()).getEventType())))
      {
        paramTravelEventInfoFragment.n0(new e(paramTravelEventInfoFragment, paramCompoundButton));
        return;
      }
      ((TravelEvent)paramTravelEventInfoFragment.n()).setNeedAlarm(paramBoolean);
      com.android.calendar.event.i.h(paramTravelEventInfoFragment.r(), paramTravelEventInfoFragment.n());
    }
  }
  
  protected final String B0()
  {
    return this.G;
  }
  
  protected final void E0(JSONArray paramJSONArray)
  {
    this.H = paramJSONArray;
  }
  
  protected final void F0(String paramString)
  {
    this.G = paramString;
  }
  
  protected void H0(List<w3.b> paramList)
  {
    r.f(paramList, "items");
    if ((this.F == 0) && (!TextUtils.isEmpty(this.G)) && (!this.D))
    {
      localObject1 = new w3.b();
      ((w3.b)localObject1).a = 2131232478;
      if ((!TextUtils.isEmpty(((TravelEvent)n()).getArrDate())) && (!TextUtils.isEmpty(((TravelEvent)n()).getArrTime()))) {
        ((w3.b)localObject1).b = getString(2131887756);
      } else {
        ((w3.b)localObject1).b = getString(2131887757);
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(((TravelEvent)n()).getArrCity());
      ((StringBuilder)localObject2).append(' ');
      ((StringBuilder)localObject2).append(this.G);
      ((w3.b)localObject1).c = ((StringBuilder)localObject2).toString();
      paramList.add(localObject1);
    }
    Object localObject1 = x3.c.a(this.H);
    if (this.F == 1)
    {
      localObject2 = this.H;
      if (localObject2 != null)
      {
        r.c(localObject2);
        if ((((JSONArray)localObject2).length() > 0) && (localObject1 != null) && (com.miui.calendar.util.i.c(r(), (Intent)localObject1)))
        {
          localObject2 = new w3.b();
          ((w3.b)localObject2).a = 2131232481;
          ((w3.b)localObject2).b = getString(2131887755);
          ((w3.b)localObject2).g = new s(this, (Intent)localObject1);
          paramList.add(localObject2);
        }
      }
    }
    Object localObject2 = new w3.d();
    if (this.D)
    {
      ((w3.b)localObject2).b = getString(2131887754);
      ((w3.d)localObject2).h = false;
    }
    else
    {
      ((w3.b)localObject2).b = getString(2131887753);
      ((w3.b)localObject2).e = false;
      ((w3.d)localObject2).h = true;
      ((w3.b)localObject2).g = new t();
      ((w3.d)localObject2).i = getString(2131886545);
      localObject1 = new ArrayAdapter(r(), 2131558738, 16908308, Y());
      ((ArrayAdapter)localObject1).setDropDownViewResource(2131558736);
      ((w3.d)localObject2).j = ((SpinnerAdapter)localObject1);
      ((w3.d)localObject2).k = a0();
      ((w3.d)localObject2).l = new d(this);
    }
    ((w3.b)localObject2).f = 3L;
    paramList.add(localObject2);
    if (!this.D)
    {
      localObject1 = new w3.a();
      ((w3.a)localObject1).h = ((TravelEvent)n()).isNeedAlarm();
      ((w3.b)localObject1).b = getString(2131887267);
      ((w3.b)localObject1).f = 3L;
      ((w3.a)localObject1).i = new u(this);
      paramList.add(localObject1);
    }
  }
  
  public void i()
  {
    this.J.clear();
  }
  
  protected void onEventLoad(T paramT)
  {
    r.f(paramT, "event");
    this.D = com.miui.calendar.event.travel.a.n(paramT.getDepDate(), paramT.getDepTime());
    int i;
    if ((paramT instanceof FlightEvent))
    {
      i = 1;
      this.z = ((FlightEvent)paramT).getFlightSchema();
    }
    else
    {
      i = 4;
    }
    this.E = com.miui.calendar.event.travel.a.f(i, this.z);
    this.F = com.miui.calendar.event.travel.a.e(i, this.z);
    r0();
    q0();
    D0();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$a;", "", "", "JSON_KEY_DATA", "Ljava/lang/String;", "JSON_KEY_LATITUDE", "JSON_KEY_LONGTITUDE", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$b;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", "fragmentReference", "fragment", "<init>", "(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class b
    implements b.a
  {
    private final WeakReference<TravelEventInfoFragment<?>> a;
    
    public b(TravelEventInfoFragment<?> paramTravelEventInfoFragment)
    {
      this.a = new WeakReference(paramTravelEventInfoFragment);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      TravelEventInfoFragment localTravelEventInfoFragment = (TravelEventInfoFragment)this.a.get();
      if (localTravelEventInfoFragment == null) {
        return;
      }
      try
      {
        if (paramJSONObject.has("data"))
        {
          Object localObject = paramJSONObject.optJSONObject("data");
          if (localObject != null)
          {
            paramJSONObject = ((JSONObject)localObject).optString("longitude");
            r.e(paramJSONObject, "data.optString(JSON_KEY_LONGTITUDE)");
            localObject = ((JSONObject)localObject).optString("latitude");
            r.e(localObject, "data.optString(JSON_KEY_LATITUDE)");
            TravelEventInfoFragment.A0(localTravelEventInfoFragment, paramJSONObject, (String)localObject);
          }
        }
      }
      catch (Exception paramJSONObject)
      {
        z.d("Cal:D:TravelEventInfoFragment", "GetCityResponseListener", paramJSONObject);
      }
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      z.d("Cal:D:TravelEventInfoFragment", "GetCityResponseListener:", paramException);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/event/v2/sms/TravelEventInfoFragment$c", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "e", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
    implements b.a
  {
    c(TravelEventInfoFragment<T> paramTravelEventInfoFragment) {}
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "jsonObject");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("mVirtualSimResponseListener: ");
      localStringBuilder.append(paramJSONObject);
      z.a("Cal:D:TravelEventInfoFragment", localStringBuilder.toString());
      try
      {
        if (paramJSONObject.optInt("errCode", -1) == 0)
        {
          g0.d("travel_virtual_sim_response_ok");
          this.a.E0(paramJSONObject.getJSONArray("data"));
          this.a.r0();
        }
        else
        {
          g0.d("key_travel_virtual_sim_response_error");
        }
      }
      catch (Exception localException)
      {
        z.d("Cal:D:TravelEventInfoFragment", paramJSONObject.toString(), localException);
      }
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      g0.d("key_travel_virtual_sim_response_error");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("mVirtualSimErrorListener:");
      localStringBuilder.append(paramException);
      z.a("Cal:D:TravelEventInfoFragment", localStringBuilder.toString());
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/event/v2/sms/TravelEventInfoFragment$d", "Landroid/widget/AdapterView$OnItemSelectedListener;", "Landroid/widget/AdapterView;", "parent", "Landroid/view/View;", "view", "", "position", "", "id", "Lkotlin/u;", "onItemSelected", "onNothingSelected", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    implements AdapterView.OnItemSelectedListener
  {
    d(TravelEventInfoFragment<T> paramTravelEventInfoFragment) {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      int i = ((Number)this.a.Z().get(paramInt)).intValue();
      paramAdapterView = new StringBuilder();
      paramAdapterView.append("setupReminderSpinner(): updated minutes:");
      paramAdapterView.append(i);
      z.a("Cal:D:TravelDetailFragment", paramAdapterView.toString());
      paramInt = x0.M(this.a.Z(), i);
      if (paramInt != this.a.a0())
      {
        x3.b.f(TravelEventInfoFragment.z0(this.a), TravelEventInfoFragment.y0(this.a).getId(), i);
        this.a.m0(paramInt);
        this.a.r0();
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/event/v2/sms/TravelEventInfoFragment$e", "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;", "Lkotlin/u;", "a", "b", "onCancel", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class e
    implements BaseSmsEventInfoFragment.b
  {
    e(TravelEventInfoFragment<T> paramTravelEventInfoFragment, CompoundButton paramCompoundButton) {}
    
    public void a()
    {
      TravelEventInfoFragment.y0(this.a).setNeedAlarm(true);
      com.android.calendar.event.i.h(TravelEventInfoFragment.z0(this.a), TravelEventInfoFragment.y0(this.a));
    }
    
    public void b()
    {
      TravelEventInfoFragment.y0(this.a).setNeedAlarm(true);
      com.android.calendar.event.i.h(TravelEventInfoFragment.z0(this.a), TravelEventInfoFragment.y0(this.a));
      com.android.calendar.settings.j.u(TravelEventInfoFragment.z0(this.a), TravelEventInfoFragment.y0(this.a).getEventType(), true);
    }
    
    public void onCancel()
    {
      paramCompoundButton.setChecked(false);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.sms.TravelEventInfoFragment
 * JD-Core Version:    0.7.0.1
 */