package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.widget.ImageView;

public class h
{
  public static ColorStateList a(ImageView paramImageView)
  {
    return a.a(paramImageView);
  }
  
  public static PorterDuff.Mode b(ImageView paramImageView)
  {
    return a.b(paramImageView);
  }
  
  public static void c(ImageView paramImageView, ColorStateList paramColorStateList)
  {
    a.c(paramImageView, paramColorStateList);
  }
  
  public static void d(ImageView paramImageView, PorterDuff.Mode paramMode)
  {
    a.d(paramImageView, paramMode);
  }
  
  static class a
  {
    static ColorStateList a(ImageView paramImageView)
    {
      return paramImageView.getImageTintList();
    }
    
    static PorterDuff.Mode b(ImageView paramImageView)
    {
      return paramImageView.getImageTintMode();
    }
    
    static void c(ImageView paramImageView, ColorStateList paramColorStateList)
    {
      paramImageView.setImageTintList(paramColorStateList);
    }
    
    static void d(ImageView paramImageView, PorterDuff.Mode paramMode)
    {
      paramImageView.setImageTintMode(paramMode);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.h
 * JD-Core Version:    0.7.0.1
 */