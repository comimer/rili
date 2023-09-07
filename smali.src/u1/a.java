package u1;

import com.miui.calendar.ai.TimeParser.ParseResult;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.coroutines.p0;
import okhttp3.b0;
import vc.d;
import vc.e;
import vc.f;
import vc.i;
import vc.o;
import vc.u;
import vc.x;

@Metadata(bv={}, d1={""}, d2={"Lu1/a;", "", "", "header", "", "paramsMap", "Ltc/a;", "Lokhttp3/b0;", "x", "y", "c", "h", "b", "s", "k", "D", "j", "o", "m", "u", "t", "C", "z", "l", "keyword", "n", "i", "g", "B", "d", "a", "A", "f", "w", "url", "e", "E", "q", "r", "v", "Lkotlinx/coroutines/p0;", "Lcom/miui/calendar/ai/TimeParser$ParseResult;", "p", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public abstract interface a
{
  @e
  @o("user/saveConfig")
  public abstract tc.a<b0> A(@i("Cookie") String paramString, @d Map<String, String> paramMap);
  
  @f("api/getCityInfo")
  public abstract tc.a<b0> B(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("card/subscriptionService")
  public abstract tc.a<b0> C(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("festival/v2/get")
  public abstract tc.a<b0> D(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f
  public abstract tc.a<b0> E(@x String paramString);
  
  @e
  @o("device/setting")
  public abstract tc.a<b0> a(@i("Cookie") String paramString, @d Map<String, String> paramMap);
  
  @f("festival/get")
  public abstract tc.a<b0> b(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("activity/getConfig")
  public abstract tc.a<b0> c(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("holiday.jsp")
  public abstract tc.a<b0> d(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f
  public abstract tc.a<b0> e(@x String paramString);
  
  @f("ad/get")
  public abstract tc.a<b0> f(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("native/card/train")
  public abstract tc.a<b0> g(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("festival/sync")
  public abstract tc.a<b0> h(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("user/updateUserCard")
  public abstract tc.a<b0> i(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("card/carRestrictions")
  public abstract tc.a<b0> j(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("festival/v2/reminder")
  public abstract tc.a<b0> k(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("api/app_limit")
  public abstract tc.a<b0> l(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("native/card/getBatch")
  public abstract tc.a<b0> m(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("api/eventLimit")
  public abstract tc.a<b0> n(@i("keyword") String paramString1, @i("cookie") String paramString2, @u Map<String, String> paramMap);
  
  @f("card/carRestrictionRule")
  public abstract tc.a<b0> o(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("textSchedule/event")
  public abstract p0<TimeParser.ParseResult> p(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("card/cardsInfo")
  public abstract tc.a<b0> q(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("config/query")
  public abstract tc.a<b0> r(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("festival/v2/list")
  public abstract tc.a<b0> s(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("user/getConfig")
  public abstract tc.a<b0> t(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("card/get")
  public abstract tc.a<b0> u(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("config/patch")
  public abstract tc.a<b0> v(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("adcard/get")
  public abstract tc.a<b0> w(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("card/list")
  public abstract tc.a<b0> x(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("card/getItemlist")
  public abstract tc.a<b0> y(@i("Cookie") String paramString, @u Map<String, String> paramMap);
  
  @f("/calendar/feishu/getAccountType")
  public abstract tc.a<b0> z(@i("Cookie") String paramString, @u Map<String, String> paramMap);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u1.a
 * JD-Core Version:    0.7.0.1
 */