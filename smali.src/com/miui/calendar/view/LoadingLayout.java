package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/LoadingLayout;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "Lkotlin/u;", "b", "", "text", "setLoadingText", "d", "a", "c", "Lcom/miui/calendar/view/LoadingLayout$a;", "onRefreshListener", "setOnRefreshListener", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "mLoadingImg", "mNoNetworkImg", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "mTips", "Lcom/miui/calendar/view/LoadingLayout$a;", "mRefreshListener", "Landroid/graphics/drawable/Animatable;", "e", "Landroid/graphics/drawable/Animatable;", "mVectorDrawable", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class LoadingLayout
  extends RelativeLayout
{
  private ImageView a;
  private ImageView b;
  private TextView c;
  private a d;
  private Animatable e;
  public Map<Integer, View> f;
  
  public LoadingLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 4, null);
  }
  
  public LoadingLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b(paramContext);
  }
  
  private final void b(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2131558666, this, true);
    this.a = ((ImageView)findViewById(2131362704));
    this.b = ((ImageView)findViewById(2131362883));
    this.c = ((TextView)findViewById(2131363372));
    ImageView localImageView = this.a;
    if (localImageView != null) {
      localImageView.setImageDrawable(paramContext.getDrawable(2131230949));
    }
    paramContext = this.a;
    if (paramContext != null) {
      paramContext = paramContext.getDrawable();
    } else {
      paramContext = null;
    }
    r.d(paramContext, "null cannot be cast to non-null type android.graphics.drawable.Animatable");
    this.e = ((Animatable)paramContext);
    setVisibility(8);
  }
  
  public final void a()
  {
    Animatable localAnimatable = this.e;
    if (localAnimatable != null) {
      localAnimatable.stop();
    }
    setVisibility(8);
  }
  
  public final void c()
  {
    Object localObject = this.e;
    if (localObject != null) {
      ((Animatable)localObject).stop();
    }
    localObject = this.a;
    if (localObject != null) {
      ((ImageView)localObject).setVisibility(8);
    }
    localObject = this.b;
    if (localObject != null) {
      ((ImageView)localObject).setVisibility(0);
    }
    localObject = this.c;
    if (localObject != null) {
      ((TextView)localObject).setText(getContext().getResources().getText(2131887042));
    }
    setVisibility(0);
  }
  
  public final void d()
  {
    Object localObject = this.c;
    if (localObject != null) {
      ((TextView)localObject).setText(getContext().getResources().getText(2131886837));
    }
    setVisibility(0);
    localObject = this.a;
    if (localObject != null) {
      ((ImageView)localObject).setVisibility(0);
    }
    localObject = this.b;
    if (localObject != null) {
      ((ImageView)localObject).setVisibility(8);
    }
    localObject = this.e;
    if (localObject != null) {
      ((Animatable)localObject).start();
    }
  }
  
  public final void setLoadingText(String paramString)
  {
    r.f(paramString, "text");
    TextView localTextView = this.c;
    if (localTextView != null) {
      localTextView.setText(paramString);
    }
  }
  
  public final void setOnRefreshListener(a parama)
  {
    this.d = parama;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/LoadingLayout$a;", "", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static abstract interface a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.LoadingLayout
 * JD-Core Version:    0.7.0.1
 */