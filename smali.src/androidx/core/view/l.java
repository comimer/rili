package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.util.Log;
import android.view.MenuItem;

public final class l
{
  public static MenuItem a(MenuItem paramMenuItem, b paramb)
  {
    if ((paramMenuItem instanceof u.b)) {
      return ((u.b)paramMenuItem).a(paramb);
    }
    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
    return paramMenuItem;
  }
  
  public static void b(MenuItem paramMenuItem, char paramChar, int paramInt)
  {
    if ((paramMenuItem instanceof u.b)) {
      ((u.b)paramMenuItem).setAlphabeticShortcut(paramChar, paramInt);
    } else {
      a.g(paramMenuItem, paramChar, paramInt);
    }
  }
  
  public static void c(MenuItem paramMenuItem, CharSequence paramCharSequence)
  {
    if ((paramMenuItem instanceof u.b)) {
      ((u.b)paramMenuItem).setContentDescription(paramCharSequence);
    } else {
      a.h(paramMenuItem, paramCharSequence);
    }
  }
  
  public static void d(MenuItem paramMenuItem, ColorStateList paramColorStateList)
  {
    if ((paramMenuItem instanceof u.b)) {
      ((u.b)paramMenuItem).setIconTintList(paramColorStateList);
    } else {
      a.i(paramMenuItem, paramColorStateList);
    }
  }
  
  public static void e(MenuItem paramMenuItem, PorterDuff.Mode paramMode)
  {
    if ((paramMenuItem instanceof u.b)) {
      ((u.b)paramMenuItem).setIconTintMode(paramMode);
    } else {
      a.j(paramMenuItem, paramMode);
    }
  }
  
  public static void f(MenuItem paramMenuItem, char paramChar, int paramInt)
  {
    if ((paramMenuItem instanceof u.b)) {
      ((u.b)paramMenuItem).setNumericShortcut(paramChar, paramInt);
    } else {
      a.k(paramMenuItem, paramChar, paramInt);
    }
  }
  
  public static void g(MenuItem paramMenuItem, CharSequence paramCharSequence)
  {
    if ((paramMenuItem instanceof u.b)) {
      ((u.b)paramMenuItem).setTooltipText(paramCharSequence);
    } else {
      a.m(paramMenuItem, paramCharSequence);
    }
  }
  
  static class a
  {
    static int a(MenuItem paramMenuItem)
    {
      return paramMenuItem.getAlphabeticModifiers();
    }
    
    static CharSequence b(MenuItem paramMenuItem)
    {
      return paramMenuItem.getContentDescription();
    }
    
    static ColorStateList c(MenuItem paramMenuItem)
    {
      return paramMenuItem.getIconTintList();
    }
    
    static PorterDuff.Mode d(MenuItem paramMenuItem)
    {
      return paramMenuItem.getIconTintMode();
    }
    
    static int e(MenuItem paramMenuItem)
    {
      return paramMenuItem.getNumericModifiers();
    }
    
    static CharSequence f(MenuItem paramMenuItem)
    {
      return paramMenuItem.getTooltipText();
    }
    
    static MenuItem g(MenuItem paramMenuItem, char paramChar, int paramInt)
    {
      return paramMenuItem.setAlphabeticShortcut(paramChar, paramInt);
    }
    
    static MenuItem h(MenuItem paramMenuItem, CharSequence paramCharSequence)
    {
      return paramMenuItem.setContentDescription(paramCharSequence);
    }
    
    static MenuItem i(MenuItem paramMenuItem, ColorStateList paramColorStateList)
    {
      return paramMenuItem.setIconTintList(paramColorStateList);
    }
    
    static MenuItem j(MenuItem paramMenuItem, PorterDuff.Mode paramMode)
    {
      return paramMenuItem.setIconTintMode(paramMode);
    }
    
    static MenuItem k(MenuItem paramMenuItem, char paramChar, int paramInt)
    {
      return paramMenuItem.setNumericShortcut(paramChar, paramInt);
    }
    
    static MenuItem l(MenuItem paramMenuItem, char paramChar1, char paramChar2, int paramInt1, int paramInt2)
    {
      return paramMenuItem.setShortcut(paramChar1, paramChar2, paramInt1, paramInt2);
    }
    
    static MenuItem m(MenuItem paramMenuItem, CharSequence paramCharSequence)
    {
      return paramMenuItem.setTooltipText(paramCharSequence);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.l
 * JD-Core Version:    0.7.0.1
 */