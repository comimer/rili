package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView.a;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.c1;
import androidx.appcompat.widget.h0;
import d.j;

public class ActionMenuItemView
  extends AppCompatTextView
  implements n.a, View.OnClickListener, ActionMenuView.a
{
  i a;
  private CharSequence b;
  private Drawable c;
  g.b d;
  private h0 e;
  b f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    this.g = d();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.v, paramInt, 0);
    this.i = paramContext.getDimensionPixelSize(j.w, 0);
    paramContext.recycle();
    this.k = ((int)(localResources.getDisplayMetrics().density * 32.0F + 0.5F));
    setOnClickListener(this);
    this.j = -1;
    setSaveEnabled(false);
  }
  
  private boolean d()
  {
    Configuration localConfiguration = getContext().getResources().getConfiguration();
    int m = localConfiguration.screenWidthDp;
    int n = localConfiguration.screenHeightDp;
    boolean bool;
    if ((m < 480) && ((m < 640) || (n < 480)) && (localConfiguration.orientation != 2)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void e()
  {
    boolean bool = TextUtils.isEmpty(this.b);
    int m = 1;
    int n = m;
    if (this.c != null)
    {
      if (this.a.B())
      {
        n = m;
        if (this.g) {
          break label52;
        }
        if (this.h)
        {
          n = m;
          break label52;
        }
      }
      n = 0;
    }
    label52:
    n = (bool ^ true) & n;
    Object localObject1 = null;
    if (n != 0) {
      localObject2 = this.b;
    } else {
      localObject2 = null;
    }
    setText((CharSequence)localObject2);
    Object localObject2 = this.a.getContentDescription();
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      if (n != 0) {
        localObject2 = null;
      } else {
        localObject2 = this.a.getTitle();
      }
      setContentDescription((CharSequence)localObject2);
    }
    else
    {
      setContentDescription((CharSequence)localObject2);
    }
    localObject2 = this.a.getTooltipText();
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      if (n != 0) {
        localObject2 = localObject1;
      } else {
        localObject2 = this.a.getTitle();
      }
      c1.a(this, (CharSequence)localObject2);
    }
    else
    {
      c1.a(this, (CharSequence)localObject2);
    }
  }
  
  public boolean a()
  {
    return c();
  }
  
  public boolean b()
  {
    boolean bool;
    if ((c()) && (this.a.getIcon() == null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean c()
  {
    return TextUtils.isEmpty(getText()) ^ true;
  }
  
  public i getItemData()
  {
    return this.a;
  }
  
  public void initialize(i parami, int paramInt)
  {
    this.a = parami;
    setIcon(parami.getIcon());
    setTitle(parami.i(this));
    setId(parami.getItemId());
    if (parami.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    setEnabled(parami.isEnabled());
    if ((parami.hasSubMenu()) && (this.e == null)) {
      this.e = new a();
    }
  }
  
  public void onClick(View paramView)
  {
    paramView = this.d;
    if (paramView != null) {
      paramView.a(this.a);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.g = d();
    e();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = c();
    if (bool)
    {
      m = this.j;
      if (m >= 0) {
        super.setPadding(m, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      }
    }
    super.onMeasure(paramInt1, paramInt2);
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int n = getMeasuredWidth();
    if (m == -2147483648) {
      paramInt1 = Math.min(paramInt1, this.i);
    } else {
      paramInt1 = this.i;
    }
    if ((m != 1073741824) && (this.i > 0) && (n < paramInt1)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
    }
    if ((!bool) && (this.c != null)) {
      super.setPadding((getMeasuredWidth() - this.c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(null);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a.hasSubMenu())
    {
      h0 localh0 = this.e;
      if ((localh0 != null) && (localh0.onTouch(this, paramMotionEvent))) {
        return true;
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean prefersCondensedTitle()
  {
    return true;
  }
  
  public void setCheckable(boolean paramBoolean) {}
  
  public void setChecked(boolean paramBoolean) {}
  
  public void setExpandedFormat(boolean paramBoolean)
  {
    if (this.h != paramBoolean)
    {
      this.h = paramBoolean;
      i locali = this.a;
      if (locali != null) {
        locali.c();
      }
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    this.c = paramDrawable;
    if (paramDrawable != null)
    {
      int m = paramDrawable.getIntrinsicWidth();
      int n = paramDrawable.getIntrinsicHeight();
      int i1 = this.k;
      int i2 = m;
      int i3 = n;
      float f1;
      if (m > i1)
      {
        f1 = i1 / m;
        i3 = (int)(n * f1);
        i2 = i1;
      }
      if (i3 > i1)
      {
        f1 = i1 / i3;
        i2 = (int)(i2 * f1);
      }
      else
      {
        i1 = i3;
      }
      paramDrawable.setBounds(0, 0, i2, i1);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    e();
  }
  
  public void setItemInvoker(g.b paramb)
  {
    this.d = paramb;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.j = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setPopupCallback(b paramb)
  {
    this.f = paramb;
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    e();
  }
  
  private class a
    extends h0
  {
    public a()
    {
      super();
    }
    
    public p b()
    {
      ActionMenuItemView.b localb = ActionMenuItemView.this.f;
      if (localb != null) {
        return localb.a();
      }
      return null;
    }
    
    protected boolean c()
    {
      ActionMenuItemView localActionMenuItemView = ActionMenuItemView.this;
      Object localObject = localActionMenuItemView.d;
      boolean bool1 = false;
      boolean bool2 = bool1;
      if (localObject != null)
      {
        bool2 = bool1;
        if (((g.b)localObject).a(localActionMenuItemView.a))
        {
          localObject = b();
          bool2 = bool1;
          if (localObject != null)
          {
            bool2 = bool1;
            if (((p)localObject).isShowing()) {
              bool2 = true;
            }
          }
        }
      }
      return bool2;
    }
  }
  
  public static abstract class b
  {
    public abstract p a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.ActionMenuItemView
 * JD-Core Version:    0.7.0.1
 */