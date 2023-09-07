package s3;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.Card.DisplayStatus;
import com.miui.calendar.card.Card.b;
import com.miui.calendar.card.b.b;
import com.miui.calendar.util.g0;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

public abstract class a
  extends Card
{
  public String f = String.valueOf(this.c);
  public int g = -1;
  public a h;
  public a i;
  public String j;
  protected Card.DisplayStatus k = Card.DisplayStatus.HIDE;
  
  public a(Context paramContext, int paramInt, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, paramInt, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  private void n(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, String paramString4, Map<String, Object> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    if (!TextUtils.isEmpty(paramString1)) {
      ((Map)localObject).put("container", paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      ((Map)localObject).put("card_name", paramString2);
    }
    ((Map)localObject).put("card_position", String.valueOf(paramInt1 + 1));
    if (paramInt2 >= 0) {
      ((Map)localObject).put("item_position", String.valueOf(paramInt2 + 1));
    }
    if (!TextUtils.isEmpty(paramString4)) {
      ((Map)localObject).put("item_name", paramString4);
    }
    g0.e(paramString3, (Map)localObject);
  }
  
  public void a() {}
  
  public void b() {}
  
  public void e(b.b paramb) {}
  
  public void g(a parama, int paramInt) {}
  
  public abstract a h(View paramView);
  
  public abstract int i();
  
  public abstract boolean j();
  
  protected void k(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    l(paramString1, paramInt1, paramInt2, paramString2, null);
  }
  
  protected void l(String paramString1, int paramInt1, int paramInt2, String paramString2, Map<String, Object> paramMap)
  {
    m(null, paramString1, paramInt1, paramInt2, paramString2, paramMap);
  }
  
  protected void m(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, Map<String, Object> paramMap)
  {
    String str = Card.b.a(this.c);
    Object localObject = str;
    if (!TextUtils.isEmpty(paramString1))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(str);
      ((StringBuilder)localObject).append("_");
      ((StringBuilder)localObject).append(paramString1);
      localObject = ((StringBuilder)localObject).toString();
    }
    n(Card.c(this.d), (String)localObject, paramString2, paramInt1, paramInt2, paramString3, paramMap);
  }
  
  public abstract class a
  {
    public View a;
    public View b;
    public TextView c;
    
    public a(View paramView)
    {
      this.a = paramView.findViewById(2131362111);
      this.b = paramView.findViewById(2131362507);
      this.c = ((TextView)paramView.findViewById(2131362506));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s3.a
 * JD-Core Version:    0.7.0.1
 */