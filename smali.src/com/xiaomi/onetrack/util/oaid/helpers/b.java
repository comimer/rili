package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.onetrack.util.ab;
import com.xiaomi.onetrack.util.n;
import com.xiaomi.onetrack.util.p;

public class b
{
  static String a = "b";
  
  private static String c()
  {
    return Build.MANUFACTURER.toUpperCase();
  }
  
  public String a(Context paramContext)
  {
    try
    {
      paramContext = a(paramContext, c());
    }
    catch (Exception paramContext)
    {
      p.a(a, paramContext.getMessage());
      paramContext = "";
    }
    return paramContext;
  }
  
  String a(Context paramContext, String paramString)
    throws Exception
  {
    a locala = a.b(paramString);
    if (a()) {
      locala = a.o;
    }
    if (b()) {
      locala = a.p;
    }
    if (locala != null)
    {
      switch (c.a[locala.ordinal()])
      {
      default: 
        paramContext = "";
        break;
      case 14: 
      case 15: 
      case 16: 
        paramContext = new m().a(paramContext);
        break;
      case 13: 
        paramContext = new i().a(paramContext);
        break;
      case 10: 
      case 11: 
      case 12: 
        paramContext = n.b(paramContext);
        break;
      case 9: 
        paramContext = new l().a(paramContext);
        break;
      case 8: 
        paramContext = new h().a(paramContext);
        break;
      case 7: 
        paramContext = new k().a(paramContext);
        break;
      case 6: 
        paramContext = new j().a(paramContext);
        break;
      case 5: 
        paramContext = new f().a(paramContext);
        break;
      case 3: 
      case 4: 
        paramContext = new e().a(paramContext);
        break;
      case 2: 
        paramContext = new d().a(paramContext);
        break;
      case 1: 
        paramContext = new a().a(paramContext);
      }
      return paramContext;
    }
    throw new Exception(String.format("undefined oaid method of manufacturer %s", new Object[] { paramString }));
  }
  
  public boolean a()
  {
    String str = ab.a("ro.build.freeme.label");
    return (!TextUtils.isEmpty(str)) && (str.equalsIgnoreCase("FREEMEOS"));
  }
  
  public boolean b()
  {
    String str = ab.a("ro.ssui.product");
    return (!TextUtils.isEmpty(str)) && (!str.equalsIgnoreCase("unknown"));
  }
  
  static enum a
  {
    public final String q;
    
    static
    {
      a locala1 = new a("asus", 0, "ASUS");
      a = locala1;
      a locala2 = new a("huawei", 1, "HUAWEI");
      b = locala2;
      a locala3 = new a("lenovo", 2, "LENOVO");
      c = locala3;
      a locala4 = new a("motolora", 3, "MOTOLORA");
      d = locala4;
      a locala5 = new a("meizu", 4, "MEIZU");
      e = locala5;
      a locala6 = new a("oppo", 5, "OPPO");
      f = locala6;
      a locala7 = new a("samsung", 6, "SAMSUNG");
      g = locala7;
      a locala8 = new a("numbia", 7, "NUBIA");
      h = locala8;
      a locala9 = new a("vivo", 8, "VIVO");
      i = locala9;
      a locala10 = new a("xiaomi", 9, "XIAOMI");
      j = locala10;
      a locala11 = new a("redmi", 10, "REDMI");
      k = locala11;
      a locala12 = new a("blackshark", 11, "BLACKSHARK");
      l = locala12;
      a locala13 = new a("oneplus", 12, "ONEPLUS");
      m = locala13;
      a locala14 = new a("zte", 13, "ZTE");
      n = locala14;
      a locala15 = new a("freemeos", 14, "FERRMEOS");
      o = locala15;
      a locala16 = new a("ssui", 15, "SSUI");
      p = locala16;
      r = new a[] { locala1, locala2, locala3, locala4, locala5, locala6, locala7, locala8, locala9, locala10, locala11, locala12, locala13, locala14, locala15, locala16 };
    }
    
    private a(String paramString)
    {
      this.q = paramString;
    }
    
    public static a a(String paramString)
    {
      return (a)Enum.valueOf(a.class, paramString);
    }
    
    public static a[] a()
    {
      return (a[])r.clone();
    }
    
    static a b(String paramString)
    {
      for (a locala : ) {
        if (locala.q.equals(paramString)) {
          return locala;
        }
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.b
 * JD-Core Version:    0.7.0.1
 */