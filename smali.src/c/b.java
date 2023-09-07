package c;

import android.content.Context;
import android.content.Intent;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class b
  extends a<String[], Map<String, Boolean>>
{
  static Intent e(String[] paramArrayOfString)
  {
    return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", paramArrayOfString);
  }
  
  public Intent d(Context paramContext, String[] paramArrayOfString)
  {
    return e(paramArrayOfString);
  }
  
  public a.a<Map<String, Boolean>> f(Context paramContext, String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length != 0))
    {
      n.a locala = new n.a();
      int i = paramArrayOfString.length;
      int j = 0;
      int k = 1;
      while (j < i)
      {
        String str = paramArrayOfString[j];
        boolean bool;
        if (androidx.core.content.a.a(paramContext, str) == 0) {
          bool = true;
        } else {
          bool = false;
        }
        locala.put(str, Boolean.valueOf(bool));
        if (!bool) {
          k = 0;
        }
        j++;
      }
      if (k != 0) {
        return new a.a(locala);
      }
      return null;
    }
    return new a.a(Collections.emptyMap());
  }
  
  public Map<String, Boolean> g(int paramInt, Intent paramIntent)
  {
    if (paramInt != -1) {
      return Collections.emptyMap();
    }
    if (paramIntent == null) {
      return Collections.emptyMap();
    }
    String[] arrayOfString = paramIntent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
    int[] arrayOfInt = paramIntent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
    if ((arrayOfInt != null) && (arrayOfString != null))
    {
      paramIntent = new HashMap();
      int i = arrayOfString.length;
      for (paramInt = 0; paramInt < i; paramInt++)
      {
        String str = arrayOfString[paramInt];
        boolean bool;
        if (arrayOfInt[paramInt] == 0) {
          bool = true;
        } else {
          bool = false;
        }
        paramIntent.put(str, Boolean.valueOf(bool));
      }
      return paramIntent;
    }
    return Collections.emptyMap();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c.b
 * JD-Core Version:    0.7.0.1
 */