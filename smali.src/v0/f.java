package v0;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.k;
import z0.a;

public class f
  extends c<Boolean>
{
  private static final String i = k.f("StorageNotLowTracker");
  
  public f(Context paramContext, a parama)
  {
    super(paramContext, parama);
  }
  
  public IntentFilter g()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
    localIntentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
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
    if (!paramContext.equals("android.intent.action.DEVICE_STORAGE_LOW"))
    {
      if (paramContext.equals("android.intent.action.DEVICE_STORAGE_OK")) {
        d(Boolean.TRUE);
      }
    }
    else {
      d(Boolean.FALSE);
    }
  }
  
  public Boolean i()
  {
    Object localObject = this.b.registerReceiver(null, g());
    if ((localObject != null) && (((Intent)localObject).getAction() != null))
    {
      localObject = ((Intent)localObject).getAction();
      ((String)localObject).hashCode();
      if (!((String)localObject).equals("android.intent.action.DEVICE_STORAGE_LOW"))
      {
        if (!((String)localObject).equals("android.intent.action.DEVICE_STORAGE_OK")) {
          return null;
        }
        return Boolean.TRUE;
      }
      return Boolean.FALSE;
    }
    return Boolean.TRUE;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v0.f
 * JD-Core Version:    0.7.0.1
 */