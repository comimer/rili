package com.xiaomi.accountsdk.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.BadParcelableException;

public class l
{
  public boolean a(Activity paramActivity)
  {
    if ((paramActivity != null) && (paramActivity.getIntent() != null))
    {
      Intent localIntent = new Intent(paramActivity.getIntent());
      try
      {
        b(localIntent);
        return true;
      }
      catch (RuntimeException localRuntimeException)
      {
        StringBuilder localStringBuilder;
        if ((localRuntimeException instanceof BadParcelableException))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("fail checking ParcelableAttack for Activity ");
          localStringBuilder.append(paramActivity.getClass().getName());
          b.g("ParcelableAttackGuardia", localStringBuilder.toString());
          return false;
        }
        if ((localStringBuilder.getCause() instanceof ClassNotFoundException))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("fail checking SerializableAttack for Activity ");
          localStringBuilder.append(paramActivity.getClass().getName());
          b.g("ParcelableAttackGuardia", localStringBuilder.toString());
          return false;
        }
        b.h("ParcelableAttackGuardia", "error", localStringBuilder);
      }
    }
    return true;
  }
  
  void b(Intent paramIntent)
    throws BadParcelableException
  {
    paramIntent.getStringExtra("");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.l
 * JD-Core Version:    0.7.0.1
 */