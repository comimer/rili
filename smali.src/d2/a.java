package d2;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import com.android.calendar.syncer.account.AccountHelper.ImportType;
import com.android.calendar.syncer.model.Credentials;
import com.android.calendar.syncer.model.Credentials.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Ld2/a;", "", "Lcom/android/calendar/syncer/model/Credentials;", "a", "", "b", "()Ljava/lang/Integer;", "Landroid/content/Context;", "context", "Landroid/accounts/Account;", "account", "<init>", "(Landroid/content/Context;Landroid/accounts/Account;)V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class a
{
  public static final a d = new a(null);
  private final Context a;
  private final Account b;
  private final AccountManager c;
  
  public a(Context paramContext, Account paramAccount)
  {
    this.a = paramContext;
    this.b = paramAccount;
    paramContext = AccountManager.get(paramContext);
    r.e(paramContext, "get(context)");
    this.c = paramContext;
  }
  
  public final Credentials a()
  {
    return new Credentials(this.c.getUserData(this.b, "user_name"), this.c.getPassword(this.b), this.c.getUserData(this.b, "certificate_alias"));
  }
  
  public final Integer b()
  {
    Object localObject = this.c.getUserData(this.b, "time_range_past_days");
    if (localObject != null)
    {
      int i = Integer.parseInt((String)localObject);
      if (i < 0) {
        localObject = null;
      } else {
        localObject = Integer.valueOf(i);
      }
    }
    else
    {
      localObject = Integer.valueOf(90);
    }
    return localObject;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ld2/a$a;", "", "Lcom/android/calendar/syncer/model/Credentials;", "credentials", "Landroid/os/Bundle;", "a", "", "DEFAULT_TIME_RANGE_PAST_DAYS", "I", "", "KEY_CERTIFICATE_ALIAS", "Ljava/lang/String;", "KEY_TIME_RANGE_PAST_DAYS", "KEY_USERNAME", "TAG", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final Bundle a(Credentials paramCredentials)
    {
      r.f(paramCredentials, "credentials");
      Bundle localBundle = new Bundle(3);
      Credentials.Type localType = paramCredentials.getType();
      int i = a.a[localType.ordinal()];
      if (i != 1)
      {
        if (i == 2) {
          localBundle.putString("certificate_alias", paramCredentials.getCertificateAlias());
        }
      }
      else {
        localBundle.putString("user_name", paramCredentials.getUserName());
      }
      localBundle.putString("import_type", AccountHelper.ImportType.CALDAV.getType());
      return localBundle;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d2.a
 * JD-Core Version:    0.7.0.1
 */