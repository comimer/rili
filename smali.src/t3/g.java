package t3;

import android.content.Context;
import android.widget.BaseAdapter;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.single.custom.ad.AdSingleCard;
import java.util.Calendar;
import java.util.List;

public class g
  extends AdSingleCard
{
  public g(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, 60, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  public int i()
  {
    return 2131558625;
  }
  
  public boolean j()
  {
    if (super.j())
    {
      List localList = this.t.imgUrls;
      if ((localList != null) && (localList.size() > 0)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t3.g
 * JD-Core Version:    0.7.0.1
 */