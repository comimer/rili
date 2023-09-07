package com.miui.calendar.util;

import android.content.Context;
import android.graphics.Typeface;
import java.io.File;
import java.util.HashMap;

public class w
{
  private static HashMap<String, Typeface> a = new HashMap();
  public static final Typeface b = Typeface.create("miui-light", 0);
  public static String c = "Mitype2018-60.otf";
  public static String d = "Mitype2018-70.otf";
  public static String e = "Mitype2018-90.otf";
  public static String f = "miui-bold";
  public static String g = "mipro-demibold";
  public static String h = "Mitype2018-70.otf";
  public static String i = "mitype-demibold";
  public static String j = "mitype-semibold";
  
  public static void a()
  {
    a.clear();
  }
  
  public static Typeface b(Context paramContext)
  {
    if (DeviceUtils.F()) {
      return e(i);
    }
    return f(paramContext, d);
  }
  
  public static Typeface c()
  {
    Typeface localTypeface1 = (Typeface)a.get(f);
    Typeface localTypeface2 = localTypeface1;
    Typeface localTypeface3;
    if (localTypeface1 == null) {
      try
      {
        localTypeface2 = Typeface.create(f, 0);
        a.put(f, localTypeface2);
      }
      catch (Exception localException)
      {
        z.d("Cal:D:FontCache", "getTypeface()", localException);
        localTypeface3 = null;
      }
    }
    return localTypeface3;
  }
  
  public static Typeface d()
  {
    Typeface localTypeface1 = (Typeface)a.get(g);
    Typeface localTypeface2 = localTypeface1;
    Typeface localTypeface3;
    if (localTypeface1 == null) {
      try
      {
        localTypeface2 = Typeface.create(g, 0);
        a.put(g, localTypeface2);
      }
      catch (Exception localException)
      {
        z.d("Cal:D:FontCache", "getTypeface()", localException);
        localTypeface3 = null;
      }
    }
    return localTypeface3;
  }
  
  public static Typeface e(String paramString)
  {
    Typeface localTypeface1 = (Typeface)a.get(paramString);
    Typeface localTypeface2 = localTypeface1;
    if (localTypeface1 == null) {
      try
      {
        localTypeface2 = Typeface.create(paramString, 0);
        a.put(paramString, localTypeface2);
      }
      catch (Exception paramString)
      {
        z.d("Cal:D:FontCache", "getTypeface()", paramString);
        return null;
      }
    }
    return localTypeface2;
  }
  
  public static Typeface f(Context paramContext, String paramString)
  {
    Typeface localTypeface = (Typeface)a.get(paramString);
    Object localObject = localTypeface;
    if (localTypeface == null) {
      try
      {
        paramContext = paramContext.getAssets();
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("fonts");
        ((StringBuilder)localObject).append(File.separator);
        ((StringBuilder)localObject).append(paramString);
        localObject = Typeface.createFromAsset(paramContext, ((StringBuilder)localObject).toString());
        a.put(paramString, localObject);
      }
      catch (Exception paramContext)
      {
        z.d("Cal:D:FontCache", "getTypeface()", paramContext);
        return null;
      }
    }
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.w
 * JD-Core Version:    0.7.0.1
 */