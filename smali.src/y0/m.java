package y0;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import androidx.work.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public class m
{
  private static final String a = k.f("WakeLocks");
  private static final WeakHashMap<PowerManager.WakeLock, String> b = new WeakHashMap();
  
  public static void a()
  {
    HashMap localHashMap = new HashMap();
    synchronized (b)
    {
      localHashMap.putAll((Map)???);
      ??? = localHashMap.keySet().iterator();
      while (((Iterator)???).hasNext())
      {
        Object localObject3 = (PowerManager.WakeLock)((Iterator)???).next();
        if ((localObject3 != null) && (((PowerManager.WakeLock)localObject3).isHeld()))
        {
          localObject3 = String.format("WakeLock held for %s", new Object[] { localHashMap.get(localObject3) });
          k.c().h(a, (String)localObject3, new Throwable[0]);
        }
      }
      return;
    }
  }
  
  public static PowerManager.WakeLock b(Context paramContext, String arg1)
  {
    Object localObject = (PowerManager)paramContext.getApplicationContext().getSystemService("power");
    paramContext = new StringBuilder();
    paramContext.append("WorkManager: ");
    paramContext.append(???);
    paramContext = paramContext.toString();
    localObject = ((PowerManager)localObject).newWakeLock(1, paramContext);
    synchronized (b)
    {
      ???.put(localObject, paramContext);
      return localObject;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.m
 * JD-Core Version:    0.7.0.1
 */