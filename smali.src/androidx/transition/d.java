package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.a0;
import java.util.Map;

public class d
  extends o0
{
  public d(int paramInt)
  {
    setMode(paramInt);
  }
  
  private Animator a(final View paramView, float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 == paramFloat2) {
      return null;
    }
    b0.g(paramView, paramFloat1);
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(paramView, b0.b, new float[] { paramFloat2 });
    localObjectAnimator.addListener(new b(paramView));
    addListener(new a(paramView));
    return localObjectAnimator;
  }
  
  private static float b(t paramt, float paramFloat)
  {
    float f = paramFloat;
    if (paramt != null)
    {
      paramt = (Float)paramt.a.get("android:fade:transitionAlpha");
      f = paramFloat;
      if (paramt != null) {
        f = paramt.floatValue();
      }
    }
    return f;
  }
  
  public void captureStartValues(t paramt)
  {
    super.captureStartValues(paramt);
    paramt.a.put("android:fade:transitionAlpha", Float.valueOf(b0.c(paramt.b)));
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, View paramView, t paramt1, t paramt2)
  {
    float f1 = 0.0F;
    float f2 = b(paramt1, 0.0F);
    if (f2 != 1.0F) {
      f1 = f2;
    }
    return a(paramView, f1, 1.0F);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, View paramView, t paramt1, t paramt2)
  {
    b0.e(paramView);
    return a(paramView, b(paramt1, 1.0F), 0.0F);
  }
  
  class a
    extends n
  {
    a(View paramView) {}
    
    public void onTransitionEnd(m paramm)
    {
      b0.g(paramView, 1.0F);
      b0.a(paramView);
      paramm.removeListener(this);
    }
  }
  
  private static class b
    extends AnimatorListenerAdapter
  {
    private final View a;
    private boolean b = false;
    
    b(View paramView)
    {
      this.a = paramView;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      b0.g(this.a, 1.0F);
      if (this.b) {
        this.a.setLayerType(0, null);
      }
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      if ((a0.L(this.a)) && (this.a.getLayerType() == 0))
      {
        this.b = true;
        this.a.setLayerType(2, null);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.d
 * JD-Core Version:    0.7.0.1
 */