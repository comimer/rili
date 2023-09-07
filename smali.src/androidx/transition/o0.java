package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

public abstract class o0
  extends m
{
  public static final int MODE_IN = 1;
  public static final int MODE_OUT = 2;
  private static final String PROPNAME_PARENT = "android:visibility:parent";
  private static final String PROPNAME_SCREEN_LOCATION = "android:visibility:screenLocation";
  static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
  private static final String[] sTransitionProperties = { "android:visibility:visibility", "android:visibility:parent" };
  private int mMode = 3;
  
  public o0() {}
  
  @SuppressLint({"RestrictedApi"})
  public o0(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, l.e);
    int i = androidx.core.content.res.l.k(paramContext, (XmlResourceParser)paramAttributeSet, "transitionVisibilityMode", 0, 0);
    paramContext.recycle();
    if (i != 0) {
      setMode(i);
    }
  }
  
  private void captureValues(t paramt)
  {
    int i = paramt.b.getVisibility();
    paramt.a.put("android:visibility:visibility", Integer.valueOf(i));
    paramt.a.put("android:visibility:parent", paramt.b.getParent());
    int[] arrayOfInt = new int[2];
    paramt.b.getLocationOnScreen(arrayOfInt);
    paramt.a.put("android:visibility:screenLocation", arrayOfInt);
  }
  
  private c getVisibilityChangeInfo(t paramt1, t paramt2)
  {
    c localc = new c();
    localc.a = false;
    localc.b = false;
    if ((paramt1 != null) && (paramt1.a.containsKey("android:visibility:visibility")))
    {
      localc.c = ((Integer)paramt1.a.get("android:visibility:visibility")).intValue();
      localc.e = ((ViewGroup)paramt1.a.get("android:visibility:parent"));
    }
    else
    {
      localc.c = -1;
      localc.e = null;
    }
    if ((paramt2 != null) && (paramt2.a.containsKey("android:visibility:visibility")))
    {
      localc.d = ((Integer)paramt2.a.get("android:visibility:visibility")).intValue();
      localc.f = ((ViewGroup)paramt2.a.get("android:visibility:parent"));
    }
    else
    {
      localc.d = -1;
      localc.f = null;
    }
    if ((paramt1 != null) && (paramt2 != null))
    {
      int i = localc.c;
      int j = localc.d;
      if ((i == j) && (localc.e == localc.f)) {
        return localc;
      }
      if (i != j)
      {
        if (i == 0)
        {
          localc.b = false;
          localc.a = true;
        }
        else if (j == 0)
        {
          localc.b = true;
          localc.a = true;
        }
      }
      else if (localc.f == null)
      {
        localc.b = false;
        localc.a = true;
      }
      else if (localc.e == null)
      {
        localc.b = true;
        localc.a = true;
      }
    }
    else if ((paramt1 == null) && (localc.d == 0))
    {
      localc.b = true;
      localc.a = true;
    }
    else if ((paramt2 == null) && (localc.c == 0))
    {
      localc.b = false;
      localc.a = true;
    }
    return localc;
  }
  
  public void captureEndValues(t paramt)
  {
    captureValues(paramt);
  }
  
  public void captureStartValues(t paramt)
  {
    captureValues(paramt);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, t paramt1, t paramt2)
  {
    c localc = getVisibilityChangeInfo(paramt1, paramt2);
    if ((localc.a) && ((localc.e != null) || (localc.f != null)))
    {
      if (localc.b) {
        return onAppear(paramViewGroup, paramt1, localc.c, paramt2, localc.d);
      }
      return onDisappear(paramViewGroup, paramt1, localc.c, paramt2, localc.d);
    }
    return null;
  }
  
  public int getMode()
  {
    return this.mMode;
  }
  
  public String[] getTransitionProperties()
  {
    return sTransitionProperties;
  }
  
  public boolean isTransitionRequired(t paramt1, t paramt2)
  {
    boolean bool1 = false;
    if ((paramt1 == null) && (paramt2 == null)) {
      return false;
    }
    if ((paramt1 != null) && (paramt2 != null) && (paramt2.a.containsKey("android:visibility:visibility") != paramt1.a.containsKey("android:visibility:visibility"))) {
      return false;
    }
    paramt1 = getVisibilityChangeInfo(paramt1, paramt2);
    boolean bool2 = bool1;
    if (paramt1.a) {
      if (paramt1.c != 0)
      {
        bool2 = bool1;
        if (paramt1.d != 0) {}
      }
      else
      {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public boolean isVisible(t paramt)
  {
    boolean bool1 = false;
    if (paramt == null) {
      return false;
    }
    int i = ((Integer)paramt.a.get("android:visibility:visibility")).intValue();
    paramt = (View)paramt.a.get("android:visibility:parent");
    boolean bool2 = bool1;
    if (i == 0)
    {
      bool2 = bool1;
      if (paramt != null) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, View paramView, t paramt1, t paramt2)
  {
    return null;
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, t paramt1, int paramInt1, t paramt2, int paramInt2)
  {
    if (((this.mMode & 0x1) == 1) && (paramt2 != null))
    {
      if (paramt1 == null)
      {
        View localView = (View)paramt2.b.getParent();
        if (getVisibilityChangeInfo(getMatchedTransitionValues(localView, false), getTransitionValues(localView, false)).a) {
          return null;
        }
      }
      return onAppear(paramViewGroup, paramt2.b, paramt1, paramt2);
    }
    return null;
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, View paramView, t paramt1, t paramt2)
  {
    return null;
  }
  
  public Animator onDisappear(final ViewGroup paramViewGroup, t paramt1, int paramInt1, t paramt2, int paramInt2)
  {
    if ((this.mMode & 0x2) != 2) {
      return null;
    }
    if (paramt1 == null) {
      return null;
    }
    final View localView1 = paramt1.b;
    Object localObject1;
    if (paramt2 != null) {
      localObject1 = paramt2.b;
    } else {
      localObject1 = null;
    }
    int i = i.a;
    Object localObject2 = (View)localView1.getTag(i);
    if (localObject2 != null)
    {
      localObject1 = null;
      paramInt1 = 1;
    }
    else
    {
      if ((localObject1 != null) && (((View)localObject1).getParent() != null))
      {
        if ((paramInt2 == 4) || (localView1 == localObject1))
        {
          localObject2 = localObject1;
          paramInt1 = 0;
          localObject1 = null;
          break label138;
        }
      }
      else if (localObject1 != null)
      {
        localObject2 = null;
        paramInt1 = 0;
        break label138;
      }
      localObject1 = null;
      localObject2 = localObject1;
      paramInt1 = 1;
      label138:
      Object localObject3 = localObject1;
      if (paramInt1 != 0) {
        if (localView1.getParent() != null)
        {
          localObject3 = localObject1;
          if ((localView1.getParent() instanceof View))
          {
            View localView2 = (View)localView1.getParent();
            if (!getVisibilityChangeInfo(getTransitionValues(localView2, true), getMatchedTransitionValues(localView2, true)).a)
            {
              localObject3 = s.a(paramViewGroup, localView1, localView2);
            }
            else
            {
              paramInt1 = localView2.getId();
              localObject3 = localObject1;
              if (localView2.getParent() == null)
              {
                localObject3 = localObject1;
                if (paramInt1 != -1)
                {
                  localObject3 = localObject1;
                  if (paramViewGroup.findViewById(paramInt1) != null)
                  {
                    localObject3 = localObject1;
                    if (!this.mCanRemoveViews) {}
                  }
                }
              }
            }
          }
        }
        else
        {
          localObject1 = localObject2;
          paramInt1 = 0;
          localObject2 = localView1;
          break label292;
        }
      }
      paramInt1 = 0;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
    label292:
    if (localObject2 != null)
    {
      if (paramInt1 == 0)
      {
        localObject1 = (int[])paramt1.a.get("android:visibility:screenLocation");
        paramInt2 = localObject1[0];
        int j = localObject1[1];
        localObject1 = new int[2];
        paramViewGroup.getLocationOnScreen((int[])localObject1);
        ((View)localObject2).offsetLeftAndRight(paramInt2 - localObject1[0] - ((View)localObject2).getLeft());
        ((View)localObject2).offsetTopAndBottom(j - localObject1[1] - ((View)localObject2).getTop());
        y.a(paramViewGroup).add((View)localObject2);
      }
      paramt1 = onDisappear(paramViewGroup, (View)localObject2, paramt1, paramt2);
      if (paramInt1 == 0) {
        if (paramt1 == null)
        {
          y.a(paramViewGroup).remove((View)localObject2);
        }
        else
        {
          localView1.setTag(i, localObject2);
          addListener(new a(paramViewGroup, (View)localObject2, localView1));
        }
      }
      return paramt1;
    }
    if (localObject1 != null)
    {
      paramInt1 = ((View)localObject1).getVisibility();
      b0.h((View)localObject1, 0);
      paramViewGroup = onDisappear(paramViewGroup, (View)localObject1, paramt1, paramt2);
      if (paramViewGroup != null)
      {
        paramt1 = new b((View)localObject1, paramInt2, true);
        paramViewGroup.addListener(paramt1);
        a.a(paramViewGroup, paramt1);
        addListener(paramt1);
      }
      else
      {
        b0.h((View)localObject1, paramInt1);
      }
      return paramViewGroup;
    }
    return null;
  }
  
  public void setMode(int paramInt)
  {
    if ((paramInt & 0xFFFFFFFC) == 0)
    {
      this.mMode = paramInt;
      return;
    }
    throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
  }
  
  class a
    extends n
  {
    a(ViewGroup paramViewGroup, View paramView1, View paramView2) {}
    
    public void onTransitionEnd(m paramm)
    {
      localView1.setTag(i.a, null);
      y.a(paramViewGroup).remove(this.b);
      paramm.removeListener(this);
    }
    
    public void onTransitionPause(m paramm)
    {
      y.a(paramViewGroup).remove(this.b);
    }
    
    public void onTransitionResume(m paramm)
    {
      if (this.b.getParent() == null) {
        y.a(paramViewGroup).add(this.b);
      } else {
        o0.this.cancel();
      }
    }
  }
  
  private static class b
    extends AnimatorListenerAdapter
    implements m.g
  {
    private final View a;
    private final int b;
    private final ViewGroup c;
    private final boolean d;
    private boolean e;
    boolean f = false;
    
    b(View paramView, int paramInt, boolean paramBoolean)
    {
      this.a = paramView;
      this.b = paramInt;
      this.c = ((ViewGroup)paramView.getParent());
      this.d = paramBoolean;
      b(true);
    }
    
    private void a()
    {
      if (!this.f)
      {
        b0.h(this.a, this.b);
        ViewGroup localViewGroup = this.c;
        if (localViewGroup != null) {
          localViewGroup.invalidate();
        }
      }
      b(false);
    }
    
    private void b(boolean paramBoolean)
    {
      if ((this.d) && (this.e != paramBoolean))
      {
        ViewGroup localViewGroup = this.c;
        if (localViewGroup != null)
        {
          this.e = paramBoolean;
          y.c(localViewGroup, paramBoolean);
        }
      }
    }
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      this.f = true;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      a();
    }
    
    public void onAnimationPause(Animator paramAnimator)
    {
      if (!this.f) {
        b0.h(this.a, this.b);
      }
    }
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationResume(Animator paramAnimator)
    {
      if (!this.f) {
        b0.h(this.a, 0);
      }
    }
    
    public void onAnimationStart(Animator paramAnimator) {}
    
    public void onTransitionCancel(m paramm) {}
    
    public void onTransitionEnd(m paramm)
    {
      a();
      paramm.removeListener(this);
    }
    
    public void onTransitionPause(m paramm)
    {
      b(false);
    }
    
    public void onTransitionResume(m paramm)
    {
      b(true);
    }
    
    public void onTransitionStart(m paramm) {}
  }
  
  private static class c
  {
    boolean a;
    boolean b;
    int c;
    int d;
    ViewGroup e;
    ViewGroup f;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.o0
 * JD-Core Version:    0.7.0.1
 */