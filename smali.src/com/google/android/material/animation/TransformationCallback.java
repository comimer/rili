package com.google.android.material.animation;

import android.view.View;

public abstract interface TransformationCallback<T extends View>
{
  public abstract void onScaleChanged(T paramT);
  
  public abstract void onTranslationChanged(T paramT);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.animation.TransformationCallback
 * JD-Core Version:    0.7.0.1
 */