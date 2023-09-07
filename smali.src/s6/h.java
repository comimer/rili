package s6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.facebook.CallbackManager;
import com.facebook.CallbackManager.Factory;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import java.util.ArrayList;
import java.util.List;
import n5.g;

public class h
  extends p
  implements FacebookCallback<LoginResult>
{
  private List<String> f = new ArrayList();
  private CallbackManager g = null;
  private Context h;
  
  public h()
  {
    super("facebook");
  }
  
  public String f(Context paramContext)
  {
    return paramContext.getString(g.a);
  }
  
  public int h()
  {
    if (!FacebookSdk.isInitialized()) {
      return super.h();
    }
    return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
  }
  
  public void l(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    paramActivity = this.g;
    if (paramActivity != null) {
      paramActivity.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void o(Activity paramActivity)
  {
    this.h = paramActivity.getApplicationContext();
    this.g = CallbackManager.Factory.create();
    LoginManager localLoginManager = LoginManager.getInstance();
    localLoginManager.registerCallback(this.g, this);
    ArrayList localArrayList = new ArrayList(this.f);
    if (!localArrayList.contains("email")) {
      localArrayList.add("email");
    }
    if (!localArrayList.contains("public_profile")) {
      localArrayList.add("public_profile");
    }
    localLoginManager.logInWithReadPermissions(paramActivity, localArrayList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.h
 * JD-Core Version:    0.7.0.1
 */