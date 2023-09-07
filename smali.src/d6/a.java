package d6;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class a
{
  public static List a(List paramList)
  {
    if (paramList == null) {
      paramList = Collections.EMPTY_LIST;
    }
    return paramList;
  }
  
  public static <T> T b(List<T> paramList, int paramInt)
  {
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (paramList != null) {
      if (paramInt < 0)
      {
        localObject2 = localObject1;
      }
      else
      {
        localObject2 = localObject1;
        if (c(paramList) > paramInt) {
          localObject2 = paramList.get(paramInt);
        }
      }
    }
    return localObject2;
  }
  
  public static int c(Collection paramCollection)
  {
    int i;
    if (paramCollection != null) {
      i = paramCollection.size();
    } else {
      i = 0;
    }
    return i;
  }
  
  public static boolean d(Collection paramCollection)
  {
    boolean bool;
    if (c(paramCollection) == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean e(Collection paramCollection)
  {
    return d(paramCollection) ^ true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d6.a
 * JD-Core Version:    0.7.0.1
 */