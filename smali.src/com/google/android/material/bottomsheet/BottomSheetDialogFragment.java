package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.h;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c;

public class BottomSheetDialogFragment
  extends h
{
  private boolean waitingForDismissAllowingStateLoss;
  
  private void dismissAfterAnimation()
  {
    if (this.waitingForDismissAllowingStateLoss) {
      super.dismissAllowingStateLoss();
    } else {
      super.dismiss();
    }
  }
  
  private void dismissWithAnimation(BottomSheetBehavior<?> paramBottomSheetBehavior, boolean paramBoolean)
  {
    this.waitingForDismissAllowingStateLoss = paramBoolean;
    if (paramBottomSheetBehavior.getState() == 5)
    {
      dismissAfterAnimation();
    }
    else
    {
      if ((getDialog() instanceof BottomSheetDialog)) {
        ((BottomSheetDialog)getDialog()).removeDefaultCallback();
      }
      paramBottomSheetBehavior.addBottomSheetCallback(new BottomSheetDismissCallback(null));
      paramBottomSheetBehavior.setState(5);
    }
  }
  
  private boolean tryDismissWithAnimation(boolean paramBoolean)
  {
    Object localObject = getDialog();
    if ((localObject instanceof BottomSheetDialog))
    {
      localObject = (BottomSheetDialog)localObject;
      BottomSheetBehavior localBottomSheetBehavior = ((BottomSheetDialog)localObject).getBehavior();
      if ((localBottomSheetBehavior.isHideable()) && (((BottomSheetDialog)localObject).getDismissWithAnimation()))
      {
        dismissWithAnimation(localBottomSheetBehavior, paramBoolean);
        return true;
      }
    }
    return false;
  }
  
  public void dismiss()
  {
    if (!tryDismissWithAnimation(false)) {
      super.dismiss();
    }
  }
  
  public void dismissAllowingStateLoss()
  {
    if (!tryDismissWithAnimation(true)) {
      super.dismissAllowingStateLoss();
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new BottomSheetDialog(getContext(), getTheme());
  }
  
  private class BottomSheetDismissCallback
    extends BottomSheetBehavior.BottomSheetCallback
  {
    private BottomSheetDismissCallback() {}
    
    public void onSlide(View paramView, float paramFloat) {}
    
    public void onStateChanged(View paramView, int paramInt)
    {
      if (paramInt == 5) {
        BottomSheetDialogFragment.this.dismissAfterAnimation();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.bottomsheet.BottomSheetDialogFragment
 * JD-Core Version:    0.7.0.1
 */