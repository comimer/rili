package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.Window;
import androidx.core.graphics.BlendModeCompat;
import androidx.core.graphics.a;
import com.google.android.material.R.id;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

public class MaterialContainerTransformSharedElementCallback
  extends SharedElementCallback
{
  private static WeakReference<View> capturedSharedElement;
  private boolean entering = true;
  private Rect returnEndBounds;
  private ShapeProvider shapeProvider = new ShapeableViewShapeProvider();
  private boolean transparentWindowBackgroundEnabled = true;
  
  private static void removeWindowBackground(Window paramWindow)
  {
    paramWindow.getDecorView().getBackground().mutate().setColorFilter(a.a(0, BlendModeCompat.CLEAR));
  }
  
  private static void restoreWindowBackground(Window paramWindow)
  {
    paramWindow.getDecorView().getBackground().mutate().clearColorFilter();
  }
  
  private void setUpEnterTransform(final Window paramWindow)
  {
    Object localObject = paramWindow.getSharedElementEnterTransition();
    if ((localObject instanceof MaterialContainerTransform))
    {
      localObject = (MaterialContainerTransform)localObject;
      if (this.transparentWindowBackgroundEnabled)
      {
        updateBackgroundFadeDuration(paramWindow, (MaterialContainerTransform)localObject);
        ((Transition)localObject).addListener(new TransitionListenerAdapter()
        {
          public void onTransitionEnd(Transition paramAnonymousTransition)
          {
            MaterialContainerTransformSharedElementCallback.restoreWindowBackground(paramWindow);
          }
          
          public void onTransitionStart(Transition paramAnonymousTransition)
          {
            MaterialContainerTransformSharedElementCallback.removeWindowBackground(paramWindow);
          }
        });
      }
    }
  }
  
  private void setUpReturnTransform(final Activity paramActivity, final Window paramWindow)
  {
    Object localObject = paramWindow.getSharedElementReturnTransition();
    if ((localObject instanceof MaterialContainerTransform))
    {
      localObject = (MaterialContainerTransform)localObject;
      ((MaterialContainerTransform)localObject).setHoldAtEndEnabled(true);
      ((Transition)localObject).addListener(new TransitionListenerAdapter()
      {
        public void onTransitionEnd(Transition paramAnonymousTransition)
        {
          if (MaterialContainerTransformSharedElementCallback.capturedSharedElement != null)
          {
            paramAnonymousTransition = (View)MaterialContainerTransformSharedElementCallback.capturedSharedElement.get();
            if (paramAnonymousTransition != null)
            {
              paramAnonymousTransition.setAlpha(1.0F);
              MaterialContainerTransformSharedElementCallback.access$202(null);
            }
          }
          paramActivity.finish();
          paramActivity.overridePendingTransition(0, 0);
        }
      });
      if (this.transparentWindowBackgroundEnabled)
      {
        updateBackgroundFadeDuration(paramWindow, (MaterialContainerTransform)localObject);
        ((Transition)localObject).addListener(new TransitionListenerAdapter()
        {
          public void onTransitionStart(Transition paramAnonymousTransition)
          {
            MaterialContainerTransformSharedElementCallback.removeWindowBackground(paramWindow);
          }
        });
      }
    }
  }
  
  private static void updateBackgroundFadeDuration(Window paramWindow, MaterialContainerTransform paramMaterialContainerTransform)
  {
    paramWindow.setTransitionBackgroundFadeDuration(paramMaterialContainerTransform.getDuration());
  }
  
  public ShapeProvider getShapeProvider()
  {
    return this.shapeProvider;
  }
  
  public boolean isTransparentWindowBackgroundEnabled()
  {
    return this.transparentWindowBackgroundEnabled;
  }
  
  public Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF)
  {
    capturedSharedElement = new WeakReference(paramView);
    return super.onCaptureSharedElementSnapshot(paramView, paramMatrix, paramRectF);
  }
  
  public View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable)
  {
    paramContext = super.onCreateSnapshotView(paramContext, paramParcelable);
    if (paramContext != null)
    {
      paramParcelable = capturedSharedElement;
      if ((paramParcelable != null) && (this.shapeProvider != null))
      {
        paramParcelable = (View)paramParcelable.get();
        if (paramParcelable != null)
        {
          paramParcelable = this.shapeProvider.provideShape(paramParcelable);
          if (paramParcelable != null) {
            paramContext.setTag(R.id.mtrl_motion_snapshot_view, paramParcelable);
          }
        }
      }
    }
    return paramContext;
  }
  
  public void onMapSharedElements(List<String> paramList, Map<String, View> paramMap)
  {
    if ((!paramList.isEmpty()) && (!paramMap.isEmpty()))
    {
      paramList = (View)paramMap.get(paramList.get(0));
      if (paramList != null)
      {
        paramMap = ContextUtils.getActivity(paramList.getContext());
        if (paramMap != null)
        {
          paramList = paramMap.getWindow();
          if (this.entering) {
            setUpEnterTransform(paramList);
          } else {
            setUpReturnTransform(paramMap, paramList);
          }
        }
      }
    }
  }
  
  public void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2)
  {
    if (!paramList1.isEmpty())
    {
      paramList = (View)paramList1.get(0);
      int i = R.id.mtrl_motion_snapshot_view;
      if ((paramList.getTag(i) instanceof View)) {
        ((View)paramList1.get(0)).setTag(i, null);
      }
    }
    if ((!this.entering) && (!paramList1.isEmpty())) {
      this.returnEndBounds = TransitionUtils.getRelativeBoundsRect((View)paramList1.get(0));
    }
    this.entering = false;
  }
  
  public void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2)
  {
    if ((!paramList1.isEmpty()) && (!paramList2.isEmpty())) {
      ((View)paramList1.get(0)).setTag(R.id.mtrl_motion_snapshot_view, paramList2.get(0));
    }
    if ((!this.entering) && (!paramList1.isEmpty()) && (this.returnEndBounds != null))
    {
      paramList = (View)paramList1.get(0);
      paramList.measure(View.MeasureSpec.makeMeasureSpec(this.returnEndBounds.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.returnEndBounds.height(), 1073741824));
      paramList1 = this.returnEndBounds;
      paramList.layout(paramList1.left, paramList1.top, paramList1.right, paramList1.bottom);
    }
  }
  
  public void setShapeProvider(ShapeProvider paramShapeProvider)
  {
    this.shapeProvider = paramShapeProvider;
  }
  
  public void setTransparentWindowBackgroundEnabled(boolean paramBoolean)
  {
    this.transparentWindowBackgroundEnabled = paramBoolean;
  }
  
  public static abstract interface ShapeProvider
  {
    public abstract ShapeAppearanceModel provideShape(View paramView);
  }
  
  public static class ShapeableViewShapeProvider
    implements MaterialContainerTransformSharedElementCallback.ShapeProvider
  {
    public ShapeAppearanceModel provideShape(View paramView)
    {
      if ((paramView instanceof Shapeable)) {
        paramView = ((Shapeable)paramView).getShapeAppearanceModel();
      } else {
        paramView = null;
      }
      return paramView;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback
 * JD-Core Version:    0.7.0.1
 */