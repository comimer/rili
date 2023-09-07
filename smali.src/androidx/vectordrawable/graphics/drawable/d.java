package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.VectorDrawable;
import android.util.AttributeSet;
import androidx.core.content.res.h;
import androidx.core.content.res.l;
import androidx.core.graphics.f;
import androidx.core.graphics.f.b;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import n.g;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class d
  extends c
{
  static final PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;
  private h b;
  private PorterDuffColorFilter c;
  private ColorFilter d;
  private boolean e;
  private boolean f = true;
  private Drawable.ConstantState g;
  private final float[] h = new float[9];
  private final Matrix i = new Matrix();
  private final Rect j = new Rect();
  
  d()
  {
    this.b = new h();
  }
  
  d(h paramh)
  {
    this.b = paramh;
    this.c = g(this.c, paramh.c, paramh.d);
  }
  
  static int a(int paramInt, float paramFloat)
  {
    return paramInt & 0xFFFFFF | (int)(Color.alpha(paramInt) * paramFloat) << 24;
  }
  
  public static d b(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    d locald = new d();
    locald.a = h.d(paramResources, paramInt, paramTheme);
    locald.g = new i(locald.a.getConstantState());
    return locald;
  }
  
  private void c(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    h localh = this.b;
    g localg = localh.b;
    ArrayDeque localArrayDeque = new ArrayDeque();
    localArrayDeque.push(localg.h);
    int m = paramXmlPullParser.getEventType();
    int n = paramXmlPullParser.getDepth();
    int i2;
    for (int i1 = 1; (m != 1) && ((paramXmlPullParser.getDepth() >= n + 1) || (m != 3)); i1 = i2)
    {
      if (m == 2)
      {
        Object localObject = paramXmlPullParser.getName();
        d locald = (d)localArrayDeque.peek();
        if ("path".equals(localObject))
        {
          localObject = new c();
          ((c)localObject).g(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          locald.b.add(localObject);
          if (((f)localObject).getPathName() != null) {
            localg.p.put(((f)localObject).getPathName(), localObject);
          }
          i2 = 0;
          i1 = localh.a;
          localh.a = (((f)localObject).d | i1);
        }
        else if ("clip-path".equals(localObject))
        {
          localObject = new b();
          ((b)localObject).e(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          locald.b.add(localObject);
          if (((f)localObject).getPathName() != null) {
            localg.p.put(((f)localObject).getPathName(), localObject);
          }
          i2 = localh.a;
          localh.a = (((f)localObject).d | i2);
          i2 = i1;
        }
        else
        {
          i2 = i1;
          if ("group".equals(localObject))
          {
            localObject = new d();
            ((d)localObject).c(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
            locald.b.add(localObject);
            localArrayDeque.push(localObject);
            if (((d)localObject).getGroupName() != null) {
              localg.p.put(((d)localObject).getGroupName(), localObject);
            }
            i2 = localh.a;
            localh.a = (((d)localObject).k | i2);
            i2 = i1;
          }
        }
      }
      else
      {
        i2 = i1;
        if (m == 3)
        {
          i2 = i1;
          if ("group".equals(paramXmlPullParser.getName()))
          {
            localArrayDeque.pop();
            i2 = i1;
          }
        }
      }
      m = paramXmlPullParser.next();
    }
    if (i1 == 0) {
      return;
    }
    throw new XmlPullParserException("no path defined");
  }
  
  private boolean d()
  {
    boolean bool1 = isAutoMirrored();
    boolean bool2 = true;
    if ((!bool1) || (androidx.core.graphics.drawable.a.f(this) != 1)) {
      bool2 = false;
    }
    return bool2;
  }
  
  private static PorterDuff.Mode e(int paramInt, PorterDuff.Mode paramMode)
  {
    if (paramInt != 3)
    {
      if (paramInt != 5)
      {
        if (paramInt != 9)
        {
          switch (paramInt)
          {
          default: 
            return paramMode;
          case 16: 
            return PorterDuff.Mode.ADD;
          case 15: 
            return PorterDuff.Mode.SCREEN;
          }
          return PorterDuff.Mode.MULTIPLY;
        }
        return PorterDuff.Mode.SRC_ATOP;
      }
      return PorterDuff.Mode.SRC_IN;
    }
    return PorterDuff.Mode.SRC_OVER;
  }
  
  private void f(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, Resources.Theme paramTheme)
    throws XmlPullParserException
  {
    h localh = this.b;
    g localg = localh.b;
    localh.d = e(l.k(paramTypedArray, paramXmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
    paramTheme = l.g(paramTypedArray, paramXmlPullParser, paramTheme, "tint", 1);
    if (paramTheme != null) {
      localh.c = paramTheme;
    }
    localh.e = l.e(paramTypedArray, paramXmlPullParser, "autoMirrored", 5, localh.e);
    localg.k = l.j(paramTypedArray, paramXmlPullParser, "viewportWidth", 7, localg.k);
    float f1 = l.j(paramTypedArray, paramXmlPullParser, "viewportHeight", 8, localg.l);
    localg.l = f1;
    if (localg.k > 0.0F)
    {
      if (f1 > 0.0F)
      {
        localg.i = paramTypedArray.getDimension(3, localg.i);
        f1 = paramTypedArray.getDimension(2, localg.j);
        localg.j = f1;
        if (localg.i > 0.0F)
        {
          if (f1 > 0.0F)
          {
            localg.setAlpha(l.j(paramTypedArray, paramXmlPullParser, "alpha", 4, localg.getAlpha()));
            paramTypedArray = paramTypedArray.getString(0);
            if (paramTypedArray != null)
            {
              localg.n = paramTypedArray;
              localg.p.put(paramTypedArray, localg);
            }
            return;
          }
          paramXmlPullParser = new StringBuilder();
          paramXmlPullParser.append(paramTypedArray.getPositionDescription());
          paramXmlPullParser.append("<vector> tag requires height > 0");
          throw new XmlPullParserException(paramXmlPullParser.toString());
        }
        paramXmlPullParser = new StringBuilder();
        paramXmlPullParser.append(paramTypedArray.getPositionDescription());
        paramXmlPullParser.append("<vector> tag requires width > 0");
        throw new XmlPullParserException(paramXmlPullParser.toString());
      }
      paramXmlPullParser = new StringBuilder();
      paramXmlPullParser.append(paramTypedArray.getPositionDescription());
      paramXmlPullParser.append("<vector> tag requires viewportHeight > 0");
      throw new XmlPullParserException(paramXmlPullParser.toString());
    }
    paramXmlPullParser = new StringBuilder();
    paramXmlPullParser.append(paramTypedArray.getPositionDescription());
    paramXmlPullParser.append("<vector> tag requires viewportWidth > 0");
    throw new XmlPullParserException(paramXmlPullParser.toString());
  }
  
  public boolean canApplyTheme()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      androidx.core.graphics.drawable.a.b(localDrawable);
    }
    return false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    Object localObject1 = this.a;
    if (localObject1 != null)
    {
      ((Drawable)localObject1).draw(paramCanvas);
      return;
    }
    copyBounds(this.j);
    if ((this.j.width() > 0) && (this.j.height() > 0))
    {
      Object localObject2 = this.d;
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = this.c;
      }
      paramCanvas.getMatrix(this.i);
      this.i.getValues(this.h);
      float f1 = Math.abs(this.h[0]);
      float f2 = Math.abs(this.h[4]);
      float f3 = Math.abs(this.h[1]);
      float f4 = Math.abs(this.h[3]);
      if ((f3 != 0.0F) || (f4 != 0.0F))
      {
        f1 = 1.0F;
        f2 = f1;
      }
      int m = (int)(this.j.width() * f1);
      int n = (int)(this.j.height() * f2);
      m = Math.min(2048, m);
      int i1 = Math.min(2048, n);
      if ((m > 0) && (i1 > 0))
      {
        n = paramCanvas.save();
        localObject2 = this.j;
        paramCanvas.translate(((Rect)localObject2).left, ((Rect)localObject2).top);
        if (d())
        {
          paramCanvas.translate(this.j.width(), 0.0F);
          paramCanvas.scale(-1.0F, 1.0F);
        }
        this.j.offsetTo(0, 0);
        this.b.c(m, i1);
        if (!this.f)
        {
          this.b.j(m, i1);
        }
        else if (!this.b.b())
        {
          this.b.j(m, i1);
          this.b.i();
        }
        this.b.d(paramCanvas, (ColorFilter)localObject1, this.j);
        paramCanvas.restoreToCount(n);
      }
    }
  }
  
  PorterDuffColorFilter g(PorterDuffColorFilter paramPorterDuffColorFilter, ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList != null) && (paramMode != null)) {
      return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
    }
    return null;
  }
  
  public int getAlpha()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return androidx.core.graphics.drawable.a.d(localDrawable);
    }
    return this.b.b.getRootAlpha();
  }
  
  public int getChangingConfigurations()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return localDrawable.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | this.b.getChangingConfigurations();
  }
  
  public ColorFilter getColorFilter()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return androidx.core.graphics.drawable.a.e(localDrawable);
    }
    return this.d;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (this.a != null) {
      return new i(this.a.getConstantState());
    }
    this.b.a = getChangingConfigurations();
    return this.b;
  }
  
  public int getIntrinsicHeight()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return localDrawable.getIntrinsicHeight();
    }
    return (int)this.b.b.j;
  }
  
  public int getIntrinsicWidth()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return localDrawable.getIntrinsicWidth();
    }
    return (int)this.b.b.i;
  }
  
  public int getOpacity()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return localDrawable.getOpacity();
    }
    return -3;
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      localDrawable.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
      return;
    }
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      androidx.core.graphics.drawable.a.g((Drawable)localObject, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    localObject = this.b;
    ((h)localObject).b = new g();
    TypedArray localTypedArray = l.s(paramResources, paramTheme, paramAttributeSet, a.a);
    f(localTypedArray, paramXmlPullParser, paramTheme);
    localTypedArray.recycle();
    ((h)localObject).a = getChangingConfigurations();
    ((h)localObject).k = true;
    c(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    this.c = g(this.c, ((h)localObject).c, ((h)localObject).d);
  }
  
  public void invalidateSelf()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      localDrawable.invalidateSelf();
      return;
    }
    super.invalidateSelf();
  }
  
  public boolean isAutoMirrored()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return androidx.core.graphics.drawable.a.h(localDrawable);
    }
    return this.b.e;
  }
  
  public boolean isStateful()
  {
    Object localObject = this.a;
    if (localObject != null) {
      return ((Drawable)localObject).isStateful();
    }
    if (!super.isStateful())
    {
      localObject = this.b;
      if (localObject != null)
      {
        if (!((h)localObject).g())
        {
          localObject = this.b.c;
          if ((localObject != null) && (((ColorStateList)localObject).isStateful())) {}
        }
      }
      else {
        return false;
      }
    }
    boolean bool = true;
    return bool;
  }
  
  public Drawable mutate()
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      localDrawable.mutate();
      return this;
    }
    if ((!this.e) && (super.mutate() == this))
    {
      this.b = new h(this.b);
      this.e = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      localDrawable.setBounds(paramRect);
    }
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    Object localObject = this.a;
    if (localObject != null) {
      return ((Drawable)localObject).setState(paramArrayOfInt);
    }
    boolean bool1 = false;
    localObject = this.b;
    ColorStateList localColorStateList = ((h)localObject).c;
    boolean bool2 = true;
    boolean bool3 = bool1;
    if (localColorStateList != null)
    {
      PorterDuff.Mode localMode = ((h)localObject).d;
      bool3 = bool1;
      if (localMode != null)
      {
        this.c = g(this.c, localColorStateList, localMode);
        invalidateSelf();
        bool3 = true;
      }
    }
    if ((((h)localObject).g()) && (((h)localObject).h(paramArrayOfInt)))
    {
      invalidateSelf();
      bool3 = bool2;
    }
    return bool3;
  }
  
  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      localDrawable.scheduleSelf(paramRunnable, paramLong);
      return;
    }
    super.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      localDrawable.setAlpha(paramInt);
      return;
    }
    if (this.b.b.getRootAlpha() != paramInt)
    {
      this.b.b.setRootAlpha(paramInt);
      invalidateSelf();
    }
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      androidx.core.graphics.drawable.a.j(localDrawable, paramBoolean);
      return;
    }
    this.b.e = paramBoolean;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      localDrawable.setColorFilter(paramColorFilter);
      return;
    }
    this.d = paramColorFilter;
    invalidateSelf();
  }
  
  public void setTint(int paramInt)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      androidx.core.graphics.drawable.a.n(localDrawable, paramInt);
      return;
    }
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      androidx.core.graphics.drawable.a.o((Drawable)localObject, paramColorStateList);
      return;
    }
    localObject = this.b;
    if (((h)localObject).c != paramColorStateList)
    {
      ((h)localObject).c = paramColorStateList;
      this.c = g(this.c, paramColorStateList, ((h)localObject).d);
      invalidateSelf();
    }
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      androidx.core.graphics.drawable.a.p((Drawable)localObject, paramMode);
      return;
    }
    localObject = this.b;
    if (((h)localObject).d != paramMode)
    {
      ((h)localObject).d = paramMode;
      this.c = g(this.c, ((h)localObject).c, paramMode);
      invalidateSelf();
    }
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null) {
      return localDrawable.setVisible(paramBoolean1, paramBoolean2);
    }
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void unscheduleSelf(Runnable paramRunnable)
  {
    Drawable localDrawable = this.a;
    if (localDrawable != null)
    {
      localDrawable.unscheduleSelf(paramRunnable);
      return;
    }
    super.unscheduleSelf(paramRunnable);
  }
  
  private static class b
    extends d.f
  {
    b() {}
    
    b(b paramb)
    {
      super();
    }
    
    private void f(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
    {
      String str = paramTypedArray.getString(0);
      if (str != null) {
        this.b = str;
      }
      str = paramTypedArray.getString(1);
      if (str != null) {
        this.a = f.d(str);
      }
      this.c = l.k(paramTypedArray, paramXmlPullParser, "fillType", 2, 0);
    }
    
    public boolean c()
    {
      return true;
    }
    
    public void e(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
    {
      if (!l.r(paramXmlPullParser, "pathData")) {
        return;
      }
      paramResources = l.s(paramResources, paramTheme, paramAttributeSet, a.d);
      f(paramResources, paramXmlPullParser);
      paramResources.recycle();
    }
  }
  
  private static class c
    extends d.f
  {
    private int[] e;
    androidx.core.content.res.d f;
    float g = 0.0F;
    androidx.core.content.res.d h;
    float i = 1.0F;
    float j = 1.0F;
    float k = 0.0F;
    float l = 1.0F;
    float m = 0.0F;
    Paint.Cap n = Paint.Cap.BUTT;
    Paint.Join o = Paint.Join.MITER;
    float p = 4.0F;
    
    c() {}
    
    c(c paramc)
    {
      super();
      this.e = paramc.e;
      this.f = paramc.f;
      this.g = paramc.g;
      this.i = paramc.i;
      this.h = paramc.h;
      this.c = paramc.c;
      this.j = paramc.j;
      this.k = paramc.k;
      this.l = paramc.l;
      this.m = paramc.m;
      this.n = paramc.n;
      this.o = paramc.o;
      this.p = paramc.p;
    }
    
    private Paint.Cap e(int paramInt, Paint.Cap paramCap)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2) {
            return paramCap;
          }
          return Paint.Cap.SQUARE;
        }
        return Paint.Cap.ROUND;
      }
      return Paint.Cap.BUTT;
    }
    
    private Paint.Join f(int paramInt, Paint.Join paramJoin)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2) {
            return paramJoin;
          }
          return Paint.Join.BEVEL;
        }
        return Paint.Join.ROUND;
      }
      return Paint.Join.MITER;
    }
    
    private void h(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, Resources.Theme paramTheme)
    {
      this.e = null;
      if (!l.r(paramXmlPullParser, "pathData")) {
        return;
      }
      String str = paramTypedArray.getString(0);
      if (str != null) {
        this.b = str;
      }
      str = paramTypedArray.getString(2);
      if (str != null) {
        this.a = f.d(str);
      }
      this.h = l.i(paramTypedArray, paramXmlPullParser, paramTheme, "fillColor", 1, 0);
      this.j = l.j(paramTypedArray, paramXmlPullParser, "fillAlpha", 12, this.j);
      this.n = e(l.k(paramTypedArray, paramXmlPullParser, "strokeLineCap", 8, -1), this.n);
      this.o = f(l.k(paramTypedArray, paramXmlPullParser, "strokeLineJoin", 9, -1), this.o);
      this.p = l.j(paramTypedArray, paramXmlPullParser, "strokeMiterLimit", 10, this.p);
      this.f = l.i(paramTypedArray, paramXmlPullParser, paramTheme, "strokeColor", 3, 0);
      this.i = l.j(paramTypedArray, paramXmlPullParser, "strokeAlpha", 11, this.i);
      this.g = l.j(paramTypedArray, paramXmlPullParser, "strokeWidth", 4, this.g);
      this.l = l.j(paramTypedArray, paramXmlPullParser, "trimPathEnd", 6, this.l);
      this.m = l.j(paramTypedArray, paramXmlPullParser, "trimPathOffset", 7, this.m);
      this.k = l.j(paramTypedArray, paramXmlPullParser, "trimPathStart", 5, this.k);
      this.c = l.k(paramTypedArray, paramXmlPullParser, "fillType", 13, this.c);
    }
    
    public boolean a()
    {
      boolean bool;
      if ((!this.h.i()) && (!this.f.i())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public boolean b(int[] paramArrayOfInt)
    {
      boolean bool = this.h.j(paramArrayOfInt);
      return this.f.j(paramArrayOfInt) | bool;
    }
    
    public void g(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
    {
      paramResources = l.s(paramResources, paramTheme, paramAttributeSet, a.c);
      h(paramResources, paramXmlPullParser, paramTheme);
      paramResources.recycle();
    }
    
    float getFillAlpha()
    {
      return this.j;
    }
    
    int getFillColor()
    {
      return this.h.e();
    }
    
    float getStrokeAlpha()
    {
      return this.i;
    }
    
    int getStrokeColor()
    {
      return this.f.e();
    }
    
    float getStrokeWidth()
    {
      return this.g;
    }
    
    float getTrimPathEnd()
    {
      return this.l;
    }
    
    float getTrimPathOffset()
    {
      return this.m;
    }
    
    float getTrimPathStart()
    {
      return this.k;
    }
    
    void setFillAlpha(float paramFloat)
    {
      this.j = paramFloat;
    }
    
    void setFillColor(int paramInt)
    {
      this.h.k(paramInt);
    }
    
    void setStrokeAlpha(float paramFloat)
    {
      this.i = paramFloat;
    }
    
    void setStrokeColor(int paramInt)
    {
      this.f.k(paramInt);
    }
    
    void setStrokeWidth(float paramFloat)
    {
      this.g = paramFloat;
    }
    
    void setTrimPathEnd(float paramFloat)
    {
      this.l = paramFloat;
    }
    
    void setTrimPathOffset(float paramFloat)
    {
      this.m = paramFloat;
    }
    
    void setTrimPathStart(float paramFloat)
    {
      this.k = paramFloat;
    }
  }
  
  private static class d
    extends d.e
  {
    final Matrix a = new Matrix();
    final ArrayList<d.e> b = new ArrayList();
    float c = 0.0F;
    private float d = 0.0F;
    private float e = 0.0F;
    private float f = 1.0F;
    private float g = 1.0F;
    private float h = 0.0F;
    private float i = 0.0F;
    final Matrix j;
    int k;
    private int[] l;
    private String m;
    
    public d()
    {
      super();
      this.j = new Matrix();
      this.m = null;
    }
    
    public d(d paramd, n.a<String, Object> parama)
    {
      super();
      Object localObject1 = new Matrix();
      this.j = ((Matrix)localObject1);
      this.m = null;
      this.c = paramd.c;
      this.d = paramd.d;
      this.e = paramd.e;
      this.f = paramd.f;
      this.g = paramd.g;
      this.h = paramd.h;
      this.i = paramd.i;
      this.l = paramd.l;
      Object localObject2 = paramd.m;
      this.m = ((String)localObject2);
      this.k = paramd.k;
      if (localObject2 != null) {
        parama.put(localObject2, this);
      }
      ((Matrix)localObject1).set(paramd.j);
      localObject2 = paramd.b;
      int n = 0;
      while (n < ((ArrayList)localObject2).size())
      {
        paramd = ((ArrayList)localObject2).get(n);
        if ((paramd instanceof d))
        {
          paramd = (d)paramd;
          this.b.add(new d(paramd, parama));
        }
        else
        {
          if ((paramd instanceof d.c))
          {
            paramd = new d.c((d.c)paramd);
          }
          else
          {
            if (!(paramd instanceof d.b)) {
              break label316;
            }
            paramd = new d.b((d.b)paramd);
          }
          this.b.add(paramd);
          localObject1 = paramd.b;
          if (localObject1 != null) {
            parama.put(localObject1, paramd);
          }
        }
        n++;
        continue;
        label316:
        throw new IllegalStateException("Unknown object in the tree!");
      }
    }
    
    private void d()
    {
      this.j.reset();
      this.j.postTranslate(-this.d, -this.e);
      this.j.postScale(this.f, this.g);
      this.j.postRotate(this.c, 0.0F, 0.0F);
      this.j.postTranslate(this.h + this.d, this.i + this.e);
    }
    
    private void e(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
    {
      this.l = null;
      this.c = l.j(paramTypedArray, paramXmlPullParser, "rotation", 5, this.c);
      this.d = paramTypedArray.getFloat(1, this.d);
      this.e = paramTypedArray.getFloat(2, this.e);
      this.f = l.j(paramTypedArray, paramXmlPullParser, "scaleX", 3, this.f);
      this.g = l.j(paramTypedArray, paramXmlPullParser, "scaleY", 4, this.g);
      this.h = l.j(paramTypedArray, paramXmlPullParser, "translateX", 6, this.h);
      this.i = l.j(paramTypedArray, paramXmlPullParser, "translateY", 7, this.i);
      paramTypedArray = paramTypedArray.getString(0);
      if (paramTypedArray != null) {
        this.m = paramTypedArray;
      }
      d();
    }
    
    public boolean a()
    {
      for (int n = 0; n < this.b.size(); n++) {
        if (((d.e)this.b.get(n)).a()) {
          return true;
        }
      }
      return false;
    }
    
    public boolean b(int[] paramArrayOfInt)
    {
      int n = 0;
      boolean bool = false;
      while (n < this.b.size())
      {
        bool |= ((d.e)this.b.get(n)).b(paramArrayOfInt);
        n++;
      }
      return bool;
    }
    
    public void c(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
    {
      paramResources = l.s(paramResources, paramTheme, paramAttributeSet, a.b);
      e(paramResources, paramXmlPullParser);
      paramResources.recycle();
    }
    
    public String getGroupName()
    {
      return this.m;
    }
    
    public Matrix getLocalMatrix()
    {
      return this.j;
    }
    
    public float getPivotX()
    {
      return this.d;
    }
    
    public float getPivotY()
    {
      return this.e;
    }
    
    public float getRotation()
    {
      return this.c;
    }
    
    public float getScaleX()
    {
      return this.f;
    }
    
    public float getScaleY()
    {
      return this.g;
    }
    
    public float getTranslateX()
    {
      return this.h;
    }
    
    public float getTranslateY()
    {
      return this.i;
    }
    
    public void setPivotX(float paramFloat)
    {
      if (paramFloat != this.d)
      {
        this.d = paramFloat;
        d();
      }
    }
    
    public void setPivotY(float paramFloat)
    {
      if (paramFloat != this.e)
      {
        this.e = paramFloat;
        d();
      }
    }
    
    public void setRotation(float paramFloat)
    {
      if (paramFloat != this.c)
      {
        this.c = paramFloat;
        d();
      }
    }
    
    public void setScaleX(float paramFloat)
    {
      if (paramFloat != this.f)
      {
        this.f = paramFloat;
        d();
      }
    }
    
    public void setScaleY(float paramFloat)
    {
      if (paramFloat != this.g)
      {
        this.g = paramFloat;
        d();
      }
    }
    
    public void setTranslateX(float paramFloat)
    {
      if (paramFloat != this.h)
      {
        this.h = paramFloat;
        d();
      }
    }
    
    public void setTranslateY(float paramFloat)
    {
      if (paramFloat != this.i)
      {
        this.i = paramFloat;
        d();
      }
    }
  }
  
  private static abstract class e
  {
    public boolean a()
    {
      return false;
    }
    
    public boolean b(int[] paramArrayOfInt)
    {
      return false;
    }
  }
  
  private static abstract class f
    extends d.e
  {
    protected f.b[] a = null;
    String b;
    int c = 0;
    int d;
    
    public f()
    {
      super();
    }
    
    public f(f paramf)
    {
      super();
      this.b = paramf.b;
      this.d = paramf.d;
      this.a = f.e(paramf.a);
    }
    
    public boolean c()
    {
      return false;
    }
    
    public void d(Path paramPath)
    {
      paramPath.reset();
      f.b[] arrayOfb = this.a;
      if (arrayOfb != null) {
        f.b.d(arrayOfb, paramPath);
      }
    }
    
    public f.b[] getPathData()
    {
      return this.a;
    }
    
    public String getPathName()
    {
      return this.b;
    }
    
    public void setPathData(f.b[] paramArrayOfb)
    {
      if (!f.b(this.a, paramArrayOfb)) {
        this.a = f.e(paramArrayOfb);
      } else {
        f.i(this.a, paramArrayOfb);
      }
    }
  }
  
  private static class g
  {
    private static final Matrix q = new Matrix();
    private final Path a;
    private final Path b;
    private final Matrix c = new Matrix();
    Paint d;
    Paint e;
    private PathMeasure f;
    private int g;
    final d.d h;
    float i = 0.0F;
    float j = 0.0F;
    float k = 0.0F;
    float l = 0.0F;
    int m = 255;
    String n = null;
    Boolean o = null;
    final n.a<String, Object> p;
    
    public g()
    {
      this.p = new n.a();
      this.h = new d.d();
      this.a = new Path();
      this.b = new Path();
    }
    
    public g(g paramg)
    {
      n.a locala = new n.a();
      this.p = locala;
      this.h = new d.d(paramg.h, locala);
      this.a = new Path(paramg.a);
      this.b = new Path(paramg.b);
      this.i = paramg.i;
      this.j = paramg.j;
      this.k = paramg.k;
      this.l = paramg.l;
      this.g = paramg.g;
      this.m = paramg.m;
      this.n = paramg.n;
      String str = paramg.n;
      if (str != null) {
        locala.put(str, this);
      }
      this.o = paramg.o;
    }
    
    private static float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      return paramFloat1 * paramFloat4 - paramFloat2 * paramFloat3;
    }
    
    private void c(d.d paramd, Matrix paramMatrix, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
    {
      paramd.a.set(paramMatrix);
      paramd.a.preConcat(paramd.j);
      paramCanvas.save();
      for (int i1 = 0; i1 < paramd.b.size(); i1++)
      {
        paramMatrix = (d.e)paramd.b.get(i1);
        if ((paramMatrix instanceof d.d)) {
          c((d.d)paramMatrix, paramd.a, paramCanvas, paramInt1, paramInt2, paramColorFilter);
        } else if ((paramMatrix instanceof d.f)) {
          d(paramd, (d.f)paramMatrix, paramCanvas, paramInt1, paramInt2, paramColorFilter);
        }
      }
      paramCanvas.restore();
    }
    
    private void d(d.d paramd, d.f paramf, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
    {
      float f1 = paramInt1 / this.k;
      float f2 = paramInt2 / this.l;
      float f3 = Math.min(f1, f2);
      paramd = paramd.a;
      this.c.set(paramd);
      this.c.postScale(f1, f2);
      f2 = e(paramd);
      if (f2 == 0.0F) {
        return;
      }
      paramf.d(this.a);
      Object localObject1 = this.a;
      this.b.reset();
      if (paramf.c())
      {
        paramColorFilter = this.b;
        if (paramf.c == 0) {
          paramd = Path.FillType.WINDING;
        } else {
          paramd = Path.FillType.EVEN_ODD;
        }
        paramColorFilter.setFillType(paramd);
        this.b.addPath((Path)localObject1, this.c);
        paramCanvas.clipPath(this.b);
      }
      else
      {
        paramf = (d.c)paramf;
        float f4 = paramf.k;
        if ((f4 != 0.0F) || (paramf.l != 1.0F))
        {
          float f5 = paramf.m;
          float f6 = paramf.l;
          if (this.f == null) {
            this.f = new PathMeasure();
          }
          this.f.setPath(this.a, false);
          f1 = this.f.getLength();
          f4 = (f4 + f5) % 1.0F * f1;
          f6 = (f6 + f5) % 1.0F * f1;
          ((Path)localObject1).reset();
          if (f4 > f6)
          {
            this.f.getSegment(f4, f1, (Path)localObject1, true);
            this.f.getSegment(0.0F, f6, (Path)localObject1, true);
          }
          else
          {
            this.f.getSegment(f4, f6, (Path)localObject1, true);
          }
          ((Path)localObject1).rLineTo(0.0F, 0.0F);
        }
        this.b.addPath((Path)localObject1, this.c);
        Object localObject2;
        if (paramf.h.l())
        {
          paramd = paramf.h;
          if (this.e == null)
          {
            localObject1 = new Paint(1);
            this.e = ((Paint)localObject1);
            ((Paint)localObject1).setStyle(Paint.Style.FILL);
          }
          localObject1 = this.e;
          if (paramd.h())
          {
            paramd = paramd.f();
            paramd.setLocalMatrix(this.c);
            ((Paint)localObject1).setShader(paramd);
            ((Paint)localObject1).setAlpha(Math.round(paramf.j * 255.0F));
          }
          else
          {
            ((Paint)localObject1).setShader(null);
            ((Paint)localObject1).setAlpha(255);
            ((Paint)localObject1).setColor(d.a(paramd.e(), paramf.j));
          }
          ((Paint)localObject1).setColorFilter(paramColorFilter);
          localObject2 = this.b;
          if (paramf.c == 0) {
            paramd = Path.FillType.WINDING;
          } else {
            paramd = Path.FillType.EVEN_ODD;
          }
          ((Path)localObject2).setFillType(paramd);
          paramCanvas.drawPath(this.b, (Paint)localObject1);
        }
        if (paramf.f.l())
        {
          paramd = paramf.f;
          if (this.d == null)
          {
            localObject1 = new Paint(1);
            this.d = ((Paint)localObject1);
            ((Paint)localObject1).setStyle(Paint.Style.STROKE);
          }
          localObject1 = this.d;
          localObject2 = paramf.o;
          if (localObject2 != null) {
            ((Paint)localObject1).setStrokeJoin((Paint.Join)localObject2);
          }
          localObject2 = paramf.n;
          if (localObject2 != null) {
            ((Paint)localObject1).setStrokeCap((Paint.Cap)localObject2);
          }
          ((Paint)localObject1).setStrokeMiter(paramf.p);
          if (paramd.h())
          {
            paramd = paramd.f();
            paramd.setLocalMatrix(this.c);
            ((Paint)localObject1).setShader(paramd);
            ((Paint)localObject1).setAlpha(Math.round(paramf.i * 255.0F));
          }
          else
          {
            ((Paint)localObject1).setShader(null);
            ((Paint)localObject1).setAlpha(255);
            ((Paint)localObject1).setColor(d.a(paramd.e(), paramf.i));
          }
          ((Paint)localObject1).setColorFilter(paramColorFilter);
          ((Paint)localObject1).setStrokeWidth(paramf.g * (f3 * f2));
          paramCanvas.drawPath(this.b, (Paint)localObject1);
        }
      }
    }
    
    private float e(Matrix paramMatrix)
    {
      float[] arrayOfFloat = new float[4];
      float[] tmp5_4 = arrayOfFloat;
      tmp5_4[0] = 0.0F;
      float[] tmp9_5 = tmp5_4;
      tmp9_5[1] = 1.0F;
      float[] tmp13_9 = tmp9_5;
      tmp13_9[2] = 1.0F;
      float[] tmp17_13 = tmp13_9;
      tmp17_13[3] = 0.0F;
      tmp17_13;
      paramMatrix.mapVectors(arrayOfFloat);
      float f1 = (float)Math.hypot(arrayOfFloat[0], arrayOfFloat[1]);
      float f2 = (float)Math.hypot(arrayOfFloat[2], arrayOfFloat[3]);
      float f3 = a(arrayOfFloat[0], arrayOfFloat[1], arrayOfFloat[2], arrayOfFloat[3]);
      f1 = Math.max(f1, f2);
      f2 = 0.0F;
      if (f1 > 0.0F) {
        f2 = Math.abs(f3) / f1;
      }
      return f2;
    }
    
    public void b(Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
    {
      c(this.h, q, paramCanvas, paramInt1, paramInt2, paramColorFilter);
    }
    
    public boolean f()
    {
      if (this.o == null) {
        this.o = Boolean.valueOf(this.h.a());
      }
      return this.o.booleanValue();
    }
    
    public boolean g(int[] paramArrayOfInt)
    {
      return this.h.b(paramArrayOfInt);
    }
    
    public float getAlpha()
    {
      return getRootAlpha() / 255.0F;
    }
    
    public int getRootAlpha()
    {
      return this.m;
    }
    
    public void setAlpha(float paramFloat)
    {
      setRootAlpha((int)(paramFloat * 255.0F));
    }
    
    public void setRootAlpha(int paramInt)
    {
      this.m = paramInt;
    }
  }
  
  private static class h
    extends Drawable.ConstantState
  {
    int a;
    d.g b;
    ColorStateList c = null;
    PorterDuff.Mode d = d.k;
    boolean e;
    Bitmap f;
    ColorStateList g;
    PorterDuff.Mode h;
    int i;
    boolean j;
    boolean k;
    Paint l;
    
    public h()
    {
      this.b = new d.g();
    }
    
    public h(h paramh)
    {
      if (paramh != null)
      {
        this.a = paramh.a;
        d.g localg = new d.g(paramh.b);
        this.b = localg;
        if (paramh.b.e != null) {
          localg.e = new Paint(paramh.b.e);
        }
        if (paramh.b.d != null) {
          this.b.d = new Paint(paramh.b.d);
        }
        this.c = paramh.c;
        this.d = paramh.d;
        this.e = paramh.e;
      }
    }
    
    public boolean a(int paramInt1, int paramInt2)
    {
      return (paramInt1 == this.f.getWidth()) && (paramInt2 == this.f.getHeight());
    }
    
    public boolean b()
    {
      return (!this.k) && (this.g == this.c) && (this.h == this.d) && (this.j == this.e) && (this.i == this.b.getRootAlpha());
    }
    
    public void c(int paramInt1, int paramInt2)
    {
      if ((this.f == null) || (!a(paramInt1, paramInt2)))
      {
        this.f = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
        this.k = true;
      }
    }
    
    public void d(Canvas paramCanvas, ColorFilter paramColorFilter, Rect paramRect)
    {
      paramColorFilter = e(paramColorFilter);
      paramCanvas.drawBitmap(this.f, null, paramRect, paramColorFilter);
    }
    
    public Paint e(ColorFilter paramColorFilter)
    {
      if ((!f()) && (paramColorFilter == null)) {
        return null;
      }
      if (this.l == null)
      {
        Paint localPaint = new Paint();
        this.l = localPaint;
        localPaint.setFilterBitmap(true);
      }
      this.l.setAlpha(this.b.getRootAlpha());
      this.l.setColorFilter(paramColorFilter);
      return this.l;
    }
    
    public boolean f()
    {
      boolean bool;
      if (this.b.getRootAlpha() < 255) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean g()
    {
      return this.b.f();
    }
    
    public int getChangingConfigurations()
    {
      return this.a;
    }
    
    public boolean h(int[] paramArrayOfInt)
    {
      boolean bool = this.b.g(paramArrayOfInt);
      this.k |= bool;
      return bool;
    }
    
    public void i()
    {
      this.g = this.c;
      this.h = this.d;
      this.i = this.b.getRootAlpha();
      this.j = this.e;
      this.k = false;
    }
    
    public void j(int paramInt1, int paramInt2)
    {
      this.f.eraseColor(0);
      Canvas localCanvas = new Canvas(this.f);
      this.b.b(localCanvas, paramInt1, paramInt2, null);
    }
    
    public Drawable newDrawable()
    {
      return new d(this);
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      return new d(this);
    }
  }
  
  private static class i
    extends Drawable.ConstantState
  {
    private final Drawable.ConstantState a;
    
    public i(Drawable.ConstantState paramConstantState)
    {
      this.a = paramConstantState;
    }
    
    public boolean canApplyTheme()
    {
      return this.a.canApplyTheme();
    }
    
    public int getChangingConfigurations()
    {
      return this.a.getChangingConfigurations();
    }
    
    public Drawable newDrawable()
    {
      d locald = new d();
      locald.a = ((VectorDrawable)this.a.newDrawable());
      return locald;
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      d locald = new d();
      locald.a = ((VectorDrawable)this.a.newDrawable(paramResources));
      return locald;
    }
    
    public Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
    {
      d locald = new d();
      locald.a = ((VectorDrawable)this.a.newDrawable(paramResources, paramTheme));
      return locald;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.vectordrawable.graphics.drawable.d
 * JD-Core Version:    0.7.0.1
 */