package com.miui.calendar.util;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  public Intent a;
  public String b;
  
  public a(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      this.a = paramIntent;
      this.b = paramIntent.getStringExtra("extra_package_name");
      paramIntent = new StringBuilder();
      paramIntent.append("ActionIntent:");
      paramIntent.append(toString());
      z.a("Cal:D:ActionIntent", paramIntent.toString());
    }
  }
  
  public void a(Context paramContext)
  {
    b(paramContext, null);
  }
  
  public void b(Context paramContext, Map<String, ?> paramMap)
  {
    c(paramContext, paramMap, 0);
  }
  
  public void c(Context paramContext, Map<String, ?> paramMap, int paramInt)
  {
    if (paramMap != null)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject1 = (Map.Entry)paramMap.next();
        Object localObject2 = ((Map.Entry)localObject1).getValue();
        if ((localObject2 instanceof Integer))
        {
          this.a.putExtra((String)((Map.Entry)localObject1).getKey(), (Integer)localObject2);
        }
        else if ((localObject2 instanceof Boolean))
        {
          this.a.putExtra((String)((Map.Entry)localObject1).getKey(), (Boolean)localObject2);
        }
        else if ((localObject2 instanceof Float))
        {
          this.a.putExtra((String)((Map.Entry)localObject1).getKey(), (Float)localObject2);
        }
        else if ((localObject2 instanceof Long))
        {
          this.a.putExtra((String)((Map.Entry)localObject1).getKey(), (Long)localObject2);
        }
        else if ((localObject2 instanceof String))
        {
          this.a.putExtra((String)((Map.Entry)localObject1).getKey(), (String)localObject2);
        }
        else if ((localObject2 instanceof Serializable))
        {
          this.a.putExtra((String)((Map.Entry)localObject1).getKey(), (Serializable)localObject2);
        }
        else
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("sendIntent() unknown extra value type:");
          ((StringBuilder)localObject1).append(localObject2.getClass().toString());
          z.m("Cal:D:ActionIntent", ((StringBuilder)localObject1).toString());
        }
      }
    }
    if (paramInt > 0) {
      this.a.setFlags(paramInt);
    }
    if (i.c(paramContext, this.a)) {
      try
      {
        paramMap = ActivityOptions.makeCustomAnimation(paramContext, 2130771988, 2130771989);
        paramContext.startActivity(this.a, paramMap.toBundle());
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    } else {
      paramContext.sendBroadcast(this.a);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = this.a.getStringExtra("extra_data");
    Object localObject = this.a.getStringExtra("extra_class_name");
    localStringBuilder.append("action=");
    localStringBuilder.append(this.a.getAction());
    localStringBuilder.append(';');
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append("data=");
      localStringBuilder.append(str);
      localStringBuilder.append(';');
    }
    if (!TextUtils.isEmpty(this.b))
    {
      localStringBuilder.append("packageName=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(';');
    }
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      localStringBuilder.append("packageClass=");
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(';');
    }
    if (this.a.getExtras() != null)
    {
      localObject = this.a.getExtras().keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        str = (String)((Iterator)localObject).next();
        localStringBuilder.append("extra:");
        localStringBuilder.append(str);
        localStringBuilder.append("=");
        localStringBuilder.append(this.a.getStringExtra(str));
        localStringBuilder.append(',');
      }
    }
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.a
 * JD-Core Version:    0.7.0.1
 */