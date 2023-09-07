package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.view.x;
import d0.a;
import d0.b;

class e
{
  static void a(final Fragment paramFragment, d paramd, final t.g paramg)
  {
    final View localView = paramFragment.mView;
    ViewGroup localViewGroup = paramFragment.mContainer;
    localViewGroup.startViewTransition(localView);
    final androidx.core.os.e locale = new androidx.core.os.e();
    locale.c(new a());
    paramg.b(paramFragment, locale);
    if (paramd.a != null)
    {
      paramd = new e(paramd.a, localViewGroup, localView);
      paramFragment.setAnimatingAway(paramFragment.mView);
      paramd.setAnimationListener(new b(localViewGroup, paramFragment, paramg, locale));
      paramFragment.mView.startAnimation(paramd);
    }
    else
    {
      paramd = paramd.b;
      paramFragment.setAnimator(paramd);
      paramd.addListener(new c(localViewGroup, localView, paramFragment, paramg, locale));
      paramd.setTarget(paramFragment.mView);
      paramd.start();
    }
  }
  
  private static int b(Fragment paramFragment, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      if (paramBoolean1) {
        return paramFragment.getPopEnterAnim();
      }
      return paramFragment.getPopExitAnim();
    }
    if (paramBoolean1) {
      return paramFragment.getEnterAnim();
    }
    return paramFragment.getExitAnim();
  }
  
  static d c(Context paramContext, Fragment paramFragment, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = paramFragment.getNextTransition();
    j = b(paramFragment, paramBoolean1, paramBoolean2);
    k = 0;
    paramFragment.setAnimations(0, 0, 0, 0);
    Object localObject = paramFragment.mContainer;
    if (localObject != null)
    {
      m = b.c;
      if (((View)localObject).getTag(m) != null) {
        paramFragment.mContainer.setTag(m, null);
      }
    }
    localObject = paramFragment.mContainer;
    if ((localObject != null) && (((ViewGroup)localObject).getLayoutTransition() != null)) {
      return null;
    }
    localObject = paramFragment.onCreateAnimation(i, paramBoolean1, j);
    if (localObject != null) {
      return new d((Animation)localObject);
    }
    paramFragment = paramFragment.onCreateAnimator(i, paramBoolean1, j);
    if (paramFragment != null) {
      return new d(paramFragment);
    }
    int m = j;
    if (j == 0)
    {
      m = j;
      if (i != 0) {
        m = d(i, paramBoolean1);
      }
    }
    if (m != 0)
    {
      paramBoolean1 = "anim".equals(paramContext.getResources().getResourceTypeName(m));
      j = k;
      if (!paramBoolean1) {}
    }
    try
    {
      try
      {
        paramFragment = AnimationUtils.loadAnimation(paramContext, m);
        if (paramFragment != null)
        {
          paramFragment = new d(paramFragment);
          return paramFragment;
        }
        j = 1;
      }
      catch (Resources.NotFoundException paramContext)
      {
        throw paramContext;
      }
    }
    catch (RuntimeException paramFragment)
    {
      for (;;)
      {
        j = k;
      }
    }
    if (j == 0) {
      try
      {
        paramFragment = AnimatorInflater.loadAnimator(paramContext, m);
        if (paramFragment != null)
        {
          paramFragment = new d(paramFragment);
          return paramFragment;
        }
      }
      catch (RuntimeException paramFragment)
      {
        if (!paramBoolean1)
        {
          paramContext = AnimationUtils.loadAnimation(paramContext, m);
          if (paramContext != null) {
            return new d(paramContext);
          }
        }
        else
        {
          throw paramFragment;
        }
      }
    }
    return null;
  }
  
  private static int d(int paramInt, boolean paramBoolean)
  {
    if (paramInt != 4097)
    {
      if (paramInt != 4099)
      {
        if (paramInt != 8194) {
          paramInt = -1;
        } else if (paramBoolean) {
          paramInt = a.a;
        } else {
          paramInt = a.b;
        }
      }
      else if (paramBoolean) {
        paramInt = a.c;
      } else {
        paramInt = a.d;
      }
    }
    else if (paramBoolean) {
      paramInt = a.e;
    } else {
      paramInt = a.f;
    }
    return paramInt;
  }
  
  class a
    implements androidx.core.os.e.b
  {
    a() {}
    
    public void onCancel()
    {
      if (e.this.getAnimatingAway() != null)
      {
        View localView = e.this.getAnimatingAway();
        e.this.setAnimatingAway(null);
        localView.clearAnimation();
      }
      e.this.setAnimator(null);
    }
  }
  
  class b
    implements Animation.AnimationListener
  {
    b(Fragment paramFragment, t.g paramg, androidx.core.os.e parame) {}
    
    public void onAnimationEnd(Animation paramAnimation)
    {
      e.this.post(new a());
    }
    
    public void onAnimationRepeat(Animation paramAnimation) {}
    
    public void onAnimationStart(Animation paramAnimation) {}
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        if (e.b.this.b.getAnimatingAway() != null)
        {
          e.b.this.b.setAnimatingAway(null);
          e.b localb = e.b.this;
          localb.c.a(localb.b, localb.d);
        }
      }
    }
  }
  
  class c
    extends AnimatorListenerAdapter
  {
    c(View paramView, Fragment paramFragment, t.g paramg, androidx.core.os.e parame) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      e.this.endViewTransition(localView);
      paramAnimator = paramFragment.getAnimator();
      paramFragment.setAnimator(null);
      if ((paramAnimator != null) && (e.this.indexOfChild(localView) < 0)) {
        paramg.a(paramFragment, locale);
      }
    }
  }
  
  static class d
  {
    public final Animation a;
    public final Animator b;
    
    d(Animator paramAnimator)
    {
      this.a = null;
      this.b = paramAnimator;
      if (paramAnimator != null) {
        return;
      }
      throw new IllegalStateException("Animator cannot be null");
    }
    
    d(Animation paramAnimation)
    {
      this.a = paramAnimation;
      this.b = null;
      if (paramAnimation != null) {
        return;
      }
      throw new IllegalStateException("Animation cannot be null");
    }
  }
  
  static class e
    extends AnimationSet
    implements Runnable
  {
    private final ViewGroup a;
    private final View b;
    private boolean c;
    private boolean d;
    private boolean e = true;
    
    e(Animation paramAnimation, ViewGroup paramViewGroup, View paramView)
    {
      super();
      this.a = paramViewGroup;
      this.b = paramView;
      addAnimation(paramAnimation);
      paramViewGroup.post(this);
    }
    
    public boolean getTransformation(long paramLong, Transformation paramTransformation)
    {
      this.e = true;
      if (this.c) {
        return this.d ^ true;
      }
      if (!super.getTransformation(paramLong, paramTransformation))
      {
        this.c = true;
        x.a(this.a, this);
      }
      return true;
    }
    
    public boolean getTransformation(long paramLong, Transformation paramTransformation, float paramFloat)
    {
      this.e = true;
      if (this.c) {
        return this.d ^ true;
      }
      if (!super.getTransformation(paramLong, paramTransformation, paramFloat))
      {
        this.c = true;
        x.a(this.a, this);
      }
      return true;
    }
    
    public void run()
    {
      if ((!this.c) && (this.e))
      {
        this.e = false;
        this.a.post(this);
      }
      else
      {
        this.a.endViewTransition(this.b);
        this.d = true;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.e
 * JD-Core Version:    0.7.0.1
 */