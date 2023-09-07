package c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;

public abstract class a<I, O>
{
  public abstract Intent a(Context paramContext, @SuppressLint({"UnknownNullness"}) I paramI);
  
  public a<O> b(Context paramContext, @SuppressLint({"UnknownNullness"}) I paramI)
  {
    return null;
  }
  
  @SuppressLint({"UnknownNullness"})
  public abstract O c(int paramInt, Intent paramIntent);
  
  public static final class a<T>
  {
    @SuppressLint({"UnknownNullness"})
    private final T a;
    
    public a(@SuppressLint({"UnknownNullness"}) T paramT)
    {
      this.a = paramT;
    }
    
    @SuppressLint({"UnknownNullness"})
    public T a()
    {
      return this.a;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c.a
 * JD-Core Version:    0.7.0.1
 */