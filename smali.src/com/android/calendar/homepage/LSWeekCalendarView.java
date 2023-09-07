package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/LSWeekCalendarView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "getWeekStr", "Lkotlin/u;", "w", "u", "onFinishInflate", "v", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "E", "Ljava/lang/String;", "mMonthSuffix", "", "F", "I", "mOrientation", "Landroid/widget/TextView;", "G", "Landroid/widget/TextView;", "mYearTv", "H", "mMonthTv", "mMonthSuffixTv", "J", "mWeekTv", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class LSWeekCalendarView
  extends ConstraintLayout
{
  private final String E;
  private int F;
  private TextView G;
  private TextView H;
  private TextView I;
  private TextView J;
  public Map<Integer, View> K;
  
  public LSWeekCalendarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 4, null);
  }
  
  public LSWeekCalendarView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = getResources().getString(2131887610);
    r.e(paramAttributeSet, "resources.getString(R.string.talk_back_month)");
    this.E = paramAttributeSet;
    this.F = paramContext.getResources().getConfiguration().orientation;
  }
  
  private final String getWeekStr()
  {
    Object localObject = Utils.V().clone();
    r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
    localObject = (Calendar)localObject;
    int i = ((Calendar)localObject).getMinimalDaysInFirstWeek();
    ((Calendar)localObject).setMinimalDaysInFirstWeek(4);
    int j = ((Calendar)localObject).get(3);
    ((Calendar)localObject).setMinimalDaysInFirstWeek(i);
    localObject = getResources().getQuantityString(2131755078, j, new Object[] { Integer.valueOf(j) });
    r.e(localObject, "resources.getQuantityStr…rals.n_weeks, week, week)");
    return localObject;
  }
  
  private final void u()
  {
    setVisibility(8);
  }
  
  private final void w()
  {
    TextView localTextView1 = this.G;
    TextView localTextView2 = null;
    TextView localTextView3 = null;
    TextView localTextView4 = localTextView1;
    if (localTextView1 == null)
    {
      r.x("mYearTv");
      localTextView4 = null;
    }
    localTextView4.setText(String.valueOf(Utils.V().get(1)));
    localTextView1 = this.H;
    localTextView4 = localTextView1;
    if (localTextView1 == null)
    {
      r.x("mMonthTv");
      localTextView4 = null;
    }
    localTextView4.setText(getResources().getString(x0.H(Utils.V().get(2))));
    if (y.a())
    {
      localTextView2 = this.I;
      localTextView4 = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mMonthSuffixTv");
        localTextView4 = null;
      }
      localTextView4.setText(this.E);
      localTextView4 = this.J;
      if (localTextView4 == null)
      {
        r.x("mWeekTv");
        localTextView4 = localTextView3;
      }
      localTextView4.setText(getWeekStr());
    }
    else
    {
      localTextView3 = this.I;
      localTextView4 = localTextView3;
      if (localTextView3 == null)
      {
        r.x("mMonthSuffixTv");
        localTextView4 = null;
      }
      localTextView4.setText("");
      localTextView4 = this.J;
      if (localTextView4 == null)
      {
        r.x("mWeekTv");
        localTextView4 = localTextView2;
      }
      localTextView4.setText("");
    }
    setVisibility(0);
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    r.f(paramConfiguration, "newConfig");
    super.onConfigurationChanged(paramConfiguration);
    int i = this.F;
    int j = paramConfiguration.orientation;
    if (i != j)
    {
      this.F = j;
      v();
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    View localView = findViewById(2131363602);
    TextView localTextView = (TextView)localView;
    localTextView.getPaint().setAntiAlias(true);
    r.e(localView, "findViewById<TextView>(R…ntiAlias = true\n        }");
    this.G = localTextView;
    localView = findViewById(2131362819);
    localTextView = (TextView)localView;
    localTextView.getPaint().setAntiAlias(true);
    r.e(localView, "findViewById<TextView>(R…ntiAlias = true\n        }");
    this.H = localTextView;
    localView = findViewById(2131362815);
    localTextView = (TextView)localView;
    localTextView.getPaint().setAntiAlias(true);
    r.e(localView, "findViewById<TextView>(R…ntiAlias = true\n        }");
    this.I = localTextView;
    localView = findViewById(2131363556);
    localTextView = (TextView)localView;
    localTextView.getPaint().setAntiAlias(true);
    r.e(localView, "findViewById<TextView>(R…ntiAlias = true\n        }");
    this.J = localTextView;
  }
  
  public final void v()
  {
    if ((Utils.t(getContext()) == 3) && (this.F == 2)) {
      w();
    } else {
      u();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.LSWeekCalendarView
 * JD-Core Version:    0.7.0.1
 */