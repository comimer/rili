package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.SelectionBoundsAdjuster;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.widget.z0;
import androidx.core.view.a0;
import d.a;
import d.f;
import d.g;
import d.j;

public class ListMenuItemView
  extends LinearLayout
  implements n.a, AbsListView.SelectionBoundsAdjuster
{
  private i a;
  private ImageView b;
  private RadioButton c;
  private TextView d;
  private CheckBox e;
  private TextView f;
  private ImageView g;
  private ImageView h;
  private LinearLayout i;
  private Drawable j;
  private int k;
  private Context l;
  private boolean m;
  private Drawable n;
  private boolean o;
  private LayoutInflater p;
  private boolean q;
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.E);
  }
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = z0.v(getContext(), paramAttributeSet, j.T1, paramInt, 0);
    this.j = paramAttributeSet.g(j.V1);
    this.k = paramAttributeSet.n(j.U1, -1);
    this.m = paramAttributeSet.a(j.W1, false);
    this.l = paramContext;
    this.n = paramAttributeSet.g(j.X1);
    paramContext = paramContext.getTheme();
    paramInt = a.B;
    paramContext = paramContext.obtainStyledAttributes(null, new int[] { 16843049 }, paramInt, 0);
    this.o = paramContext.hasValue(0);
    paramAttributeSet.w();
    paramContext.recycle();
  }
  
  private void a(View paramView)
  {
    b(paramView, -1);
  }
  
  private void b(View paramView, int paramInt)
  {
    LinearLayout localLinearLayout = this.i;
    if (localLinearLayout != null) {
      localLinearLayout.addView(paramView, paramInt);
    } else {
      addView(paramView, paramInt);
    }
  }
  
  private void c()
  {
    CheckBox localCheckBox = (CheckBox)getInflater().inflate(g.h, this, false);
    this.e = localCheckBox;
    a(localCheckBox);
  }
  
  private void d()
  {
    ImageView localImageView = (ImageView)getInflater().inflate(g.i, this, false);
    this.b = localImageView;
    b(localImageView, 0);
  }
  
  private void e()
  {
    RadioButton localRadioButton = (RadioButton)getInflater().inflate(g.k, this, false);
    this.c = localRadioButton;
    a(localRadioButton);
  }
  
  private LayoutInflater getInflater()
  {
    if (this.p == null) {
      this.p = LayoutInflater.from(getContext());
    }
    return this.p;
  }
  
  private void setSubMenuArrowVisible(boolean paramBoolean)
  {
    ImageView localImageView = this.g;
    if (localImageView != null)
    {
      int i1;
      if (paramBoolean) {
        i1 = 0;
      } else {
        i1 = 8;
      }
      localImageView.setVisibility(i1);
    }
  }
  
  public void adjustListItemSelectionBounds(Rect paramRect)
  {
    Object localObject = this.h;
    if ((localObject != null) && (((View)localObject).getVisibility() == 0))
    {
      localObject = (LinearLayout.LayoutParams)this.h.getLayoutParams();
      paramRect.top += this.h.getHeight() + ((LinearLayout.LayoutParams)localObject).topMargin + ((LinearLayout.LayoutParams)localObject).bottomMargin;
    }
  }
  
  public void f(boolean paramBoolean, char paramChar)
  {
    if ((paramBoolean) && (this.a.A())) {
      paramChar = '\000';
    } else {
      paramChar = '\b';
    }
    if (paramChar == 0) {
      this.f.setText(this.a.h());
    }
    if (this.f.getVisibility() != paramChar) {
      this.f.setVisibility(paramChar);
    }
  }
  
  public i getItemData()
  {
    return this.a;
  }
  
  public void initialize(i parami, int paramInt)
  {
    this.a = parami;
    if (parami.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    setTitle(parami.i(this));
    setCheckable(parami.isCheckable());
    f(parami.A(), parami.g());
    setIcon(parami.getIcon());
    setEnabled(parami.isEnabled());
    setSubMenuArrowVisible(parami.hasSubMenu());
    setContentDescription(parami.getContentDescription());
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a0.p0(this, this.j);
    Object localObject = (TextView)findViewById(f.L);
    this.d = ((TextView)localObject);
    int i1 = this.k;
    if (i1 != -1) {
      ((TextView)localObject).setTextAppearance(this.l, i1);
    }
    this.f = ((TextView)findViewById(f.E));
    localObject = (ImageView)findViewById(f.H);
    this.g = ((ImageView)localObject);
    if (localObject != null) {
      ((ImageView)localObject).setImageDrawable(this.n);
    }
    this.h = ((ImageView)findViewById(f.r));
    this.i = ((LinearLayout)findViewById(f.l));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.b != null) && (this.m))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)this.b.getLayoutParams();
      int i1 = localLayoutParams.height;
      if ((i1 > 0) && (localLayoutParams1.width <= 0)) {
        localLayoutParams1.width = i1;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.c == null) && (this.e == null)) {
      return;
    }
    Object localObject1;
    Object localObject2;
    if (this.a.m())
    {
      if (this.c == null) {
        e();
      }
      localObject1 = this.c;
      localObject2 = this.e;
    }
    else
    {
      if (this.e == null) {
        c();
      }
      localObject1 = this.e;
      localObject2 = this.c;
    }
    if (paramBoolean)
    {
      ((CompoundButton)localObject1).setChecked(this.a.isChecked());
      if (((View)localObject1).getVisibility() != 0) {
        ((View)localObject1).setVisibility(0);
      }
      if ((localObject2 != null) && (((View)localObject2).getVisibility() != 8)) {
        ((View)localObject2).setVisibility(8);
      }
    }
    else
    {
      localObject1 = this.e;
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(8);
      }
      localObject1 = this.c;
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(8);
      }
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    Object localObject;
    if (this.a.m())
    {
      if (this.c == null) {
        e();
      }
      localObject = this.c;
    }
    else
    {
      if (this.e == null) {
        c();
      }
      localObject = this.e;
    }
    ((CompoundButton)localObject).setChecked(paramBoolean);
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    this.q = paramBoolean;
    this.m = paramBoolean;
  }
  
  public void setGroupDividerEnabled(boolean paramBoolean)
  {
    ImageView localImageView = this.h;
    if (localImageView != null)
    {
      int i1;
      if ((!this.o) && (paramBoolean)) {
        i1 = 0;
      } else {
        i1 = 8;
      }
      localImageView.setVisibility(i1);
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    int i1;
    if ((!this.a.z()) && (!this.q)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if ((i1 == 0) && (!this.m)) {
      return;
    }
    ImageView localImageView = this.b;
    if ((localImageView == null) && (paramDrawable == null) && (!this.m)) {
      return;
    }
    if (localImageView == null) {
      d();
    }
    if ((paramDrawable == null) && (!this.m))
    {
      this.b.setVisibility(8);
    }
    else
    {
      localImageView = this.b;
      if (i1 == 0) {
        paramDrawable = null;
      }
      localImageView.setImageDrawable(paramDrawable);
      if (this.b.getVisibility() != 0) {
        this.b.setVisibility(0);
      }
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      this.d.setText(paramCharSequence);
      if (this.d.getVisibility() != 0) {
        this.d.setVisibility(0);
      }
    }
    else if (this.d.getVisibility() != 8)
    {
      this.d.setVisibility(8);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.ListMenuItemView
 * JD-Core Version:    0.7.0.1
 */