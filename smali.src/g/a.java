package g;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;

public class a
  implements TransformationMethod
{
  private Locale a;
  
  public a(Context paramContext)
  {
    this.a = paramContext.getResources().getConfiguration().locale;
  }
  
  public CharSequence getTransformation(CharSequence paramCharSequence, View paramView)
  {
    if (paramCharSequence != null) {
      paramCharSequence = paramCharSequence.toString().toUpperCase(this.a);
    } else {
      paramCharSequence = null;
    }
    return paramCharSequence;
  }
  
  public void onFocusChanged(View paramView, CharSequence paramCharSequence, boolean paramBoolean, int paramInt, Rect paramRect) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g.a
 * JD-Core Version:    0.7.0.1
 */