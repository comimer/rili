package com.xiaomi.passport.ui.page;

import android.accounts.Account;
import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import b7.p;
import b7.r;
import com.xiaomi.accountsdk.account.data.Gender;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo;
import com.xiaomi.passport.ui.internal.util.d;
import com.xiaomi.passport.ui.settings.AccountPreferenceView;
import com.xiaomi.passport.ui.settings.UploadProfileType;
import com.xiaomi.passport.ui.settings.e.b;
import com.xiaomi.passport.ui.view.EditTextGroupView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import r6.b.a;

public class UserInfoFragment
  extends a
{
  private Account a;
  private Activity b;
  private AccountPreferenceView c;
  private AccountPreferenceView d;
  private AccountPreferenceView e;
  private AccountPreferenceView f;
  private AccountPreferenceView g;
  private AccountPreferenceView h;
  private AccountPreferenceView i;
  private Bitmap j;
  private r6.b k;
  private boolean l = false;
  private a7.b m;
  private HashMap<UploadProfileType, com.xiaomi.passport.ui.settings.e> n = new HashMap();
  private final DialogInterface.OnClickListener o = new a();
  private final View.OnClickListener p = new b();
  
  private void C()
  {
    Object localObject1 = this.n;
    if (localObject1 == null) {
      return;
    }
    localObject1 = ((HashMap)localObject1).keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (UploadProfileType)((Iterator)localObject1).next();
      localObject2 = (com.xiaomi.passport.ui.settings.e)this.n.get(localObject2);
      if (localObject2 != null) {
        ((AsyncTask)localObject2).cancel(true);
      }
      ((Iterator)localObject1).remove();
    }
  }
  
  private String D(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = getString(n5.g.e);
    } else if (paramString.length() < 2) {
      paramString = getString(n5.g.i, new Object[] { Integer.valueOf(2) });
    } else if (paramString.length() > 20) {
      paramString = getString(n5.g.h, new Object[] { Integer.valueOf(20) });
    } else if (paramString.matches("\\s+")) {
      paramString = getString(n5.g.f);
    } else if ((!paramString.contains("<")) && (!paramString.contains(">")) && (!paramString.contains("/"))) {
      paramString = null;
    } else {
      paramString = getString(n5.g.g);
    }
    return paramString;
  }
  
  private void E()
  {
    r6.b localb = this.k;
    if ((localb == null) || (AsyncTask.Status.RUNNING != localb.getStatus()))
    {
      if (!this.l) {
        this.m.show();
      }
      localb = new r6.b(this.b.getApplicationContext(), new e(this));
      this.k = localb;
      localb.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
  }
  
  private void F()
  {
    Object localObject1 = this.m;
    if (localObject1 != null) {
      ((a7.b)localObject1).dismiss();
    }
    localObject1 = this.b;
    if ((localObject1 != null) && (!((Activity)localObject1).isFinishing()))
    {
      if (this.a == null)
      {
        this.b.finish();
        return;
      }
      com.xiaomi.passport.accountmanager.g localg = com.xiaomi.passport.accountmanager.g.z(this.b);
      Object localObject2 = localg.o(this.a, "acc_user_name");
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = getString(n5.g.o);
      }
      this.d.setValue((String)localObject1);
      this.e.setValue(this.a.name);
      localObject1 = localg.o(this.a, "acc_user_gender");
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject1 = getString(n5.g.m);
      } else {
        localObject1 = getResources().getStringArray(n5.a.a)[(localObject1.equals(Gender.MALE.getType()) ^ true)];
      }
      this.f.setValue((String)localObject1);
      localObject1 = localg.o(this.a, "acc_avatar_file_name");
      localObject2 = this.j;
      if (localObject2 != null) {
        ((Bitmap)localObject2).recycle();
      }
      localObject1 = d.a(getActivity(), (String)localObject1);
      this.j = ((Bitmap)localObject1);
      if (localObject1 != null) {
        this.c.setImageBitmap((Bitmap)localObject1);
      }
      localObject1 = localg.o(this.a, "acc_user_email");
      localObject2 = this.h;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject1 = getString(n5.g.n);
      } else {
        localObject1 = p.c((String)localObject1);
      }
      ((AccountPreferenceView)localObject2).setValue((String)localObject1);
      localObject1 = localg.o(this.a, "acc_user_phone");
      if ((TextUtils.isEmpty((CharSequence)localObject1)) && (com.xiaomi.passport.f.b()))
      {
        this.g.setVisibility(8);
      }
      else
      {
        this.g.setVisibility(0);
        localObject2 = this.g;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          localObject1 = getString(n5.g.n);
        } else {
          localObject1 = p.e((CharSequence)localObject1);
        }
        ((AccountPreferenceView)localObject2).setValue((String)localObject1);
      }
    }
  }
  
  private void G()
  {
    Object localObject = getActivity();
    String[] arrayOfString = getResources().getStringArray(n5.a.a);
    String str = this.f.getValue().toString();
    localObject = new a7.b((Context)localObject);
    ((a7.b)localObject).l(getString(n5.g.s)).e(arrayOfString, str.equals(arrayOfString[1]), new d());
    ((a7.b)localObject).show();
  }
  
  private void H()
  {
    View localView = View.inflate(getContext(), n5.f.x, null);
    final EditTextGroupView localEditTextGroupView = (EditTextGroupView)localView.findViewById(n5.e.R);
    localEditTextGroupView.setInputText(this.d.getValue().toString());
    new a7.b(getContext()).l(getString(n5.g.t)).k(getString(17039370), new c(localEditTextGroupView)).i(getString(17039360), null).m(localView).show();
  }
  
  private void I(String paramString)
  {
    Intent localIntent = new Intent(getActivity(), UserAvatarUpdateActivity.class);
    localIntent.setPackage(getActivity().getPackageName());
    localIntent.putExtra("update_avatar_type", paramString);
    localIntent.putExtra("update_account", this.a);
    startActivity(localIntent);
  }
  
  private void J(UploadProfileType paramUploadProfileType, String paramString, Calendar paramCalendar, Gender paramGender)
  {
    if (paramUploadProfileType == null) {
      return;
    }
    paramUploadProfileType = (com.xiaomi.passport.ui.settings.e)this.n.get(paramUploadProfileType);
    if (paramUploadProfileType != null) {
      paramUploadProfileType.cancel(true);
    }
    paramUploadProfileType = new f(null);
    new com.xiaomi.passport.ui.settings.e(getActivity(), paramString, paramGender, paramUploadProfileType).executeOnExecutor(r.a(), new Void[0]);
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getActivity();
    this.b = paramBundle;
    this.a = com.xiaomi.passport.accountmanager.g.z(paramBundle).l();
    paramBundle = new a7.b(getContext()).f(true).h(getString(n5.g.H));
    this.m = paramBundle;
    paramBundle.setCancelable(false);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(n5.f.l, paramViewGroup, false);
    this.c = ((AccountPreferenceView)paramLayoutInflater.findViewById(n5.e.c0));
    this.d = ((AccountPreferenceView)paramLayoutInflater.findViewById(n5.e.h0));
    this.e = ((AccountPreferenceView)paramLayoutInflater.findViewById(n5.e.g0));
    this.f = ((AccountPreferenceView)paramLayoutInflater.findViewById(n5.e.f0));
    this.g = ((AccountPreferenceView)paramLayoutInflater.findViewById(n5.e.i0));
    this.h = ((AccountPreferenceView)paramLayoutInflater.findViewById(n5.e.e0));
    this.i = ((AccountPreferenceView)paramLayoutInflater.findViewById(n5.e.d0));
    this.c.setOnClickListener(this.p);
    this.d.setOnClickListener(this.p);
    this.e.setRightArrowVisible(false);
    this.f.setOnClickListener(this.p);
    this.g.setOnClickListener(this.p);
    this.h.setOnClickListener(this.p);
    this.i.setOnClickListener(this.p);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    C();
    Bitmap localBitmap = this.j;
    if (localBitmap != null)
    {
      localBitmap.recycle();
      this.j = null;
    }
    this.b = null;
    super.onDestroy();
  }
  
  public void onResume()
  {
    super.onResume();
    E();
  }
  
  public void onStart()
  {
    super.onStart();
    this.b = getActivity();
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (paramInt != 0)
      {
        if (paramInt == 1) {
          UserInfoFragment.m(UserInfoFragment.this, "gallery");
        }
      }
      else {
        UserInfoFragment.m(UserInfoFragment.this, "camera");
      }
      paramDialogInterface.dismiss();
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      try
      {
        if (paramView == UserInfoFragment.n(UserInfoFragment.this))
        {
          UserInfoFragment.u(UserInfoFragment.this);
        }
        else if (paramView == UserInfoFragment.v(UserInfoFragment.this))
        {
          UserInfoFragment.w(UserInfoFragment.this);
        }
        else if (paramView == UserInfoFragment.x(UserInfoFragment.this))
        {
          paramView = new a7/b;
          paramView.<init>(UserInfoFragment.this.getContext());
          a7.b localb = paramView.l(UserInfoFragment.this.getString(n5.g.W0));
          String str = UserInfoFragment.this.getString(n5.g.q);
          paramView = UserInfoFragment.this.getString(n5.g.p);
          DialogInterface.OnClickListener localOnClickListener = UserInfoFragment.y(UserInfoFragment.this);
          localb.e(new String[] { str, paramView }, -1, localOnClickListener).show();
        }
        else if (paramView == UserInfoFragment.z(UserInfoFragment.this))
        {
          paramView = UserInfoFragment.this;
          paramView.startActivity(z6.e.g(paramView.getContext()));
        }
        else if (paramView == UserInfoFragment.A(UserInfoFragment.this))
        {
          paramView = UserInfoFragment.this;
          paramView.startActivity(z6.e.f(paramView.getContext()));
        }
        else if (paramView == UserInfoFragment.B(UserInfoFragment.this))
        {
          paramView = UserInfoFragment.this;
          paramView.startActivity(z6.e.h(paramView.getContext()));
        }
      }
      catch (ActivityNotFoundException paramView)
      {
        com.xiaomi.accountsdk.utils.b.h("UserInfoFragment", "activity not found", paramView);
        z6.a.b(UserInfoFragment.this.getActivity(), n5.g.u, 1);
      }
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c(EditTextGroupView paramEditTextGroupView) {}
    
    public void onClick(View paramView)
    {
      String str = localEditTextGroupView.getInputText();
      paramView = UserInfoFragment.r(UserInfoFragment.this, str);
      if (!TextUtils.isEmpty(paramView)) {
        UserInfoFragment.this.l(paramView);
      } else {
        UserInfoFragment.s(UserInfoFragment.this, UploadProfileType.TYPE_USER_NAME, str, null, null);
      }
    }
  }
  
  class d
    implements DialogInterface.OnClickListener
  {
    d() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      UserInfoFragment localUserInfoFragment = UserInfoFragment.this;
      UploadProfileType localUploadProfileType = UploadProfileType.TYPE_GENDER;
      if (paramInt == 0) {
        paramDialogInterface = Gender.MALE;
      } else {
        paramDialogInterface = Gender.FEMALE;
      }
      UserInfoFragment.s(localUserInfoFragment, localUploadProfileType, null, null, paramDialogInterface);
    }
  }
  
  private class e
    implements b.a
  {
    private final WeakReference<UserInfoFragment> a;
    
    e(UserInfoFragment paramUserInfoFragment)
    {
      this.a = new WeakReference(paramUserInfoFragment);
    }
    
    public void a(XiaomiUserCoreInfo paramXiaomiUserCoreInfo)
    {
      if (!UserInfoFragment.o(UserInfoFragment.this))
      {
        UserInfoFragment localUserInfoFragment = UserInfoFragment.this;
        boolean bool;
        if (paramXiaomiUserCoreInfo != null) {
          bool = true;
        } else {
          bool = false;
        }
        UserInfoFragment.p(localUserInfoFragment, bool);
      }
      paramXiaomiUserCoreInfo = (UserInfoFragment)this.a.get();
      if (paramXiaomiUserCoreInfo != null) {
        UserInfoFragment.q(paramXiaomiUserCoreInfo);
      }
    }
  }
  
  private class f
    implements e.b
  {
    private f() {}
    
    public void a(String paramString, Gender paramGender)
    {
      com.xiaomi.passport.accountmanager.g localg = com.xiaomi.passport.accountmanager.g.z(UserInfoFragment.this.getActivity());
      if (!TextUtils.isEmpty(paramString))
      {
        UserInfoFragment.n(UserInfoFragment.this).setValue(paramString);
        localg.u(UserInfoFragment.t(UserInfoFragment.this), "acc_user_name", paramString);
      }
      else if (paramGender != null)
      {
        String[] arrayOfString = UserInfoFragment.this.getResources().getStringArray(n5.a.a);
        paramString = UserInfoFragment.v(UserInfoFragment.this);
        int i;
        if (paramGender == Gender.MALE) {
          i = 0;
        } else {
          i = 1;
        }
        paramString.setValue(arrayOfString[i]);
        localg.u(UserInfoFragment.t(UserInfoFragment.this), "acc_user_gender", paramGender.getType());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.UserInfoFragment
 * JD-Core Version:    0.7.0.1
 */