package f2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.viewpager2.widget.ViewPager2;
import com.airbnb.lottie.LottieAnimationView;
import com.android.calendar.homepage.AllDayViewPager;
import com.android.calendar.homepage.HomePageContainer;
import com.android.calendar.homepage.LSWeekCalendarView;
import com.android.calendar.homepage.WeekHeaderView;
import com.android.ex.chips.RecipientEditTextView;
import com.miui.calendar.view.BetterScrollView;
import com.miui.calendar.view.CardView;
import com.miui.calendar.view.InfiniteViewPager;
import com.miui.calendar.view.LoadingLayout;
import com.miui.calendar.view.LoadingView;
import com.miui.calendar.view.MainPanelMotionContainer;
import com.miui.calendar.view.MonthMotionContainer;
import com.miui.calendar.view.MonthPanelContainer;
import com.miui.calendar.view.MultiRadioGroup;
import com.miui.calendar.view.OnlineImageView;
import com.miui.calendar.view.OrientationImageView;
import com.miui.calendar.view.ShadowView;
import com.miui.calendar.view.VerticalMotionFrameLayout;
import com.miui.calendar.view.VerticalTextView;
import com.miui.calendar.view.a0;
import com.miui.calendar.widget.EmptyView;
import miuix.appcompat.internal.app.widget.ActionBarContainer;
import miuix.appcompat.internal.app.widget.ActionBarOverlayLayout;
import miuix.appcompat.internal.app.widget.ActionBarView;
import miuix.appcompat.widget.Spinner;
import miuix.miuixbasewidget.widget.FilterSortView;
import miuix.miuixbasewidget.widget.FilterSortView.TabView;
import miuix.recyclerview.widget.RecyclerView;
import miuix.slidingwidget.widget.SlidingButton;
import miuix.springback.view.SpringBackLayout;

