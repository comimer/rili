package com.android.calendar.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ArrayAdapter;
import b2.a;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

public class l
  extends ArrayAdapter<y>
{
  private static LinkedHashMap<String, y> f;
  private static String g;
  private Context a;
  private String b;
  private boolean c = false;
  private long d;
  private Date e;
  
  public l(Context paramContext, String paramString, long paramLong)
  {
    super(paramContext, 2131558734, 16908308);
    this.a = paramContext;
    this.b = paramString;
    this.d = paramLong;
    this.e = new Date(this.d);
    this.c = false;
    i();
  }
  
  private void d(Resources paramResources)
  {
    if ((f == null) || (!Locale.getDefault().toString().equals(g)))
    {
      g = Locale.getDefault().toString();
      String[] arrayOfString = paramResources.getStringArray(2130903125);
      paramResources = paramResources.getStringArray(2130903124);
      int i = arrayOfString.length;
      f = new LinkedHashMap(i);
      Object localObject;
      if (arrayOfString.length != paramResources.length)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("ids length (");
        ((StringBuilder)localObject).append(arrayOfString.length);
        ((StringBuilder)localObject).append(") and labels length(");
        ((StringBuilder)localObject).append(paramResources.length);
        ((StringBuilder)localObject).append(") should be equal but aren't.");
        Log.wtf("TimezoneAdapter", ((StringBuilder)localObject).toString());
        return;
      }
      for (int j = 0; j < i; j++)
      {
        LinkedHashMap localLinkedHashMap = f;
        localObject = arrayOfString[j];
        localLinkedHashMap.put(localObject, new y((String)localObject, paramResources[j], this.d));
      }
    }
  }
  
  public CharSequence[][] a()
  {
    CharSequence[][] arrayOfCharSequence = new CharSequence[2][f.size()];
    ArrayList localArrayList = new ArrayList(f.keySet());
    Iterator localIterator = new ArrayList(f.values()).iterator();
    for (int i = 0; localIterator.hasNext(); i++)
    {
      y localy = (y)localIterator.next();
      arrayOfCharSequence[0][i] = ((CharSequence)localArrayList.get(i));
      arrayOfCharSequence[1][i] = localy.toString();
    }
    return arrayOfCharSequence;
  }
  
  public int b(String paramString)
  {
    paramString = (y)f.get(paramString);
    if (paramString == null) {
      return -1;
    }
    return getPosition(paramString);
  }
  
  public boolean c()
  {
    return this.c;
  }
  
  public void e(String paramString)
  {
    Object localObject = a.f(this.a).getString("preferences_recent_timezones", null);
    if (localObject == null) {
      localObject = new ArrayList(3);
    } else {
      localObject = new ArrayList(Arrays.asList(((String)localObject).split(",")));
    }
    while (((List)localObject).size() >= 3) {
      ((List)localObject).remove(0);
    }
    ((List)localObject).add(paramString);
    paramString = Utils.v0((List)localObject, ",");
    a.k(this.a, "preferences_recent_timezones", paramString);
  }
  
  public void f(String paramString)
  {
    if ((paramString != null) && (!paramString.equals(this.b)))
    {
      this.b = paramString;
      if (!this.c) {
        i();
      }
    }
  }
  
  public void g(long paramLong)
  {
    if (paramLong != this.d)
    {
      this.d = paramLong;
      this.e.setTime(paramLong);
      f = null;
      i();
    }
  }
  
  public void h()
  {
    Object localObject = new ArrayList(f.values());
    Collections.sort((List)localObject);
    clear();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      y localy = (y)((Iterator)localObject).next();
      localy.b();
      add(localy);
    }
    this.c = true;
  }
  
  public void i()
  {
    Object localObject1 = new LinkedHashSet();
    if (!TextUtils.isEmpty(this.b)) {
      ((AbstractCollection)localObject1).add(this.b);
    }
    ((AbstractCollection)localObject1).add(TimeZone.getDefault().getID());
    Object localObject2 = a.f(this.a).getString("preferences_recent_timezones", null);
    Object localObject4;
    if (localObject2 != null) {
      for (localObject4 : ((String)localObject2).split(",")) {
        if (!TextUtils.isEmpty((CharSequence)localObject4)) {
          ((AbstractCollection)localObject1).add(localObject4);
        }
      }
    }
    clear();
    try
    {
      d(this.a.getResources());
      localObject2 = TimeZone.getTimeZone("GMT");
      localObject4 = ((AbstractCollection)localObject1).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject1 = (String)((Iterator)localObject4).next();
        if (!f.containsKey(localObject1))
        {
          Object localObject5 = TimeZone.getTimeZone((String)localObject1);
          if (!localObject5.equals(localObject2))
          {
            localObject5 = ((TimeZone)localObject5).getDisplayName(((TimeZone)localObject5).inDaylightTime(this.e), 1, Locale.getDefault());
            LinkedHashMap localLinkedHashMap = f;
            y localy = new com/android/calendar/common/y;
            localy.<init>((String)localObject1, (String)localObject5, this.d);
            localLinkedHashMap.put(localObject1, localy);
          }
        }
        else
        {
          add((y)f.get(localObject1));
        }
      }
      this.c = false;
      return;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.l
 * JD-Core Version:    0.7.0.1
 */