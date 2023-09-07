package com.xiaomi.onetrack.api;

import android.os.Process;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.OneTrack;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.v;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class al
  implements an.b, e
{
  private static final String a = "OneTrackSystemImp";
  private static final int b = 102400;
  private static final int c = 2;
  private final ConcurrentHashMap<String, String> d = new ConcurrentHashMap();
  private Configuration e;
  private an f;
  private v g;
  
  public al(Configuration paramConfiguration, v paramv)
  {
    this.e = paramConfiguration;
    this.g = paramv;
    paramConfiguration = an.a();
    this.f = paramConfiguration;
    paramConfiguration.a(this);
  }
  
  /* Error */
  private boolean a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: new 57	org/json/JSONObject
    //   5: astore_3
    //   6: aload_3
    //   7: aload_1
    //   8: invokespecial 60	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   11: aload_3
    //   12: ldc 62
    //   14: invokevirtual 66	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   17: getstatic 71	com/xiaomi/onetrack/f/b$b:F	Ljava/lang/String;
    //   20: iconst_0
    //   21: invokevirtual 75	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   24: istore 4
    //   26: iload 4
    //   28: istore_2
    //   29: goto +11 -> 40
    //   32: astore_1
    //   33: ldc 12
    //   35: ldc 77
    //   37: invokestatic 82	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   40: iload_2
    //   41: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	al
    //   0	42	1	paramString	String
    //   1	40	2	bool1	boolean
    //   5	7	3	localJSONObject	org.json.JSONObject
    //   24	3	4	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	26	32	finally
  }
  
  private void b()
  {
    try
    {
      synchronized (this.d)
      {
        if (this.d.size() <= 0) {
          return;
        }
        Iterator localIterator = this.d.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject3 = (Map.Entry)localIterator.next();
          String str = (String)((Map.Entry)localObject3).getKey();
          localObject3 = (String)((Map.Entry)localObject3).getValue();
          boolean bool = a(str);
          this.f.b((String)localObject3, str, this.e, bool);
          if (p.a)
          {
            StringBuilder localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append("name:");
            localStringBuilder.append((String)localObject3);
            localStringBuilder.append("data :");
            localStringBuilder.append(str);
            p.a("OneTrackSystemImp", localStringBuilder.toString());
          }
        }
        this.d.clear();
      }
      return;
    }
    catch (Exception localException)
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("trackCachedEvents: ");
      ((StringBuilder)???).append(localException.toString());
      p.a("OneTrackSystemImp", ((StringBuilder)???).toString());
    }
  }
  
  private boolean b(String paramString1, String paramString2)
  {
    if (OneTrack.isDisable()) {
      return false;
    }
    int i;
    if ((paramString1 != null) && (paramString1.equals("onetrack_bug_report"))) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i == 0) && (paramString2 != null) && (paramString2.length() * 2 > 102400))
    {
      p.a("OneTrackSystemImp", "Event size exceed limitation!");
      return false;
    }
    return true;
  }
  
  public void a()
  {
    com.xiaomi.onetrack.util.i.a(new am(this));
  }
  
  public void a(int paramInt)
  {
    this.f.a(paramInt);
  }
  
  public void a(String paramString1, String paramString2)
  {
    boolean bool = a(paramString2);
    ??? = this.g;
    if ((??? != null) && (!((v)???).a(paramString1)) && (!bool))
    {
      p.a("OneTrackSystemImp", "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it.");
      return;
    }
    if (!b(paramString1, paramString2)) {
      return;
    }
    if (!com.xiaomi.onetrack.c.i.b())
    {
      if (!"onetrack_cta_status".equalsIgnoreCase(paramString1)) {
        com.xiaomi.onetrack.c.i.a(paramString1, paramString2);
      }
    }
    else {
      com.xiaomi.onetrack.c.i.a(this);
    }
    if (p.a)
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("track name:");
      ((StringBuilder)???).append(paramString1);
      ((StringBuilder)???).append(" data :");
      ((StringBuilder)???).append(paramString2);
      ((StringBuilder)???).append(" tid");
      ((StringBuilder)???).append(Process.myTid());
      p.a("OneTrackSystemImp", ((StringBuilder)???).toString());
    }
    synchronized (this.d)
    {
      if (!this.f.a(paramString1, paramString2, this.e, bool))
      {
        this.d.put(paramString2, paramString1);
        if (p.a)
        {
          paramString1 = new java/lang/StringBuilder;
          paramString1.<init>();
          paramString1.append("track mIOneTrackService is null!");
          paramString1.append(this.d.size());
          paramString1.append("  ");
          paramString1.append(paramString2);
          p.a("OneTrackSystemImp", paramString1.toString());
        }
      }
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.al
 * JD-Core Version:    0.7.0.1
 */