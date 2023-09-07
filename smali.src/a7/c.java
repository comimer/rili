package a7;

import android.view.View;
import android.view.View.OnClickListener;
import n5.e;
import z6.b;

public class c
{
  private static long d = b.a * 1000L;
  private final View a;
  private c b;
  private Runnable c;
  
  public c(View paramView)
  {
    this.a = paramView;
    if (paramView == null) {
      return;
    }
    Object localObject = paramView.findViewById(e.w0);
    ((View)localObject).setOnClickListener(new a());
    ((View)localObject).setVisibility(4);
    localObject = new b((View)localObject);
    this.c = ((Runnable)localObject);
    paramView.postDelayed((Runnable)localObject, d);
  }
  
  public void b()
  {
    View localView = this.a;
    if (localView == null) {
      return;
    }
    localView.removeCallbacks(this.c);
  }
  
  public void c(c paramc)
  {
    this.b = paramc;
  }
  
  public void d(boolean paramBoolean)
  {
    View localView = this.a;
    if (localView != null)
    {
      int i;
      if (paramBoolean) {
        i = 0;
      } else {
        i = 8;
      }
      localView.setVisibility(i);
    }
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      if (c.a(c.this) == null) {
        return;
      }
      c.a(c.this).a(paramView);
    }
  }
  
  class b
    implements Runnable
  {
    b(View paramView) {}
    
    public void run()
    {
      this.a.setVisibility(0);
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(View paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a7.c
 * JD-Core Version:    0.7.0.1
 */