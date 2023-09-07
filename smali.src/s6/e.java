package s6;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class e
  extends Activity
{
  k a;
  
  public boolean a()
  {
    return b();
  }
  
  protected boolean b()
  {
    return true;
  }
  
  public void onBackPressed()
  {
    k localk = this.a;
    if ((localk != null) && (localk.c())) {
      return;
    }
    try
    {
      super.onBackPressed();
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.xiaomi.accountsdk.account.e.a(getApplication());
    a();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() != 16908332) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  public void setContentView(int paramInt)
  {
    setContentView(LayoutInflater.from(this).inflate(paramInt, null));
  }
  
  public void setContentView(View paramView)
  {
    if (a()) {
      paramView.setFitsSystemWindows(true);
    }
    super.setContentView(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (a()) {
      paramView.setFitsSystemWindows(true);
    }
    super.setContentView(paramView, paramLayoutParams);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.e
 * JD-Core Version:    0.7.0.1
 */