package r;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class a
{
  private static int a(int paramInt)
  {
    paramInt = (paramInt & paramInt >> 31) - 255;
    return (paramInt & paramInt >> 31) + 255;
  }
  
  public static void b(ConstraintAttribute paramConstraintAttribute, View paramView, float[] paramArrayOfFloat)
  {
    Object localObject1 = paramView.getClass();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("set");
    ((StringBuilder)localObject2).append(paramConstraintAttribute.b());
    localObject2 = ((StringBuilder)localObject2).toString();
    try
    {
      int i = a.a[paramConstraintAttribute.c().ordinal()];
      boolean bool = true;
      int j;
      int k;
      switch (i)
      {
      default: 
        break;
      case 7: 
        ((Class)localObject1).getMethod((String)localObject2, new Class[] { Float.TYPE }).invoke(paramView, new Object[] { Float.valueOf(paramArrayOfFloat[0]) });
        break;
      case 6: 
        paramConstraintAttribute = ((Class)localObject1).getMethod((String)localObject2, new Class[] { Boolean.TYPE });
        if (paramArrayOfFloat[0] <= 0.5F) {
          bool = false;
        }
        paramConstraintAttribute.invoke(paramView, new Object[] { Boolean.valueOf(bool) });
        break;
      case 5: 
        paramArrayOfFloat = new java/lang/RuntimeException;
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append("unable to interpolate strings ");
        ((StringBuilder)localObject1).append(paramConstraintAttribute.b());
        paramArrayOfFloat.<init>(((StringBuilder)localObject1).toString());
        throw paramArrayOfFloat;
      case 4: 
        paramConstraintAttribute = ((Class)localObject1).getMethod((String)localObject2, new Class[] { Integer.TYPE });
        j = a((int)((float)Math.pow(paramArrayOfFloat[0], 0.4545454545454545D) * 255.0F));
        i = a((int)((float)Math.pow(paramArrayOfFloat[1], 0.4545454545454545D) * 255.0F));
        k = a((int)((float)Math.pow(paramArrayOfFloat[2], 0.4545454545454545D) * 255.0F));
        paramConstraintAttribute.invoke(paramView, new Object[] { Integer.valueOf(j << 16 | a((int)(paramArrayOfFloat[3] * 255.0F)) << 24 | i << 8 | k) });
        break;
      case 3: 
        paramConstraintAttribute = ((Class)localObject1).getMethod((String)localObject2, new Class[] { Drawable.class });
        i = a((int)((float)Math.pow(paramArrayOfFloat[0], 0.4545454545454545D) * 255.0F));
        j = a((int)((float)Math.pow(paramArrayOfFloat[1], 0.4545454545454545D) * 255.0F));
        k = a((int)((float)Math.pow(paramArrayOfFloat[2], 0.4545454545454545D) * 255.0F));
        int m = a((int)(paramArrayOfFloat[3] * 255.0F));
        paramArrayOfFloat = new android/graphics/drawable/ColorDrawable;
        paramArrayOfFloat.<init>();
        paramArrayOfFloat.setColor(i << 16 | m << 24 | j << 8 | k);
        paramConstraintAttribute.invoke(paramView, new Object[] { paramArrayOfFloat });
        break;
      case 2: 
        ((Class)localObject1).getMethod((String)localObject2, new Class[] { Float.TYPE }).invoke(paramView, new Object[] { Float.valueOf(paramArrayOfFloat[0]) });
        break;
      case 1: 
        ((Class)localObject1).getMethod((String)localObject2, new Class[] { Integer.TYPE }).invoke(paramView, new Object[] { Integer.valueOf((int)paramArrayOfFloat[0]) });
      }
    }
    catch (InvocationTargetException paramConstraintAttribute)
    {
      paramConstraintAttribute.printStackTrace();
    }
    catch (IllegalAccessException paramConstraintAttribute)
    {
      paramArrayOfFloat = new StringBuilder();
      paramArrayOfFloat.append("cannot access method ");
      paramArrayOfFloat.append((String)localObject2);
      paramArrayOfFloat.append(" on View \"");
      paramArrayOfFloat.append(androidx.constraintlayout.motion.widget.a.b(paramView));
      paramArrayOfFloat.append("\"");
      Log.e("CustomSupport", paramArrayOfFloat.toString());
      paramConstraintAttribute.printStackTrace();
    }
    catch (NoSuchMethodException paramArrayOfFloat)
    {
      paramConstraintAttribute = new StringBuilder();
      paramConstraintAttribute.append("no method ");
      paramConstraintAttribute.append((String)localObject2);
      paramConstraintAttribute.append(" on View \"");
      paramConstraintAttribute.append(androidx.constraintlayout.motion.widget.a.b(paramView));
      paramConstraintAttribute.append("\"");
      Log.e("CustomSupport", paramConstraintAttribute.toString());
      paramArrayOfFloat.printStackTrace();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r.a
 * JD-Core Version:    0.7.0.1
 */