package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.NetworkType;
import androidx.work.k;
import java.util.Iterator;
import java.util.List;
import x0.p;

abstract class ConstraintProxy
  extends BroadcastReceiver
{
  private static final String a = k.f("ConstraintProxy");
  
  static void a(Context paramContext, List<p> paramList)
  {
    Iterator localIterator = paramList.iterator();
    boolean bool1 = false;
    boolean bool2 = bool1;
    boolean bool3 = bool2;
    boolean bool4 = bool3;
    boolean bool5;
    boolean bool6;
    boolean bool7;
    boolean bool8;
    do
    {
      do
      {
        do
        {
          do
          {
            bool5 = bool1;
            bool6 = bool2;
            bool7 = bool3;
            bool8 = bool4;
            if (!localIterator.hasNext()) {
              break;
            }
            paramList = ((p)localIterator.next()).j;
            bool5 = bool1 | paramList.f();
            bool6 = bool2 | paramList.g();
            bool7 = bool3 | paramList.i();
            int i;
            if (paramList.b() != NetworkType.NOT_REQUIRED) {
              i = 1;
            } else {
              i = 0;
            }
            bool8 = bool4 | i;
            bool1 = bool5;
            bool2 = bool6;
            bool3 = bool7;
            bool4 = bool8;
          } while (!bool5);
          bool1 = bool5;
          bool2 = bool6;
          bool3 = bool7;
          bool4 = bool8;
        } while (!bool6);
        bool1 = bool5;
        bool2 = bool6;
        bool3 = bool7;
        bool4 = bool8;
      } while (!bool7);
      bool1 = bool5;
      bool2 = bool6;
      bool3 = bool7;
      bool4 = bool8;
    } while (!bool8);
    paramContext.sendBroadcast(ConstraintProxyUpdateReceiver.a(paramContext, bool5, bool6, bool7, bool8));
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    k.c().a(a, String.format("onReceive : %s", new Object[] { paramIntent }), new Throwable[0]);
    paramContext.startService(b.a(paramContext));
  }
  
  public static class BatteryChargingProxy
    extends ConstraintProxy
  {}
  
  public static class BatteryNotLowProxy
    extends ConstraintProxy
  {}
  
  public static class NetworkStateProxy
    extends ConstraintProxy
  {}
  
  public static class StorageNotLowProxy
    extends ConstraintProxy
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.ConstraintProxy
 * JD-Core Version:    0.7.0.1
 */