package k1;

import android.util.Log;
import com.airbnb.lottie.f0;
import java.util.HashSet;
import java.util.Set;

public class c
  implements f0
{
  private static final Set<String> a = new HashSet();
  
  public void a(String paramString, Throwable paramThrowable)
  {
    Set localSet = a;
    if (localSet.contains(paramString)) {
      return;
    }
    Log.w("LOTTIE", paramString, paramThrowable);
    localSet.add(paramString);
  }
  
  public void b(String paramString)
  {
    a(paramString, null);
  }
  
  public void c(String paramString, Throwable paramThrowable)
  {
    if (com.airbnb.lottie.c.a) {
      Log.d("LOTTIE", paramString, paramThrowable);
    }
  }
  
  public void debug(String paramString)
  {
    c(paramString, null);
  }
  
  public void error(String paramString, Throwable paramThrowable)
  {
    if (com.airbnb.lottie.c.a) {
      Log.d("LOTTIE", paramString, paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.c
 * JD-Core Version:    0.7.0.1
 */