package v2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import com.bumptech.glide.load.engine.o;
import com.bumptech.glide.load.engine.s;
import f3.j;
import x2.c;

public abstract class b<T extends Drawable>
  implements s<T>, o
{
  protected final T a;
  
  public b(T paramT)
  {
    this.a = ((Drawable)j.d(paramT));
  }
  
  public void c()
  {
    Drawable localDrawable = this.a;
    if ((localDrawable instanceof BitmapDrawable)) {
      ((BitmapDrawable)localDrawable).getBitmap().prepareToDraw();
    } else if ((localDrawable instanceof c)) {
      ((c)localDrawable).e().prepareToDraw();
    }
  }
  
  public final T e()
  {
    Drawable.ConstantState localConstantState = this.a.getConstantState();
    if (localConstantState == null) {
      return this.a;
    }
    return localConstantState.newDrawable();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v2.b
 * JD-Core Version:    0.7.0.1
 */