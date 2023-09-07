package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class b
  extends Preference
{
  private long W;
  
  b(Context paramContext, List<Preference> paramList, long paramLong)
  {
    super(paramContext);
    R0();
    S0(paramList);
    this.W = (paramLong + 1000000L);
  }
  
  private void R0()
  {
    B0(p.a);
    x0(n.a);
    J0(q.b);
    F0(999);
  }
  
  private void S0(List<Preference> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    paramList = null;
    while (localIterator.hasNext())
    {
      Preference localPreference = (Preference)localIterator.next();
      CharSequence localCharSequence = localPreference.J();
      boolean bool = localPreference instanceof PreferenceGroup;
      if ((bool) && (!TextUtils.isEmpty(localCharSequence))) {
        localArrayList.add((PreferenceGroup)localPreference);
      }
      if (localArrayList.contains(localPreference.z()))
      {
        if (bool) {
          localArrayList.add((PreferenceGroup)localPreference);
        }
      }
      else if (!TextUtils.isEmpty(localCharSequence)) {
        if (paramList == null) {
          paramList = localCharSequence;
        } else {
          paramList = n().getString(q.e, new Object[] { paramList, localCharSequence });
        }
      }
    }
    H0(paramList);
  }
  
  public void X(l paraml)
  {
    super.X(paraml);
    paraml.d(false);
  }
  
  long s()
  {
    return this.W;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.b
 * JD-Core Version:    0.7.0.1
 */