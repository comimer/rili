package com.android.calendar.event;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.TrainEvent;
import com.android.calendar.common.event.schema.TravelEvent;
import com.android.calendar.common.j;
import com.miui.calendar.event.travel.FlowLayout;
import com.miui.calendar.event.travel.TrainArriveStationSchema;
import com.miui.calendar.event.travel.TrainArriveStationSchema.StationSchema;
import com.miui.calendar.util.f;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.h;
import com.miui.calendar.view.LoadingView;
import com.miui.calendar.view.LoadingView.b;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import okhttp3.b0;
import org.json.JSONObject;
import u1.b.a;

public class s1
  extends NewBaseEditFragment
{
  private View J;
  private LoadingView K;
  private FlowLayout L;
  private TextView M;
  private List<View> N;
  private int O = -1;
  private tc.a<b0> P;
  private g Q;
  private t1 R;
  private TrainArriveStationSchema S;
  private List<TrainArriveStationSchema.StationSchema> T;
  private TrainEvent U;
  private long V;
  private boolean W;
  
  public s1(Intent paramIntent)
  {
    super(paramIntent);
    this.G = 2131887732;
    if (paramIntent == null) {
      return;
    }
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle == null) {
      return;
    }
    this.W = localBundle.getBoolean("extra_from_out", true);
    this.V = paramIntent.getExtras().getLong("sms_millis", -1L);
  }
  
  private void i0()
  {
    this.L.setVisibility(0);
    this.M.setVisibility(8);
  }
  
  private void j0()
  {
    this.L = ((FlowLayout)this.J.findViewById(2131361988));
    this.M = ((TextView)this.J.findViewById(2131362418));
    LoadingView localLoadingView = (LoadingView)this.J.findViewById(2131362703);
    this.K = localLoadingView;
    localLoadingView.setOnRefreshListener(new a());
  }
  
  private void k0()
  {
    TrainEvent localTrainEvent = com.miui.calendar.event.travel.a.a(this.z);
    if (localTrainEvent == null) {
      return;
    }
    this.U = localTrainEvent;
    q0();
  }
  
  private List<TrainArriveStationSchema.StationSchema> l0(List<TrainArriveStationSchema.StationSchema> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      if (TextUtils.isEmpty(this.U.getDepStation())) {
        return paramList;
      }
      int i = com.miui.calendar.event.travel.a.h(paramList, this.U.getDepStation());
      if ((i >= 0) && (i < paramList.size() - 1)) {
        return paramList.subList(i + 1, paramList.size());
      }
      return new ArrayList(0);
    }
    return new ArrayList(0);
  }
  
  private void m0()
  {
    if (!z0.n(this.p))
    {
      z0.A(this.p, this, new c());
      return;
    }
    if (this.U == null) {
      return;
    }
    if (this.S == null) {
      this.K.e();
    }
    z.a("Cal:D:EditTrainArriveStationFragment", "requestArriveStationData()");
    Object localObject1 = u1.d.a(this.p);
    Object localObject2 = new HashMap();
    ((HashMap)localObject2).put("trainNo", this.U.getTrainNum());
    ((HashMap)localObject2).put("departDate", this.U.getDepDate());
    ((HashMap)localObject2).put("stationName", this.U.getDepStation());
    Map localMap = l0.a(this.p, (HashMap)localObject2);
    u1.a locala = u1.d.d();
    localObject2 = new h(this);
    localObject1 = locala.g((String)localObject1, localMap);
    this.P = ((tc.a)localObject1);
    ((tc.a)localObject1).q(new u1.b((b.a)localObject2));
  }
  
  private void n0(int paramInt)
  {
    this.O = paramInt;
    for (paramInt = 0; paramInt < this.N.size(); paramInt++)
    {
      View localView = (View)this.N.get(paramInt);
      boolean bool;
      if (paramInt == this.O) {
        bool = true;
      } else {
        bool = false;
      }
      localView.setSelected(bool);
    }
  }
  
  private void o0()
  {
    if (z0.q(this.p, true)) {
      z0.D(this.p, new d());
    } else {
      m0();
    }
  }
  
  private void p0()
  {
    this.L.setVisibility(8);
    this.M.setVisibility(0);
    this.M.setText(2131887738);
  }
  
  private void s0()
  {
    this.L.removeAllViews();
    Object localObject = this.S;
    if (localObject == null)
    {
      p0();
      return;
    }
    localObject = l0(((TrainArriveStationSchema)localObject).stationList);
    this.T = ((List)localObject);
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      i0();
      this.L.setVisibility(0);
      this.N = new ArrayList(this.T.size());
      LayoutInflater localLayoutInflater = LayoutInflater.from(this.p);
      for (final int i = 0; i < this.T.size(); i++)
      {
        TrainArriveStationSchema.StationSchema localStationSchema = (TrainArriveStationSchema.StationSchema)this.T.get(i);
        localObject = localLayoutInflater.inflate(2131558977, this.L, false);
        ((TextView)((View)localObject).findViewById(2131361986)).setText(localStationSchema.stationName);
        ((View)localObject).setOnClickListener(new b(i));
        this.N.add(localObject);
        this.L.addView((View)localObject);
      }
      return;
    }
    p0();
  }
  
  protected View B(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    z.a("Cal:D:EditTrainArriveStationFragment", "initFragment()");
    if (this.J == null) {
      this.J = paramLayoutInflater.inflate(2131558572, paramViewGroup, false);
    }
    j0();
    return this.J;
  }
  
  public boolean D()
  {
    return true;
  }
  
  protected boolean F()
  {
    return false;
  }
  
  public Event H()
  {
    return new TrainEvent();
  }
  
  public boolean J(int paramInt)
  {
    if ((this.V != -1L) && ((this.O == -1) || (2131361883 == paramInt)))
    {
      androidx.fragment.app.d locald = getActivity();
      Objects.requireNonNull(locald);
      locald.finish();
      return true;
    }
    if ((2131361889 == paramInt) && (this.U.getId() == -1L))
    {
      x(false);
      M();
      N();
      return true;
    }
    return super.J(paramInt);
  }
  
  protected void M()
  {
    g0.d("travel_train_arrive_station_saved");
    if (this.p != null)
    {
      Intent localIntent = new Intent();
      localIntent.setAction("com.miui.calendar.event.train.UPDATED");
      localIntent.putExtra("extra_content", this.U.toJson());
      f.b(this.p, localIntent);
    }
  }
  
  public void O(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onModelReady(): mModel.mId = ");
    localStringBuilder.append(this.c.getId());
    z.a("Cal:D:EditTrainArriveStationFragment", localStringBuilder.toString());
    this.U = ((TrainEvent)this.c);
    q0();
  }
  
  protected void W()
  {
    Object localObject = this.j;
    if ((localObject != null) && (((j)localObject).a >= 0L))
    {
      super.W();
      return;
    }
    localObject = new t1(this.V, new f());
    this.R = ((t1)localObject);
    ((AsyncTask)localObject).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
  }
  
  public boolean X()
  {
    return false;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    z0.r(this.p, paramInt1, paramInt2, new e());
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    t1 localt1 = this.R;
    if (localt1 != null) {
      localt1.cancel(true);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    r0();
  }
  
  public void onStart()
  {
    super.onStart();
    String str;
    if (!this.W) {
      str = "0";
    } else if (this.V != -1L) {
      str = "1";
    } else {
      str = "3";
    }
    g0.f("travel_train_arrive_station_display", new String[] { "from", str });
  }
  
  public void q0()
  {
    if (this.Q == null)
    {
      g localg = new g(this);
      this.Q = localg;
      localg.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
  }
  
  public void r0()
  {
    g localg = this.Q;
    if (localg != null)
    {
      localg.cancel(true);
      this.Q = null;
    }
    if (this.P != null)
    {
      z.a("Cal:D:EditTrainArriveStationFragment", "stop query arrive station data");
      this.P.cancel();
      this.P = null;
    }
  }
  
  public boolean x(boolean paramBoolean)
  {
    if (this.U == null) {
      return false;
    }
    Object localObject = this.T;
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      int i = this.O;
      if ((i >= 0) && (i < this.T.size()))
      {
        localObject = (TrainArriveStationSchema.StationSchema)this.T.get(this.O);
        this.U.setArrStation(((TrainArriveStationSchema.StationSchema)localObject).stationName);
        this.U.setArrStationCode(((TrainArriveStationSchema.StationSchema)localObject).stationCode);
        this.U.setArrDate(((TrainArriveStationSchema.StationSchema)localObject).arriveDate);
        this.U.setArrTime(((TrainArriveStationSchema.StationSchema)localObject).arriveTime);
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault());
        try
        {
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(((TrainArriveStationSchema.StationSchema)localObject).arriveDate);
          localStringBuilder.append(" ");
          localStringBuilder.append(((TrainArriveStationSchema.StationSchema)localObject).arriveTime);
          localObject = localSimpleDateFormat.parse(localStringBuilder.toString());
          this.U.getEx().setEnd(((Date)localObject).getTime());
        }
        catch (ParseException localParseException)
        {
          localParseException.printStackTrace();
        }
        String str = x3.b.d(this.p, 4, this.U.getDepCity(), this.U.getDepStation(), this.U.getArrCity(), this.U.getArrStation(), this.U.getTrainNum());
        this.U.setTitle(str);
        return true;
      }
    }
    return false;
  }
  
  class a
    implements LoadingView.b
  {
    a() {}
    
    public void a()
    {
      s1.this.q0();
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(int paramInt) {}
    
    public void onClick(View paramView)
    {
      s1.Y(s1.this, i);
      g0.d("travel_train_arrive_station_clicked");
    }
  }
  
  class c
    implements z0.h
  {
    c() {}
    
    public void a()
    {
      s1.a0(s1.this);
    }
    
    public void b(boolean paramBoolean)
    {
      z.a("Cal:D:EditTrainArriveStationFragment", "requestArriveStationData: onNotAccept");
      s1.Z(s1.this).d();
    }
  }
  
  class d
    implements z0.h
  {
    d() {}
    
    public void a()
    {
      s1.a0(s1.this);
    }
    
    public void b(boolean paramBoolean) {}
  }
  
  class e
    implements z0.h
  {
    e() {}
    
    public void a()
    {
      s1.a0(s1.this);
    }
    
    public void b(boolean paramBoolean)
    {
      z.a("Cal:D:EditTrainArriveStationFragment", "requestArriveStationData: onNotAccept");
      s1 locals1 = s1.this;
      if (locals1.p == null) {
        return;
      }
      if (paramBoolean) {
        locals1.getActivity().finish();
      } else {
        s1.b0(locals1);
      }
    }
  }
  
  class f
    implements t1.a
  {
    f() {}
    
    public void a()
    {
      s1.h0(s1.this);
    }
    
    public void b(long paramLong)
    {
      s1 locals1 = s1.this;
      locals1.j.a = paramLong;
      locals1.W();
    }
  }
  
  private static class g
    extends AsyncTask<Void, Void, String>
  {
    private WeakReference<s1> a;
    
    public g(s1 params1)
    {
      this.a = new WeakReference(params1);
    }
    
    protected String a(Void... paramVarArgs)
    {
      paramVarArgs = (s1)this.a.get();
      if ((paramVarArgs != null) && (paramVarArgs.p != null) && (s1.c0(paramVarArgs) != null)) {
        return q.d(paramVarArgs.p, com.miui.calendar.event.travel.a.k(s1.c0(paramVarArgs).getTrainNum(), s1.c0(paramVarArgs).getDepDate()));
      }
      return null;
    }
    
    protected void b(String paramString)
    {
      s1 locals1 = (s1)this.a.get();
      if (locals1 != null)
      {
        s1.g0(locals1, null);
        if (!TextUtils.isEmpty(paramString))
        {
          s1.e0(locals1, TrainArriveStationSchema.fromJsonString(paramString));
          s1.f0(locals1);
        }
        s1.a0(locals1);
      }
    }
  }
  
  private static class h
    implements b.a
  {
    private WeakReference<s1> a;
    
    public h(s1 params1)
    {
      this.a = new WeakReference(params1);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      s1 locals1 = (s1)this.a.get();
      if (locals1 == null) {
        return;
      }
      try
      {
        int i = paramJSONObject.getInt("code");
        if (i == 0)
        {
          paramJSONObject = paramJSONObject.getString("data");
          String str1 = s1.c0(locals1).getTrainNum();
          String str2 = s1.c0(locals1).getDepDate();
          q.f(locals1.p, com.miui.calendar.event.travel.a.k(str1, str2), paramJSONObject);
          s1.e0(locals1, TrainArriveStationSchema.fromJsonString(paramJSONObject));
        }
        else
        {
          paramJSONObject = new java/lang/StringBuilder;
          paramJSONObject.<init>();
          paramJSONObject.append("onResponse(): code:");
          paramJSONObject.append(i);
          z.m("Cal:D:EditTrainArriveStationFragment", paramJSONObject.toString());
        }
        s1.f0(locals1);
        s1.Z(locals1).b();
      }
      catch (Exception paramJSONObject)
      {
        z.d("Cal:D:EditTrainArriveStationFragment", "GetArriveStationDataResponse:", paramJSONObject);
        if (s1.d0(locals1) == null) {
          s1.Z(locals1).d();
        }
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:EditTrainArriveStationFragment", "GetArriveStationDataResponse:", paramException);
      paramException = (s1)this.a.get();
      if (paramException == null) {
        return;
      }
      if (s1.d0(paramException) == null) {
        s1.Z(paramException).d();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.s1
 * JD-Core Version:    0.7.0.1
 */