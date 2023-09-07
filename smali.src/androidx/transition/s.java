package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

class s
{
  private static final boolean a;
  private static final boolean b;
  private static final boolean c;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = true;
    a = true;
    b = true;
    if (i < 28) {
      bool = false;
    }
    c = bool;
  }
  
  static View a(ViewGroup paramViewGroup, View paramView1, View paramView2)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.setTranslate(-paramView2.getScrollX(), -paramView2.getScrollY());
    b0.i(paramView1, localMatrix);
    b0.j(paramViewGroup, localMatrix);
    RectF localRectF = new RectF(0.0F, 0.0F, paramView1.getWidth(), paramView1.getHeight());
    localMatrix.mapRect(localRectF);
    int i = Math.round(localRectF.left);
    int j = Math.round(localRectF.top);
    int k = Math.round(localRectF.right);
    int m = Math.round(localRectF.bottom);
    paramView2 = new ImageView(paramView1.getContext());
    paramView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
    paramViewGroup = b(paramView1, localMatrix, localRectF, paramViewGroup);
    if (paramViewGroup != null) {
      paramView2.setImageBitmap(paramViewGroup);
    }
    paramView2.measure(View.MeasureSpec.makeMeasureSpec(k - i, 1073741824), View.MeasureSpec.makeMeasureSpec(m - j, 1073741824));
    paramView2.layout(i, j, k, m);
    return paramView2;
  }
  
  private static Bitmap b(View paramView, Matrix paramMatrix, RectF paramRectF, ViewGroup paramViewGroup)
  {
    boolean bool1;
    boolean bool2;
    if (a)
    {
      bool1 = paramView.isAttachedToWindow() ^ true;
      if (paramViewGroup == null) {
        bool2 = false;
      } else {
        bool2 = paramViewGroup.isAttachedToWindow();
      }
    }
    else
    {
      bool1 = false;
      bool2 = bool1;
    }
    boolean bool3 = b;
    Object localObject1 = null;
    ViewGroup localViewGroup;
    int i;
    if ((bool3) && (bool1))
    {
      if (!bool2) {
        return null;
      }
      localViewGroup = (ViewGroup)paramView.getParent();
      i = localViewGroup.indexOfChild(paramView);
      paramViewGroup.getOverlay().add(paramView);
    }
    else
    {
      i = 0;
      localViewGroup = null;
    }
    int j = Math.round(paramRectF.width());
    int k = Math.round(paramRectF.height());
    Object localObject2 = localObject1;
    if (j > 0)
    {
      localObject2 = localObject1;
      if (k > 0)
      {
        float f = Math.min(1.0F, 1048576.0F / (j * k));
        j = Math.round(j * f);
        k = Math.round(k * f);
        paramMatrix.postTranslate(-paramRectF.left, -paramRectF.top);
        paramMatrix.postScale(f, f);
        if (c)
        {
          localObject2 = new Picture();
          paramRectF = ((Picture)localObject2).beginRecording(j, k);
          paramRectF.concat(paramMatrix);
          paramView.draw(paramRectF);
          ((Picture)localObject2).endRecording();
          localObject2 = r.a((Picture)localObject2);
        }
        else
        {
          localObject2 = Bitmap.createBitmap(j, k, Bitmap.Config.ARGB_8888);
          paramRectF = new Canvas((Bitmap)localObject2);
          paramRectF.concat(paramMatrix);
          paramView.draw(paramRectF);
        }
      }
    }
    if ((bool3) && (bool1))
    {
      paramViewGroup.getOverlay().remove(paramView);
      localViewGroup.addView(paramView, i);
    }
    return localObject2;
  }
  
  static Animator c(Animator paramAnimator1, Animator paramAnimator2)
  {
    if (paramAnimator1 == null) {
      return paramAnimator2;
    }
    if (paramAnimator2 == null) {
      return paramAnimator1;
    }
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playTogether(new Animator[] { paramAnimator1, paramAnimator2 });
    return localAnimatorSet;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.s
 * JD-Core Version:    0.7.0.1
 */