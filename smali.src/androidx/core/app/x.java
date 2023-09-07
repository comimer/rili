package androidx.core.app;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;
import android.content.Intent;
import android.os.Bundle;

public final class x
{
  static RemoteInput a(x paramx)
  {
    return a.b(paramx);
  }
  
  static RemoteInput[] b(x[] paramArrayOfx)
  {
    if (paramArrayOfx == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfx.length];
    for (int i = 0; i < paramArrayOfx.length; i++)
    {
      x localx = paramArrayOfx[i];
      arrayOfRemoteInput[i] = a(null);
    }
    return arrayOfRemoteInput;
  }
  
  static class a
  {
    static void a(Object paramObject, Intent paramIntent, Bundle paramBundle)
    {
      RemoteInput.addResultsToIntent((RemoteInput[])paramObject, paramIntent, paramBundle);
    }
    
    public static RemoteInput b(x paramx)
    {
      paramx = new android/app/RemoteInput$Builder;
      throw null;
    }
    
    static Bundle c(Intent paramIntent)
    {
      return RemoteInput.getResultsFromIntent(paramIntent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.x
 * JD-Core Version:    0.7.0.1
 */