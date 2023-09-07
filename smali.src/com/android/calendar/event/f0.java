package com.android.calendar.event;

import android.content.Context;
import android.content.res.Resources;
import com.android.calendar.common.event.schema.Reminder;
import com.miui.calendar.util.s0;
import java.util.ArrayList;
import java.util.Collections;

public class f0
{
  public static String a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    Object localObject = paramContext.getResources();
    int k;
    if (paramBoolean)
    {
      int i;
      if (paramInt > 0)
      {
        i = (int)Math.ceil(paramInt / 1440);
        int j = -(paramInt - (i + 1) * 1440) % 1440;
        k = 2131755012;
        paramInt = i;
        i = j;
      }
      else
      {
        k = -paramInt;
        paramInt = (int)Math.floor(k / 1440);
        i = k % 1440;
        k = 2131755010;
      }
      if (paramInt == 0) {
        localObject = ((Resources)localObject).getString(2131886556);
      } else {
        localObject = ((Resources)localObject).getQuantityString(k, paramInt);
      }
      return String.format((String)localObject, new Object[] { Integer.valueOf(paramInt), s0.n(paramContext, i) });
    }
    if (paramInt == 0) {
      return ((Resources)localObject).getString(2131886558);
    }
    if (paramInt % 60 != 0)
    {
      k = 2131755014;
    }
    else if (paramInt % 1440 != 0)
    {
      paramInt /= 60;
      k = 2131755013;
    }
    else if (paramInt % 10080 != 0)
    {
      paramInt /= 1440;
      k = 2131755008;
    }
    else
    {
      paramInt /= 10080;
      k = 2131755015;
    }
    return String.format(((Resources)localObject).getQuantityString(k, paramInt), new Object[] { Integer.valueOf(paramInt) });
  }
  
  public static String b(Context paramContext, ArrayList<Reminder> paramArrayList, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramArrayList == null) || (paramArrayList.isEmpty())) {
      localStringBuilder.append(paramContext.getString(2131886496));
    }
    Collections.sort(paramArrayList);
    if (paramArrayList.size() >= 1) {
      localStringBuilder.append(a(paramContext, ((Reminder)paramArrayList.get(0)).getMinutes(), paramBoolean));
    }
    if (paramArrayList.size() >= 2)
    {
      int i = ((Reminder)paramArrayList.get(1)).getMinutes();
      localStringBuilder.append(",");
      localStringBuilder.append(a(paramContext, i, paramBoolean));
    }
    if (paramArrayList.size() >= 3) {
      localStringBuilder.append(",...");
    }
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.f0
 * JD-Core Version:    0.7.0.1
 */