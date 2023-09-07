package n4;

import android.app.Application;
import android.net.Uri;
import android.os.Build;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.u;
import com.android.calendar.syncer.model.Credentials;
import com.android.calendar.syncer.model.LoginModel;
import com.miui.calendar.sync.bean.CalDAVBean;
import com.miui.calendar.sync.bean.DingAuthBean;
import java.io.IOException;
import java.net.URI;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import okhttp3.a0;
import okhttp3.b0;
import okhttp3.e;
import okhttp3.f;
import okhttp3.v;
import okhttp3.v.a;
import okhttp3.x.a;
import okhttp3.y.a;
import okhttp3.z;
import okhttp3.z.a;
import org.json.JSONObject;

@Metadata(bv={}, d1={""}, d2={"Ln4/a;", "Landroidx/lifecycle/a;", "Lkotlin/u;", "a", "Lcom/android/calendar/syncer/model/LoginModel;", "loginModel", "", "j", "isValid", "", "authCode", "d", "token", "c", "Landroidx/lifecycle/u;", "username", "Landroidx/lifecycle/u;", "i", "()Landroidx/lifecycle/u;", "password", "g", "originalUrl", "f", "errorToastMsg", "e", "Lcom/miui/calendar/sync/bean/DingAuthBean;", "tokenObj", "h", "Lcom/miui/calendar/sync/bean/CalDAVBean;", "calDAVObj", "b", "Landroid/app/Application;", "application", "<init>", "(Landroid/app/Application;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class a
  extends androidx.lifecycle.a
{
  private final u<String> a = new u();
  private final u<String> b = new u();
  private final u<String> c = new u();
  private final u<Uri> d = new u();
  private final u<String> e = new u();
  private final u<Boolean> f = new u();
  private final u<DingAuthBean> g = new u();
  private final u<CalDAVBean> h = new u();
  
  public a(Application paramApplication)
  {
    super(paramApplication);
    a();
  }
  
  public final void a()
  {
    this.a.n("");
    this.b.n("");
    this.c.n("");
    this.d.n(null);
    this.e.n("");
  }
  
  public final u<CalDAVBean> b()
  {
    return this.h;
  }
  
  public final void c(String paramString)
  {
    r.f(paramString, "token");
    Object localObject1 = new JSONObject();
    ((JSONObject)localObject1).put("device", Build.MODEL);
    Object localObject2 = z.a;
    localObject1 = ((JSONObject)localObject1).toString();
    r.e(localObject1, "params.toString()");
    localObject2 = ((z.a)localObject2).a((String)localObject1, v.g.b("application/json"));
    paramString = new y.a().a("x-acs-dingtalk-access-token", paramString).i((z)localObject2).l("https://api.dingtalk.com/v1.0/calendar/users/me/caldavAccounts").b();
    new okhttp3.x().C().d().a(paramString).j(new a(this));
  }
  
  public final void d(String paramString)
  {
    r.f(paramString, "authCode");
    Object localObject = new JSONObject();
    ((JSONObject)localObject).put("client_id", "dingoa22y14noll0g5ukpr");
    ((JSONObject)localObject).put("client_secret", "ZVVSvR7RdQEXdayKZmgEeJfzYXVc-52JVIJi7LeL9jZCcVq5bqcRm7lm3hWCLfwY");
    ((JSONObject)localObject).put("redirect_uri", "ZVVSvR7RdQEXdayKZmgEeJfzYXVc-52JVIJi7LeL9jZCcVq5bqcRm7lm3hWCLfwY");
    ((JSONObject)localObject).put("code", paramString);
    ((JSONObject)localObject).put("grant_type", "authorization_code");
    paramString = z.a;
    localObject = ((JSONObject)localObject).toString();
    r.e(localObject, "params.toString()");
    paramString = paramString.a((String)localObject, v.g.b("application/json"));
    paramString = new y.a().a("Content-Type", "application/json").i(paramString).l("https://oapi.dingtalk.com/oauth2/token").b();
    new okhttp3.x().C().d().a(paramString).j(new b(this));
  }
  
  public final u<String> e()
  {
    return this.e;
  }
  
  public final u<String> f()
  {
    return this.c;
  }
  
  public final u<String> g()
  {
    return this.b;
  }
  
  public final u<DingAuthBean> h()
  {
    return this.g;
  }
  
  public final u<String> i()
  {
    return this.a;
  }
  
  public final boolean isValid()
  {
    CharSequence localCharSequence = (CharSequence)this.a.e();
    boolean bool1 = false;
    int i;
    if ((localCharSequence != null) && (localCharSequence.length() != 0)) {
      i = 0;
    } else {
      i = 1;
    }
    boolean bool2 = bool1;
    if (i == 0)
    {
      localCharSequence = (CharSequence)this.b.e();
      if ((localCharSequence != null) && (localCharSequence.length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      bool2 = bool1;
      if (i == 0)
      {
        localCharSequence = (CharSequence)this.c.e();
        if ((localCharSequence != null) && (localCharSequence.length() != 0)) {
          i = 0;
        } else {
          i = 1;
        }
        bool2 = bool1;
        if (i == 0) {
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  public final boolean j(LoginModel paramLoginModel)
  {
    r.f(paramLoginModel, "loginModel");
    Object localObject1 = (CharSequence)this.a.e();
    boolean bool = true;
    int i;
    if ((localObject1 != null) && (((CharSequence)localObject1).length() != 0)) {
      i = 0;
    } else {
      i = 1;
    }
    if (i == 0)
    {
      localObject1 = this.a.e();
      r.c(localObject1);
      if (k.L0((String)localObject1).toString().length() == 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (i == 0)
      {
        localObject1 = (CharSequence)this.b.e();
        if ((localObject1 != null) && (((CharSequence)localObject1).length() != 0)) {
          i = 0;
        } else {
          i = 1;
        }
        if (i == 0)
        {
          localObject1 = this.b.e();
          r.c(localObject1);
          if (k.L0((String)localObject1).toString().length() == 0) {
            i = 1;
          } else {
            i = 0;
          }
          if (i == 0)
          {
            localObject1 = (CharSequence)this.c.e();
            if ((localObject1 != null) && (((CharSequence)localObject1).length() != 0)) {
              i = 0;
            } else {
              i = 1;
            }
            if (i != 0)
            {
              this.e.n("服务器地址不可为空");
              return false;
            }
            localObject1 = (String)this.c.e();
            Object localObject2 = Uri.parse((String)localObject1);
            Object localObject3 = ((Uri)localObject2).getScheme();
            if ((localObject3 != null) && (((CharSequence)localObject3).length() != 0)) {
              i = 0;
            } else {
              i = 1;
            }
            if (i != 0)
            {
              localObject2 = this.d;
              localObject3 = new StringBuilder();
              ((StringBuilder)localObject3).append("https://");
              ((StringBuilder)localObject3).append((String)localObject1);
              ((u)localObject2).n(Uri.parse(((StringBuilder)localObject3).toString()));
            }
            else if ((!k.p(((Uri)localObject2).getScheme(), "https", true)) && (!k.p(((Uri)localObject2).getScheme(), "http", true)))
            {
              this.e.n("服务器地址错误");
              bool = false;
            }
            else
            {
              this.d.n(localObject2);
            }
            if (bool) {
              try
              {
                paramLoginModel.setBaseURI(URI.create(k.L0(String.valueOf(this.d.e())).toString()));
                paramLoginModel.setCredentials(new Credentials(k.L0(String.valueOf(this.a.e())).toString(), k.L0(String.valueOf(this.b.e())).toString(), null));
              }
              catch (Exception paramLoginModel)
              {
                this.e.n("服务器地址错误");
                return false;
              }
            }
            return bool;
          }
        }
        this.e.n("密码不能为空");
        return false;
      }
    }
    this.e.n("用户名不能为空");
    return false;
  }
  
  @Metadata(bv={}, d1={""}, d2={"n4/a$a", "Lokhttp3/f;", "Lokhttp3/e;", "call", "Ljava/io/IOException;", "e", "Lkotlin/u;", "b", "Lokhttp3/a0;", "response", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
    implements f
  {
    a(a parama) {}
    
    public void a(e parame, a0 parama0)
    {
      r.f(parame, "call");
      r.f(parama0, "response");
      if (parama0.isSuccessful())
      {
        parama0 = parama0.c();
        if (parama0 != null)
        {
          parame = this.a;
          parama0 = (CalDAVBean)com.miui.calendar.util.x.a(parama0.E(), CalDAVBean.class);
          parame.b().l(parama0);
        }
      }
      else
      {
        this.a.e().l("服务器异常，导入失败");
      }
    }
    
    public void b(e parame, IOException paramIOException)
    {
      r.f(parame, "call");
      r.f(paramIOException, "e");
      this.a.e().l("服务器异常，导入失败");
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"n4/a$b", "Lokhttp3/f;", "Lokhttp3/e;", "call", "Ljava/io/IOException;", "e", "Lkotlin/u;", "b", "Lokhttp3/a0;", "response", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    implements f
  {
    b(a parama) {}
    
    public void a(e parame, a0 parama0)
    {
      r.f(parame, "call");
      r.f(parama0, "response");
      if (parama0.isSuccessful())
      {
        parama0 = parama0.c();
        if (parama0 != null)
        {
          parame = this.a;
          parama0 = (DingAuthBean)com.miui.calendar.util.x.a(parama0.E(), DingAuthBean.class);
          parame.h().l(parama0);
        }
      }
      else
      {
        this.a.e().l("服务器异常，导入失败");
      }
    }
    
    public void b(e parame, IOException paramIOException)
    {
      r.f(parame, "call");
      r.f(paramIOException, "e");
      this.a.e().l("服务器异常，导入失败");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n4.a
 * JD-Core Version:    0.7.0.1
 */