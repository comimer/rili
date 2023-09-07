package s6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions.Builder;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.xiaomi.accountsdk.utils.b;
import n5.g;

public class i
  extends p
{
  public i()
  {
    super("google");
  }
  
  public String f(Context paramContext)
  {
    return paramContext.getString(g.b);
  }
  
  public int h()
  {
    return 32;
  }
  
  public void l(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 32)
    {
      paramIntent = GoogleSignIn.getSignedInAccountFromIntent(paramIntent);
      try
      {
        paramIntent = (GoogleSignInAccount)paramIntent.getResult(ApiException.class);
        if (paramIntent != null)
        {
          paramIntent = paramIntent.getServerAuthCode();
          if (paramIntent != null) {
            q(paramActivity, paramIntent);
          }
        }
      }
      catch (ApiException paramActivity)
      {
        b.h("GoogleAuthProvider", "Google sign in failed", paramActivity);
      }
    }
  }
  
  public void o(Activity paramActivity)
  {
    String str = f(paramActivity);
    paramActivity.startActivityForResult(GoogleSignIn.getClient(paramActivity, new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestServerAuthCode(str).requestEmail().build()).getSignInIntent(), 32);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.i
 * JD-Core Version:    0.7.0.1
 */