package e5;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

public abstract interface c
  extends IInterface
{
  public static abstract class a
    extends Binder
    implements c
  {
    public static c n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.miui.systemAdSolution.landingPageV2.listener.IH5Listener");
      if ((localIInterface != null) && ((localIInterface instanceof c))) {
        return (c)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    private static class a
      implements c
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.a;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e5.c
 * JD-Core Version:    0.7.0.1
 */