package com.xiaomi.passport.ui.view;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.passport.ui.data.PhoneAccount;
import java.io.File;
import n5.d;
import n5.e;
import n5.f;
import n5.g;
import n5.i;
import y6.a;

public class PhoneCard
  extends FrameLayout
  implements View.OnClickListener
{
  private a a;
  private PhoneAccount b;
  private TextView c;
  private TextView d;
  private ImageView e;
  private boolean f;
  
  public PhoneCard(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(paramContext, paramAttributeSet);
  }
  
  private static Bitmap a(Context paramContext, String paramString)
  {
    paramContext = a.b(paramContext, paramString);
    if ((paramContext != null) && (paramContext.isFile()) && (paramContext.exists())) {
      return BitmapFactory.decodeFile(paramContext.getAbsolutePath());
    }
    return null;
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet)
  {
    Resources.Theme localTheme = paramContext.getTheme();
    int[] arrayOfInt = i.t0;
    boolean bool = false;
    paramAttributeSet = localTheme.obtainStyledAttributes(paramAttributeSet, arrayOfInt, 0, 0);
    if (paramAttributeSet.getInt(i.u0, 0) == 0) {
      bool = true;
    }
    this.f = bool;
    paramAttributeSet.recycle();
    if (this.f) {
      LayoutInflater.from(paramContext).inflate(f.B, this);
    } else {
      LayoutInflater.from(paramContext).inflate(f.C, this);
    }
    this.c = ((TextView)findViewById(e.l));
    this.d = ((TextView)findViewById(e.k));
    this.e = ((ImageView)findViewById(e.m));
    setOnClickListener(this);
  }
  
  public void c(PhoneAccount paramPhoneAccount)
  {
    this.b = paramPhoneAccount;
    Object localObject;
    if (paramPhoneAccount.canShowUserAvatar())
    {
      localObject = a(getContext(), paramPhoneAccount.registerUserInfo.avatarAddress);
      if (localObject == null) {
        this.e.setImageResource(d.k);
      } else {
        this.e.setImageBitmap((Bitmap)localObject);
      }
    }
    else
    {
      this.e.setImageResource(d.e);
    }
    if (this.f)
    {
      this.c.setText(paramPhoneAccount.registerUserInfo.phone);
    }
    else
    {
      if (paramPhoneAccount.canShowUserName())
      {
        String str = paramPhoneAccount.registerUserInfo.userName;
        localObject = str;
        if (TextUtils.isEmpty(str)) {
          localObject = paramPhoneAccount.registerUserInfo.maskedUserId;
        }
        this.c.setText((CharSequence)localObject);
      }
      else
      {
        this.c.setText(g.Y0);
      }
      this.d.setText(paramPhoneAccount.registerUserInfo.phone);
    }
  }
  
  public void onClick(View paramView)
  {
    if (this.f) {
      return;
    }
    a locala = this.a;
    if (locala == null) {
      return;
    }
    locala.a(paramView, this.b);
  }
  
  public void setOnActionListener(a parama)
  {
    this.a = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a(View paramView, PhoneAccount paramPhoneAccount);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.view.PhoneCard
 * JD-Core Version:    0.7.0.1
 */