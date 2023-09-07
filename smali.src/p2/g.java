package p2;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.engine.s;
import n2.b;

public class g
  extends f3.g<b, s<?>>
  implements h
{
  private h.a e;
  
  public g(long paramLong)
  {
    super(paramLong);
  }
  
  @SuppressLint({"InlinedApi"})
  public void a(int paramInt)
  {
    if (paramInt >= 40) {
      b();
    } else if ((paramInt >= 20) || (paramInt == 15)) {
      m(h() / 2L);
    }
  }
  
  public void e(h.a parama)
  {
    this.e = parama;
  }
  
  protected int n(s<?> params)
  {
    if (params == null) {
      return super.i(null);
    }
    return params.b();
  }
  
  protected void o(b paramb, s<?> params)
  {
    paramb = this.e;
    if ((paramb != null) && (params != null)) {
      paramb.a(params);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p2.g
 * JD-Core Version:    0.7.0.1
 */