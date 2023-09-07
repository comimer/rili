package b0;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.Editable.Factory;
import androidx.emoji2.text.m;

final class b
  extends Editable.Factory
{
  private static final Object a = new Object();
  private static volatile Editable.Factory b;
  private static Class<?> c;
  
  @SuppressLint({"PrivateApi"})
  private b()
  {
    try
    {
      c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
      label18:
      return;
    }
    finally
    {
      break label18;
    }
  }
  
  public static Editable.Factory getInstance()
  {
    if (b == null) {
      synchronized (a)
      {
        if (b == null)
        {
          b localb = new b0/b;
          localb.<init>();
          b = localb;
        }
      }
    }
    return b;
  }
  
  public Editable newEditable(CharSequence paramCharSequence)
  {
    Class localClass = c;
    if (localClass != null) {
      return m.c(localClass, paramCharSequence);
    }
    return super.newEditable(paramCharSequence);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b0.b
 * JD-Core Version:    0.7.0.1
 */