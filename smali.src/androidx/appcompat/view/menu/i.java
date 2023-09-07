package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;
import androidx.core.view.b.b;
import d.h;

public final class i
  implements u.b
{
  private View A;
  private androidx.core.view.b B;
  private MenuItem.OnActionExpandListener C;
  private boolean D = false;
  private ContextMenu.ContextMenuInfo E;
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private CharSequence e;
  private CharSequence f;
  private Intent g;
  private char h;
  private int i = 4096;
  private char j;
  private int k = 4096;
  private Drawable l;
  private int m = 0;
  g n;
  private r o;
  private Runnable p;
  private MenuItem.OnMenuItemClickListener q;
  private CharSequence r;
  private CharSequence s;
  private ColorStateList t = null;
  private PorterDuff.Mode u = null;
  private boolean v = false;
  private boolean w = false;
  private boolean x = false;
  private int y = 16;
  private int z;
  
  i(g paramg, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    this.n = paramg;
    this.a = paramInt2;
    this.b = paramInt1;
    this.c = paramInt3;
    this.d = paramInt4;
    this.e = paramCharSequence;
    this.z = paramInt5;
  }
  
  private static void d(StringBuilder paramStringBuilder, int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 & paramInt2) == paramInt2) {
      paramStringBuilder.append(paramString);
    }
  }
  
  private Drawable e(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if (paramDrawable != null)
    {
      localDrawable = paramDrawable;
      if (this.x) {
        if (!this.v)
        {
          localDrawable = paramDrawable;
          if (!this.w) {}
        }
        else
        {
          localDrawable = androidx.core.graphics.drawable.a.r(paramDrawable).mutate();
          if (this.v) {
            androidx.core.graphics.drawable.a.o(localDrawable, this.t);
          }
          if (this.w) {
            androidx.core.graphics.drawable.a.p(localDrawable, this.u);
          }
          this.x = false;
        }
      }
    }
    return localDrawable;
  }
  
  boolean A()
  {
    boolean bool;
    if ((this.n.isShortcutsVisible()) && (g() != 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean B()
  {
    boolean bool;
    if ((this.z & 0x4) == 4) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public u.b a(androidx.core.view.b paramb)
  {
    androidx.core.view.b localb = this.B;
    if (localb != null) {
      localb.h();
    }
    this.A = null;
    this.B = paramb;
    this.n.onItemsChanged(true);
    paramb = this.B;
    if (paramb != null) {
      paramb.j(new a());
    }
    return this;
  }
  
  public androidx.core.view.b b()
  {
    return this.B;
  }
  
  public void c()
  {
    this.n.onItemActionRequestChanged(this);
  }
  
  public boolean collapseActionView()
  {
    if ((this.z & 0x8) == 0) {
      return false;
    }
    if (this.A == null) {
      return true;
    }
    MenuItem.OnActionExpandListener localOnActionExpandListener = this.C;
    if ((localOnActionExpandListener != null) && (!localOnActionExpandListener.onMenuItemActionCollapse(this))) {
      return false;
    }
    return this.n.collapseItemActionView(this);
  }
  
  public boolean expandActionView()
  {
    if (!j()) {
      return false;
    }
    MenuItem.OnActionExpandListener localOnActionExpandListener = this.C;
    if ((localOnActionExpandListener != null) && (!localOnActionExpandListener.onMenuItemActionExpand(this))) {
      return false;
    }
    return this.n.expandItemActionView(this);
  }
  
  public int f()
  {
    return this.d;
  }
  
  char g()
  {
    char c1;
    char c2;
    if (this.n.isQwertyMode())
    {
      c1 = this.j;
      c2 = c1;
    }
    else
    {
      c1 = this.h;
      c2 = c1;
    }
    return c2;
  }
  
  public ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }
  
  public View getActionView()
  {
    Object localObject = this.A;
    if (localObject != null) {
      return localObject;
    }
    localObject = this.B;
    if (localObject != null)
    {
      localObject = ((androidx.core.view.b)localObject).d(this);
      this.A = ((View)localObject);
      return localObject;
    }
    return null;
  }
  
  public int getAlphabeticModifiers()
  {
    return this.k;
  }
  
  public char getAlphabeticShortcut()
  {
    return this.j;
  }
  
  public CharSequence getContentDescription()
  {
    return this.r;
  }
  
  public int getGroupId()
  {
    return this.b;
  }
  
  public Drawable getIcon()
  {
    Drawable localDrawable = this.l;
    if (localDrawable != null) {
      return e(localDrawable);
    }
    if (this.m != 0)
    {
      localDrawable = e.a.b(this.n.getContext(), this.m);
      this.m = 0;
      this.l = localDrawable;
      return e(localDrawable);
    }
    return null;
  }
  
  public ColorStateList getIconTintList()
  {
    return this.t;
  }
  
  public PorterDuff.Mode getIconTintMode()
  {
    return this.u;
  }
  
  public Intent getIntent()
  {
    return this.g;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getItemId()
  {
    return this.a;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return this.E;
  }
  
  public int getNumericModifiers()
  {
    return this.i;
  }
  
  public char getNumericShortcut()
  {
    return this.h;
  }
  
  public int getOrder()
  {
    return this.c;
  }
  
  public SubMenu getSubMenu()
  {
    return this.o;
  }
  
  @ViewDebug.CapturedViewProperty
  public CharSequence getTitle()
  {
    return this.e;
  }
  
  public CharSequence getTitleCondensed()
  {
    CharSequence localCharSequence = this.f;
    if (localCharSequence == null) {
      localCharSequence = this.e;
    }
    return localCharSequence;
  }
  
  public CharSequence getTooltipText()
  {
    return this.s;
  }
  
  String h()
  {
    char c1 = g();
    if (c1 == 0) {
      return "";
    }
    Resources localResources = this.n.getContext().getResources();
    StringBuilder localStringBuilder = new StringBuilder();
    if (ViewConfiguration.get(this.n.getContext()).hasPermanentMenuKey()) {
      localStringBuilder.append(localResources.getString(h.m));
    }
    int i1;
    if (this.n.isQwertyMode()) {
      i1 = this.k;
    } else {
      i1 = this.i;
    }
    d(localStringBuilder, i1, 65536, localResources.getString(h.i));
    d(localStringBuilder, i1, 4096, localResources.getString(h.e));
    d(localStringBuilder, i1, 2, localResources.getString(h.d));
    d(localStringBuilder, i1, 1, localResources.getString(h.j));
    d(localStringBuilder, i1, 4, localResources.getString(h.l));
    d(localStringBuilder, i1, 8, localResources.getString(h.h));
    if (c1 != '\b')
    {
      if (c1 != '\n')
      {
        if (c1 != ' ') {
          localStringBuilder.append(c1);
        } else {
          localStringBuilder.append(localResources.getString(h.k));
        }
      }
      else {
        localStringBuilder.append(localResources.getString(h.g));
      }
    }
    else {
      localStringBuilder.append(localResources.getString(h.f));
    }
    return localStringBuilder.toString();
  }
  
  public boolean hasSubMenu()
  {
    boolean bool;
    if (this.o != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  CharSequence i(n.a parama)
  {
    if ((parama != null) && (parama.prefersCondensedTitle())) {
      parama = getTitleCondensed();
    } else {
      parama = getTitle();
    }
    return parama;
  }
  
  public boolean isActionViewExpanded()
  {
    return this.D;
  }
  
  public boolean isCheckable()
  {
    int i1 = this.y;
    boolean bool = true;
    if ((i1 & 0x1) != 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean isChecked()
  {
    boolean bool;
    if ((this.y & 0x2) == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isEnabled()
  {
    boolean bool;
    if ((this.y & 0x10) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isVisible()
  {
    androidx.core.view.b localb = this.B;
    boolean bool1 = true;
    boolean bool2 = true;
    if ((localb != null) && (localb.g()))
    {
      if (((this.y & 0x8) != 0) || (!this.B.b())) {
        bool2 = false;
      }
      return bool2;
    }
    if ((this.y & 0x8) == 0) {
      bool2 = bool1;
    } else {
      bool2 = false;
    }
    return bool2;
  }
  
  public boolean j()
  {
    int i1 = this.z;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if ((i1 & 0x8) != 0)
    {
      if (this.A == null)
      {
        androidx.core.view.b localb = this.B;
        if (localb != null) {
          this.A = localb.d(this);
        }
      }
      bool2 = bool1;
      if (this.A != null) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public boolean k()
  {
    Object localObject = this.q;
    if ((localObject != null) && (((MenuItem.OnMenuItemClickListener)localObject).onMenuItemClick(this))) {
      return true;
    }
    localObject = this.n;
    if (((g)localObject).dispatchMenuItemSelected((g)localObject, this)) {
      return true;
    }
    localObject = this.p;
    if (localObject != null)
    {
      ((Runnable)localObject).run();
      return true;
    }
    if (this.g != null) {
      try
      {
        this.n.getContext().startActivity(this.g);
        return true;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
      }
    }
    androidx.core.view.b localb = this.B;
    return (localb != null) && (localb.e());
  }
  
  public boolean l()
  {
    boolean bool;
    if ((this.y & 0x20) == 32) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean m()
  {
    boolean bool;
    if ((this.y & 0x4) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean n()
  {
    int i1 = this.z;
    boolean bool = true;
    if ((i1 & 0x1) != 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean o()
  {
    boolean bool;
    if ((this.z & 0x2) == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public u.b p(int paramInt)
  {
    Context localContext = this.n.getContext();
    q(LayoutInflater.from(localContext).inflate(paramInt, new LinearLayout(localContext), false));
    return this;
  }
  
  public u.b q(View paramView)
  {
    this.A = paramView;
    this.B = null;
    if ((paramView != null) && (paramView.getId() == -1))
    {
      int i1 = this.a;
      if (i1 > 0) {
        paramView.setId(i1);
      }
    }
    this.n.onItemActionRequestChanged(this);
    return this;
  }
  
  public void r(boolean paramBoolean)
  {
    this.D = paramBoolean;
    this.n.onItemsChanged(false);
  }
  
  void s(boolean paramBoolean)
  {
    int i1 = this.y;
    int i2;
    if (paramBoolean) {
      i2 = 2;
    } else {
      i2 = 0;
    }
    i2 |= i1 & 0xFFFFFFFD;
    this.y = i2;
    if (i1 != i2) {
      this.n.onItemsChanged(false);
    }
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (this.j == paramChar) {
      return this;
    }
    this.j = Character.toLowerCase(paramChar);
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar, int paramInt)
  {
    if ((this.j == paramChar) && (this.k == paramInt)) {
      return this;
    }
    this.j = Character.toLowerCase(paramChar);
    this.k = KeyEvent.normalizeMetaState(paramInt);
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    int i1 = this.y;
    int i2 = paramBoolean | i1 & 0xFFFFFFFE;
    this.y = i2;
    if (i1 != i2) {
      this.n.onItemsChanged(false);
    }
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    if ((this.y & 0x4) != 0) {
      this.n.setExclusiveItemChecked(this);
    } else {
      s(paramBoolean);
    }
    return this;
  }
  
  public u.b setContentDescription(CharSequence paramCharSequence)
  {
    this.r = paramCharSequence;
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.y |= 0x10;
    } else {
      this.y &= 0xFFFFFFEF;
    }
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    this.l = null;
    this.m = paramInt;
    this.x = true;
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    this.m = 0;
    this.l = paramDrawable;
    this.x = true;
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIconTintList(ColorStateList paramColorStateList)
  {
    this.t = paramColorStateList;
    this.v = true;
    this.x = true;
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIconTintMode(PorterDuff.Mode paramMode)
  {
    this.u = paramMode;
    this.w = true;
    this.x = true;
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    this.g = paramIntent;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    if (this.h == paramChar) {
      return this;
    }
    this.h = ((char)paramChar);
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar, int paramInt)
  {
    if ((this.h == paramChar) && (this.i == paramInt)) {
      return this;
    }
    this.h = ((char)paramChar);
    this.i = KeyEvent.normalizeMetaState(paramInt);
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    this.C = paramOnActionExpandListener;
    return this;
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.q = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.h = ((char)paramChar1);
    this.j = Character.toLowerCase(paramChar2);
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2, int paramInt1, int paramInt2)
  {
    this.h = ((char)paramChar1);
    this.i = KeyEvent.normalizeMetaState(paramInt1);
    this.j = Character.toLowerCase(paramChar2);
    this.k = KeyEvent.normalizeMetaState(paramInt2);
    this.n.onItemsChanged(false);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    int i1 = paramInt & 0x3;
    if ((i1 != 0) && (i1 != 1) && (i1 != 2)) {
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }
    this.z = paramInt;
    this.n.onItemActionRequestChanged(this);
  }
  
  public MenuItem setTitle(int paramInt)
  {
    return setTitle(this.n.getContext().getString(paramInt));
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.e = paramCharSequence;
    this.n.onItemsChanged(false);
    r localr = this.o;
    if (localr != null) {
      localr.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.f = paramCharSequence;
    this.n.onItemsChanged(false);
    return this;
  }
  
  public u.b setTooltipText(CharSequence paramCharSequence)
  {
    this.s = paramCharSequence;
    this.n.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    if (y(paramBoolean)) {
      this.n.onItemVisibleChanged(this);
    }
    return this;
  }
  
  public void t(boolean paramBoolean)
  {
    int i1 = this.y;
    int i2;
    if (paramBoolean) {
      i2 = 4;
    } else {
      i2 = 0;
    }
    this.y = (i2 | i1 & 0xFFFFFFFB);
  }
  
  public String toString()
  {
    Object localObject = this.e;
    if (localObject != null) {
      localObject = ((CharSequence)localObject).toString();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public void u(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.y |= 0x20;
    } else {
      this.y &= 0xFFFFFFDF;
    }
  }
  
  void v(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    this.E = paramContextMenuInfo;
  }
  
  public u.b w(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }
  
  public void x(r paramr)
  {
    this.o = paramr;
    paramr.setHeaderTitle(getTitle());
  }
  
  boolean y(boolean paramBoolean)
  {
    int i1 = this.y;
    boolean bool = false;
    int i2;
    if (paramBoolean) {
      i2 = 0;
    } else {
      i2 = 8;
    }
    i2 |= i1 & 0xFFFFFFF7;
    this.y = i2;
    paramBoolean = bool;
    if (i1 != i2) {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  public boolean z()
  {
    return this.n.getOptionalIconsVisible();
  }
  
  class a
    implements b.b
  {
    a() {}
    
    public void onActionProviderVisibilityChanged(boolean paramBoolean)
    {
      i locali = i.this;
      locali.n.onItemVisibleChanged(locali);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.i
 * JD-Core Version:    0.7.0.1
 */