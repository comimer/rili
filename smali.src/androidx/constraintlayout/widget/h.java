package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;

public class h
  extends View
{
  private int a;
  private View b;
  private int c;
  
  public void a(ConstraintLayout paramConstraintLayout)
  {
    if (this.b == null) {
      return;
    }
    paramConstraintLayout = (ConstraintLayout.b)getLayoutParams();
    ConstraintLayout.b localb = (ConstraintLayout.b)this.b.getLayoutParams();
    localb.v0.j1(0);
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = paramConstraintLayout.v0.A();
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
    if (localDimensionBehaviour1 != localDimensionBehaviour2) {
      paramConstraintLayout.v0.k1(localb.v0.W());
    }
    if (paramConstraintLayout.v0.T() != localDimensionBehaviour2) {
      paramConstraintLayout.v0.L0(localb.v0.x());
    }
    localb.v0.j1(8);
  }
  
  public void b(ConstraintLayout paramConstraintLayout)
  {
    if ((this.a == -1) && (!isInEditMode())) {
      setVisibility(this.c);
    }
    paramConstraintLayout = paramConstraintLayout.findViewById(this.a);
    this.b = paramConstraintLayout;
    if (paramConstraintLayout != null)
    {
      ((ConstraintLayout.b)paramConstraintLayout.getLayoutParams()).j0 = true;
      this.b.setVisibility(0);
      setVisibility(0);
    }
  }
  
  public View getContent()
  {
    return this.b;
  }
  
  public int getEmptyVisibility()
  {
    return this.c;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (isInEditMode())
    {
      paramCanvas.drawRGB(223, 223, 223);
      Paint localPaint = new Paint();
      localPaint.setARGB(255, 210, 210, 210);
      localPaint.setTextAlign(Paint.Align.CENTER);
      localPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
      Rect localRect = new Rect();
      paramCanvas.getClipBounds(localRect);
      localPaint.setTextSize(localRect.height());
      int i = localRect.height();
      int j = localRect.width();
      localPaint.setTextAlign(Paint.Align.LEFT);
      localPaint.getTextBounds("?", 0, 1, localRect);
      paramCanvas.drawText("?", j / 2.0F - localRect.width() / 2.0F - localRect.left, i / 2.0F + localRect.height() / 2.0F - localRect.bottom, localPaint);
    }
  }
  
  public void setContentId(int paramInt)
  {
    if (this.a == paramInt) {
      return;
    }
    View localView = this.b;
    if (localView != null)
    {
      localView.setVisibility(0);
      ((ConstraintLayout.b)this.b.getLayoutParams()).j0 = false;
      this.b = null;
    }
    this.a = paramInt;
    if (paramInt != -1)
    {
      localView = ((View)getParent()).findViewById(paramInt);
      if (localView != null) {
        localView.setVisibility(8);
      }
    }
  }
  
  public void setEmptyVisibility(int paramInt)
  {
    this.c = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.h
 * JD-Core Version:    0.7.0.1
 */