public class b
{
  public static View a(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    paramString.hashCode();
    int i = paramString.hashCode();
    int j = -1;
    switch (i)
    {
    default: 
      break;
    case 2045674259: 
      if (paramString.equals("miuix.springback.view.SpringBackLayout")) {
        j = 49;
      }
      break;
    case 2041703408: 
      if (paramString.equals("com.airbnb.lottie.LottieAnimationView")) {
        j = 48;
      }
      break;
    case 2001146706: 
      if (paramString.equals("Button")) {
        j = 47;
      }
      break;
    case 1885989783: 
      if (paramString.equals("com.miui.calendar.view.LoadingView")) {
        j = 46;
      }
      break;
    case 1666676343: 
      if (paramString.equals("EditText")) {
        j = 45;
      }
      break;
    case 1516525843: 
      if (paramString.equals("com.miui.calendar.view.MonthPanelContainer")) {
        j = 44;
      }
      break;
    case 1495473607: 
      if (paramString.equals("com.miui.calendar.widget.EmptyView")) {
        j = 43;
      }
      break;
    case 1414105226: 
      if (paramString.equals("com.miui.calendar.view.VelocityListView")) {
        j = 42;
      }
      break;
    case 1410352259: 
      if (paramString.equals("ListView")) {
        j = 41;
      }
      break;
    case 1310765783: 
      if (paramString.equals("FrameLayout")) {
        j = 40;
      }
      break;
    case 1265864088: 
      if (paramString.equals("miuix.slidingwidget.widget.SlidingButton")) {
        j = 39;
      }
      break;
    case 1260470547: 
      if (paramString.equals("ViewStub")) {
        j = 38;
      }
      break;
    case 1190564430: 
      if (paramString.equals("miuix.miuixbasewidget.widget.FilterSortView")) {
        j = 37;
      }
      break;
    case 1127291599: 
      if (paramString.equals("LinearLayout")) {
        j = 36;
      }
      break;
    case 1125864064: 
      if (paramString.equals("ImageView")) {
        j = 35;
      }
      break;
    case 1108484095: 
      if (paramString.equals("com.miui.calendar.view.CardView")) {
        j = 34;
      }
      break;
    case 1075161123: 
      if (paramString.equals("com.miui.calendar.view.OnlineImageView")) {
        j = 33;
      }
      break;
    case 1053018633: 
      if (paramString.equals("androidx.viewpager2.widget.ViewPager2")) {
        j = 32;
      }
      break;
    case 1041003657: 
      if (paramString.equals("androidx.core.widget.NestedScrollView")) {
        j = 31;
      }
      break;
    case 974773370: 
      if (paramString.equals("miuix.appcompat.internal.app.widget.ActionBarOverlayLayout")) {
        j = 30;
      }
      break;
    case 877828535: 
      if (paramString.equals("com.android.calendar.homepage.HomePageContainer")) {
        j = 29;
      }
      break;
    case 798026081: 
      if (paramString.equals("miuix.appcompat.internal.app.widget.ActionBarContainer")) {
        j = 28;
      }
      break;
    case 776382189: 
      if (paramString.equals("RadioButton")) {
        j = 27;
      }
      break;
    case 417691980: 
      if (paramString.equals("com.miui.calendar.view.BetterScrollView")) {
        j = 26;
      }
      break;
    case 227639319: 
      if (paramString.equals("androidx.appcompat.widget.AppCompatImageView")) {
        j = 25;
      }
      break;
    case 120155210: 
      if (paramString.equals("com.miui.calendar.view.MainPanelMotionContainer")) {
        j = 24;
      }
      break;
    case 2666181: 
      if (paramString.equals("View")) {
        j = 23;
      }
      break;
    case -128904763: 
      if (paramString.equals("miuix.appcompat.internal.app.widget.ActionBarView")) {
        j = 22;
      }
      break;
    case -152759309: 
      if (paramString.equals("com.miui.calendar.view.MultiRadioGroup")) {
        j = 21;
      }
      break;
    case -217496378: 
      if (paramString.equals("ViewSwitcher")) {
        j = 20;
      }
      break;
    case -333105252: 
      if (paramString.equals("com.miui.calendar.view.LoadingLayout")) {
        j = 19;
      }
      break;
    case -379924793: 
      if (paramString.equals("com.android.calendar.homepage.AllDayViewPager")) {
        j = 18;
      }
      break;
    case -443652810: 
      if (paramString.equals("RelativeLayout")) {
        j = 17;
      }
      break;
    case -445707616: 
      if (paramString.equals("miuix.appcompat.widget.Spinner")) {
        j = 16;
      }
      break;
    case -450188950: 
      if (paramString.equals("miuix.recyclerview.widget.RecyclerView")) {
        j = 15;
      }
      break;
    case -645268937: 
      if (paramString.equals("androidx.constraintlayout.widget.Group")) {
        j = 14;
      }
      break;
    case -797379679: 
      if (paramString.equals("com.miui.calendar.view.VerticalMotionFrameLayout")) {
        j = 13;
      }
      break;
    case -839174433: 
      if (paramString.equals("com.android.ex.chips.RecipientEditTextView")) {
        j = 12;
      }
      break;
    case -938935918: 
      if (paramString.equals("TextView")) {
        j = 11;
      }
      break;
    case -949491868: 
      if (paramString.equals("miuix.miuixbasewidget.widget.FilterSortView$TabView")) {
        j = 10;
      }
      break;
    case -979739473: 
      if (paramString.equals("androidx.constraintlayout.widget.ConstraintLayout")) {
        j = 9;
      }
      break;
    case -1008419022: 
      if (paramString.equals("com.miui.calendar.view.VerticalTextView")) {
        j = 8;
      }
      break;
    case -1194278528: 
      if (paramString.equals("com.miui.calendar.view.InfiniteViewPager")) {
        j = 7;
      }
      break;
    case -1248266790: 
      if (paramString.equals("com.miui.calendar.view.OrientationImageView")) {
        j = 6;
      }
      break;
    case -1441556614: 
      if (paramString.equals("com.android.calendar.homepage.LSWeekCalendarView")) {
        j = 5;
      }
      break;
    case -1495589242: 
      if (paramString.equals("ProgressBar")) {
        j = 4;
      }
      break;
    case -1552752958: 
      if (paramString.equals("com.android.calendar.homepage.WeekHeaderView")) {
        j = 3;
      }
      break;
    case -1644973169: 
      if (paramString.equals("com.miui.calendar.view.ShadowView")) {
        j = 2;
      }
      break;
    case -1946472170: 
      if (paramString.equals("RatingBar")) {
        j = 1;
      }
      break;
    case -1975235083: 
      if (paramString.equals("com.miui.calendar.view.MonthMotionContainer")) {
        j = 0;
      }
      break;
    }
    switch (j)
    {
    default: 
      paramString = null;
      break;
    case 49: 
      paramString = new SpringBackLayout(paramContext, paramAttributeSet);
      break;
    case 48: 
      paramString = new LottieAnimationView(paramContext, paramAttributeSet);
      break;
    case 47: 
      paramString = new Button(paramContext, paramAttributeSet);
      break;
    case 46: 
      paramString = new LoadingView(paramContext, paramAttributeSet);
      break;
    case 45: 
      paramString = new EditText(paramContext, paramAttributeSet);
      break;
    case 44: 
      paramString = new MonthPanelContainer(paramContext, paramAttributeSet);
      break;
    case 43: 
      paramString = new EmptyView(paramContext, paramAttributeSet);
      break;
    case 42: 
      paramString = new a0(paramContext, paramAttributeSet);
      break;
    case 41: 
      paramString = new ListView(paramContext, paramAttributeSet);
      break;
    case 40: 
      paramString = new FrameLayout(paramContext, paramAttributeSet);
      break;
    case 39: 
      paramString = new SlidingButton(paramContext, paramAttributeSet);
      break;
    case 38: 
      paramString = new ViewStub(paramContext, paramAttributeSet);
      break;
    case 37: 
      paramString = new FilterSortView(paramContext, paramAttributeSet);
      break;
    case 36: 
      paramString = new LinearLayout(paramContext, paramAttributeSet);
      break;
    case 35: 
      paramString = new ImageView(paramContext, paramAttributeSet);
      break;
    case 34: 
      paramString = new CardView(paramContext, paramAttributeSet);
      break;
    case 33: 
      paramString = new OnlineImageView(paramContext, paramAttributeSet);
      break;
    case 32: 
      paramString = new ViewPager2(paramContext, paramAttributeSet);
      break;
    case 31: 
      paramString = new NestedScrollView(paramContext, paramAttributeSet);
      break;
    case 30: 
      paramString = new ActionBarOverlayLayout(paramContext, paramAttributeSet);
      break;
    case 29: 
      paramString = new HomePageContainer(paramContext, paramAttributeSet);
      break;
    case 28: 
      paramString = new ActionBarContainer(paramContext, paramAttributeSet);
      break;
    case 27: 
      paramString = new RadioButton(paramContext, paramAttributeSet);
      break;
    case 26: 
      paramString = new BetterScrollView(paramContext, paramAttributeSet);
      break;
    case 25: 
      paramString = new AppCompatImageView(paramContext, paramAttributeSet);
      break;
    case 24: 
      paramString = new MainPanelMotionContainer(paramContext, paramAttributeSet);
      break;
    case 23: 
      paramString = new View(paramContext, paramAttributeSet);
      break;
    case 22: 
      paramString = new ActionBarView(paramContext, paramAttributeSet);
      break;
    case 21: 
      paramString = new MultiRadioGroup(paramContext, paramAttributeSet);
      break;
    case 20: 
      paramString = new ViewSwitcher(paramContext, paramAttributeSet);
      break;
    case 19: 
      paramString = new LoadingLayout(paramContext, paramAttributeSet);
      break;
    case 18: 
      paramString = new AllDayViewPager(paramContext, paramAttributeSet);
      break;
    case 17: 
      paramString = new RelativeLayout(paramContext, paramAttributeSet);
      break;
    case 16: 
      paramString = new Spinner(paramContext, paramAttributeSet);
      break;
    case 15: 
      paramString = new RecyclerView(paramContext, paramAttributeSet);
      break;
    case 14: 
      paramString = new Group(paramContext, paramAttributeSet);
      break;
    case 13: 
      paramString = new VerticalMotionFrameLayout(paramContext, paramAttributeSet);
      break;
    case 12: 
      paramString = new RecipientEditTextView(paramContext, paramAttributeSet);
      break;
    case 11: 
      paramString = new TextView(paramContext, paramAttributeSet);
      break;
    case 10: 
      paramString = new FilterSortView.TabView(paramContext, paramAttributeSet);
      break;
    case 9: 
      paramString = new ConstraintLayout(paramContext, paramAttributeSet);
      break;
    case 8: 
      paramString = new VerticalTextView(paramContext, paramAttributeSet);
      break;
    case 7: 
      paramString = new InfiniteViewPager(paramContext, paramAttributeSet);
      break;
    case 6: 
      paramString = new OrientationImageView(paramContext, paramAttributeSet);
      break;
    case 5: 
      paramString = new LSWeekCalendarView(paramContext, paramAttributeSet);
      break;
    case 4: 
      paramString = new ProgressBar(paramContext, paramAttributeSet);
      break;
    case 3: 
      paramString = new WeekHeaderView(paramContext, paramAttributeSet);
      break;
    case 2: 
      paramString = new ShadowView(paramContext, paramAttributeSet);
      break;
    case 1: 
      paramString = new RatingBar(paramContext, paramAttributeSet);
      break;
    case 0: 
      paramString = new MonthMotionContainer(paramContext, paramAttributeSet);
    }
    return paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.b
 * JD-Core Version:    0.7.0.1
 */