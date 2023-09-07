package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

public final class d
{
  public static Drawable a(CompoundButton paramCompoundButton)
  {
    return b.a(paramCompoundButton);
  }
  
  public static ColorStateList b(CompoundButton paramCompoundButton)
  {
    return a.a(paramCompoundButton);
  }
  
  public static void c(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
  {
    a.c(paramCompoundButton, paramColorStateList);
  }
  
  public static void d(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
  {
    a.d(paramCompoundButton, paramMode);
  }
  
  static class a
  {
    static ColorStateList a(CompoundButton paramCompoundButton)
    {
      return paramCompoundButton.getButtonTintList();
    }
    
    static PorterDuff.Mode b(CompoundButton paramCompoundButton)
    {
      return paramCompoundButton.getButtonTintMode();
    }
    
    static void c(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
    {
      paramCompoundButton.setButtonTintList(paramColorStateList);
    }
    
    static void d(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
    {
      paramCompoundButton.setButtonTintMode(paramMode);
    }
  }
  
  static class b
  {
    static Drawable a(CompoundButton paramCompoundButton)
    {
      return paramCompoundButton.getButtonDrawable();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.d
 * JD-Core Version:    0.7.0.1
 */