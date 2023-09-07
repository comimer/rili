package v6;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RelativeLayout.LayoutParams;
import androidx.fragment.app.Fragment;
import com.xiaomi.passport.ui.page.BaseLoginFragment;
import com.xiaomi.passport.ui.page.e;
import n5.c;
import n5.d;
import n5.f;
import s6.j;

public class b
  extends e
{
  private j x;
  private View y;
  private View z;
  
  protected boolean E()
  {
    return false;
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    if ((paramContext instanceof j))
    {
      this.x = ((j)paramContext);
      return;
    }
    throw new IllegalStateException("only LayoutWrapperActivity can use this fragment");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(f.j, paramViewGroup, false);
    G(paramViewGroup);
    this.x.getWindow().setBackgroundDrawableResource(n5.b.b);
    this.y = this.x.y();
    this.x.setHeaderStartView(null);
    this.z = this.x.x();
    paramLayoutInflater = View.inflate(getContext(), f.A, null);
    paramLayoutInflater.setOnClickListener(new a());
    paramLayoutInflater.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    this.x.setHeaderEndView(paramLayoutInflater);
    this.x.E(d.a);
    this.x.F((int)getResources().getDimension(c.i), 80);
    return paramViewGroup;
  }
  
  public void onDestroyView()
  {
    Window localWindow = this.x.getWindow();
    int i = n5.b.a;
    localWindow.setBackgroundDrawableResource(i);
    this.x.setHeaderStartView(this.y);
    this.x.setHeaderEndView(this.z);
    this.x.E(i);
    this.x.F(-1, 48);
    super.onDestroyView();
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      b.this.getActivity().finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v6.b
 * JD-Core Version:    0.7.0.1
 */