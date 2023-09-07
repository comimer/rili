package v0;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.k;
import z0.a;

public class b
  extends c<Boolean>
{
  private static final String i = k.f("BatteryNotLowTracker");
  
  public b(Context paramContext, a parama)
  {
    super(paramContext, parama);
  }
  
  public IntentFilter g()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.BATTERY_OKAY");
    localIntentFilter.addAction("android.intent.action.BATTERY_LOW");
    return localIntentFilter;
  }
  
  public void h(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction() == null) {
      return;
    }
    k.c().a(i, String.format("Received %s", new Object[] { paramIntent.getAction() }), new Throwable[0]);
    paramContext = paramIntent.getAction();
    paramContext.hashCode();
    if (!paramContext.equals("android.intent.action.BATTERY_OKAY"))
    {
      if (paramContext.equals("android.intent.action.BATTERY_LOW")) {
        d(Boolean.FALSE);
      }
    }
    else {
      d(Boolean.TRUE);
    }
  }
  
  public Boolean i()
  {
    Object localObject = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    localObject = this.b.registerReceiver(null, (IntentFilter)localObject);
    boolean bool = false;
    if (localObject == null)
    {
      k.c().b(i, "getInitialState - null intent received", new Throwable[0]);
      return null;
    }
    int j = ((Intent)localObject).getIntExtra("status", -1);
    int k = ((Intent)localObject).getIntExtra("level", -1);
    int m = ((Intent)localObject).getIntExtra("scale", -1);
    float f = k / m;
    if ((j == 1) || (f > 0.15F)) {
      bool = true;
    }
    return Boolean.valueOf(bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v0.b
 * JD-Core Version:    0.7.0.1
 */