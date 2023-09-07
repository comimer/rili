package com.miui.calendar.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout.b;
import com.android.calendar.common.p;
import com.android.calendar.common.q;
import com.android.calendar.common.s;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/widget/EmptyView;", "Landroid/widget/FrameLayout;", "", "bias", "Lkotlin/u;", "setEmptyVerticalBias", "", "resId", "setEmptyIcon", "", "tipText", "setEmptyTip", "Landroid/view/View;", "getActionView", "actionText", "setEmptyActionText", "", "visible", "setEmptyActionVisibility", "Landroid/view/View$OnClickListener;", "clickListener", "setEmptyActionClickListener", "Landroid/widget/LinearLayout;", "a", "Landroid/widget/LinearLayout;", "mEmptyContainer", "Landroid/widget/ImageView;", "b", "Landroid/widget/ImageView;", "mEmptyIcon", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "mEmptyTip", "Landroid/widget/Button;", "d", "Landroid/widget/Button;", "mEmptyAction", "e", "I", "mIconResId", "f", "Ljava/lang/String;", "mTipText", "g", "mActionText", "h", "Z", "mActionVisible", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "common_release"}, k=1, mv={1, 7, 1})
public final class EmptyView
  extends FrameLayout
{
  private final LinearLayout a;
  private final ImageView b;
  private final TextView c;
  private final Button d;
  private int e;
  private String f;
  private String g;
  private boolean h = true;
  public Map<Integer, View> i;
  
  public EmptyView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 4, null);
  }
  
  public EmptyView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(q.a, this);
    Object localObject1 = findViewById(p.b);
    r.e(localObject1, "findViewById<LinearLayout>(R.id.empty_container)");
    this.a = ((LinearLayout)localObject1);
    localObject1 = findViewById(p.c);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.ImageView");
    ImageView localImageView = (ImageView)localObject1;
    this.b = localImageView;
    localObject1 = findViewById(p.d);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.TextView");
    localObject1 = (TextView)localObject1;
    this.c = ((TextView)localObject1);
    Object localObject2 = findViewById(p.a);
    r.d(localObject2, "null cannot be cast to non-null type android.widget.Button");
    localObject2 = (Button)localObject2;
    this.d = ((Button)localObject2);
    paramInt = 0;
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s.E);
      r.e(paramContext, "context.obtainStyledAttr…t, R.styleable.EmptyView)");
      if (paramContext != null)
      {
        this.e = paramContext.getResourceId(s.H, 0);
        this.f = paramContext.getString(s.I);
        this.g = paramContext.getString(s.F);
        this.h = paramContext.getBoolean(s.G, true);
        paramContext.recycle();
      }
    }
    int j = this.e;
    if (j > 0) {
      localImageView.setImageResource(j);
    }
    paramContext = this.f;
    paramAttributeSet = "";
    if (paramContext == null) {
      paramContext = "";
    }
    ((TextView)localObject1).setText(paramContext);
    localObject1 = this.g;
    paramContext = paramAttributeSet;
    if (localObject1 != null) {
      paramContext = (Context)localObject1;
    }
    ((TextView)localObject2).setText(paramContext);
    if (!this.h) {
      paramInt = 8;
    }
    ((View)localObject2).setVisibility(paramInt);
  }
  
  public final View getActionView()
  {
    return this.d;
  }
  
  public final void setEmptyActionClickListener(View.OnClickListener paramOnClickListener)
  {
    r.f(paramOnClickListener, "clickListener");
    this.d.setOnClickListener(paramOnClickListener);
  }
  
  public final void setEmptyActionText(String paramString)
  {
    r.f(paramString, "actionText");
    this.d.setText(paramString);
  }
  
  public final void setEmptyActionVisibility(boolean paramBoolean)
  {
    Button localButton = this.d;
    int j;
    if (paramBoolean) {
      j = 0;
    } else {
      j = 8;
    }
    localButton.setVisibility(j);
  }
  
  public final void setEmptyIcon(int paramInt)
  {
    this.b.setImageResource(paramInt);
  }
  
  public final void setEmptyTip(String paramString)
  {
    r.f(paramString, "tipText");
    this.c.setText(paramString);
  }
  
  public final void setEmptyVerticalBias(float paramFloat)
  {
    Object localObject = this.a.getLayoutParams();
    r.d(localObject, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
    localObject = (ConstraintLayout.b)localObject;
    ((ConstraintLayout.b)localObject).H = paramFloat;
    this.a.setLayoutParams((ViewGroup.LayoutParams)localObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.widget.EmptyView
 * JD-Core Version:    0.7.0.1
 */