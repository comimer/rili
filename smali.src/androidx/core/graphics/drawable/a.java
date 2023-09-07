package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.InsetDrawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class a
{
  public static void a(Drawable paramDrawable, Resources.Theme paramTheme)
  {
    b.a(paramDrawable, paramTheme);
  }
  
  public static boolean b(Drawable paramDrawable)
  {
    return b.b(paramDrawable);
  }
  
  public static void c(Drawable paramDrawable)
  {
    paramDrawable.clearColorFilter();
  }
  
  public static int d(Drawable paramDrawable)
  {
    return a.a(paramDrawable);
  }
  
  public static ColorFilter e(Drawable paramDrawable)
  {
    return b.c(paramDrawable);
  }
  
  public static int f(Drawable paramDrawable)
  {
    return c.a(paramDrawable);
  }
  
  public static void g(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    b.d(paramDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
  }
  
  public static boolean h(Drawable paramDrawable)
  {
    return a.d(paramDrawable);
  }
  
  @Deprecated
  public static void i(Drawable paramDrawable)
  {
    paramDrawable.jumpToCurrentState();
  }
  
  public static void j(Drawable paramDrawable, boolean paramBoolean)
  {
    a.e(paramDrawable, paramBoolean);
  }
  
  public static void k(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    b.e(paramDrawable, paramFloat1, paramFloat2);
  }
  
  public static void l(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b.f(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static boolean m(Drawable paramDrawable, int paramInt)
  {
    return c.b(paramDrawable, paramInt);
  }
  
  public static void n(Drawable paramDrawable, int paramInt)
  {
    b.g(paramDrawable, paramInt);
  }
  
  public static void o(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    b.h(paramDrawable, paramColorStateList);
  }
  
  public static void p(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    b.i(paramDrawable, paramMode);
  }
  
  public static <T extends Drawable> T q(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if ((paramDrawable instanceof g)) {
      localDrawable = ((g)paramDrawable).b();
    }
    return localDrawable;
  }
  
  public static Drawable r(Drawable paramDrawable)
  {
    return paramDrawable;
  }
  
  static class a
  {
    static int a(Drawable paramDrawable)
    {
      return paramDrawable.getAlpha();
    }
    
    static Drawable b(DrawableContainer.DrawableContainerState paramDrawableContainerState, int paramInt)
    {
      return paramDrawableContainerState.getChild(paramInt);
    }
    
    static Drawable c(InsetDrawable paramInsetDrawable)
    {
      return paramInsetDrawable.getDrawable();
    }
    
    static boolean d(Drawable paramDrawable)
    {
      return paramDrawable.isAutoMirrored();
    }
    
    static void e(Drawable paramDrawable, boolean paramBoolean)
    {
      paramDrawable.setAutoMirrored(paramBoolean);
    }
  }
  
  static class b
  {
    static void a(Drawable paramDrawable, Resources.Theme paramTheme)
    {
      paramDrawable.applyTheme(paramTheme);
    }
    
    static boolean b(Drawable paramDrawable)
    {
      return paramDrawable.canApplyTheme();
    }
    
    static ColorFilter c(Drawable paramDrawable)
    {
      return paramDrawable.getColorFilter();
    }
    
    static void d(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
      throws XmlPullParserException, IOException
    {
      paramDrawable.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    }
    
    static void e(Drawable paramDrawable, float paramFloat1, float paramFloat2)
    {
      paramDrawable.setHotspot(paramFloat1, paramFloat2);
    }
    
    static void f(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramDrawable.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    static void g(Drawable paramDrawable, int paramInt)
    {
      paramDrawable.setTint(paramInt);
    }
    
    static void h(Drawable paramDrawable, ColorStateList paramColorStateList)
    {
      paramDrawable.setTintList(paramColorStateList);
    }
    
    static void i(Drawable paramDrawable, PorterDuff.Mode paramMode)
    {
      paramDrawable.setTintMode(paramMode);
    }
  }
  
  static class c
  {
    static int a(Drawable paramDrawable)
    {
      return paramDrawable.getLayoutDirection();
    }
    
    static boolean b(Drawable paramDrawable, int paramInt)
    {
      return paramDrawable.setLayoutDirection(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.drawable.a
 * JD-Core Version:    0.7.0.1
 */