package com.miui.maml.folme;

import g9.b;
import g9.c;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collection;

public class TransitionListenerWrapper
  extends b
{
  private WeakReference<MamlTransitionListener> mRef;
  
  public TransitionListenerWrapper(MamlTransitionListener paramMamlTransitionListener)
  {
    if (paramMamlTransitionListener != null) {
      this.mRef = new WeakReference(paramMamlTransitionListener);
    }
  }
  
  public MamlTransitionListener getListener()
  {
    Object localObject = this.mRef;
    if (localObject != null) {
      localObject = (MamlTransitionListener)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public void onBegin(Object paramObject)
  {
    MamlTransitionListener localMamlTransitionListener = getListener();
    if (localMamlTransitionListener != null) {
      localMamlTransitionListener.onBegin(paramObject);
    }
  }
  
  public void onComplete(Object paramObject)
  {
    MamlTransitionListener localMamlTransitionListener = getListener();
    if (localMamlTransitionListener != null) {
      localMamlTransitionListener.onComplete(paramObject);
    }
  }
  
  public void onUpdate(Object paramObject, Collection<c> paramCollection)
  {
    MamlTransitionListener localMamlTransitionListener = getListener();
    if (localMamlTransitionListener != null) {
      localMamlTransitionListener.onUpdate(paramObject, paramCollection);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.folme.TransitionListenerWrapper
 * JD-Core Version:    0.7.0.1
 */