package androidx.preference;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.i;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.n;
import androidx.recyclerview.widget.RecyclerView.o;
import androidx.recyclerview.widget.RecyclerView.z;

public abstract class g
  extends Fragment
  implements j.c, j.a, j.b, DialogPreference.a
{
  private final c a = new c();
  private j b;
  RecyclerView c;
  private boolean d;
  private boolean e;
  private int f = p.c;
  private Runnable g;
  private Handler h = new a();
  private final Runnable i = new b();
  
  private void t()
  {
    if (this.h.hasMessages(1)) {
      return;
    }
    this.h.obtainMessage(1).sendToTarget();
  }
  
  private void u()
  {
    if (this.b != null) {
      return;
    }
    throw new RuntimeException("This should be called after super.onCreate.");
  }
  
  private void z()
  {
    l().setAdapter(null);
    PreferenceScreen localPreferenceScreen = m();
    if (localPreferenceScreen != null) {
      localPreferenceScreen.a0();
    }
    s();
  }
  
  public <T extends Preference> T a(CharSequence paramCharSequence)
  {
    j localj = this.b;
    if (localj == null) {
      return null;
    }
    return localj.a(paramCharSequence);
  }
  
  public void f(Preference paramPreference)
  {
    boolean bool1;
    if ((k() instanceof d)) {
      bool1 = ((d)k()).a(this, paramPreference);
    } else {
      bool1 = false;
    }
    boolean bool2 = bool1;
    if (!bool1)
    {
      bool2 = bool1;
      if ((getActivity() instanceof d)) {
        bool2 = ((d)getActivity()).a(this, paramPreference);
      }
    }
    if (bool2) {
      return;
    }
    if (getFragmentManager().i0("androidx.preference.PreferenceFragment.DIALOG") != null) {
      return;
    }
    if ((paramPreference instanceof EditTextPreference))
    {
      paramPreference = a.q(paramPreference.u());
    }
    else if ((paramPreference instanceof ListPreference))
    {
      paramPreference = c.q(paramPreference.u());
    }
    else
    {
      if (!(paramPreference instanceof MultiSelectListPreference)) {
        break label149;
      }
      paramPreference = d.q(paramPreference.u());
    }
    paramPreference.setTargetFragment(this, 0);
    paramPreference.show(getFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
    return;
    label149:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot display dialog for an unknown Preference type: ");
    localStringBuilder.append(paramPreference.getClass().getSimpleName());
    localStringBuilder.append(". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void g(PreferenceScreen paramPreferenceScreen)
  {
    boolean bool;
    if ((k() instanceof f)) {
      bool = ((f)k()).a(this, paramPreferenceScreen);
    } else {
      bool = false;
    }
    if ((!bool) && ((getActivity() instanceof f))) {
      ((f)getActivity()).a(this, paramPreferenceScreen);
    }
  }
  
  public boolean h(Preference paramPreference)
  {
    if (paramPreference.r() != null)
    {
      boolean bool1;
      if ((k() instanceof e)) {
        bool1 = ((e)k()).a(this, paramPreference);
      } else {
        bool1 = false;
      }
      boolean bool2 = bool1;
      if (!bool1)
      {
        bool2 = bool1;
        if ((getActivity() instanceof e)) {
          bool2 = ((e)getActivity()).a(this, paramPreference);
        }
      }
      if (!bool2)
      {
        Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        FragmentManager localFragmentManager = requireActivity().getSupportFragmentManager();
        Bundle localBundle = paramPreference.p();
        paramPreference = localFragmentManager.s0().a(requireActivity().getClassLoader(), paramPreference.r());
        paramPreference.setArguments(localBundle);
        paramPreference.setTargetFragment(this, 0);
        localFragmentManager.m().q(((View)getView().getParent()).getId(), paramPreference).g(null).h();
      }
      return true;
    }
    return false;
  }
  
  public void i(int paramInt)
  {
    u();
    x(this.b.k(getContext(), paramInt, m()));
  }
  
  void j()
  {
    PreferenceScreen localPreferenceScreen = m();
    if (localPreferenceScreen != null)
    {
      l().setAdapter(o(localPreferenceScreen));
      localPreferenceScreen.U();
    }
    n();
  }
  
  public Fragment k()
  {
    return null;
  }
  
  public final RecyclerView l()
  {
    return this.c;
  }
  
  public PreferenceScreen m()
  {
    return this.b.i();
  }
  
  protected void n() {}
  
  protected RecyclerView.g o(PreferenceScreen paramPreferenceScreen)
  {
    return new h(paramPreferenceScreen);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = new TypedValue();
    getActivity().getTheme().resolveAttribute(m.i, (TypedValue)localObject, true);
    int j = ((TypedValue)localObject).resourceId;
    int k = j;
    if (j == 0) {
      k = r.a;
    }
    getActivity().getTheme().applyStyle(k, false);
    localObject = new j(getContext());
    this.b = ((j)localObject);
    ((j)localObject).o(this);
    if (getArguments() != null) {
      localObject = getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
    } else {
      localObject = null;
    }
    q(paramBundle, (String)localObject);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Object localObject = getContext().obtainStyledAttributes(null, s.c1, m.f, 0);
    this.f = ((TypedArray)localObject).getResourceId(s.d1, this.f);
    Drawable localDrawable = ((TypedArray)localObject).getDrawable(s.e1);
    int j = ((TypedArray)localObject).getDimensionPixelSize(s.f1, -1);
    boolean bool = ((TypedArray)localObject).getBoolean(s.g1, true);
    ((TypedArray)localObject).recycle();
    paramLayoutInflater = paramLayoutInflater.cloneInContext(getContext());
    paramViewGroup = paramLayoutInflater.inflate(this.f, paramViewGroup, false);
    localObject = paramViewGroup.findViewById(16908351);
    if ((localObject instanceof ViewGroup))
    {
      localObject = (ViewGroup)localObject;
      paramLayoutInflater = r(paramLayoutInflater, (ViewGroup)localObject, paramBundle);
      if (paramLayoutInflater != null)
      {
        this.c = paramLayoutInflater;
        paramLayoutInflater.addItemDecoration(this.a);
        v(localDrawable);
        if (j != -1) {
          w(j);
        }
        this.a.d(bool);
        if (this.c.getParent() == null) {
          ((ViewGroup)localObject).addView(this.c);
        }
        this.h.post(this.i);
        return paramViewGroup;
      }
      throw new RuntimeException("Could not create RecyclerView");
    }
    throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
  }
  
  public void onDestroyView()
  {
    this.h.removeCallbacks(this.i);
    this.h.removeMessages(1);
    if (this.d) {
      z();
    }
    this.c = null;
    super.onDestroyView();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    PreferenceScreen localPreferenceScreen = m();
    if (localPreferenceScreen != null)
    {
      Bundle localBundle = new Bundle();
      localPreferenceScreen.t0(localBundle);
      paramBundle.putBundle("android:preferences", localBundle);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    this.b.p(this);
    this.b.n(this);
  }
  
  public void onStop()
  {
    super.onStop();
    this.b.p(null);
    this.b.n(null);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (paramBundle != null)
    {
      paramView = paramBundle.getBundle("android:preferences");
      if (paramView != null)
      {
        paramBundle = m();
        if (paramBundle != null) {
          paramBundle.s0(paramView);
        }
      }
    }
    if (this.d)
    {
      j();
      paramView = this.g;
      if (paramView != null)
      {
        paramView.run();
        this.g = null;
      }
    }
    this.e = true;
  }
  
  public RecyclerView.o p()
  {
    return new LinearLayoutManager(getContext());
  }
  
  public abstract void q(Bundle paramBundle, String paramString);
  
  public RecyclerView r(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (getContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive"))
    {
      paramBundle = (RecyclerView)paramViewGroup.findViewById(o.b);
      if (paramBundle != null) {
        return paramBundle;
      }
    }
    paramLayoutInflater = (RecyclerView)paramLayoutInflater.inflate(p.d, paramViewGroup, false);
    paramLayoutInflater.setLayoutManager(p());
    paramLayoutInflater.setAccessibilityDelegateCompat(new k(paramLayoutInflater));
    return paramLayoutInflater;
  }
  
  protected void s() {}
  
  public void v(Drawable paramDrawable)
  {
    this.a.e(paramDrawable);
  }
  
  public void w(int paramInt)
  {
    this.a.f(paramInt);
  }
  
  public void x(PreferenceScreen paramPreferenceScreen)
  {
    if ((this.b.q(paramPreferenceScreen)) && (paramPreferenceScreen != null))
    {
      s();
      this.d = true;
      if (this.e) {
        t();
      }
    }
  }
  
  public void y(int paramInt, String paramString)
  {
    u();
    PreferenceScreen localPreferenceScreen = this.b.k(getContext(), paramInt, null);
    Object localObject = localPreferenceScreen;
    if (paramString != null)
    {
      localObject = localPreferenceScreen.T0(paramString);
      if (!(localObject instanceof PreferenceScreen))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Preference object with key ");
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append(" is not a PreferenceScreen");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
    }
    x((PreferenceScreen)localObject);
  }
  
  class a
    extends Handler
  {
    a() {}
    
    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 1) {
        g.this.j();
      }
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      RecyclerView localRecyclerView = g.this.c;
      localRecyclerView.focusableViewAvailable(localRecyclerView);
    }
  }
  
  private class c
    extends RecyclerView.n
  {
    private Drawable a;
    private int b;
    private boolean c = true;
    
    c() {}
    
    private boolean g(View paramView, RecyclerView paramRecyclerView)
    {
      RecyclerView.c0 localc0 = paramRecyclerView.getChildViewHolder(paramView);
      boolean bool1 = localc0 instanceof l;
      boolean bool2 = false;
      if ((bool1) && (((l)localc0).c())) {
        i = 1;
      } else {
        i = 0;
      }
      if (i == 0) {
        return false;
      }
      bool1 = this.c;
      int i = paramRecyclerView.indexOfChild(paramView);
      if (i < paramRecyclerView.getChildCount() - 1)
      {
        paramView = paramRecyclerView.getChildViewHolder(paramRecyclerView.getChildAt(i + 1));
        bool1 = bool2;
        if ((paramView instanceof l))
        {
          bool1 = bool2;
          if (((l)paramView).b()) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public void d(boolean paramBoolean)
    {
      this.c = paramBoolean;
    }
    
    public void e(Drawable paramDrawable)
    {
      if (paramDrawable != null) {
        this.b = paramDrawable.getIntrinsicHeight();
      } else {
        this.b = 0;
      }
      this.a = paramDrawable;
      g.this.c.invalidateItemDecorations();
    }
    
    public void f(int paramInt)
    {
      this.b = paramInt;
      g.this.c.invalidateItemDecorations();
    }
    
    public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.z paramz)
    {
      if (g(paramView, paramRecyclerView)) {
        paramRect.bottom = this.b;
      }
    }
    
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.z paramz)
    {
      if (this.a == null) {
        return;
      }
      int i = paramRecyclerView.getChildCount();
      int j = paramRecyclerView.getWidth();
      for (int k = 0; k < i; k++)
      {
        paramz = paramRecyclerView.getChildAt(k);
        if (g(paramz, paramRecyclerView))
        {
          int m = (int)paramz.getY() + paramz.getHeight();
          this.a.setBounds(0, m, j, this.b + m);
          this.a.draw(paramCanvas);
        }
      }
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean a(g paramg, Preference paramPreference);
  }
  
  public static abstract interface e
  {
    public abstract boolean a(g paramg, Preference paramPreference);
  }
  
  public static abstract interface f
  {
    public abstract boolean a(g paramg, PreferenceScreen paramPreferenceScreen);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.g
 * JD-Core Version:    0.7.0.1
 */