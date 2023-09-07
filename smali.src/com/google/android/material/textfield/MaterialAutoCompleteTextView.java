package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AutoCompleteTextView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.c;
import androidx.appcompat.widget.l0;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

public class MaterialAutoCompleteTextView
  extends c
{
  private static final int MAX_ITEMS_MEASURED = 15;
  private final AccessibilityManager accessibilityManager;
  private final l0 modalListPopup;
  private final Rect tempRect = new Rect();
  
  public MaterialAutoCompleteTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.autoCompleteTextViewStyle);
  }
  
  public MaterialAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, 0), paramAttributeSet, paramInt);
    Context localContext = getContext();
    paramContext = ThemeEnforcement.obtainStyledAttributes(localContext, paramAttributeSet, R.styleable.MaterialAutoCompleteTextView, paramInt, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
    paramInt = R.styleable.MaterialAutoCompleteTextView_android_inputType;
    if ((paramContext.hasValue(paramInt)) && (paramContext.getInt(paramInt, 0) == 0)) {
      setKeyListener(null);
    }
    this.accessibilityManager = ((AccessibilityManager)localContext.getSystemService("accessibility"));
    paramAttributeSet = new l0(localContext);
    this.modalListPopup = paramAttributeSet;
    paramAttributeSet.F(true);
    paramAttributeSet.z(this);
    paramAttributeSet.E(2);
    paramAttributeSet.i(getAdapter());
    paramAttributeSet.H(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt < 0) {
          paramAnonymousAdapterView = MaterialAutoCompleteTextView.this.modalListPopup.r();
        } else {
          paramAnonymousAdapterView = MaterialAutoCompleteTextView.this.getAdapter().getItem(paramAnonymousInt);
        }
        MaterialAutoCompleteTextView.this.updateText(paramAnonymousAdapterView);
        paramAnonymousAdapterView = MaterialAutoCompleteTextView.this.getOnItemClickListener();
        if (paramAnonymousAdapterView != null)
        {
          int i;
          if (paramAnonymousView != null)
          {
            i = paramAnonymousInt;
            if (paramAnonymousInt >= 0) {}
          }
          else
          {
            paramAnonymousView = MaterialAutoCompleteTextView.this.modalListPopup.u();
            i = MaterialAutoCompleteTextView.this.modalListPopup.t();
            paramAnonymousLong = MaterialAutoCompleteTextView.this.modalListPopup.s();
          }
          paramAnonymousAdapterView.onItemClick(MaterialAutoCompleteTextView.this.modalListPopup.k(), paramAnonymousView, i, paramAnonymousLong);
        }
        MaterialAutoCompleteTextView.this.modalListPopup.dismiss();
      }
    });
    paramContext.recycle();
  }
  
  private TextInputLayout findTextInputLayoutAncestor()
  {
    for (ViewParent localViewParent = getParent(); localViewParent != null; localViewParent = localViewParent.getParent()) {
      if ((localViewParent instanceof TextInputLayout)) {
        return (TextInputLayout)localViewParent;
      }
    }
    return null;
  }
  
  private int measureContentWidth()
  {
    ListAdapter localListAdapter = getAdapter();
    TextInputLayout localTextInputLayout = findTextInputLayoutAncestor();
    int i = 0;
    if ((localListAdapter != null) && (localTextInputLayout != null))
    {
      int j = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
      int k = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
      int m = Math.max(0, this.modalListPopup.t());
      int n = Math.min(localListAdapter.getCount(), m + 15);
      int i1 = Math.max(0, n - 15);
      Object localObject = null;
      m = 0;
      while (i1 < n)
      {
        int i2 = localListAdapter.getItemViewType(i1);
        int i3 = i;
        if (i2 != i)
        {
          localObject = null;
          i3 = i2;
        }
        localObject = localListAdapter.getView(i1, (View)localObject, localTextInputLayout);
        if (((View)localObject).getLayoutParams() == null) {
          ((View)localObject).setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        }
        ((View)localObject).measure(j, k);
        m = Math.max(m, ((View)localObject).getMeasuredWidth());
        i1++;
        i = i3;
      }
      localObject = this.modalListPopup.getBackground();
      i1 = m;
      if (localObject != null)
      {
        ((Drawable)localObject).getPadding(this.tempRect);
        localObject = this.tempRect;
        i1 = m + (((Rect)localObject).left + ((Rect)localObject).right);
      }
      return i1 + localTextInputLayout.getEndIconView().getMeasuredWidth();
    }
    return 0;
  }
  
  private <T extends ListAdapter,  extends Filterable> void updateText(Object paramObject)
  {
    setText(convertSelectionToString(paramObject), false);
  }
  
  public CharSequence getHint()
  {
    TextInputLayout localTextInputLayout = findTextInputLayoutAncestor();
    if ((localTextInputLayout != null) && (localTextInputLayout.isProvidingHint())) {
      return localTextInputLayout.getHint();
    }
    return super.getHint();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt1) == -2147483648) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), measureContentWidth()), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public <T extends ListAdapter,  extends Filterable> void setAdapter(T paramT)
  {
    super.setAdapter(paramT);
    this.modalListPopup.i(getAdapter());
  }
  
  public void showDropDown()
  {
    if (getInputType() == 0)
    {
      AccessibilityManager localAccessibilityManager = this.accessibilityManager;
      if ((localAccessibilityManager != null) && (localAccessibilityManager.isTouchExplorationEnabled()))
      {
        this.modalListPopup.show();
        return;
      }
    }
    super.showDropDown();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.MaterialAutoCompleteTextView
 * JD-Core Version:    0.7.0.1
 */