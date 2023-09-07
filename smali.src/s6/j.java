package s6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.n;
import com.xiaomi.accountsdk.utils.w;
import n5.c;
import n5.f;

public abstract class j
  extends androidx.appcompat.app.d
{
  private TextView a;
  private ViewGroup b;
  private ViewGroup c;
  
  private void G()
  {
    View localView = LayoutInflater.from(this).inflate(f.d, null);
    C((ViewGroup)localView.findViewById(n5.e.D));
    A((ViewGroup)localView.findViewById(n5.e.p));
    B((ViewGroup)localView.findViewById(n5.e.A));
    localView.setFitsSystemWindows(true);
    super.setContentView(localView);
  }
  
  private boolean z()
  {
    Point localPoint = n.a(this);
    int i = getIntent().getIntExtra("support_landscape_min_height_dp", -1);
    if (i > 0) {
      return w.b(i, this) > localPoint.y;
    }
    return getResources().getDimension(c.j) > localPoint.y;
  }
  
  public abstract void A(ViewGroup paramViewGroup);
  
  public void B(ViewGroup paramViewGroup) {}
  
  public void C(ViewGroup paramViewGroup)
  {
    LayoutInflater.from(this).inflate(f.z, paramViewGroup);
    this.a = ((TextView)paramViewGroup.findViewById(n5.e.D0));
    this.b = ((ViewGroup)paramViewGroup.findViewById(n5.e.z0));
    this.c = ((ViewGroup)paramViewGroup.findViewById(n5.e.t));
    y().setOnClickListener(new a());
    x().setOnClickListener(new b());
  }
  
  public void D(String paramString)
  {
    TextView localTextView = this.a;
    if (localTextView != null)
    {
      localTextView.setText(paramString);
      return;
    }
    throw new IllegalStateException("do ont call this method when you override onCreateHeaderView");
  }
  
  public void E(int paramInt)
  {
    findViewById(n5.e.S).setBackgroundResource(paramInt);
  }
  
  public void F(int paramInt1, int paramInt2)
  {
    View localView = findViewById(n5.e.S);
    ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
    localLayoutParams.height = paramInt1;
    localView.setLayoutParams(localLayoutParams);
    ((RelativeLayout)localView.getParent()).setGravity(paramInt2);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (z())
    {
      int i = Build.VERSION.SDK_INT;
      if ((i != 26) && (i != 27)) {
        setRequestedOrientation(1);
      } else {
        b.g("LayoutWrapperActivity", "skip set orientation for android O");
      }
    }
    super.onCreate(paramBundle);
    G();
  }
  
  public void setContentView(int paramInt)
  {
    throw new IllegalStateException("do not invoke this method directly, implement onCreateHeaderView/onCreateContentView/onCreateFooterView");
  }
  
  public void setContentView(View paramView)
  {
    throw new IllegalStateException("do not invoke this method directly, implement onCreateHeaderView/onCreateContentView/onCreateFooterView");
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new IllegalStateException("do not invoke this method directly, implement onCreateHeaderView/onCreateContentView/onCreateFooterView");
  }
  
  public void setHeaderEndView(View paramView)
  {
    ViewGroup localViewGroup = this.c;
    if (localViewGroup != null)
    {
      localViewGroup.removeAllViews();
      if (paramView != null) {
        this.c.addView(paramView);
      }
      return;
    }
    throw new IllegalStateException("do ont call this method when you override onCreateHeaderView");
  }
  
  public void setHeaderStartView(View paramView)
  {
    ViewGroup localViewGroup = this.b;
    if (localViewGroup != null)
    {
      localViewGroup.removeAllViews();
      if (paramView != null) {
        this.b.addView(paramView);
      }
      return;
    }
    throw new IllegalStateException("do ont call this method when you override onCreateHeaderView");
  }
  
  public View x()
  {
    return this.c.getChildAt(0);
  }
  
  public View y()
  {
    return this.b.getChildAt(0);
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      j.this.finish();
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      paramView = j.this;
      paramView.startActivity(z6.e.e(paramView));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.j
 * JD-Core Version:    0.7.0.1
 */