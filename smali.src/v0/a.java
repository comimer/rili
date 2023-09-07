package v0;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.k;

public class a
  extends c<Boolean>
{
  private static final String i = k.f("BatteryChrgTracker");
  
  public a(Context paramContext, z0.a parama)
  {
    super(paramContext, parama);
  }
  
  private boolean j(Intent paramIntent)
  {
    int j = paramIntent.getIntExtra("status", -1);
    boolean bool;
    if ((j != 2) && (j != 5)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public IntentFilter g()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.os.action.CHARGING");
    localIntentFilter.addAction("android.os.action.DISCHARGING");
    return localIntentFilter;
  }
  
  public void h(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (str == null) {
      return;
    }
    paramIntent = k.c();
    paramContext = i;
    int j = 1;
    paramIntent.a(paramContext, String.format("Received %s", new Object[] { str }), new Throwable[0]);
    switch (str.hashCode())
    {
    }
    do
    {
      do
      {
        do
        {
          j = -1;
          break;
        } while (!str.equals("android.intent.action.ACTION_POWER_CONNECTED"));
        j = 3;
        break;
      } while (!str.equals("android.os.action.CHARGING"));
      j = 2;
      break;
      if (str.equals("android.os.action.DISCHARGING")) {
        break;
      }
    } while ((goto 88) || (!str.equals("android.intent.action.ACTION_POWER_DISCONNECTED")));
    j = 0;
    switch (j)
    {
    default: 
      break;
    case 3: 
      d(Boolean.TRUE);
      break;
    case 2: 
      d(Boolean.TRUE);
      break;
    case 1: 
      d(Boolean.FALSE);
      break;
    case 0: 
      d(Boolean.FALSE);
    }
  }
  
  public Boolean i()
  {
    Object localObject = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    localObject = this.b.registerReceiver(null, (IntentFilter)localObject);
    if (localObject == null)
    {
      k.c().b(i, "getInitialState - null intent received", new Throwable[0]);
      return null;
    }
    return Boolean.valueOf(j((Intent)localObject));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v0.a
 * JD-Core Version:    0.7.0.1
 */