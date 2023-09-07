package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import m.d;

public class CardView
  extends FrameLayout
{
  private static final int[] COLOR_BACKGROUND_ATTR = { 16842801 };
  private static final c IMPL;
  private final b mCardViewDelegate;
  private boolean mCompatPadding;
  final Rect mContentPadding;
  private boolean mPreventCornerOverlap;
  final Rect mShadowBounds;
  int mUserSetMinHeight;
  int mUserSetMinWidth;
  
  static
  {
    a locala = new a();
    IMPL = locala;
    locala.j();
  }
  
  public CardView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, m.a.a);
  }
  
  public CardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Rect localRect = new Rect();
    this.mContentPadding = localRect;
    this.mShadowBounds = new Rect();
    a locala = new a();
    this.mCardViewDelegate = locala;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, d.a, paramInt, m.c.a);
    paramInt = d.d;
    if (localTypedArray.hasValue(paramInt)) {}
    for (paramAttributeSet = localTypedArray.getColorStateList(paramInt);; paramAttributeSet = ColorStateList.valueOf(paramInt))
    {
      break;
      paramAttributeSet = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
      paramInt = paramAttributeSet.getColor(0, 0);
      paramAttributeSet.recycle();
      paramAttributeSet = new float[3];
      Color.colorToHSV(paramInt, paramAttributeSet);
      if (paramAttributeSet[2] > 0.5F) {
        paramInt = getResources().getColor(m.b.b);
      } else {
        paramInt = getResources().getColor(m.b.a);
      }
    }
    float f1 = localTypedArray.getDimension(d.e, 0.0F);
    float f2 = localTypedArray.getDimension(d.f, 0.0F);
    float f3 = localTypedArray.getDimension(d.g, 0.0F);
    this.mCompatPadding = localTypedArray.getBoolean(d.i, false);
    this.mPreventCornerOverlap = localTypedArray.getBoolean(d.h, true);
    paramInt = localTypedArray.getDimensionPixelSize(d.j, 0);
    localRect.left = localTypedArray.getDimensionPixelSize(d.l, paramInt);
    localRect.top = localTypedArray.getDimensionPixelSize(d.n, paramInt);
    localRect.right = localTypedArray.getDimensionPixelSize(d.m, paramInt);
    localRect.bottom = localTypedArray.getDimensionPixelSize(d.k, paramInt);
    if (f2 > f3) {
      f3 = f2;
    }
    this.mUserSetMinWidth = localTypedArray.getDimensionPixelSize(d.b, 0);
    this.mUserSetMinHeight = localTypedArray.getDimensionPixelSize(d.c, 0);
    localTypedArray.recycle();
    IMPL.a(locala, paramContext, paramAttributeSet, f1, f2, f3);
  }
  
  public ColorStateList getCardBackgroundColor()
  {
    return IMPL.h(this.mCardViewDelegate);
  }
  
  public float getCardElevation()
  {
    return IMPL.c(this.mCardViewDelegate);
  }
  
  public int getContentPaddingBottom()
  {
    return this.mContentPadding.bottom;
  }
  
  public int getContentPaddingLeft()
  {
    return this.mContentPadding.left;
  }
  
  public int getContentPaddingRight()
  {
    return this.mContentPadding.right;
  }
  
  public int getContentPaddingTop()
  {
    return this.mContentPadding.top;
  }
  
  public float getMaxCardElevation()
  {
    return IMPL.g(this.mCardViewDelegate);
  }
  
  public boolean getPreventCornerOverlap()
  {
    return this.mPreventCornerOverlap;
  }
  
  public float getRadius()
  {
    return IMPL.d(this.mCardViewDelegate);
  }
  
  public boolean getUseCompatPadding()
  {
    return this.mCompatPadding;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    c localc = IMPL;
    if (!(localc instanceof a))
    {
      int i = View.MeasureSpec.getMode(paramInt1);
      if ((i == -2147483648) || (i == 1073741824)) {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(localc.l(this.mCardViewDelegate)), View.MeasureSpec.getSize(paramInt1)), i);
      }
      i = View.MeasureSpec.getMode(paramInt2);
      if ((i == -2147483648) || (i == 1073741824)) {
        paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(localc.k(this.mCardViewDelegate)), View.MeasureSpec.getSize(paramInt2)), i);
      }
      super.onMeasure(paramInt1, paramInt2);
    }
    else
    {
      super.onMeasure(paramInt1, paramInt2);
    }
  }
  
  public void setCardBackgroundColor(int paramInt)
  {
    IMPL.n(this.mCardViewDelegate, ColorStateList.valueOf(paramInt));
  }
  
  public void setCardBackgroundColor(ColorStateList paramColorStateList)
  {
    IMPL.n(this.mCardViewDelegate, paramColorStateList);
  }
  
  public void setCardElevation(float paramFloat)
  {
    IMPL.f(this.mCardViewDelegate, paramFloat);
  }
  
  public void setContentPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mContentPadding.set(paramInt1, paramInt2, paramInt3, paramInt4);
    IMPL.i(this.mCardViewDelegate);
  }
  
  public void setMaxCardElevation(float paramFloat)
  {
    IMPL.o(this.mCardViewDelegate, paramFloat);
  }
  
  public void setMinimumHeight(int paramInt)
  {
    this.mUserSetMinHeight = paramInt;
    super.setMinimumHeight(paramInt);
  }
  
  public void setMinimumWidth(int paramInt)
  {
    this.mUserSetMinWidth = paramInt;
    super.setMinimumWidth(paramInt);
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPaddingRelative(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPreventCornerOverlap(boolean paramBoolean)
  {
    if (paramBoolean != this.mPreventCornerOverlap)
    {
      this.mPreventCornerOverlap = paramBoolean;
      IMPL.m(this.mCardViewDelegate);
    }
  }
  
  public void setRadius(float paramFloat)
  {
    IMPL.b(this.mCardViewDelegate, paramFloat);
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    if (this.mCompatPadding != paramBoolean)
    {
      this.mCompatPadding = paramBoolean;
      IMPL.e(this.mCardViewDelegate);
    }
  }
  
  class a
    implements b
  {
    private Drawable a;
    
    a() {}
    
    public void a(Drawable paramDrawable)
    {
      this.a = paramDrawable;
      CardView.this.setBackgroundDrawable(paramDrawable);
    }
    
    public boolean b()
    {
      return CardView.this.getPreventCornerOverlap();
    }
    
    public boolean c()
    {
      return CardView.this.getUseCompatPadding();
    }
    
    public Drawable d()
    {
      return this.a;
    }
    
    public View e()
    {
      return CardView.this;
    }
    
    public void setShadowPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      CardView.this.mShadowBounds.set(paramInt1, paramInt2, paramInt3, paramInt4);
      CardView localCardView = CardView.this;
      Rect localRect = localCardView.mContentPadding;
      localCardView.setPadding(paramInt1 + localRect.left, paramInt2 + localRect.top, paramInt3 + localRect.right, paramInt4 + localRect.bottom);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.cardview.widget.CardView
 * JD-Core Version:    0.7.0.1
 */