package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.f;
import androidx.core.view.a0;
import com.google.android.material.R.animator;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.Positioning;
import java.util.HashMap;
import java.util.Map;

@Deprecated
public class FabTransformationSheetBehavior
  extends FabTransformationBehavior
{
  private Map<View, Integer> importantForAccessibilityMap;
  
  public FabTransformationSheetBehavior() {}
  
  public FabTransformationSheetBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void updateImportantForAccessibility(View paramView, boolean paramBoolean)
  {
    Object localObject = paramView.getParent();
    if (!(localObject instanceof CoordinatorLayout)) {
      return;
    }
    localObject = (CoordinatorLayout)localObject;
    int i = ((ViewGroup)localObject).getChildCount();
    if (paramBoolean) {
      this.importantForAccessibilityMap = new HashMap(i);
    }
    for (int j = 0; j < i; j++)
    {
      View localView = ((ViewGroup)localObject).getChildAt(j);
      int k;
      if (((localView.getLayoutParams() instanceof CoordinatorLayout.f)) && ((((CoordinatorLayout.f)localView.getLayoutParams()).f() instanceof FabTransformationScrimBehavior))) {
        k = 1;
      } else {
        k = 0;
      }
      if ((localView != paramView) && (k == 0)) {
        if (!paramBoolean)
        {
          Map localMap = this.importantForAccessibilityMap;
          if ((localMap != null) && (localMap.containsKey(localView))) {
            a0.w0(localView, ((Integer)this.importantForAccessibilityMap.get(localView)).intValue());
          }
        }
        else
        {
          this.importantForAccessibilityMap.put(localView, Integer.valueOf(localView.getImportantForAccessibility()));
          a0.w0(localView, 4);
        }
      }
    }
    if (!paramBoolean) {
      this.importantForAccessibilityMap = null;
    }
  }
  
  protected FabTransformationBehavior.FabTransformationSpec onCreateMotionSpec(Context paramContext, boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = R.animator.mtrl_fab_transformation_sheet_expand_spec;
    } else {
      i = R.animator.mtrl_fab_transformation_sheet_collapse_spec;
    }
    FabTransformationBehavior.FabTransformationSpec localFabTransformationSpec = new FabTransformationBehavior.FabTransformationSpec();
    localFabTransformationSpec.timings = MotionSpec.createFromResource(paramContext, i);
    localFabTransformationSpec.positioning = new Positioning(17, 0.0F, 0.0F);
    return localFabTransformationSpec;
  }
  
  protected boolean onExpandedStateChange(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2)
  {
    updateImportantForAccessibility(paramView2, paramBoolean1);
    return super.onExpandedStateChange(paramView1, paramView2, paramBoolean1, paramBoolean2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transformation.FabTransformationSheetBehavior
 * JD-Core Version:    0.7.0.1
 */