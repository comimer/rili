package v3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import com.miui.calendar.util.z;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class e
{
  private static e b;
  private List<a> a = new ArrayList();
  
  private e(Resources paramResources)
  {
    f(paramResources);
  }
  
  public static Drawable c(Context paramContext, String paramString)
  {
    paramContext = paramContext.getResources();
    paramString.hashCode();
    int i = paramString.hashCode();
    int j = 0;
    int k = -1;
    switch (i)
    {
    default: 
      break;
    case 2034601670: 
      if (paramString.equals("sagittarius")) {
        k = 11;
      }
      break;
    case 1924012163: 
      if (paramString.equals("scorpio")) {
        k = 10;
      }
      break;
    case 112216391: 
      if (paramString.equals("virgo")) {
        k = 9;
      }
      break;
    case 102966132: 
      if (paramString.equals("libra")) {
        k = 8;
      }
      break;
    case 93081862: 
      if (paramString.equals("aries")) {
        k = 7;
      }
      break;
    case 107030: 
      if (paramString.equals("leo")) {
        k = 6;
      }
      break;
    case -880805400: 
      if (paramString.equals("taurus")) {
        k = 5;
      }
      break;
    case -988008329: 
      if (paramString.equals("pisces")) {
        k = 4;
      }
      break;
    case -1249537483: 
      if (paramString.equals("gemini")) {
        k = 3;
      }
      break;
    case -1367724416: 
      if (paramString.equals("cancer")) {
        k = 2;
      }
      break;
    case -1610505039: 
      if (paramString.equals("capricorn")) {
        k = 1;
      }
      break;
    case -2094695471: 
      if (paramString.equals("aquarius")) {
        k = 0;
      }
      break;
    }
    switch (k)
    {
    default: 
      k = j;
      break;
    case 11: 
      k = 2131232422;
      break;
    case 10: 
      k = 2131232423;
      break;
    case 9: 
      k = 2131232482;
      break;
    case 8: 
      k = 2131231421;
      break;
    case 7: 
      k = 2131230946;
      break;
    case 6: 
      k = 2131231420;
      break;
    case 5: 
      k = 2131232465;
      break;
    case 4: 
      k = 2131232408;
      break;
    case 3: 
      k = 2131231199;
      break;
    case 2: 
      k = 2131231020;
      break;
    case 1: 
      k = 2131231021;
      break;
    case 0: 
      k = 2131230945;
    }
    return paramContext.getDrawable(k);
  }
  
  public static e e(Resources paramResources)
  {
    if (b == null) {
      b = new e(paramResources);
    }
    return b;
  }
  
  private void f(Resources paramResources)
  {
    TypedArray localTypedArray = paramResources.obtainTypedArray(2130903085);
    int i = localTypedArray.length();
    for (int j = 0; j < i; j++)
    {
      int k = localTypedArray.getResourceId(j, 0);
      if (k > 0)
      {
        String[] arrayOfString = paramResources.getStringArray(k);
        String str = a(paramResources, arrayOfString[0]);
        this.a.add(new a(arrayOfString[0], arrayOfString[1], str));
      }
      else
      {
        z.a("Cal:D:HoroscopeUtils", "initInfoArrayByResLang: Exception! the res id is invalid.");
      }
    }
    localTypedArray.recycle();
  }
  
  public String a(Resources paramResources, String paramString)
  {
    paramString = b(paramString);
    if (paramString.equals("")) {
      return "";
    }
    paramResources = paramResources.getString(2131887741);
    try
    {
      Object localObject1 = new java/text/SimpleDateFormat;
      ((SimpleDateFormat)localObject1).<init>("MM-dd");
      String str = paramString.split(" - ")[0];
      Object localObject2 = paramString.split(" - ")[1];
      paramString = ((DateFormat)localObject1).parse(str);
      localObject1 = ((DateFormat)localObject1).parse((String)localObject2);
      localObject2 = new java/text/SimpleDateFormat;
      ((SimpleDateFormat)localObject2).<init>(paramResources);
      if ((paramString != null) && (localObject1 != null))
      {
        paramResources = new java/lang/StringBuilder;
        paramResources.<init>();
        paramResources.append(((DateFormat)localObject2).format(paramString));
        paramResources.append(" - ");
        paramResources.append(((DateFormat)localObject2).format((Date)localObject1));
        paramResources = paramResources.toString();
        return paramResources;
      }
      return "";
    }
    catch (Exception paramResources)
    {
      z.d("Cal:D:HoroscopeUtils", "horoscope date invalid!", paramResources);
    }
    return "";
  }
  
  public String b(String paramString)
  {
    paramString.hashCode();
    int i = paramString.hashCode();
    int j = -1;
    switch (i)
    {
    default: 
      break;
    case 2034601670: 
      if (paramString.equals("sagittarius")) {
        j = 11;
      }
      break;
    case 1924012163: 
      if (paramString.equals("scorpio")) {
        j = 10;
      }
      break;
    case 112216391: 
      if (paramString.equals("virgo")) {
        j = 9;
      }
      break;
    case 102966132: 
      if (paramString.equals("libra")) {
        j = 8;
      }
      break;
    case 93081862: 
      if (paramString.equals("aries")) {
        j = 7;
      }
      break;
    case 107030: 
      if (paramString.equals("leo")) {
        j = 6;
      }
      break;
    case -880805400: 
      if (paramString.equals("taurus")) {
        j = 5;
      }
      break;
    case -988008329: 
      if (paramString.equals("pisces")) {
        j = 4;
      }
      break;
    case -1249537483: 
      if (paramString.equals("gemini")) {
        j = 3;
      }
      break;
    case -1367724416: 
      if (paramString.equals("cancer")) {
        j = 2;
      }
      break;
    case -1610505039: 
      if (paramString.equals("capricorn")) {
        j = 1;
      }
      break;
    case -2094695471: 
      if (paramString.equals("aquarius")) {
        j = 0;
      }
      break;
    }
    switch (j)
    {
    default: 
      paramString = "";
      break;
    case 11: 
      paramString = "11-23 - 12-21";
      break;
    case 10: 
      paramString = "10-24 - 11-22";
      break;
    case 9: 
      paramString = "8-23 - 9-22";
      break;
    case 8: 
      paramString = "9-23 - 10-23";
      break;
    case 7: 
      paramString = "3-21 - 4-19";
      break;
    case 6: 
      paramString = "7-23 - 8-22";
      break;
    case 5: 
      paramString = "4-20 - 5-20";
      break;
    case 4: 
      paramString = "2-19 - 3-20";
      break;
    case 3: 
      paramString = "5-21 - 6-21";
      break;
    case 2: 
      paramString = "6-22 - 7-22";
      break;
    case 1: 
      paramString = "12-22 - 1-19";
      break;
    case 0: 
      paramString = "1-20 - 2-18";
    }
    return paramString;
  }
  
  public List<a> d()
  {
    return this.a;
  }
  
  public class a
  {
    public String a;
    public String b;
    public String c;
    
    a(String paramString1, String paramString2, String paramString3)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramString3;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v3.e
 * JD-Core Version:    0.7.0.1
 */