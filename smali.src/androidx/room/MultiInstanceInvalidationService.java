package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;

public class MultiInstanceInvalidationService
  extends Service
{
  int a = 0;
  final HashMap<Integer, String> b = new HashMap();
  final RemoteCallbackList<e> c = new a();
  private final f.a d = new b();
  
  public IBinder onBind(Intent paramIntent)
  {
    return this.d;
  }
  
  class a
    extends RemoteCallbackList<e>
  {
    a() {}
    
    public void a(e parame, Object paramObject)
    {
      MultiInstanceInvalidationService.this.b.remove(Integer.valueOf(((Integer)paramObject).intValue()));
    }
  }
  
  class b
    extends f.a
  {
    b() {}
    
    public int A(e parame, String paramString)
    {
      if (paramString == null) {
        return 0;
      }
      synchronized (MultiInstanceInvalidationService.this.c)
      {
        MultiInstanceInvalidationService localMultiInstanceInvalidationService = MultiInstanceInvalidationService.this;
        int i = localMultiInstanceInvalidationService.a + 1;
        localMultiInstanceInvalidationService.a = i;
        if (localMultiInstanceInvalidationService.c.register(parame, Integer.valueOf(i)))
        {
          MultiInstanceInvalidationService.this.b.put(Integer.valueOf(i), paramString);
          return i;
        }
        parame = MultiInstanceInvalidationService.this;
        parame.a -= 1;
        return 0;
      }
    }
    
    public void c0(int paramInt, String[] paramArrayOfString)
    {
      synchronized (MultiInstanceInvalidationService.this.c)
      {
        String str1 = (String)MultiInstanceInvalidationService.this.b.get(Integer.valueOf(paramInt));
        if (str1 == null)
        {
          Log.w("ROOM", "Remote invalidation client ID not registered");
          return;
        }
        int i = MultiInstanceInvalidationService.this.c.beginBroadcast();
        int j = 0;
        while (j < i) {
          try
          {
            int k = ((Integer)MultiInstanceInvalidationService.this.c.getBroadcastCookie(j)).intValue();
            String str2 = (String)MultiInstanceInvalidationService.this.b.get(Integer.valueOf(k));
            if (paramInt != k)
            {
              boolean bool = str1.equals(str2);
              if (bool) {
                try
                {
                  ((e)MultiInstanceInvalidationService.this.c.getBroadcastItem(j)).p(paramArrayOfString);
                }
                catch (RemoteException localRemoteException)
                {
                  Log.w("ROOM", "Error invoking a remote callback", localRemoteException);
                }
              }
            }
            j++;
          }
          finally
          {
            MultiInstanceInvalidationService.this.c.finishBroadcast();
          }
        }
        MultiInstanceInvalidationService.this.c.finishBroadcast();
        return;
      }
    }
    
    public void h0(e parame, int paramInt)
    {
      synchronized (MultiInstanceInvalidationService.this.c)
      {
        MultiInstanceInvalidationService.this.c.unregister(parame);
        MultiInstanceInvalidationService.this.b.remove(Integer.valueOf(paramInt));
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.MultiInstanceInvalidationService
 * JD-Core Version:    0.7.0.1
 */