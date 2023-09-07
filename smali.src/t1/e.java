package t1;

import android.graphics.Color;

public class e
{
  public static int a(int paramInt)
  {
    float[] arrayOfFloat = new float[3];
    Color.colorToHSV(paramInt, arrayOfFloat);
    return Color.HSVToColor(arrayOfFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t1.e
 * JD-Core Version:    0.7.0.1
 */