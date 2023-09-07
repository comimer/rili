package androidx.preference;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.recyclerview.widget.RecyclerView.c0;
import e.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Preference
  implements Comparable<Preference>
{
  private boolean D = true;
  private boolean E = true;
  private boolean F = true;
  private boolean G = true;
  private boolean H;
  private boolean I = true;
  private boolean J;
  private boolean K;
  private boolean L = true;
  private int M;
  private int N;
  private b O;
  private List<Preference> P;
  private PreferenceGroup Q;
  private boolean R;
  private boolean S;
  private e T;
  private f U;
  private final View.OnClickListener V;
  private Context a;
  private j b;
  private long c;
  private boolean d;
  private c e;
  private d f;
  private int g = 2147483647;
  private int h = 0;
  private CharSequence i;
  private CharSequence j;
  private int k;
  private Drawable l;
  private String m;
  private Intent n;
  private String o;
  private Bundle p;
  private boolean q = true;
  private boolean r = true;
  private boolean v;
  private boolean w = true;
  private String x;
  private Object y;
  private boolean z = true;
  
  public Preference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Preference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, androidx.core.content.res.l.a(paramContext, m.h, 16842894));
  }
  
  public Preference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public Preference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    int i1 = p.b;
    this.M = i1;
    this.V = new a();
    this.a = paramContext;
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.q0, paramInt1, paramInt2);
    this.k = androidx.core.content.res.l.n(paramContext, s.O0, s.r0, 0);
    this.m = androidx.core.content.res.l.o(paramContext, s.R0, s.x0);
    this.i = androidx.core.content.res.l.p(paramContext, s.Z0, s.v0);
    this.j = androidx.core.content.res.l.p(paramContext, s.Y0, s.y0);
    this.g = androidx.core.content.res.l.d(paramContext, s.T0, s.z0, 2147483647);
    this.o = androidx.core.content.res.l.o(paramContext, s.N0, s.E0);
    this.M = androidx.core.content.res.l.n(paramContext, s.S0, s.u0, i1);
    this.N = androidx.core.content.res.l.n(paramContext, s.a1, s.A0, 0);
    this.q = androidx.core.content.res.l.b(paramContext, s.M0, s.t0, true);
    this.r = androidx.core.content.res.l.b(paramContext, s.V0, s.w0, true);
    this.w = androidx.core.content.res.l.b(paramContext, s.U0, s.s0, true);
    this.x = androidx.core.content.res.l.o(paramContext, s.K0, s.B0);
    paramInt1 = s.H0;
    this.F = androidx.core.content.res.l.b(paramContext, paramInt1, paramInt1, this.r);
    paramInt1 = s.I0;
    this.G = androidx.core.content.res.l.b(paramContext, paramInt1, paramInt1, this.r);
    paramInt1 = s.J0;
    if (paramContext.hasValue(paramInt1))
    {
      this.y = b0(paramContext, paramInt1);
    }
    else
    {
      paramInt1 = s.C0;
      if (paramContext.hasValue(paramInt1)) {
        this.y = b0(paramContext, paramInt1);
      }
    }
    this.L = androidx.core.content.res.l.b(paramContext, s.W0, s.D0, true);
    paramInt1 = s.X0;
    boolean bool = paramContext.hasValue(paramInt1);
    this.H = bool;
    if (bool) {
      this.I = androidx.core.content.res.l.b(paramContext, paramInt1, s.F0, true);
    }
    this.J = androidx.core.content.res.l.b(paramContext, s.P0, s.G0, false);
    paramInt1 = s.Q0;
    this.E = androidx.core.content.res.l.b(paramContext, paramInt1, paramInt1, true);
    paramInt1 = s.L0;
    this.K = androidx.core.content.res.l.b(paramContext, paramInt1, paramInt1, false);
    paramContext.recycle();
  }
  
  private void O0(SharedPreferences.Editor paramEditor)
  {
    if (this.b.t()) {
      paramEditor.apply();
    }
  }
  
  private void P0()
  {
    Object localObject = this.x;
    if (localObject != null)
    {
      localObject = m((String)localObject);
      if (localObject != null) {
        ((Preference)localObject).Q0(this);
      }
    }
  }
  
  private void Q0(Preference paramPreference)
  {
    List localList = this.P;
    if (localList != null) {
      localList.remove(paramPreference);
    }
  }
  
  private void l()
  {
    E();
    if ((N0()) && (G().contains(this.m)))
    {
      i0(true, null);
    }
    else
    {
      Object localObject = this.y;
      if (localObject != null) {
        i0(false, localObject);
      }
    }
  }
  
  private void p0()
  {
    if (TextUtils.isEmpty(this.x)) {
      return;
    }
    Object localObject = m(this.x);
    if (localObject != null)
    {
      ((Preference)localObject).q0(this);
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Dependency \"");
    ((StringBuilder)localObject).append(this.x);
    ((StringBuilder)localObject).append("\" not found for preference \"");
    ((StringBuilder)localObject).append(this.m);
    ((StringBuilder)localObject).append("\" (title: \"");
    ((StringBuilder)localObject).append(this.i);
    ((StringBuilder)localObject).append("\"");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  private void q0(Preference paramPreference)
  {
    if (this.P == null) {
      this.P = new ArrayList();
    }
    this.P.add(paramPreference);
    paramPreference.Z(this, M0());
  }
  
  private void w0(View paramView, boolean paramBoolean)
  {
    paramView.setEnabled(paramBoolean);
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      for (int i1 = paramView.getChildCount() - 1; i1 >= 0; i1--) {
        w0(paramView.getChildAt(i1), paramBoolean);
      }
    }
  }
  
  protected boolean A(boolean paramBoolean)
  {
    if (!N0()) {
      return paramBoolean;
    }
    E();
    return this.b.j().getBoolean(this.m, paramBoolean);
  }
  
  public void A0(String paramString)
  {
    this.m = paramString;
    if ((this.v) && (!L())) {
      r0();
    }
  }
  
  protected int B(int paramInt)
  {
    if (!N0()) {
      return paramInt;
    }
    E();
    return this.b.j().getInt(this.m, paramInt);
  }
  
  public void B0(int paramInt)
  {
    this.M = paramInt;
  }
  
  protected String C(String paramString)
  {
    if (!N0()) {
      return paramString;
    }
    E();
    return this.b.j().getString(this.m, paramString);
  }
  
  final void C0(b paramb)
  {
    this.O = paramb;
  }
  
  public Set<String> D(Set<String> paramSet)
  {
    if (!N0()) {
      return paramSet;
    }
    E();
    return this.b.j().getStringSet(this.m, paramSet);
  }
  
  public void D0(c paramc)
  {
    this.e = paramc;
  }
  
  public e E()
  {
    j localj = this.b;
    if (localj != null) {
      localj.h();
    }
    return null;
  }
  
  public void E0(d paramd)
  {
    this.f = paramd;
  }
  
  public j F()
  {
    return this.b;
  }
  
  public void F0(int paramInt)
  {
    if (paramInt != this.g)
    {
      this.g = paramInt;
      T();
    }
  }
  
  public SharedPreferences G()
  {
    if (this.b != null)
    {
      E();
      return this.b.j();
    }
    return null;
  }
  
  public void G0(int paramInt)
  {
    H0(this.a.getString(paramInt));
  }
  
  public CharSequence H()
  {
    if (I() != null) {
      return I().a(this);
    }
    return this.j;
  }
  
  public void H0(CharSequence paramCharSequence)
  {
    if (I() == null)
    {
      if (!TextUtils.equals(this.j, paramCharSequence))
      {
        this.j = paramCharSequence;
        R();
      }
      return;
    }
    throw new IllegalStateException("Preference already has a SummaryProvider set.");
  }
  
  public final f I()
  {
    return this.U;
  }
  
  public final void I0(f paramf)
  {
    this.U = paramf;
    R();
  }
  
  public CharSequence J()
  {
    return this.i;
  }
  
  public void J0(int paramInt)
  {
    K0(this.a.getString(paramInt));
  }
  
  public final int K()
  {
    return this.N;
  }
  
  public void K0(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (this.i != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(this.i))))
    {
      this.i = paramCharSequence;
      R();
    }
  }
  
  public boolean L()
  {
    return TextUtils.isEmpty(this.m) ^ true;
  }
  
  public final void L0(boolean paramBoolean)
  {
    if (this.E != paramBoolean)
    {
      this.E = paramBoolean;
      b localb = this.O;
      if (localb != null) {
        localb.d(this);
      }
    }
  }
  
  public boolean M()
  {
    return this.K;
  }
  
  public boolean M0()
  {
    return N() ^ true;
  }
  
  public boolean N()
  {
    boolean bool;
    if ((this.q) && (this.z) && (this.D)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected boolean N0()
  {
    boolean bool;
    if ((this.b != null) && (O()) && (L())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean O()
  {
    return this.w;
  }
  
  public boolean P()
  {
    return this.r;
  }
  
  public final boolean Q()
  {
    return this.E;
  }
  
  protected void R()
  {
    b localb = this.O;
    if (localb != null) {
      localb.e(this);
    }
  }
  
  public void S(boolean paramBoolean)
  {
    List localList = this.P;
    if (localList == null) {
      return;
    }
    int i1 = localList.size();
    for (int i2 = 0; i2 < i1; i2++) {
      ((Preference)localList.get(i2)).Z(this, paramBoolean);
    }
  }
  
  protected void T()
  {
    b localb = this.O;
    if (localb != null) {
      localb.b(this);
    }
  }
  
  public void U()
  {
    p0();
  }
  
  protected void V(j paramj)
  {
    this.b = paramj;
    if (!this.d) {
      this.c = paramj.d();
    }
    l();
  }
  
  protected void W(j paramj, long paramLong)
  {
    this.c = paramLong;
    this.d = true;
    try
    {
      V(paramj);
      return;
    }
    finally
    {
      this.d = false;
    }
  }
  
  public void X(l paraml)
  {
    View localView = paraml.itemView;
    localView.setOnClickListener(this.V);
    localView.setId(this.h);
    Object localObject1 = (TextView)paraml.a(16908304);
    int i1 = 8;
    if (localObject1 != null)
    {
      localObject2 = H();
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        ((TextView)localObject1).setText((CharSequence)localObject2);
        ((View)localObject1).setVisibility(0);
        localObject1 = Integer.valueOf(((TextView)localObject1).getCurrentTextColor());
      }
      else
      {
        ((View)localObject1).setVisibility(8);
      }
    }
    else
    {
      localObject1 = null;
    }
    TextView localTextView = (TextView)paraml.a(16908310);
    if (localTextView != null)
    {
      localObject2 = J();
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localTextView.setText((CharSequence)localObject2);
        localTextView.setVisibility(0);
        if (this.H) {
          localTextView.setSingleLine(this.I);
        }
        if ((!P()) && (N()) && (localObject1 != null)) {
          localTextView.setTextColor(((Integer)localObject1).intValue());
        }
      }
      else
      {
        localTextView.setVisibility(8);
      }
    }
    localObject1 = (ImageView)paraml.a(16908294);
    int i2;
    if (localObject1 != null)
    {
      i2 = this.k;
      if ((i2 != 0) || (this.l != null))
      {
        if (this.l == null) {
          this.l = a.b(this.a, i2);
        }
        localObject2 = this.l;
        if (localObject2 != null) {
          ((ImageView)localObject1).setImageDrawable((Drawable)localObject2);
        }
      }
      if (this.l != null)
      {
        ((ImageView)localObject1).setVisibility(0);
      }
      else
      {
        if (this.J) {
          i2 = 4;
        } else {
          i2 = 8;
        }
        ((ImageView)localObject1).setVisibility(i2);
      }
    }
    Object localObject2 = paraml.a(o.a);
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = paraml.a(16908350);
    }
    if (localObject1 != null) {
      if (this.l != null)
      {
        ((View)localObject1).setVisibility(0);
      }
      else
      {
        i2 = i1;
        if (this.J) {
          i2 = 4;
        }
        ((View)localObject1).setVisibility(i2);
      }
    }
    if (this.L) {
      w0(localView, N());
    } else {
      w0(localView, true);
    }
    boolean bool1 = P();
    localView.setFocusable(bool1);
    localView.setClickable(bool1);
    paraml.d(this.F);
    paraml.e(this.G);
    boolean bool2 = M();
    if ((bool2) && (this.T == null)) {
      this.T = new e(this);
    }
    if (bool2) {
      paraml = this.T;
    } else {
      paraml = null;
    }
    localView.setOnCreateContextMenuListener(paraml);
    localView.setLongClickable(bool2);
    if ((bool2) && (!bool1)) {
      a0.p0(localView, null);
    }
  }
  
  protected void Y() {}
  
  public void Z(Preference paramPreference, boolean paramBoolean)
  {
    if (this.z == paramBoolean)
    {
      this.z = (paramBoolean ^ true);
      S(M0());
      R();
    }
  }
  
  public void a0()
  {
    P0();
    this.R = true;
  }
  
  void b(PreferenceGroup paramPreferenceGroup)
  {
    if ((paramPreferenceGroup != null) && (this.Q != null)) {
      throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
    }
    this.Q = paramPreferenceGroup;
  }
  
  protected Object b0(TypedArray paramTypedArray, int paramInt)
  {
    return null;
  }
  
  public boolean c(Object paramObject)
  {
    c localc = this.e;
    boolean bool;
    if ((localc != null) && (!localc.c(this, paramObject))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  @Deprecated
  public void c0(g paramg) {}
  
  public void d0(Preference paramPreference, boolean paramBoolean)
  {
    if (this.D == paramBoolean)
    {
      this.D = (paramBoolean ^ true);
      S(M0());
      R();
    }
  }
  
  protected void e0()
  {
    P0();
  }
  
  protected void f0(Parcelable paramParcelable)
  {
    this.S = true;
    if ((paramParcelable != AbsSavedState.EMPTY_STATE) && (paramParcelable != null)) {
      throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
    }
  }
  
  protected Parcelable g0()
  {
    this.S = true;
    return AbsSavedState.EMPTY_STATE;
  }
  
  final void h()
  {
    this.R = false;
  }
  
  protected void h0(Object paramObject) {}
  
  public int i(Preference paramPreference)
  {
    int i1 = this.g;
    int i2 = paramPreference.g;
    if (i1 != i2) {
      return i1 - i2;
    }
    CharSequence localCharSequence1 = this.i;
    CharSequence localCharSequence2 = paramPreference.i;
    if (localCharSequence1 == localCharSequence2) {
      return 0;
    }
    if (localCharSequence1 == null) {
      return 1;
    }
    if (localCharSequence2 == null) {
      return -1;
    }
    return localCharSequence1.toString().compareToIgnoreCase(paramPreference.i.toString());
  }
  
  @Deprecated
  protected void i0(boolean paramBoolean, Object paramObject)
  {
    h0(paramObject);
  }
  
  void j(Bundle paramBundle)
  {
    if (L())
    {
      paramBundle = paramBundle.getParcelable(this.m);
      if (paramBundle != null)
      {
        this.S = false;
        f0(paramBundle);
        if (!this.S) {
          throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
      }
    }
  }
  
  public void j0()
  {
    if ((N()) && (P()))
    {
      Y();
      Object localObject = this.f;
      if ((localObject != null) && (((d)localObject).d(this))) {
        return;
      }
      localObject = F();
      if (localObject != null)
      {
        localObject = ((j)localObject).f();
        if ((localObject != null) && (((j.c)localObject).h(this))) {
          return;
        }
      }
      if (this.n != null) {
        n().startActivity(this.n);
      }
    }
  }
  
  void k(Bundle paramBundle)
  {
    if (L())
    {
      this.S = false;
      Parcelable localParcelable = g0();
      if (this.S)
      {
        if (localParcelable != null) {
          paramBundle.putParcelable(this.m, localParcelable);
        }
      }
      else {
        throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
      }
    }
  }
  
  protected void k0(View paramView)
  {
    j0();
  }
  
  protected boolean l0(boolean paramBoolean)
  {
    if (!N0()) {
      return false;
    }
    if (paramBoolean == A(paramBoolean ^ true)) {
      return true;
    }
    E();
    SharedPreferences.Editor localEditor = this.b.c();
    localEditor.putBoolean(this.m, paramBoolean);
    O0(localEditor);
    return true;
  }
  
  protected <T extends Preference> T m(String paramString)
  {
    j localj = this.b;
    if (localj == null) {
      return null;
    }
    return localj.a(paramString);
  }
  
  protected boolean m0(int paramInt)
  {
    if (!N0()) {
      return false;
    }
    if (paramInt == B(paramInt)) {
      return true;
    }
    E();
    SharedPreferences.Editor localEditor = this.b.c();
    localEditor.putInt(this.m, paramInt);
    O0(localEditor);
    return true;
  }
  
  public Context n()
  {
    return this.a;
  }
  
  protected boolean n0(String paramString)
  {
    if (!N0()) {
      return false;
    }
    if (TextUtils.equals(paramString, C(null))) {
      return true;
    }
    E();
    SharedPreferences.Editor localEditor = this.b.c();
    localEditor.putString(this.m, paramString);
    O0(localEditor);
    return true;
  }
  
  public String o()
  {
    return this.x;
  }
  
  public boolean o0(Set<String> paramSet)
  {
    if (!N0()) {
      return false;
    }
    if (paramSet.equals(D(null))) {
      return true;
    }
    E();
    SharedPreferences.Editor localEditor = this.b.c();
    localEditor.putStringSet(this.m, paramSet);
    O0(localEditor);
    return true;
  }
  
  public Bundle p()
  {
    if (this.p == null) {
      this.p = new Bundle();
    }
    return this.p;
  }
  
  StringBuilder q()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharSequence localCharSequence = J();
    if (!TextUtils.isEmpty(localCharSequence))
    {
      localStringBuilder.append(localCharSequence);
      localStringBuilder.append(' ');
    }
    localCharSequence = H();
    if (!TextUtils.isEmpty(localCharSequence))
    {
      localStringBuilder.append(localCharSequence);
      localStringBuilder.append(' ');
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.setLength(localStringBuilder.length() - 1);
    }
    return localStringBuilder;
  }
  
  public String r()
  {
    return this.o;
  }
  
  void r0()
  {
    if (!TextUtils.isEmpty(this.m))
    {
      this.v = true;
      return;
    }
    throw new IllegalStateException("Preference does not have a key assigned.");
  }
  
  long s()
  {
    return this.c;
  }
  
  public void s0(Bundle paramBundle)
  {
    j(paramBundle);
  }
  
  public Intent t()
  {
    return this.n;
  }
  
  public void t0(Bundle paramBundle)
  {
    k(paramBundle);
  }
  
  public String toString()
  {
    return q().toString();
  }
  
  public String u()
  {
    return this.m;
  }
  
  public void u0(Object paramObject)
  {
    this.y = paramObject;
  }
  
  public final int v()
  {
    return this.M;
  }
  
  public void v0(boolean paramBoolean)
  {
    if (this.q != paramBoolean)
    {
      this.q = paramBoolean;
      S(M0());
      R();
    }
  }
  
  public c w()
  {
    return this.e;
  }
  
  public d x()
  {
    return this.f;
  }
  
  public void x0(int paramInt)
  {
    y0(a.b(this.a, paramInt));
    this.k = paramInt;
  }
  
  public int y()
  {
    return this.g;
  }
  
  public void y0(Drawable paramDrawable)
  {
    if (this.l != paramDrawable)
    {
      this.l = paramDrawable;
      this.k = 0;
      R();
    }
  }
  
  public PreferenceGroup z()
  {
    return this.Q;
  }
  
  public void z0(Intent paramIntent)
  {
    this.n = paramIntent;
  }
  
  public static class BaseSavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<BaseSavedState> CREATOR = new a();
    
    public BaseSavedState(Parcel paramParcel)
    {
      super();
    }
    
    public BaseSavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    static final class a
      implements Parcelable.Creator<Preference.BaseSavedState>
    {
      public Preference.BaseSavedState a(Parcel paramParcel)
      {
        return new Preference.BaseSavedState(paramParcel);
      }
      
      public Preference.BaseSavedState[] b(int paramInt)
      {
        return new Preference.BaseSavedState[paramInt];
      }
    }
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      Preference.this.k0(paramView);
    }
  }
  
  static abstract interface b
  {
    public abstract void b(Preference paramPreference);
    
    public abstract void d(Preference paramPreference);
    
    public abstract void e(Preference paramPreference);
  }
  
  public static abstract interface c
  {
    public abstract boolean c(Preference paramPreference, Object paramObject);
  }
  
  public static abstract interface d
  {
    public abstract boolean d(Preference paramPreference);
  }
  
  private static class e
    implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener
  {
    private final Preference a;
    
    e(Preference paramPreference)
    {
      this.a = paramPreference;
    }
    
    public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
    {
      paramView = this.a.H();
      if ((this.a.M()) && (!TextUtils.isEmpty(paramView)))
      {
        paramContextMenu.setHeaderTitle(paramView);
        paramContextMenu.add(0, 0, 0, q.a).setOnMenuItemClickListener(this);
      }
    }
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      paramMenuItem = (ClipboardManager)this.a.n().getSystemService("clipboard");
      CharSequence localCharSequence = this.a.H();
      paramMenuItem.setPrimaryClip(ClipData.newPlainText("Preference", localCharSequence));
      Toast.makeText(this.a.n(), this.a.n().getString(q.d, new Object[] { localCharSequence }), 0).show();
      return true;
    }
  }
  
  public static abstract interface f<T extends Preference>
  {
    public abstract CharSequence a(T paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.Preference
 * JD-Core Version:    0.7.0.1
 */