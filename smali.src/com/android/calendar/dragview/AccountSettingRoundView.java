package com.android.calendar.dragview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

public class AccountSettingRoundView
  extends ConstraintLayout
{
  private Path E;
  private Paint F;
  private RectF G;
  private float[] H;
  
  public AccountSettingRoundView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AccountSettingRoundView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    x();
  }
  
  private void u(Canvas paramCanvas)
  {
    paramCanvas.saveLayer(this.G, null, 31);
    super.dispatchDraw(paramCanvas);
    paramCanvas.drawPath(w(), this.F);
    paramCanvas.restore();
  }
  
  private void v(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.clipPath(w());
    super.dispatchDraw(paramCanvas);
    paramCanvas.restore();
  }
  
  private Path w()
  {
    this.E.reset();
    this.E.addRoundRect(this.G, this.H, Path.Direction.CW);
    return this.E;
  }
  
  private void x()
  {
    float f = getResources().getDimensionPixelSize(2131165514);
    this.H = new float[] { f, f, f, f, 0.0F, 0.0F, 0.0F, 0.0F };
    this.E = new Path();
    this.F = new Paint(1);
    this.G = new RectF();
    this.F.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
  }
  
  public void dispatchDraw(Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      v(paramCanvas);
    } else {
      u(paramCanvas);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.G.set(0.0F, 0.0F, paramInt1, paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.dragview.AccountSettingRoundView
 * JD-Core Version:    0.7.0.1
 */