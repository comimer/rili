package com.android.calendar.event.v2.sms;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.event.schema.MovieEvent;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s1.g;
import w3.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/q;", "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;", "Lcom/android/calendar/common/event/schema/MovieEvent;", "Landroid/content/Intent;", "intent", "Lkotlin/u;", "h0", "Landroid/view/View;", "rootView", "d0", "", "eventId", "v0", "event", "w0", "s0", "", "U", "", "e0", "", "Lw3/b;", "items", "O", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "mMovieName", "D", "mTitleName", "E", "mMovieTime", "F", "mCinemaLoc", "G", "Lcom/android/calendar/common/event/schema/MovieEvent;", "mMovieEvent", "", "V", "()Ljava/lang/String;", "deleteToast", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class q
  extends BaseSmsEventInfoFragment<MovieEvent>
{
  private TextView D;
  private TextView E;
  private TextView F;
  private MovieEvent G = new MovieEvent();
  public Map<Integer, View> H;
  private TextView z;
  
  public void O(List<b> paramList)
  {
    r.f(paramList, "items");
    b localb;
    if ((!TextUtils.isEmpty(this.G.getCodeName1())) || (!TextUtils.isEmpty(this.G.getCodeNumber1())))
    {
      localb = new b();
      localb.b = this.G.getCodeName1();
      localb.d = this.G.getCodeNumber1();
      paramList.add(localb);
    }
    if ((!TextUtils.isEmpty(this.G.getCodeName2())) || (!TextUtils.isEmpty(this.G.getCodeNumber2())))
    {
      localb = new b();
      localb.b = this.G.getCodeName2();
      localb.d = this.G.getCodeNumber2();
      paramList.add(localb);
    }
    super.O(paramList);
  }
  
  protected int U()
  {
    return 2131558635;
  }
  
  protected String V()
  {
    String str = getString(2131886986);
    r.e(str, "getString(R.string.movie…vent_delete_successfully)");
    return str;
  }
  
  public void d0(View paramView)
  {
    r.f(paramView, "rootView");
    Object localObject = paramView.findViewById(2131362119);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.D = ((TextView)localObject);
    localObject = paramView.findViewById(2131362830);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.z = ((TextView)localObject);
    localObject = paramView.findViewById(2131362831);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.E = ((TextView)localObject);
    paramView = paramView.findViewById(2131362166);
    r.d(paramView, "null cannot be cast to non-null type android.widget.TextView");
    this.F = ((TextView)paramView);
    localObject = this.z;
    paramView = (View)localObject;
    if (localObject == null)
    {
      r.x("mMovieName");
      paramView = null;
    }
    paramView.setSelected(true);
  }
  
  protected boolean e0()
  {
    boolean bool;
    if (this.G.getStartTime() < System.currentTimeMillis()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void h0(Intent paramIntent)
  {
    r.f(paramIntent, "intent");
    this.G.setPlatform(paramIntent.getStringExtra("platform"));
    this.G.setCodeName1(paramIntent.getStringExtra("code_name_1"));
    this.G.setCodeNumber1(paramIntent.getStringExtra("code_number_1"));
    this.G.setCodeName2(paramIntent.getStringExtra("code_name_2"));
    this.G.setCodeNumber2(paramIntent.getStringExtra("code_number_2"));
    this.G.setMovieName(paramIntent.getStringExtra("movie_name"));
    this.G.setCinema(paramIntent.getStringExtra("cinema"));
    this.G.setScreenings(paramIntent.getStringExtra("screenings"));
    this.G.setSeat(paramIntent.getStringExtra("seat"));
  }
  
  public void i()
  {
    this.H.clear();
  }
  
  public void s0()
  {
    Object localObject1 = this.D;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mTitleName");
      localObject3 = null;
    }
    localObject1 = this.G.getPlatform();
    String str1 = "";
    if (localObject1 == null) {
      localObject1 = "";
    }
    ((TextView)localObject3).setText((CharSequence)localObject1);
    localObject1 = this.z;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mMovieName");
      localObject3 = null;
    }
    String str2 = this.G.getMovieName();
    localObject1 = str1;
    if (str2 != null) {
      localObject1 = str2;
    }
    ((TextView)localObject3).setText((CharSequence)localObject1);
    localObject1 = this.E;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mMovieTime");
      localObject3 = null;
    }
    ((TextView)localObject3).setText(this.G.getScreenings());
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(this.G.getCinema());
    ((StringBuilder)localObject3).append(' ');
    ((StringBuilder)localObject3).append(this.G.getSeat());
    localObject1 = ((StringBuilder)localObject3).toString();
    localObject3 = this.F;
    if (localObject3 == null)
    {
      r.x("mCinemaLoc");
      localObject3 = localObject2;
    }
    ((TextView)localObject3).setText((CharSequence)localObject1);
  }
  
  protected MovieEvent v0(long paramLong)
  {
    return (MovieEvent)g.b(getContext(), paramLong, 17);
  }
  
  protected void w0(MovieEvent paramMovieEvent)
  {
    r.f(paramMovieEvent, "event");
    this.G = paramMovieEvent;
    super.onEventLoad(paramMovieEvent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.sms.q
 * JD-Core Version:    0.7.0.1
 */