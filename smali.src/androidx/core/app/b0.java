package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.util.Log;
import androidx.core.content.a;
import java.util.ArrayList;
import java.util.Iterator;

public final class b0
  implements Iterable<Intent>
{
  private final ArrayList<Intent> a = new ArrayList();
  private final Context b;
  
  private b0(Context paramContext)
  {
    this.b = paramContext;
  }
  
  public static b0 j(Context paramContext)
  {
    return new b0(paramContext);
  }
  
  public b0 c(Intent paramIntent)
  {
    this.a.add(paramIntent);
    return this;
  }
  
  public b0 d(Activity paramActivity)
  {
    Object localObject1;
    if ((paramActivity instanceof a)) {
      localObject1 = ((a)paramActivity).getSupportParentActivityIntent();
    } else {
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = k.a(paramActivity);
    }
    if (localObject2 != null)
    {
      localObject1 = ((Intent)localObject2).getComponent();
      paramActivity = (Activity)localObject1;
      if (localObject1 == null) {
        paramActivity = ((Intent)localObject2).resolveActivity(this.b.getPackageManager());
      }
      h(paramActivity);
      c((Intent)localObject2);
    }
    return this;
  }
  
  public b0 h(ComponentName paramComponentName)
  {
    int i = this.a.size();
    try
    {
      for (paramComponentName = k.b(this.b, paramComponentName); paramComponentName != null; paramComponentName = k.b(this.b, paramComponentName.getComponent())) {
        this.a.add(i, paramComponentName);
      }
      return this;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(paramComponentName);
    }
  }
  
  @Deprecated
  public Iterator<Intent> iterator()
  {
    return this.a.iterator();
  }
  
  public void k()
  {
    l(null);
  }
  
  public void l(Bundle paramBundle)
  {
    if (!this.a.isEmpty())
    {
      Intent[] arrayOfIntent = (Intent[])this.a.toArray(new Intent[0]);
      arrayOfIntent[0] = new Intent(arrayOfIntent[0]).addFlags(268484608);
      if (!a.i(this.b, arrayOfIntent, paramBundle))
      {
        paramBundle = new Intent(arrayOfIntent[(arrayOfIntent.length - 1)]);
        paramBundle.addFlags(268435456);
        this.b.startActivity(paramBundle);
      }
      return;
    }
    throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
  }
  
  public static abstract interface a
  {
    public abstract Intent getSupportParentActivityIntent();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.b0
 * JD-Core Version:    0.7.0.1
 */