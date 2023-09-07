package s6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.tauth.Tencent;
import n5.g;

public class m
  extends l
{
  public String f(Context paramContext)
  {
    return paramContext.getString(g.e1);
  }
  
  public int h()
  {
    return 11101;
  }
  
  public void l(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    Tencent.onActivityResultData(paramInt1, paramInt2, paramIntent, new n(paramActivity.getApplicationContext(), this));
  }
  
  public void o(Activity paramActivity)
  {
    Tencent.createInstance(f(paramActivity), paramActivity).login(paramActivity, "", new n(paramActivity.getApplicationContext(), this));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.m
 * JD-Core Version:    0.7.0.1
 */