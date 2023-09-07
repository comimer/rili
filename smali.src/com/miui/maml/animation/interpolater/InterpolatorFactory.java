package com.miui.maml.animation.interpolater;

import android.text.TextUtils;
import android.util.Log;
import android.view.animation.Interpolator;
import com.miui.maml.data.Expression;

public class InterpolatorFactory
{
  public static final String LOG_TAG = "InterpolatorFactory";
  
  public static Interpolator create(String paramString, Expression[] paramArrayOfExpression)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    int i = 0;
    int j;
    if ((paramArrayOfExpression != null) && (paramArrayOfExpression.length > 0)) {
      j = 1;
    } else {
      j = 0;
    }
    int k = paramString.indexOf('(');
    int m = paramString.indexOf(')');
    f1 = 0.0F;
    float f2 = 0.0F;
    if ((k != -1) && (m != -1))
    {
      String str1 = paramString.substring(k + 1, m);
      k = str1.indexOf(",");
      String str2;
      String str3;
      if (k != -1)
      {
        str2 = str1.substring(0, k);
        str3 = str1.substring(k + 1);
        k = 1;
      }
      else
      {
        str3 = "";
        k = 0;
        str2 = str1;
      }
      try
      {
        f3 = Float.parseFloat(str2);
        f1 = f3;
        f4 = f2;
        if (k == 0) {
          break label205;
        }
        localStringBuilder = new StringBuilder();
      }
      catch (NumberFormatException localNumberFormatException1)
      {
        try
        {
          f4 = Float.parseFloat(str3);
          f1 = f3;
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          for (;;)
          {
            float f3;
            float f4;
            StringBuilder localStringBuilder;
            f1 = f3;
          }
        }
        localNumberFormatException1 = localNumberFormatException1;
        f1 = 0.0F;
      }
      localStringBuilder.append("parse error:");
      localStringBuilder.append(str1);
      Log.d("InterpolatorFactory", localStringBuilder.toString());
      f4 = f2;
      label205:
      i = 1;
    }
    else
    {
      k = 0;
      f4 = 0.0F;
    }
    if ("BackEaseIn".equalsIgnoreCase(paramString)) {
      return new BackEaseInInterpolater(paramArrayOfExpression);
    }
    if ("BackEaseOut".equalsIgnoreCase(paramString)) {
      return new BackEaseOutInterpolater(paramArrayOfExpression);
    }
    if ("BackEaseInOut".equalsIgnoreCase(paramString)) {
      return new BackEaseInOutInterpolater(paramArrayOfExpression);
    }
    if (paramString.startsWith("BackEaseInOut"))
    {
      if (j != 0) {
        return new BackEaseInOutInterpolater(paramArrayOfExpression);
      }
      if (i != 0) {
        return new BackEaseInOutInterpolater(f1);
      }
    }
    else if (paramString.startsWith("BackEaseIn"))
    {
      if (j != 0) {
        return new BackEaseInInterpolater(paramArrayOfExpression);
      }
      if (i != 0) {
        return new BackEaseInInterpolater(f1);
      }
    }
    else if (paramString.startsWith("BackEaseOut"))
    {
      if (j != 0) {
        return new BackEaseOutInterpolater(paramArrayOfExpression);
      }
      if (i != 0) {
        return new BackEaseOutInterpolater(f1);
      }
    }
    else
    {
      if ("BounceEaseIn".equalsIgnoreCase(paramString)) {
        return new BounceEaseInInterpolater();
      }
      if ("BounceEaseOut".equalsIgnoreCase(paramString)) {
        return new BounceEaseOutInterpolater();
      }
      if ("BounceEaseInOut".equalsIgnoreCase(paramString)) {
        return new BounceEaseInOutInterpolater();
      }
      if ("CircEaseIn".equalsIgnoreCase(paramString)) {
        return new CircEaseInInterpolater();
      }
      if ("CircEaseOut".equalsIgnoreCase(paramString)) {
        return new CircEaseOutInterpolater();
      }
      if ("CircEaseInOut".equalsIgnoreCase(paramString)) {
        return new CircEaseInOutInterpolater();
      }
      if ("CubicEaseIn".equalsIgnoreCase(paramString)) {
        return new CubicEaseInInterpolater();
      }
      if ("CubicEaseOut".equalsIgnoreCase(paramString)) {
        return new CubicEaseOutInterpolater();
      }
      if ("CubicEaseInOut".equalsIgnoreCase(paramString)) {
        return new CubicEaseInOutInterpolater();
      }
      if ("ElasticEaseIn".equalsIgnoreCase(paramString)) {
        return new ElasticEaseInInterpolater(paramArrayOfExpression);
      }
      if ("ElasticEaseOut".equalsIgnoreCase(paramString)) {
        return new ElasticEaseOutInterpolater(paramArrayOfExpression);
      }
      if ("ElasticEaseInOut".equalsIgnoreCase(paramString)) {
        return new ElasticEaseInOutInterpolater(paramArrayOfExpression);
      }
      if (paramString.startsWith("ElasticEaseInOut"))
      {
        if (j != 0) {
          return new ElasticEaseInOutInterpolater(paramArrayOfExpression);
        }
        if (k != 0) {
          return new ElasticEaseInOutInterpolater(f1, f4);
        }
      }
      else if (paramString.startsWith("ElasticEaseIn"))
      {
        if (j != 0) {
          return new ElasticEaseInInterpolater(paramArrayOfExpression);
        }
        if (k != 0) {
          return new ElasticEaseInInterpolater(f1, f4);
        }
      }
      else if (paramString.startsWith("ElasticEaseOut"))
      {
        if (j != 0) {
          return new ElasticEaseOutInterpolater(paramArrayOfExpression);
        }
        if (k != 0) {
          return new ElasticEaseOutInterpolater(f1, f4);
        }
      }
      else
      {
        if ("ExpoEaseIn".equalsIgnoreCase(paramString)) {
          return new ExpoEaseInInterpolater();
        }
        if ("ExpoEaseOut".equalsIgnoreCase(paramString)) {
          return new ExpoEaseOutInterpolater();
        }
        if ("ExpoEaseInOut".equalsIgnoreCase(paramString)) {
          return new ExpoEaseInOutInterpolater();
        }
        if ("QuadEaseIn".equalsIgnoreCase(paramString)) {
          return new QuadEaseInInterpolater();
        }
        if ("QuadEaseOut".equalsIgnoreCase(paramString)) {
          return new QuadEaseOutInterpolater();
        }
        if ("QuadEaseInOut".equalsIgnoreCase(paramString)) {
          return new QuadEaseInOutInterpolater();
        }
        if ("QuartEaseIn".equalsIgnoreCase(paramString)) {
          return new QuartEaseInInterpolater();
        }
        if ("QuartEaseOut".equalsIgnoreCase(paramString)) {
          return new QuartEaseOutInterpolater();
        }
        if ("QuartEaseInOut".equalsIgnoreCase(paramString)) {
          return new QuartEaseInOutInterpolater();
        }
        if ("QuintEaseIn".equalsIgnoreCase(paramString)) {
          return new QuintEaseInInterpolater();
        }
        if ("QuintEaseOut".equalsIgnoreCase(paramString)) {
          return new QuintEaseOutInterpolater();
        }
        if ("QuintEaseInOut".equalsIgnoreCase(paramString)) {
          return new QuintEaseInOutInterpolater();
        }
        if ("SineEaseIn".equalsIgnoreCase(paramString)) {
          return new SineEaseInInterpolater();
        }
        if ("SineEaseOut".equalsIgnoreCase(paramString)) {
          return new SineEaseOutInterpolater();
        }
        if ("SineEaseInOut".equalsIgnoreCase(paramString)) {
          return new SineEaseInOutInterpolater();
        }
        if ("Linear".equalsIgnoreCase(paramString)) {
          return new LinearInterpolater();
        }
        if ("PhysicBased".equalsIgnoreCase(paramString)) {
          return new PhysicBasedInterpolator(paramArrayOfExpression);
        }
        if (paramString.startsWith("PhysicBased"))
        {
          if (j != 0) {
            return new PhysicBasedInterpolator(paramArrayOfExpression);
          }
          if (k != 0) {
            return new PhysicBasedInterpolator(f1, f4);
          }
        }
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.InterpolatorFactory
 * JD-Core Version:    0.7.0.1
 */