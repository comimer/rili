package androidx.core.view.accessibility;

import android.os.BaseBundle;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

public final class a
  extends ClickableSpan
{
  private final int a;
  private final g b;
  private final int c;
  
  public a(int paramInt1, g paramg, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramg;
    this.c = paramInt2;
  }
  
  public void onClick(View paramView)
  {
    paramView = new Bundle();
    paramView.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.a);
    this.b.I(this.c, paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.accessibility.a
 * JD-Core Version:    0.7.0.1
 */