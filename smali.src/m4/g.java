package m4;

import android.content.Context;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.MovieEvent;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.event.schema.SmsEvent;
import com.android.calendar.event.e0;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.sms.SmartMessage.Item;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONObject;

public class g
  extends h
{
  public static final Map<Integer, String> g;
  private MovieEvent f;
  
  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(Integer.valueOf(901), "platform");
    localHashMap.put(Integer.valueOf(902), "codeName1");
    localHashMap.put(Integer.valueOf(9030), "codeNumber1");
    localHashMap.put(Integer.valueOf(9020), "codeName2");
    localHashMap.put(Integer.valueOf(90300), "codeNumber2");
    localHashMap.put(Integer.valueOf(905), "screenings");
    localHashMap.put(Integer.valueOf(904), "movieName");
    localHashMap.put(Integer.valueOf(906), "cinema");
    localHashMap.put(Integer.valueOf(907), "seat");
    localHashMap.put(Integer.valueOf(1011), "startDate");
    localHashMap.put(Integer.valueOf(1012), "startTime");
  }
  
  public g(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    super(paramContext, paramSmartMessage, paramString);
  }
  
  protected boolean b()
  {
    try
    {
      Object localObject = a("movie_info");
      if (localObject == null) {
        return false;
      }
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        MovieEvent localMovieEvent = new com/android/calendar/common/event/schema/MovieEvent;
        localMovieEvent.<init>();
        localMovieEvent.fillEpInfo(str);
        if (this.f.equals(localMovieEvent))
        {
          z.h("Cal:D:MovieSmsModel", "hasSaved(): has saved");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      z.f("Cal:D:MovieSmsModel", "hasSaved()", localException);
    }
    return false;
  }
  
  protected boolean c()
  {
    Object localObject = this.f;
    if ((localObject != null) && (((MovieEvent)localObject).getStartTime() < 0L))
    {
      g0.d("sms_movie_date_invalid");
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("verifySms(): time INVALID, time:");
      ((StringBuilder)localObject).append(this.f.getStartTime());
      z.n("Cal:D:MovieSmsModel", ((StringBuilder)localObject).toString());
      return false;
    }
    return true;
  }
  
  protected void d()
  {
    super.d();
    try
    {
      Map localMap1 = this.b.getItems();
      Iterator localIterator = localMap1.keySet().iterator();
      Object localObject;
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        localObject = (SmartMessage.Item)localMap1.get(Integer.valueOf(i));
        if (localObject != null)
        {
          Map localMap2 = g;
          if (localMap2.containsKey(Integer.valueOf(i))) {
            this.d.put((String)localMap2.get(Integer.valueOf(i)), ((SmartMessage.Item)localObject).getValue());
          }
        }
      }
      if ((this.d.has("startDate")) && (this.d.has("startTime")))
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append(this.d.getString("startDate"));
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(this.d.getString("startTime"));
        long l = Utils.h(((StringBuilder)localObject).toString(), "yyyy-MM-dd HH:mm:ss", TimeZone.getDefault());
        this.d.put("startTimeMillis", String.valueOf(l));
      }
      this.d.put("body", this.c);
    }
    catch (Exception localException)
    {
      z.f("Cal:D:MovieSmsModel", "prepareAttrInfo()", localException);
    }
    MovieEvent localMovieEvent = new MovieEvent();
    this.f = localMovieEvent;
    localMovieEvent.fillEpInfo(this.d.toString());
  }
  
  protected boolean f()
  {
    long l = this.f.getStartTime();
    boolean bool1 = false;
    if (l == -1L)
    {
      z.n("Cal:D:MovieSmsModel", "saveEvent(): startMillis is -1, return");
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Reminder.valueOf(120, 1));
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(this.a.getString(2131886987));
    ((StringBuilder)localObject).append(this.f.getMovieName());
    localObject = ((StringBuilder)localObject).toString();
    boolean bool2 = e0.h(this.a, -1L, l, l + 3600000L, false, (String)localObject, this.f.getBody(), this.f.getCinema(), 17, true, localArrayList, h()) < -1L;
    if (bool2) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    e("电影票", bool3);
    boolean bool3 = bool1;
    if (bool2) {
      bool3 = true;
    }
    return bool3;
  }
  
  protected HashMap<String, String> h()
  {
    try
    {
      HashMap localHashMap = new java/util/HashMap;
      localHashMap.<init>();
      localHashMap.put("movie_info", this.d.toString());
      return localHashMap;
    }
    catch (Exception localException)
    {
      z.f("Cal:D:MovieSmsModel", "generateEPMaps()", localException);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.g
 * JD-Core Version:    0.7.0.1
 */