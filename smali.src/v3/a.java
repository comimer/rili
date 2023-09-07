package v3;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.e0;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class a
{
  public static Map<String, String> a;
  private static Map<String, String> b = new HashMap();
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("牛", "cattle");
    a.put("鸡", "chicken");
    a.put("狗", "dog");
    a.put("龙", "dragon");
    a.put("马", "horse");
    a.put("猴", "monkey");
    a.put("鼠", "mouse");
    a.put("猪", "pig");
    a.put("兔", "rabbit");
    a.put("羊", "sheep");
    a.put("蛇", "snake");
    a.put("虎", "tiger");
  }
  
  public static Bitmap b(Context paramContext, String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (a.containsKey(paramString)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("animals/");
      localStringBuilder.append((String)a.get(paramString));
      localStringBuilder.append(".png");
      paramString = Utils.F(paramContext, localStringBuilder.toString());
      if (paramString != null) {
        return paramString;
      }
    }
    return Utils.F(paramContext, "animals/monkey.png");
  }
  
  public static String c(String paramString1, String paramString2)
  {
    return String.format(Locale.ENGLISH, "%s_%s", new Object[] { paramString1, paramString2 });
  }
  
  public static String d(String paramString)
  {
    if (!b.containsKey(paramString))
    {
      long l1 = e0.p();
      b.put(paramString, String.format(Locale.ENGLISH, "%s_%d", new Object[] { paramString, Long.valueOf(l1) }));
      if (b.size() == 1)
      {
        Handler localHandler = new Handler(Looper.getMainLooper());
        long l2 = System.currentTimeMillis();
        localHandler.postDelayed(new a(), l1 + 86400000L - l2);
      }
    }
    return (String)b.get(paramString);
  }
  
  class a
    implements Runnable
  {
    public void run()
    {
      a.a().clear();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v3.a
 * JD-Core Version:    0.7.0.1
 */