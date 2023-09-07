package a2;

import android.content.Context;
import android.os.Handler;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.settings.j;
import com.miui.calendar.util.z;
import java.util.Iterator;
import java.util.List;
import s1.e;

public class d
{
  public int a;
  public int b;
  public b.a c;
  public String d;
  
  public d(int paramInt1, int paramInt2, b.a parama, String paramString)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = parama;
    this.d = paramString;
  }
  
  public void c(Context paramContext, Handler paramHandler)
  {
    long l = System.currentTimeMillis();
    List localList = e.e(paramContext, this.a, this.b, -1, this.d);
    if ((localList != null) && (!j.o(paramContext)))
    {
      paramContext = localList.iterator();
      while (paramContext.hasNext())
      {
        localObject = (Event)paramContext.next();
        if ((localObject != null) && (((Event)localObject).getEx().isRejectAgenda())) {
          paramContext.remove();
        }
      }
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("processRequest(): events count:");
    if (localList != null) {
      paramContext = Integer.valueOf(localList.size());
    } else {
      paramContext = "null";
    }
    ((StringBuilder)localObject).append(paramContext);
    ((StringBuilder)localObject).append(", time cost: ");
    ((StringBuilder)localObject).append(System.currentTimeMillis() - l);
    ((StringBuilder)localObject).append("ms");
    z.a("Cal:D:LoadRequest", ((StringBuilder)localObject).toString());
    if (this.c != null) {
      paramHandler.post(new c(this, localList));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a2.d
 * JD-Core Version:    0.7.0.1
 */