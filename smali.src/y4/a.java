package y4;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;

public class a
{
  private static int a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= 50)) {
      return 0;
    }
    if ((paramInt > 50) && (paramInt <= 100)) {
      return 1;
    }
    if ((paramInt > 100) && (paramInt <= 150)) {
      return 2;
    }
    if ((paramInt > 150) && (paramInt <= 200)) {
      return 3;
    }
    if ((paramInt > 200) && (paramInt <= 300)) {
      return 4;
    }
    if (paramInt > 300) {
      return 5;
    }
    return -1;
  }
  
  public static int b(Context paramContext, int paramInt)
  {
    return c(paramContext.getResources().obtainTypedArray(2130903053), paramInt);
  }
  
  private static int c(TypedArray paramTypedArray, int paramInt)
  {
    paramInt = a(paramInt);
    if (paramInt == -1)
    {
      paramInt = paramTypedArray.getColor(0, 0);
      paramTypedArray.recycle();
      return paramInt;
    }
    paramInt = paramTypedArray.getColor(paramInt, 0);
    paramTypedArray.recycle();
    return paramInt;
  }
  
  public static int d(Context paramContext, int paramInt)
  {
    return c(paramContext.getResources().obtainTypedArray(2130903054), paramInt);
  }
  
  public static String e(Context paramContext, int paramInt)
  {
    paramInt = a(paramInt);
    if (paramInt == -1) {
      return "";
    }
    return paramContext.getResources().getStringArray(2130903055)[paramInt];
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y4.a
 * JD-Core Version:    0.7.0.1
 */