package com.xiaomi.passport.ui.page;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy.Type;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy.b;
import com.xiaomi.passport.ui.view.EditTextGroupView;
import m7.a.o;
import r6.a.a;
import r6.a.d;

public abstract class BaseLoginFragment
  extends a
{
  private m7.a a;
  protected a7.b b;
  protected LoginAgreementAndPrivacy c;
  protected boolean d;
  protected boolean e;
  protected String f;
  protected String g;
  private r6.a<Bitmap> h;
  protected c i;
  
  private void n()
  {
    if (!this.d)
    {
      t(true);
      return;
    }
    t(this.e);
  }
  
  private void o()
  {
    Bundle localBundle = i();
    this.f = localBundle.getString("service_id");
    this.g = localBundle.getString("banner_biz");
    Object localObject = new a7.b(getActivity());
    this.b = ((a7.b)localObject);
    ((a7.b)localObject).f(true);
    this.b.h(getString(n5.g.H));
    this.b.setCancelable(false);
    localObject = new m7.a(getActivity());
    this.a = ((m7.a)localObject);
    ((m7.a)localObject).p0("https://verify.sec.xiaomi.com");
    this.a.r0("8027422fb0eb42fbac1b521ec4a7961f");
    this.a.q0(Boolean.TRUE);
    this.a.k0();
    localObject = (LoginAgreementAndPrivacy)localBundle.getParcelable("login_agreement_and_privacy");
    this.c = ((LoginAgreementAndPrivacy)localObject);
    if (localObject == null) {
      this.c = new LoginAgreementAndPrivacy.b(LoginAgreementAndPrivacy.Type.DEF).a();
    }
    this.d = localBundle.getBoolean("show_user_agreement", true);
    this.e = localBundle.getBoolean("user_agreement_init_selected", false);
  }
  
  public static BaseLoginFragment q(Bundle paramBundle, LoginFragmentType paramLoginFragmentType)
  {
    switch (g.a[paramLoginFragmentType.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("unsupported fragment type");
    case 6: 
      paramLoginFragmentType = new f();
      break;
    case 5: 
      paramLoginFragmentType = new v6.b();
      break;
    case 4: 
      paramLoginFragmentType = new e();
      break;
    case 3: 
      paramLoginFragmentType = new b();
      break;
    case 2: 
      paramLoginFragmentType = new d();
      break;
    case 1: 
      paramLoginFragmentType = new g();
    }
    if (paramBundle != null) {
      paramLoginFragmentType.setArguments(paramBundle);
    }
    return paramLoginFragmentType;
  }
  
  private void s()
  {
    this.b.dismiss();
    r6.a locala = this.h;
    if (locala != null)
    {
      locala.a();
      this.h = null;
    }
  }
  
  public String m()
  {
    return "";
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    o();
    n();
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    if ((paramContext instanceof c))
    {
      this.i = ((c)paramContext);
      return;
    }
    throw new IllegalArgumentException("the context must be a impl of LoginUIController!");
  }
  
  public void onDestroyView()
  {
    s();
    super.onDestroyView();
  }
  
  public boolean p()
  {
    return false;
  }
  
  public void r(View.OnClickListener paramOnClickListener)
  {
    u(paramOnClickListener);
  }
  
  public void t(boolean paramBoolean) {}
  
  protected void u(final View.OnClickListener paramOnClickListener)
  {
    new a7.b(getContext()).l(getString(n5.g.x)).k(getString(n5.g.v), new a(paramOnClickListener)).i(getString(17039360), null).h(m()).show();
  }
  
  protected void v(String paramString, final h paramh)
  {
    View localView = View.inflate(getContext(), n5.f.u, null);
    final EditTextGroupView localEditTextGroupView = (EditTextGroupView)localView.findViewById(n5.e.i);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(XMPassport.b);
    localStringBuilder.append(paramString);
    localEditTextGroupView.setupCaptcha(localStringBuilder.toString());
    paramString = new a7.b(getContext());
    paramString.l(getString(n5.g.C)).m(localView).k(getString(17039370), new b(paramh, localEditTextGroupView));
    paramString.show();
  }
  
  protected void w(Context paramContext, LayoutInflater paramLayoutInflater, final RegisterUserInfo paramRegisterUserInfo, final i parami)
  {
    final View localView = paramLayoutInflater.inflate(n5.f.r, null);
    TextView localTextView = (TextView)localView.findViewById(n5.e.C0);
    int j = n5.g.I;
    if (TextUtils.isEmpty(paramRegisterUserInfo.userName)) {
      paramLayoutInflater = paramRegisterUserInfo.maskedUserId;
    } else {
      paramLayoutInflater = paramRegisterUserInfo.userName;
    }
    localTextView.setText(String.format("%s\n%s", new Object[] { getString(j, new Object[] { paramLayoutInflater }), getString(n5.g.J, new Object[] { paramRegisterUserInfo.phone }) }));
    if (!TextUtils.isEmpty(paramRegisterUserInfo.avatarAddress))
    {
      paramLayoutInflater = this.h;
      if (paramLayoutInflater != null)
      {
        paramLayoutInflater.a();
        this.h = null;
      }
      paramLayoutInflater = new r6.a(new c(paramRegisterUserInfo), new d(localView), null);
      this.h = paramLayoutInflater;
      paramLayoutInflater.c();
    }
    paramContext = new a7.b(paramContext);
    paramContext.setTitle(n5.g.G);
    paramContext.m(localView);
    paramContext.i(getString(n5.g.K), new e(parami));
    paramContext.k(getString(n5.g.F), new f(parami));
    paramContext.show();
  }
  
  protected void x(String paramString, a.o paramo)
  {
    this.a.o0(paramString).s0(paramo).y0();
  }
  
  public static enum LoginFragmentType
  {
    static
    {
      LoginFragmentType localLoginFragmentType1 = new LoginFragmentType("VERIFY_CODE_LOGIN", 0);
      VERIFY_CODE_LOGIN = localLoginFragmentType1;
      LoginFragmentType localLoginFragmentType2 = new LoginFragmentType("PASSWORD_LOGIN", 1);
      PASSWORD_LOGIN = localLoginFragmentType2;
      LoginFragmentType localLoginFragmentType3 = new LoginFragmentType("INPUT_PHONE_NUMBER", 2);
      INPUT_PHONE_NUMBER = localLoginFragmentType3;
      LoginFragmentType localLoginFragmentType4 = new LoginFragmentType("PHONE_ACCOUNT_LOGIN", 3);
      PHONE_ACCOUNT_LOGIN = localLoginFragmentType4;
      LoginFragmentType localLoginFragmentType5 = new LoginFragmentType("PHONE_ACCOUNT_QUICK_LOGIN", 4);
      PHONE_ACCOUNT_QUICK_LOGIN = localLoginFragmentType5;
      LoginFragmentType localLoginFragmentType6 = new LoginFragmentType("SNS_LOGIN", 5);
      SNS_LOGIN = localLoginFragmentType6;
      $VALUES = new LoginFragmentType[] { localLoginFragmentType1, localLoginFragmentType2, localLoginFragmentType3, localLoginFragmentType4, localLoginFragmentType5, localLoginFragmentType6 };
    }
    
    private LoginFragmentType() {}
  }
  
  class a
    implements View.OnClickListener
  {
    a(View.OnClickListener paramOnClickListener) {}
    
    public void onClick(View paramView)
    {
      BaseLoginFragment.this.t(true);
      paramOnClickListener.onClick(paramView);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b(BaseLoginFragment.h paramh, EditTextGroupView paramEditTextGroupView) {}
    
    public void onClick(View paramView)
    {
      paramh.a(localEditTextGroupView.getInputText(), localEditTextGroupView.getCaptchaIck());
    }
  }
  
  class c
    implements a.a<Bitmap>
  {
    c(RegisterUserInfo paramRegisterUserInfo) {}
    
    /* Error */
    public Bitmap a()
      throws java.lang.Throwable
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_1
      //   2: aconst_null
      //   3: astore_2
      //   4: aload_0
      //   5: getfield 22	com/xiaomi/passport/ui/page/BaseLoginFragment$c:a	Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
      //   8: getfield 41	com/xiaomi/accountsdk/account/data/RegisterUserInfo:avatarAddress	Ljava/lang/String;
      //   11: aconst_null
      //   12: aconst_null
      //   13: invokestatic 47	a6/l:e	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)La6/k$g;
      //   16: astore_3
      //   17: aload_3
      //   18: astore 4
      //   20: aload_3
      //   21: invokevirtual 53	a6/k$g:i	()Ljava/io/InputStream;
      //   24: astore 5
      //   26: aload_3
      //   27: invokevirtual 56	a6/k$g:h	()V
      //   30: goto +60 -> 90
      //   33: astore 5
      //   35: goto +34 -> 69
      //   38: astore 5
      //   40: goto +29 -> 69
      //   43: astore 5
      //   45: goto +24 -> 69
      //   48: astore_3
      //   49: aconst_null
      //   50: astore 4
      //   52: goto +45 -> 97
      //   55: astore 5
      //   57: goto +10 -> 67
      //   60: astore 5
      //   62: goto +5 -> 67
      //   65: astore 5
      //   67: aconst_null
      //   68: astore_3
      //   69: aload_3
      //   70: astore 4
      //   72: aload 5
      //   74: invokevirtual 59	java/lang/Throwable:printStackTrace	()V
      //   77: aload_1
      //   78: astore 5
      //   80: aload_3
      //   81: ifnull +9 -> 90
      //   84: aload_2
      //   85: astore 5
      //   87: goto -61 -> 26
      //   90: aload 5
      //   92: invokestatic 65	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
      //   95: areturn
      //   96: astore_3
      //   97: aload 4
      //   99: ifnull +8 -> 107
      //   102: aload 4
      //   104: invokevirtual 56	a6/k$g:h	()V
      //   107: aload_3
      //   108: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	109	0	this	c
      //   1	77	1	localObject1	Object
      //   3	82	2	localObject2	Object
      //   16	11	3	localg	a6.k.g
      //   48	1	3	localObject3	Object
      //   68	13	3	localObject4	Object
      //   96	12	3	localObject5	Object
      //   18	85	4	localObject6	Object
      //   24	1	5	localInputStream	java.io.InputStream
      //   33	1	5	localAuthenticationFailureException1	com.xiaomi.accountsdk.request.AuthenticationFailureException
      //   38	1	5	localAccessDeniedException1	com.xiaomi.accountsdk.request.AccessDeniedException
      //   43	1	5	localIOException1	java.io.IOException
      //   55	1	5	localAuthenticationFailureException2	com.xiaomi.accountsdk.request.AuthenticationFailureException
      //   60	1	5	localAccessDeniedException2	com.xiaomi.accountsdk.request.AccessDeniedException
      //   65	8	5	localIOException2	java.io.IOException
      //   78	13	5	localObject7	Object
      // Exception table:
      //   from	to	target	type
      //   20	26	33	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   20	26	38	com/xiaomi/accountsdk/request/AccessDeniedException
      //   20	26	43	java/io/IOException
      //   4	17	48	finally
      //   4	17	55	com/xiaomi/accountsdk/request/AuthenticationFailureException
      //   4	17	60	com/xiaomi/accountsdk/request/AccessDeniedException
      //   4	17	65	java/io/IOException
      //   20	26	96	finally
      //   72	77	96	finally
    }
  }
  
  class d
    implements a.d<Bitmap>
  {
    d(View paramView) {}
    
    public void b(Bitmap paramBitmap)
    {
      if (!BaseLoginFragment.this.k()) {
        return;
      }
      ((ImageView)localView.findViewById(n5.e.G)).setImageBitmap(paramBitmap);
    }
  }
  
  class e
    implements View.OnClickListener
  {
    e(BaseLoginFragment.i parami) {}
    
    public void onClick(View paramView)
    {
      parami.a();
    }
  }
  
  class f
    implements View.OnClickListener
  {
    f(BaseLoginFragment.i parami) {}
    
    public void onClick(View paramView)
    {
      parami.b();
    }
  }
  
  public static abstract interface h
  {
    public abstract void a(String paramString1, String paramString2);
  }
  
  public static abstract interface i
  {
    public abstract void a();
    
    public abstract void b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.BaseLoginFragment
 * JD-Core Version:    0.7.0.1
 */