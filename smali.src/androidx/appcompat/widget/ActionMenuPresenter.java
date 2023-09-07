package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.ActionMenuItemView.b;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.l;
import androidx.appcompat.view.menu.m.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.n.a;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.r;
import androidx.core.view.b.a;
import java.util.ArrayList;

class ActionMenuPresenter
  extends androidx.appcompat.view.menu.b
  implements b.a
{
  private final SparseBooleanArray D = new SparseBooleanArray();
  e E;
  a F;
  c G;
  private b H;
  final f I = new f();
  int J;
  d k;
  private Drawable l;
  private boolean m;
  private boolean n;
  private boolean o;
  private int p;
  private int q;
  private int r;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y;
  private int z;
  
  public ActionMenuPresenter(Context paramContext)
  {
    super(paramContext, d.g.c, d.g.b);
  }
  
  private View r(MenuItem paramMenuItem)
  {
    ViewGroup localViewGroup = (ViewGroup)this.i;
    if (localViewGroup == null) {
      return null;
    }
    int i = localViewGroup.getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = localViewGroup.getChildAt(j);
      if (((localView instanceof n.a)) && (((n.a)localView).getItemData() == paramMenuItem)) {
        return localView;
      }
    }
    return null;
  }
  
  public void A(Drawable paramDrawable)
  {
    d locald = this.k;
    if (locald != null)
    {
      locald.setImageDrawable(paramDrawable);
    }
    else
    {
      this.m = true;
      this.l = paramDrawable;
    }
  }
  
  public void B(boolean paramBoolean)
  {
    this.n = paramBoolean;
    this.o = true;
  }
  
  public boolean C()
  {
    if ((this.n) && (!w()))
    {
      Object localObject = this.c;
      if ((localObject != null) && (this.i != null) && (this.G == null) && (!((androidx.appcompat.view.menu.g)localObject).getNonActionItems().isEmpty()))
      {
        localObject = new c(new e(this.b, this.c, this.k, true));
        this.G = ((c)localObject);
        ((View)this.i).post((Runnable)localObject);
        return true;
      }
    }
    return false;
  }
  
  public void b(i parami, n.a parama)
  {
    parama.initialize(parami, 0);
    parami = (ActionMenuView)this.i;
    parama = (ActionMenuItemView)parama;
    parama.setItemInvoker(parami);
    if (this.H == null) {
      this.H = new b();
    }
    parama.setPopupCallback(this.H);
  }
  
  public boolean d(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == this.k) {
      return false;
    }
    return super.d(paramViewGroup, paramInt);
  }
  
  public View f(i parami, View paramView, ViewGroup paramViewGroup)
  {
    View localView = parami.getActionView();
    if ((localView == null) || (parami.j())) {
      localView = super.f(parami, paramView, paramViewGroup);
    }
    int i;
    if (parami.isActionViewExpanded()) {
      i = 8;
    } else {
      i = 0;
    }
    localView.setVisibility(i);
    paramView = (ActionMenuView)paramViewGroup;
    parami = localView.getLayoutParams();
    if (!paramView.checkLayoutParams(parami)) {
      localView.setLayoutParams(paramView.e(parami));
    }
    return localView;
  }
  
  public boolean flagActionItems()
  {
    Object localObject1 = this;
    Object localObject2 = ((androidx.appcompat.view.menu.b)localObject1).c;
    int i = 0;
    if (localObject2 != null)
    {
      localObject2 = ((androidx.appcompat.view.menu.g)localObject2).getVisibleItems();
      j = ((ArrayList)localObject2).size();
    }
    else
    {
      localObject2 = null;
      j = 0;
    }
    int i1 = ((ActionMenuPresenter)localObject1).r;
    int i2 = ((ActionMenuPresenter)localObject1).q;
    int i3 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)((androidx.appcompat.view.menu.b)localObject1).i;
    int i4 = 0;
    int i5 = i4;
    int i7 = i5;
    int i9 = i7;
    int i11 = i7;
    int i13 = i5;
    i7 = i4;
    int i14;
    for (i5 = i1; i7 < j; i5 = i4)
    {
      localObject3 = (i)((ArrayList)localObject2).get(i7);
      if (((i)localObject3).o()) {
        i11++;
      } else if (((i)localObject3).n()) {
        i9++;
      } else {
        i14 = 1;
      }
      i4 = i5;
      if (((ActionMenuPresenter)localObject1).y)
      {
        i4 = i5;
        if (((i)localObject3).isActionViewExpanded()) {
          i4 = 0;
        }
      }
      i7++;
    }
    i7 = i5;
    int i8;
    if (((ActionMenuPresenter)localObject1).n) {
      if (i14 == 0)
      {
        i7 = i5;
        if (i9 + i11 <= i5) {}
      }
      else
      {
        i8 = i5 - 1;
      }
    }
    int i10 = i8 - i11;
    Object localObject3 = ((ActionMenuPresenter)localObject1).D;
    ((SparseBooleanArray)localObject3).clear();
    if (((ActionMenuPresenter)localObject1).w)
    {
      i6 = ((ActionMenuPresenter)localObject1).z;
      i8 = i2 / i6;
      i1 = i6 + i2 % i6 / i8;
    }
    else
    {
      i1 = 0;
      i8 = i1;
    }
    int i16 = 0;
    int i6 = i16;
    i11 = i2;
    i2 = j;
    int j = i;
    for (;;)
    {
      localObject1 = this;
      if (i16 >= i2) {
        break;
      }
      i locali = (i)((ArrayList)localObject2).get(i16);
      View localView;
      int i12;
      int i15;
      if (locali.o())
      {
        localView = ((ActionMenuPresenter)localObject1).f(locali, null, localViewGroup);
        if (((ActionMenuPresenter)localObject1).w) {
          i8 -= ActionMenuView.l(localView, i1, i8, i3, j);
        } else {
          localView.measure(i3, i3);
        }
        i4 = localView.getMeasuredWidth();
        i11 -= i4;
        i14 = i6;
        if (i6 == 0) {
          i14 = i4;
        }
        i6 = locali.getGroupId();
        if (i6 != 0) {
          ((SparseBooleanArray)localObject3).put(i6, true);
        }
        locali.u(true);
        i6 = j;
      }
      else if (locali.n())
      {
        i = locali.getGroupId();
        boolean bool1 = ((SparseBooleanArray)localObject3).get(i);
        int i17;
        if (((i10 > 0) || (bool1)) && (i12 > 0) && ((!((ActionMenuPresenter)localObject1).w) || (i8 > 0))) {
          i17 = 1;
        } else {
          i17 = 0;
        }
        int i18 = i17;
        boolean bool2 = i17;
        i4 = i12;
        i14 = i8;
        j = i6;
        if (i17 != 0)
        {
          localView = ((ActionMenuPresenter)localObject1).f(locali, null, localViewGroup);
          if (((ActionMenuPresenter)localObject1).w)
          {
            i14 = ActionMenuView.l(localView, i1, i8, i3, 0);
            j = i8 - i14;
            i8 = j;
            if (i14 == 0)
            {
              i18 = 0;
              i8 = j;
            }
          }
          else
          {
            localView.measure(i3, i3);
          }
          i15 = localView.getMeasuredWidth();
          i4 = i12 - i15;
          j = i6;
          if (i6 == 0) {
            j = i15;
          }
          if (((ActionMenuPresenter)localObject1).w ? i4 >= 0 : i4 + j > 0) {
            i6 = 1;
          } else {
            i6 = 0;
          }
          bool2 = i18 & i6;
          i15 = i8;
        }
        if ((bool2) && (i != 0))
        {
          ((SparseBooleanArray)localObject3).put(i, true);
          i6 = i10;
        }
        else
        {
          i6 = i10;
          if (bool1)
          {
            ((SparseBooleanArray)localObject3).put(i, false);
            i8 = 0;
            for (;;)
            {
              i6 = i10;
              if (i8 >= i16) {
                break;
              }
              localObject1 = (i)((ArrayList)localObject2).get(i8);
              i6 = i10;
              if (((i)localObject1).getGroupId() == i)
              {
                i6 = i10;
                if (((i)localObject1).l()) {
                  i6 = i10 + 1;
                }
                ((i)localObject1).u(false);
              }
              i8++;
              i10 = i6;
            }
          }
        }
        i8 = i6;
        if (bool2) {
          i8 = i6 - 1;
        }
        locali.u(bool2);
        i6 = 0;
        i10 = i8;
        i12 = i4;
        i8 = i15;
        i15 = j;
      }
      else
      {
        locali.u(j);
        i15 = i6;
        i6 = j;
      }
      i16++;
      j = i6;
      i6 = i15;
    }
    return true;
  }
  
  public n g(ViewGroup paramViewGroup)
  {
    n localn = this.i;
    paramViewGroup = super.g(paramViewGroup);
    if (localn != paramViewGroup) {
      ((ActionMenuView)paramViewGroup).setPresenter(this);
    }
    return paramViewGroup;
  }
  
  public boolean i(int paramInt, i parami)
  {
    return parami.l();
  }
  
  public void initForMenu(Context paramContext, androidx.appcompat.view.menu.g paramg)
  {
    super.initForMenu(paramContext, paramg);
    paramg = paramContext.getResources();
    paramContext = h.a.b(paramContext);
    if (!this.o) {
      this.n = paramContext.h();
    }
    if (!this.x) {
      this.p = paramContext.c();
    }
    if (!this.v) {
      this.r = paramContext.d();
    }
    int i = this.p;
    if (this.n)
    {
      if (this.k == null)
      {
        paramContext = new d(this.a);
        this.k = paramContext;
        if (this.m)
        {
          paramContext.setImageDrawable(this.l);
          this.l = null;
          this.m = false;
        }
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.k.measure(j, j);
      }
      i -= this.k.getMeasuredWidth();
    }
    else
    {
      this.k = null;
    }
    this.q = i;
    this.z = ((int)(paramg.getDisplayMetrics().density * 56.0F));
  }
  
  public void onCloseMenu(androidx.appcompat.view.menu.g paramg, boolean paramBoolean)
  {
    q();
    super.onCloseMenu(paramg, paramBoolean);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState)) {
      return;
    }
    int i = ((SavedState)paramParcelable).openSubMenuId;
    if (i > 0)
    {
      paramParcelable = this.c.findItem(i);
      if (paramParcelable != null) {
        onSubMenuSelected((r)paramParcelable.getSubMenu());
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState();
    localSavedState.openSubMenuId = this.J;
    return localSavedState;
  }
  
  public boolean onSubMenuSelected(r paramr)
  {
    boolean bool1 = paramr.hasVisibleItems();
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    for (Object localObject = paramr; ((r)localObject).getParentMenu() != this.c; localObject = (r)((r)localObject).getParentMenu()) {}
    localObject = r(((r)localObject).getItem());
    if (localObject == null) {
      return false;
    }
    this.J = paramr.getItem().getItemId();
    int i = paramr.size();
    for (int j = 0;; j++)
    {
      bool1 = bool2;
      if (j >= i) {
        break;
      }
      MenuItem localMenuItem = paramr.getItem(j);
      if ((localMenuItem.isVisible()) && (localMenuItem.getIcon() != null))
      {
        bool1 = true;
        break;
      }
    }
    localObject = new a(this.b, paramr, (View)localObject);
    this.F = ((a)localObject);
    ((l)localObject).g(bool1);
    this.F.k();
    super.onSubMenuSelected(paramr);
    return true;
  }
  
  public boolean q()
  {
    return t() | u();
  }
  
  public Drawable s()
  {
    d locald = this.k;
    if (locald != null) {
      return locald.getDrawable();
    }
    if (this.m) {
      return this.l;
    }
    return null;
  }
  
  public boolean t()
  {
    c localc = this.G;
    if (localc != null)
    {
      localObject = this.i;
      if (localObject != null)
      {
        ((View)localObject).removeCallbacks(localc);
        this.G = null;
        return true;
      }
    }
    Object localObject = this.E;
    if (localObject != null)
    {
      ((l)localObject).b();
      return true;
    }
    return false;
  }
  
  public boolean u()
  {
    a locala = this.F;
    if (locala != null)
    {
      locala.b();
      return true;
    }
    return false;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    super.updateMenuView(paramBoolean);
    ((View)this.i).requestLayout();
    Object localObject1 = this.c;
    int i = 0;
    int j;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = ((androidx.appcompat.view.menu.g)localObject1).getActionItems();
      j = ((ArrayList)localObject1).size();
      for (i1 = 0; i1 < j; i1++)
      {
        localObject2 = ((i)((ArrayList)localObject1).get(i1)).b();
        if (localObject2 != null) {
          ((androidx.core.view.b)localObject2).i(this);
        }
      }
    }
    localObject1 = this.c;
    if (localObject1 != null) {
      localObject1 = ((androidx.appcompat.view.menu.g)localObject1).getNonActionItems();
    } else {
      localObject1 = null;
    }
    int i1 = i;
    boolean bool;
    if (this.n)
    {
      i1 = i;
      if (localObject1 != null)
      {
        j = ((ArrayList)localObject1).size();
        if (j == 1)
        {
          bool = ((i)((ArrayList)localObject1).get(0)).isActionViewExpanded() ^ true;
        }
        else
        {
          bool = i;
          if (j > 0) {
            bool = true;
          }
        }
      }
    }
    if (bool)
    {
      if (this.k == null) {
        this.k = new d(this.a);
      }
      localObject1 = (ViewGroup)this.k.getParent();
      if (localObject1 != this.i)
      {
        if (localObject1 != null) {
          ((ViewGroup)localObject1).removeView(this.k);
        }
        localObject1 = (ActionMenuView)this.i;
        ((ViewGroup)localObject1).addView(this.k, ((ActionMenuView)localObject1).f());
      }
    }
    else
    {
      localObject1 = this.k;
      if (localObject1 != null)
      {
        localObject1 = ((View)localObject1).getParent();
        localObject2 = this.i;
        if (localObject1 == localObject2) {
          ((ViewGroup)localObject2).removeView(this.k);
        }
      }
    }
    ((ActionMenuView)this.i).setOverflowReserved(this.n);
  }
  
  public boolean v()
  {
    boolean bool;
    if ((this.G == null) && (!w())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean w()
  {
    e locale = this.E;
    boolean bool;
    if ((locale != null) && (locale.d())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void x(Configuration paramConfiguration)
  {
    if (!this.v) {
      this.r = h.a.b(this.b).d();
    }
    paramConfiguration = this.c;
    if (paramConfiguration != null) {
      paramConfiguration.onItemsChanged(true);
    }
  }
  
  public void y(boolean paramBoolean)
  {
    this.y = paramBoolean;
  }
  
  public void z(ActionMenuView paramActionMenuView)
  {
    this.i = paramActionMenuView;
    paramActionMenuView.initialize(this.c);
  }
  
  @SuppressLint({"BanParcelableUsage"})
  private static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    public int openSubMenuId;
    
    SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      this.openSubMenuId = paramParcel.readInt();
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.openSubMenuId);
    }
    
    class a
      implements Parcelable.Creator<ActionMenuPresenter.SavedState>
    {
      public ActionMenuPresenter.SavedState a(Parcel paramParcel)
      {
        return new ActionMenuPresenter.SavedState(paramParcel);
      }
      
      public ActionMenuPresenter.SavedState[] b(int paramInt)
      {
        return new ActionMenuPresenter.SavedState[paramInt];
      }
    }
  }
  
  private class a
    extends l
  {
    public a(Context paramContext, r paramr, View paramView)
    {
      super(paramr, paramView, false, d.a.l);
      if (!((i)paramr.getItem()).l())
      {
        paramr = ActionMenuPresenter.this.k;
        paramContext = paramr;
        if (paramr == null) {
          paramContext = (View)ActionMenuPresenter.l(ActionMenuPresenter.this);
        }
        f(paramContext);
      }
      j(ActionMenuPresenter.this.I);
    }
    
    protected void e()
    {
      ActionMenuPresenter localActionMenuPresenter = ActionMenuPresenter.this;
      localActionMenuPresenter.F = null;
      localActionMenuPresenter.J = 0;
      super.e();
    }
  }
  
  private class b
    extends ActionMenuItemView.b
  {
    b() {}
    
    public p a()
    {
      Object localObject = ActionMenuPresenter.this.F;
      if (localObject != null) {
        localObject = ((l)localObject).c();
      } else {
        localObject = null;
      }
      return localObject;
    }
  }
  
  private class c
    implements Runnable
  {
    private ActionMenuPresenter.e a;
    
    public c(ActionMenuPresenter.e parame)
    {
      this.a = parame;
    }
    
    public void run()
    {
      if (ActionMenuPresenter.n(ActionMenuPresenter.this) != null) {
        ActionMenuPresenter.o(ActionMenuPresenter.this).changeMenuMode();
      }
      View localView = (View)ActionMenuPresenter.p(ActionMenuPresenter.this);
      if ((localView != null) && (localView.getWindowToken() != null) && (this.a.m())) {
        ActionMenuPresenter.this.E = this.a;
      }
      ActionMenuPresenter.this.G = null;
    }
  }
  
  private class d
    extends AppCompatImageView
    implements ActionMenuView.a
  {
    public d(Context paramContext)
    {
      super(null, d.a.k);
      setClickable(true);
      setFocusable(true);
      setVisibility(0);
      setEnabled(true);
      c1.a(this, getContentDescription());
      setOnTouchListener(new a(this, ActionMenuPresenter.this));
    }
    
    public boolean a()
    {
      return false;
    }
    
    public boolean b()
    {
      return false;
    }
    
    public boolean performClick()
    {
      if (super.performClick()) {
        return true;
      }
      playSoundEffect(0);
      ActionMenuPresenter.this.C();
      return true;
    }
    
    protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
      Drawable localDrawable1 = getDrawable();
      Drawable localDrawable2 = getBackground();
      if ((localDrawable1 != null) && (localDrawable2 != null))
      {
        int i = getWidth();
        paramInt4 = getHeight();
        paramInt1 = Math.max(i, paramInt4) / 2;
        int j = getPaddingLeft();
        int k = getPaddingRight();
        paramInt2 = getPaddingTop();
        paramInt3 = getPaddingBottom();
        i = (i + (j - k)) / 2;
        paramInt2 = (paramInt4 + (paramInt2 - paramInt3)) / 2;
        androidx.core.graphics.drawable.a.l(localDrawable2, i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt2 + paramInt1);
      }
      return bool;
    }
    
    class a
      extends h0
    {
      a(View paramView, ActionMenuPresenter paramActionMenuPresenter)
      {
        super();
      }
      
      public p b()
      {
        ActionMenuPresenter.e locale = ActionMenuPresenter.this.E;
        if (locale == null) {
          return null;
        }
        return locale.c();
      }
      
      public boolean c()
      {
        ActionMenuPresenter.this.C();
        return true;
      }
      
      public boolean d()
      {
        ActionMenuPresenter localActionMenuPresenter = ActionMenuPresenter.this;
        if (localActionMenuPresenter.G != null) {
          return false;
        }
        localActionMenuPresenter.t();
        return true;
      }
    }
  }
  
  private class e
    extends l
  {
    public e(Context paramContext, androidx.appcompat.view.menu.g paramg, View paramView, boolean paramBoolean)
    {
      super(paramg, paramView, paramBoolean, d.a.l);
      h(8388613);
      j(ActionMenuPresenter.this.I);
    }
    
    protected void e()
    {
      if (ActionMenuPresenter.j(ActionMenuPresenter.this) != null) {
        ActionMenuPresenter.k(ActionMenuPresenter.this).close();
      }
      ActionMenuPresenter.this.E = null;
      super.e();
    }
  }
  
  private class f
    implements m.a
  {
    f() {}
    
    public boolean a(androidx.appcompat.view.menu.g paramg)
    {
      Object localObject = ActionMenuPresenter.m(ActionMenuPresenter.this);
      boolean bool = false;
      if (paramg == localObject) {
        return false;
      }
      ActionMenuPresenter.this.J = ((r)paramg).getItem().getItemId();
      localObject = ActionMenuPresenter.this.e();
      if (localObject != null) {
        bool = ((m.a)localObject).a(paramg);
      }
      return bool;
    }
    
    public void onCloseMenu(androidx.appcompat.view.menu.g paramg, boolean paramBoolean)
    {
      if ((paramg instanceof r)) {
        paramg.getRootMenu().close(false);
      }
      m.a locala = ActionMenuPresenter.this.e();
      if (locala != null) {
        locala.onCloseMenu(paramg, paramBoolean);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.ActionMenuPresenter
 * JD-Core Version:    0.7.0.1
 */