package com.xiaomi.passport.ui.view;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.ui.data.PhoneAccount;
import com.xiaomi.passport.ui.internal.util.LinkSpanHelper;
import com.xiaomi.passport.ui.internal.util.LinkSpanHelper.a;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy.Type;
import com.xiaomi.passport.ui.license.a;
import com.xiaomi.phonenum.data.AccountCertification;
import com.xiaomi.phonenum.data.AccountCertification.Source;
import n5.f;
import n5.g;

public class AgreementView
  extends FrameLayout
{
  private CheckBox a;
  private TextView b;
  private AccountCertification.Source c;
  private LoginAgreementAndPrivacy d;
  LinkSpanHelper.a e = new a();
  
  public AgreementView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c(paramContext);
  }
  
  private String b(LoginAgreementAndPrivacy.Type paramType, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString1.hashCode();
    int i = paramString1.hashCode();
    int j = -1;
    switch (i)
    {
    default: 
      break;
    case -711380617: 
      if (paramString1.equals("TELECOM")) {
        j = 2;
      }
      break;
    case -1787213167: 
      if (paramString1.equals("UNICOM")) {
        j = 1;
      }
      break;
    case -2015525726: 
      if (paramString1.equals("MOBILE")) {
        j = 0;
      }
      break;
    }
    switch (j)
    {
    default: 
      if (paramType == LoginAgreementAndPrivacy.Type.APP_JOIN) {
        j = g.O0;
      } else {
        j = g.S0;
      }
      break;
    case 2: 
      if (paramType == LoginAgreementAndPrivacy.Type.APP_JOIN) {
        j = g.Q0;
      } else {
        j = g.U0;
      }
      break;
    case 1: 
      if (paramType == LoginAgreementAndPrivacy.Type.APP_JOIN) {
        j = g.R0;
      } else {
        j = g.V0;
      }
      break;
    case 0: 
      if (paramType == LoginAgreementAndPrivacy.Type.APP_JOIN) {
        j = g.P0;
      } else {
        j = g.T0;
      }
      break;
    }
    if (paramType == LoginAgreementAndPrivacy.Type.APP_JOIN)
    {
      paramType = getContext();
      paramString1 = this.d;
      paramType = paramType.getString(j, new Object[] { paramString1.tripartiteAppAgreementUrl, paramString1.tripartiteAppPrivacyUrl, paramString2, paramString3, paramString4 });
    }
    else
    {
      paramType = getContext().getString(j, new Object[] { paramString2, paramString3, paramString4 });
    }
    return paramType;
  }
  
  private void c(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(f.q, this);
    this.a = ((CheckBox)findViewById(n5.e.E0));
    this.b = ((TextView)findViewById(n5.e.F0));
  }
  
  public boolean d()
  {
    return this.a.isChecked();
  }
  
  public void e(PhoneAccount[] paramArrayOfPhoneAccount)
  {
    boolean bool = false;
    if ((paramArrayOfPhoneAccount != null) && (paramArrayOfPhoneAccount.length > 0))
    {
      int i = paramArrayOfPhoneAccount.length;
      for (int j = 0; j < i; j++)
      {
        localObject = paramArrayOfPhoneAccount[j];
        if ((localObject != null) && (this.c == null)) {
          this.c = ((PhoneAccount)localObject).accountCertification.source;
        }
      }
    }
    paramArrayOfPhoneAccount = this.d;
    if ((paramArrayOfPhoneAccount != null) && (!TextUtils.isEmpty(paramArrayOfPhoneAccount.normalTextHexColor))) {
      this.b.setTextColor(Color.parseColor(this.d.normalTextHexColor));
    }
    String str = getAppAgreement();
    this.b.setMovementMethod(LinkMovementMethod.getInstance());
    TextView localTextView = this.b;
    Context localContext = getContext();
    Object localObject = this.d;
    if (localObject == null) {
      paramArrayOfPhoneAccount = null;
    } else {
      paramArrayOfPhoneAccount = ((LoginAgreementAndPrivacy)localObject).clickLineHexColor;
    }
    if ((localObject == null) || (((LoginAgreementAndPrivacy)localObject).isShowClinkLineUnderLine)) {
      bool = true;
    }
    localTextView.setText(LinkSpanHelper.a(localContext, str, paramArrayOfPhoneAccount, bool, this.e));
    this.b.setOnClickListener(new b());
  }
  
  public String getAppAgreement()
  {
    Object localObject = this.d;
    if (localObject == null) {
      localObject = LoginAgreementAndPrivacy.Type.DEF;
    } else {
      localObject = ((LoginAgreementAndPrivacy)localObject).type;
    }
    Context localContext = getContext();
    String str1 = a.a();
    String str2 = a.b();
    AccountCertification.Source localSource;
    if (localObject == LoginAgreementAndPrivacy.Type.APP_JOIN)
    {
      localSource = this.c;
      if (localSource != null)
      {
        localObject = b((LoginAgreementAndPrivacy.Type)localObject, localSource.type, str1, str2, localSource.link);
      }
      else
      {
        int i = g.O0;
        localObject = this.d;
        localObject = localContext.getString(i, new Object[] { ((LoginAgreementAndPrivacy)localObject).tripartiteAppAgreementUrl, ((LoginAgreementAndPrivacy)localObject).tripartiteAppPrivacyUrl, str1, str2 });
      }
    }
    else if (localObject == LoginAgreementAndPrivacy.Type.APP_CUSTOM)
    {
      localObject = this.d.tripartiteAppCustomLicense;
    }
    else
    {
      localSource = this.c;
      if (localSource != null) {
        localObject = b((LoginAgreementAndPrivacy.Type)localObject, localSource.type, str1, str2, localSource.link);
      } else {
        localObject = localContext.getString(g.S0, new Object[] { str1, str2 });
      }
    }
    return localObject;
  }
  
  public void setCheckBoxVisibility(int paramInt)
  {
    this.a.setVisibility(paramInt);
  }
  
  public void setLoginAgreementAndPrivacy(LoginAgreementAndPrivacy paramLoginAgreementAndPrivacy)
  {
    this.d = paramLoginAgreementAndPrivacy;
    paramLoginAgreementAndPrivacy = new StringBuilder();
    paramLoginAgreementAndPrivacy.append("setLoginAgreementAndPrivacy>>>");
    paramLoginAgreementAndPrivacy.append(this.d);
    b.g("AgreementView", paramLoginAgreementAndPrivacy.toString());
  }
  
  public void setUserAgreementSelected(boolean paramBoolean)
  {
    this.a.setChecked(paramBoolean);
  }
  
  class a
    implements LinkSpanHelper.a
  {
    a() {}
    
    public void a(View paramView, String paramString)
    {
      AgreementView.this.getContext().startActivity(z6.e.b(AgreementView.this.getContext(), paramString));
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      AgreementView.a(AgreementView.this).setChecked(AgreementView.a(AgreementView.this).isChecked() ^ true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.view.AgreementView
 * JD-Core Version:    0.7.0.1
 */