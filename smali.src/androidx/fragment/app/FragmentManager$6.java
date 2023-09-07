package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import java.util.Map;

class FragmentManager$6
  implements l
{
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    if (paramEvent == Lifecycle.Event.ON_START)
    {
      paramn = (Bundle)FragmentManager.a(this.d).get(this.a);
      if (paramn != null)
      {
        this.b.a(this.a, paramn);
        this.d.r(this.a);
      }
    }
    if (paramEvent == Lifecycle.Event.ON_DESTROY)
    {
      this.c.c(this);
      FragmentManager.b(this.d).remove(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.FragmentManager.6
 * JD-Core Version:    0.7.0.1
 */