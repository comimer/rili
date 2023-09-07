package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.widget.k;
import d.j;

class o
  extends PopupWindow
{
  private static final boolean b = false;
  private boolean a;
  
  public o(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = z0.v(paramContext, paramAttributeSet, j.Y1, paramInt1, paramInt2);
    paramInt1 = j.a2;
    if (paramContext.s(paramInt1)) {
      b(paramContext.a(paramInt1, false));
    }
    setBackgroundDrawable(paramContext.g(j.Z1));
    paramContext.w();
  }
  
  private void b(boolean paramBoolean)
  {
    if (b) {
      this.a = paramBoolean;
    } else {
      k.a(this, paramBoolean);
    }
  }
  
  public void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (b)
    {
      i = paramInt2;
      if (this.a) {
        i = paramInt2 - paramView.getHeight();
      }
    }
    super.showAsDropDown(paramView, paramInt1, i);
  }
  
  public void showAsDropDown(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    if (b)
    {
      i = paramInt2;
      if (this.a) {
        i = paramInt2 - paramView.getHeight();
      }
    }
    super.showAsDropDown(paramView, paramInt1, i, paramInt3);
  }
  
  public void update(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt2;
    if (b)
    {
      i = paramInt2;
      if (this.a) {
        i = paramInt2 - paramView.getHeight();
      }
    }
    super.update(paramView, paramInt1, i, paramInt3, paramInt4);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.o
 * JD-Core Version:    0.7.0.1
 */