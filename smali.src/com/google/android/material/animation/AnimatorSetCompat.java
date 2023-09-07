package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.List;

public class AnimatorSetCompat
{
  public static void playTogether(AnimatorSet paramAnimatorSet, List<Animator> paramList)
  {
    int i = paramList.size();
    long l = 0L;
    for (int j = 0; j < i; j++)
    {
      localObject = (Animator)paramList.get(j);
      l = Math.max(l, ((Animator)localObject).getStartDelay() + ((Animator)localObject).getDuration());
    }
    Object localObject = ValueAnimator.ofInt(new int[] { 0, 0 });
    ((Animator)localObject).setDuration(l);
    paramList.add(0, localObject);
    paramAnimatorSet.playTogether(paramList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.animation.AnimatorSetCompat
 * JD-Core Version:    0.7.0.1
 */