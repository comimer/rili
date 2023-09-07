package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

public class g
  extends View
{
  private boolean a = true;
  
  public g(Context paramContext)
  {
    super(paramContext);
    super.setVisibility(8);
  }
  
  @SuppressLint({"MissingSuperCall"})
  public void draw(Canvas paramCanvas) {}
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(0, 0);
  }
  
  public void setFilterRedundantCalls(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
  
  public void setGuidelineBegin(int paramInt)
  {
    ConstraintLayout.b localb = (ConstraintLayout.b)getLayoutParams();
    if ((this.a) && (localb.a == paramInt)) {
      return;
    }
    localb.a = paramInt;
    setLayoutParams(localb);
  }
  
  public void setGuidelineEnd(int paramInt)
  {
    ConstraintLayout.b localb = (ConstraintLayout.b)getLayoutParams();
    if ((this.a) && (localb.b == paramInt)) {
      return;
    }
    localb.b = paramInt;
    setLayoutParams(localb);
  }
  
  public void setGuidelinePercent(float paramFloat)
  {
    ConstraintLayout.b localb = (ConstraintLayout.b)getLayoutParams();
    if ((this.a) && (localb.c == paramFloat)) {
      return;
    }
    localb.c = paramFloat;
    setLayoutParams(localb);
  }
  
  public void setVisibility(int paramInt) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.g
 * JD-Core Version:    0.7.0.1
 */