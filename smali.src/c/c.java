package c;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;

public final class c
  extends a<Intent, ActivityResult>
{
  public Intent d(Context paramContext, Intent paramIntent)
  {
    return paramIntent;
  }
  
  public ActivityResult e(int paramInt, Intent paramIntent)
  {
    return new ActivityResult(paramInt, paramIntent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c.c
 * JD-Core Version:    0.7.0.1
 */