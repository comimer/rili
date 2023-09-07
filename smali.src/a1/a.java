package a1;

import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.os.Build.VERSION;
import android.os.LocaleList;
import k1.g;

public class a
  extends Paint
{
  public a() {}
  
  public a(int paramInt)
  {
    super(paramInt);
  }
  
  public a(int paramInt, PorterDuff.Mode paramMode)
  {
    super(paramInt);
    setXfermode(new PorterDuffXfermode(paramMode));
  }
  
  public a(PorterDuff.Mode paramMode)
  {
    setXfermode(new PorterDuffXfermode(paramMode));
  }
  
  public void setAlpha(int paramInt)
  {
    if (Build.VERSION.SDK_INT < 30)
    {
      int i = getColor();
      setColor(g.c(paramInt, 0, 255) << 24 | i & 0xFFFFFF);
    }
    else
    {
      super.setAlpha(g.c(paramInt, 0, 255));
    }
  }
  
  public void setTextLocales(LocaleList paramLocaleList) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a1.a
 * JD-Core Version:    0.7.0.1
 */