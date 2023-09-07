package androidx.core.app;

import android.os.BaseBundle;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

class u
{
  private static final Object a = new Object();
  private static final Object b = new Object();
  
  static Bundle a(l.a parama)
  {
    Bundle localBundle = new Bundle();
    Object localObject = parama.d();
    int i;
    if (localObject != null) {
      i = ((IconCompat)localObject).g();
    } else {
      i = 0;
    }
    localBundle.putInt("icon", i);
    localBundle.putCharSequence("title", parama.h());
    localBundle.putParcelable("actionIntent", parama.a());
    if (parama.c() != null) {
      localObject = new Bundle(parama.c());
    } else {
      localObject = new Bundle();
    }
    ((BaseBundle)localObject).putBoolean("android.support.allowGeneratedReplies", parama.b());
    localBundle.putBundle("extras", (Bundle)localObject);
    localBundle.putParcelableArray("remoteInputs", c(parama.e()));
    localBundle.putBoolean("showsUserInterface", parama.g());
    localBundle.putInt("semanticAction", parama.f());
    return localBundle;
  }
  
  private static Bundle b(x paramx)
  {
    new Bundle();
    throw null;
  }
  
  private static Bundle[] c(x[] paramArrayOfx)
  {
    if (paramArrayOfx == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfx.length];
    for (int i = 0; i < paramArrayOfx.length; i++)
    {
      x localx = paramArrayOfx[i];
      arrayOfBundle[i] = b(null);
    }
    return arrayOfBundle;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.u
 * JD-Core Version:    0.7.0.1
 */