package v4;

import android.graphics.Paint;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import w4.c;

public class a
  extends ClickableSpan
{
  private List<w4.b> a;
  private c b;
  private boolean c;
  private boolean d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public a(x4.b paramb)
  {
    this.e = paramb.h();
    this.f = paramb.l();
    this.g = paramb.g();
    this.h = paramb.k();
    this.d = paramb.m();
    this.b = paramb.i();
    this.a = paramb.j();
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject = this.a;
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = this.a.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((w4.b)((Iterator)localObject).next()).a(paramBoolean, this.h);
      }
    }
    this.c = paramBoolean;
  }
  
  public void onClick(View paramView)
  {
    if (this.b != null)
    {
      paramView = (TextView)paramView;
      Spanned localSpanned = (Spanned)paramView.getText();
      int i = localSpanned.getSpanStart(this);
      int j = localSpanned.getSpanEnd(this);
      this.b.a(paramView, localSpanned.subSequence(i, j).toString());
    }
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    int i = this.e;
    int j;
    if (i != 0)
    {
      j = this.f;
      if (j != 0)
      {
        if (this.c) {
          i = j;
        }
        paramTextPaint.setColor(i);
      }
      else
      {
        paramTextPaint.setColor(i);
      }
    }
    i = this.h;
    if (i != 0)
    {
      if (!this.c)
      {
        j = this.g;
        i = j;
        if (j == 0) {
          i = 0;
        }
      }
      paramTextPaint.bgColor = i;
    }
    else
    {
      i = this.g;
      if (i != 0) {
        paramTextPaint.bgColor = i;
      }
    }
    if (!this.d) {
      paramTextPaint.setUnderlineText(false);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v4.a
 * JD-Core Version:    0.7.0.1
 */